#!/bin/bash -e
RUSTC="${RUSTC:-/usr/lib/rust-1.98/bin/rustc}" exec /usr/lib/rust-1.98/bin/cargo "$@"
