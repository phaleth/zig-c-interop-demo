# Credits

Demo presented here [https://youtu.be/YXrb-DqsBNU?t=951](https://youtu.be/YXrb-DqsBNU?t=951) and adapted to newer version of Zig

# Install Zig

```sh
wget https://ziglang.org/download/0.14.0/zig-linux-x86_64-0.14.0.tar.xz

tar xf zig-*.tar.xz

sudo rm -rf /opt/zig && sudo mv zig-*/ /opt/zig && rm zig-*.tar.xz

nano .bashrc

# Add following to the end of the file
export PATH=/opt/zig:$PATH

source .bashrc

zig version
```

# Build

```sh
zig build
```

# Run

```sh
./zig-out/bin/foobar baz
```

Expected output

```sh
sum: 18
/opt/zig/lib/std/debug.zig:315:31: 0x1047fd2 in dumpCurrentStackTrace (foobar)
        writeCurrentStackTrace(stderr, debug_info, io.tty.detectConfig(io.getStdErr()), start_addr) catch |err| {
                              ^
/home/user/zig/zig-c-interop-demo/src/foo.zig:4:36: 0x10eb842 in dump_stack_trace (foobar)
    std.debug.dumpCurrentStackTrace(null);
                                   ^
src/bar.c:8:5: 0x103cb25 in foo (src/bar.c)
    dump_stack_trace();
    ^
src/bar.c:17:3: 0x103cb99 in main (src/bar.c)
  foo(argc > 1);
  ^
???:?:?: 0x7f6f44a25249 in ??? (libc.so.6)
Unwind information for `libc.so.6:0x7f6f44a25249` was not available, trace may be incomplete
```
