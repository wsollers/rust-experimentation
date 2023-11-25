.PHONY: all build clean

initialize:
	#do in the next directory up
	@echo "Initializing..."
	cd ..
	cargo new rust-experimentation --bin --vcs none

clean:
	@echo "Cleaning..."
	rm -rf target

rust-experimentation-release: 
	@echo "Building hello-world..."
	rustc --version
	#rustc hello-world.rs -o bin/hello-world
	cargo build --release

rust-experimentation-debug:
	@echo "Building hello-world..."
	rustc --version
	cargo build 

build: rust-experimentation-debug

all: rust-experimentation-release rust-experimentation-debug

get-rust:
	@echo "Getting Rust..."
	ccurl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	rustup toolchain install stable

get-rust-analyzer:
	@echo "Getting Rust Analyzer..."

