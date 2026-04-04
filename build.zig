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
    exe.root_module.linkFramework("Cocoa", .{});
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

    // ── Run step ───────────────────────────────────────────────────────

    const run_step = b.step("run", "Build and run the pure-Zig app");
    const run_cmd = b.addRunArtifact(exe);
    run_cmd.step.dependOn(b.getInstallStep());
    run_step.dependOn(&run_cmd.step);

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
