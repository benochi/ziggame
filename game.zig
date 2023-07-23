//Let’s create a tiny hello world. Save this as tiny-hello.zig, and run
//zig build-exe .\game.zig -O ReleaseSmall -fstrip -fsingle-threaded.
//ReleaseSafe has runtime safety, Debug is default also has runtime safety.
//Currently for x86_64-windows, this produces a 2.5KiB executable.
const std = @import("std");
const Input = @import("input.zig");

pub fn main() !void {
    std.debug.print("Game started\n", .{});

    // Use something from input.zig here. For example, if input.zig defines a function called handleInput:
    try Input.handleInput();
}
