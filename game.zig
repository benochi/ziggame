//Let’s create a tiny hello world. Save this as tiny-hello.zig, and run
//zig build-exe .\game.zig -O ReleaseSmall -fstrip -fsingle-threaded.
//ReleaseSafe has runtime safety, Debug is default also has runtime safety.
//Currently for x86_64-windows, this produces a 2.5KiB executable.
const std = @import("std");

pub fn main() void {
    std.io.getStdOut().writeAll(
        "Hello World!",
    ) catch unreachable;
}
