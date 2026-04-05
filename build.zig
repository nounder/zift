const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // ── Shared zift module ────────────────────────────────────────────

    const zift = b.createModule(.{
        .root_source_file = b.path("src/zift.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    zift.linkFramework("AppKit", .{});
    zift.linkFramework("WebKit", .{});
    zift.linkFramework("CoreGraphics", .{});
    zift.linkFramework("Accessibility", .{});
    zift.linkFramework("ApplicationServices", .{});
    zift.linkSystemLibrary("objc", .{});

    // ── Todoz app ─────────────────────────────────────────────────────

    const exe = b.addExecutable(.{
        .name = "todoz",
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/app.zig"),
            .target = target,
            .optimize = optimize,
            .link_libc = true,
        }),
    });
    exe.root_module.linkFramework("AppKit", .{});
    exe.root_module.linkFramework("CoreGraphics", .{});
    exe.root_module.linkFramework("Accessibility", .{});
    exe.root_module.linkFramework("ApplicationServices", .{});
    exe.root_module.linkSystemLibrary("objc", .{});

    // ── App bundle (Zig) ───────────────────────────────────────────────

    const zig_step = b.step("app-zig", "Build TodozZig.app bundle (Zig + AppKit)");
    const bundle = makeAppBundle(b, "TodozZig", "org.nounder.todoz");

    const install_exe = b.addInstallArtifact(exe, .{});
    const cp_exe = b.addSystemCommand(&.{
        "cp",
        b.getInstallPath(.bin, "todoz"),
        b.getInstallPath(.prefix, "TodozZig.app/Contents/MacOS/TodozZig"),
    });
    cp_exe.step.dependOn(&install_exe.step);
    cp_exe.step.dependOn(bundle);
    zig_step.dependOn(&cp_exe.step);

    // ── App bundle (Swift) ─────────────────────────────────────────────

    const swift_step = b.step("app-swift", "Build TodozSwift.app bundle (SwiftUI)");
    const swift_bundle = makeAppBundle(b, "TodozSwift", "org.nounder.todoz.swift");

    const swift_exe_path = b.getInstallPath(.prefix, "TodozSwift.app/Contents/MacOS/TodozSwift");

    const swiftc = b.addSystemCommand(&.{
        "swiftc",
        "-O",
        "-parse-as-library",
        "-framework",
        "SwiftUI",
        "-framework",
        "AppKit",
        "-framework",
        "CoreGraphics",
        "-o",
    });
    swiftc.addArg(swift_exe_path);
    swiftc.addFileArg(b.path("swift/App.swift"));
    swiftc.step.dependOn(swift_bundle);
    swift_step.dependOn(&swiftc.step);

    // ── Run ────────────────────────────────────────────────────────────

    const run_zig_step = b.step("run-zig", "Build and open TodozZig.app");
    const open_app = b.addSystemCommand(&.{ "open", b.getInstallPath(.prefix, "TodozZig.app") });
    open_app.step.dependOn(&cp_exe.step);
    run_zig_step.dependOn(&open_app.step);

    const run_swift_step = b.step("run-swift", "Build and open TodozSwift.app");
    const open_swift = b.addSystemCommand(&.{ "open", b.getInstallPath(.prefix, "TodozSwift.app") });
    open_swift.step.dependOn(&swiftc.step);
    run_swift_step.dependOn(&open_swift.step);

    // ── Examples ───────────────────────────────────────────────────────

    addExample(b, zift, target, optimize, "floating_webview");
    addExample(b, zift, target, optimize, "html_textview");

    // ── Default: build both apps ──────────────────────────────────────

    b.getInstallStep().dependOn(&cp_exe.step);
    b.getInstallStep().dependOn(&swiftc.step);

    // ── Tests ──────────────────────────────────────────────────────────

    const lib_tests = b.addTest(.{
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/app.zig"),
            .target = target,
            .optimize = optimize,
        }),
    });
    const run_lib_tests = b.addRunArtifact(lib_tests);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_lib_tests.step);
}

// ── Example helper ─────────────────────────────────────────────────────

fn addExample(
    b: *std.Build,
    zift: *std.Build.Module,
    target: std.Build.ResolvedTarget,
    optimize: std.builtin.OptimizeMode,
    comptime name: []const u8,
) void {
    const example = b.addExecutable(.{
        .name = name,
        .root_module = b.createModule(.{
            .root_source_file = b.path("examples/" ++ name ++ ".zig"),
            .target = target,
            .optimize = optimize,
            .link_libc = true,
            .imports = &.{.{ .name = "zift", .module = zift }},
        }),
    });
    example.root_module.linkFramework("AppKit", .{});
    example.root_module.linkFramework("WebKit", .{});
    example.root_module.linkFramework("CoreGraphics", .{});
    example.root_module.linkFramework("Accessibility", .{});
    example.root_module.linkFramework("ApplicationServices", .{});
    example.root_module.linkSystemLibrary("objc", .{});

    const run = b.addRunArtifact(example);
    const step = b.step("run-" ++ name, "Run " ++ name ++ " example");
    step.dependOn(&run.step);
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
        "mkdir",                                                    "-p",
        b.getInstallPath(.prefix, b.fmt("{s}/MacOS", .{contents})), b.getInstallPath(.prefix, b.fmt("{s}/Resources", .{contents})),
    });

    const plist_content = b.fmt(plist_template, .{ .name = app_name, .id = bundle_id });
    const wf = b.addWriteFiles();
    const plist_file = wf.add("Info.plist", plist_content);
    const install_plist = b.addInstallFile(plist_file, b.fmt("{s}/Info.plist", .{contents}));
    install_plist.step.dependOn(&mkdir.step);

    return &install_plist.step;
}
