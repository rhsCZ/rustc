#!/bin/bash -e
RUSTC="${RUSTC:-/usr/lib/rust-1.94/bin/rustc}" exec /usr/lib/rust-1.94/bin/cargo "$@"
