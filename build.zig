const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});

    const exe = b.addExecutable(.{
        .name = "foobar",
        .target = target,
        .root_source_file = .{ .path = "src/foo.zig" }
    });
    exe.addCSourceFile(.{
        .file = .{ .cwd_relative = "src/bar.c" },
        .flags = &[_][]const u8{
            "-std=c99",
            "-Wall",
            "-Wextra",
        }
    });
    exe.linkLibC();
    
    b.installArtifact(exe);
}
