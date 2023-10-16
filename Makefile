MODE := release
TARGET := aarch64-unknown-none-softfloat
build_args-release := --release
build_args-rust := -Zbuild-std
rustc_flags := -Clink-args="-pie"

build_args := \
  --target $(TARGET) \
  $(build_args-$(MODE))

build: 
	cargo rustc $(build_args) -- $(rustc_flags)

clean:
	cargo clean
