const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});

    const exe = b.addExecutable(.{
        .name = "foobar",
        .target = target,
        .root_source_file = .{ .path = "src/foo.zig" }
    });
    exe.addCSourceFile("src/bar.c", &.{"-std=c99"});
    exe.linkLibC();
    
    b.installArtifact(exe);
}
