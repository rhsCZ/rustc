#!/bin/bash -e
RUSTC="${RUSTC:-/usr/lib/rust-1.95/bin/rustc}" exec /usr/lib/rust-1.95/bin/cargo "$@"
