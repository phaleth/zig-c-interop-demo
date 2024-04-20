const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});

    const exe = b.addExecutable(.{
        .name = "foobar",
        .root_source_file = b.path("src/foo.zig"),
        .target = target,
    });
    exe.addCSourceFile(.{
        .file = .{ .cwd_relative = "src/bar.c" },
        .flags = &[_][]const u8{
            "-std=c99",
            "-Wall",
            "-Wextra",
        },
    });
    exe.linkLibC();

    b.installArtifact(exe);
}
