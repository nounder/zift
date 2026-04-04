const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // ── Executable (pure Zig AppKit UI) ────────────────────────────────

    const exe = b.addExecutable(.{
        .name = "zift",
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/main.zig"),
            .target = target,
            .optimize = optimize,
            .link_libc = true,
        }),
    });
    exe.root_module.linkFramework("CoreGraphics", .{});
    exe.root_module.linkFramework("Accessibility", .{});
    b.installArtifact(exe);

    // ── Static library (for Swift UI entrypoint) ───────────────────────

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = "zift",
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/todo.zig"),
            .target = target,
            .optimize = optimize,
            .link_libc = true,
        }),
    });

    const install_lib = b.addInstallArtifact(lib, .{});
    const lib_step = b.step("lib", "Build static library for Swift");
    lib_step.dependOn(&install_lib.step);

    // ── App bundle (pure Zig) ──────────────────────────────────────────

    const app_step = b.step("app", "Build Zift.app bundle (pure Zig)");
    const bundle = makeAppBundle(b, "Zift", "com.zift.app");

    // Copy exe into bundle after zig build installs it
    const cp_exe = b.addSystemCommand(&.{
        "cp",
        b.getInstallPath(.bin, "zift"),
        b.getInstallPath(.prefix, "Zift.app/Contents/MacOS/Zift"),
    });
    cp_exe.step.dependOn(b.getInstallStep());
    cp_exe.step.dependOn(bundle); // mkdir runs first
    app_step.dependOn(&cp_exe.step);

    // ── Run (pure Zig app) ─────────────────────────────────────────────

    const run_step = b.step("run", "Build and open Zift.app");
    const open_app = b.addSystemCommand(&.{ "open", b.getInstallPath(.prefix, "Zift.app") });
    open_app.step.dependOn(&cp_exe.step);
    run_step.dependOn(&open_app.step);

    // ── Swift app ──────────────────────────────────────────────────────

    const swift_step = b.step("app-swift", "Build ZiftSwift.app (SwiftUI + Zig core)");
    const swift_bundle = makeAppBundle(b, "ZiftSwift", "com.zift.swift");

    const swift_exe_path = b.getInstallPath(.prefix, "ZiftSwift.app/Contents/MacOS/ZiftSwift");

    const swiftc = b.addSystemCommand(&.{
        "swiftc",
        "-O",
        "-I",
        "include",
        "-Xcc",
    });
    swiftc.addPrefixedFileArg("-fmodule-map-file=", b.path("include/module.modulemap"));
    swiftc.addArg("-L");
    swiftc.addArg(b.getInstallPath(.lib, ""));
    swiftc.addArgs(&.{
        "-lzift",
        "-framework", "SwiftUI",
        "-framework", "AppKit",
        "-framework", "CoreGraphics",
        "-o",
    });
    swiftc.addArg(swift_exe_path);
    swiftc.addFileArg(b.path("swift/TodoStore.swift"));
    swiftc.addFileArg(b.path("swift/ZiftApp.swift"));
    swiftc.addFileArg(b.path("swift/ContentView.swift"));
    swiftc.step.dependOn(swift_bundle); // mkdir runs first
    swiftc.step.dependOn(&install_lib.step); // lib must be built
    swift_step.dependOn(&swiftc.step);

    // ── Run Swift app ──────────────────────────────────────────────────

    const run_swift_step = b.step("run-swift", "Build and open ZiftSwift.app");
    const open_swift = b.addSystemCommand(&.{ "open", b.getInstallPath(.prefix, "ZiftSwift.app") });
    open_swift.step.dependOn(&swiftc.step);
    run_swift_step.dependOn(&open_swift.step);


    // ── Tests ──────────────────────────────────────────────────────────

    const lib_tests = b.addTest(.{
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/todo.zig"),
            .target = target,
            .optimize = optimize,
        }),
    });
    const run_lib_tests = b.addRunArtifact(lib_tests);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_lib_tests.step);
}

// ── App bundle helper ──────────────────────────────────────────────────

const plist_template =
    \\<?xml version="1.0" encoding="UTF-8"?>
    \\<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    \\<plist version="1.0">
    \\<dict>
    \\  <key>CFBundleName</key>
    \\  <string>{[name]s}</string>
    \\  <key>CFBundleIdentifier</key>
    \\  <string>{[id]s}</string>
    \\  <key>CFBundleVersion</key>
    \\  <string>1.0</string>
    \\  <key>CFBundleShortVersionString</key>
    \\  <string>1.0</string>
    \\  <key>CFBundlePackageType</key>
    \\  <string>APPL</string>
    \\  <key>CFBundleExecutable</key>
    \\  <string>{[name]s}</string>
    \\  <key>LSMinimumSystemVersion</key>
    \\  <string>13.0</string>
    \\  <key>NSHighResolutionCapable</key>
    \\  <true/>
    \\</dict>
    \\</plist>
    \\
;

/// Creates the .app/Contents/{MacOS,Resources,Info.plist} skeleton.
/// Returns a step that, once complete, guarantees the dirs and plist exist.
/// The caller is responsible for getting the executable into Contents/MacOS/.
fn makeAppBundle(b: *std.Build, app_name: []const u8, bundle_id: []const u8) *std.Build.Step {
    const contents = b.fmt("{s}.app/Contents", .{app_name});

    const mkdir = b.addSystemCommand(&.{
        "mkdir", "-p",
        b.getInstallPath(.prefix, b.fmt("{s}/MacOS", .{contents})),
        b.getInstallPath(.prefix, b.fmt("{s}/Resources", .{contents})),
    });

    const plist_content = b.fmt(plist_template, .{ .name = app_name, .id = bundle_id });
    const wf = b.addWriteFiles();
    const plist_file = wf.add("Info.plist", plist_content);
    const install_plist = b.addInstallFile(plist_file, b.fmt("{s}/Info.plist", .{contents}));
    install_plist.step.dependOn(&mkdir.step);

    return &install_plist.step;
}
