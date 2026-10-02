#!/bin/bash -e
RUSTC="${RUSTC:-/usr/lib/rust-1.99/bin/rustc}" exec /usr/lib/rust-1.99/bin/cargo "$@"
