TARGET = powerpc-unknown-linux-gnu
BIN = hello_rust

build:
	cargo build --target $(TARGET) --release

run: build
	qemu-ppc target/$(TARGET)/release/$(BIN)

clean:
	cargo clean