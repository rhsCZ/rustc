#!/bin/bash -e
RUSTC="${RUSTC:-/usr/lib/rust-1.97/bin/rustc}" exec /usr/lib/rust-1.97/bin/cargo "$@"
