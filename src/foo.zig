const std = @import("std");

export fn dump_stack_trace() void {
    std.debug.dumpCurrentStackTrace(null);
}

export fn sum_array(ints_ptr: [*]const i32, ints_len: usize) i32 {
    return sumArray(ints_ptr[0..ints_len]);
}

fn sumArray(nums: []const i32) i32 {
    var sum: i32 = 0;
    for (nums) |num| {
        sum += num;
    }
    return sum;
}

// skip definning main in zig code
pub const _start = void;
