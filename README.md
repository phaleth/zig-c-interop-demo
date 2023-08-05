# Credits

Demo presented here [https://youtu.be/YXrb-DqsBNU?t=951](https://youtu.be/YXrb-DqsBNU?t=951) and adapted to newer version of Zig

# Install Zig

```sh
wget https://ziglang.org/download/0.11.0/zig-linux-x86_64-0.11.0.tar.xz

tar xf zig-*.tar.xz

sudo rm -rf /opt/zig && sudo mv zig-*/ /opt/zig && rm zig-*.tar.xz

nano .bashrc

# Add following to the end of the file
export PATH=$PATH:/opt/zig

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
/opt/zig/lib/std/debug.zig:129:31: 0x21f69c in dumpCurrentStackTrace (foobar)
        writeCurrentStackTrace(stderr, debug_info, io.tty.detectConfig(io.getStdErr()), start_addr) catch |err| {
                              ^
/home/user/zig/zig-c-interop-demo/src/foo.zig:4:36: 0x21f58f in dump_stack_trace (foobar)
    std.debug.dumpCurrentStackTrace(null);
                                   ^
src/bar.c:8:5: 0x21f4e9 in foo (/home/user/zig/zig-c-interop-demo/src/bar.c)
    dump_stack_trace();
    ^
src/bar.c:17:3: 0x21f559 in main (/home/user/zig/zig-c-interop-demo/src/bar.c)
  foo(argc > 1);
  ^
../csu/libc-start.c:308:16: 0x7fc68116dd09 in __libc_start_main (../sysdeps/x86/libc-start.c)
???:?:?: 0x21f4b9 in ??? (???)
???:?:?: 0x0 in ??? (???)
```
