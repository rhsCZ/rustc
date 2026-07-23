#!/bin/bash -e
RUSTC="${RUSTC:-/usr/lib/rust-1.92/bin/rustc}" exec /usr/lib/rust-1.92/bin/cargo "$@"
