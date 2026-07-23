#!/bin/bash
# Don't run this directly, use "debian/rules update-version" instead

set -e

cd $(dirname "$0")

OLD_BOOTSTRAP=$1
OLD=$2
NEW=$3

sed -i \
    -e "s/\<cargo-$OLD/cargo-$NEW/g" \
    -e "s/\<rustc-$OLD/rustc-$NEW/g" \
    -e "s/\<rust-$OLD/rust-$NEW/g" \
    -e "s/\<rustfmt-$OLD/rustfmt-$NEW/g" \
    -e "s/\<libstd-rust-$OLD/rust-$NEW/g" \
    -e "s/\<cargo-$OLD_BOOTSTRAP/cargo-$OLD/g" \
    -e "s/\<rustc-$OLD_BOOTSTRAP/rustc-$OLD/g" \
    -e "s/\<rust-$OLD_BOOTSTRAP/rust-$OLD/g" \
    -e "s/\<rustfmt-$OLD_BOOTSTRAP/rustfmt-$OLD/g" \
    -e "s/\<libstd-rust-$OLD_BOOTSTRAP/rust-$OLD/g" \
    control

sed -i -e "s/\<rustc-$OLD\>/rustc-$NEW/g" source/lintian-overrides
