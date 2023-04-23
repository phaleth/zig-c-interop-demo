# Install Zig
```sh
wget https://ziglang.org/builds/zig-linux-x86_64-0.11.0-dev.2725+4374ce51b.tar.xz

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

