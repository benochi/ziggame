//Let’s create a tiny hello world. Save this as tiny-hello.zig, and run
//zig build-exe .\game.zig -O ReleaseSmall -fstrip -fsingle-threaded.
//ReleaseSafe has runtime safety, Debug is default also has runtime safety.
//Currently for x86_64-windows, this produces a 2.5KiB executable.
const std = @import("std");
const Input = @import("input.zig");

pub fn main() !void {
    var allocator = std.heap.page_allocator;

    // Print a prompt to the console
    try std.io.getStdOut().writer().print("Enter something: ", .{});

    // Prepare a buffer for the input
    var buffer: [512]u8 = undefined;

    // Read input from the user
    const line = try std.io.getStdIn().reader().readUntilDelimiterOrEof(&allocator, '\n', buffer[0..]);

    // Print the input back to the console
    try std.io.getStdOut().writer().print("You entered: {}\n", .{line});
}
