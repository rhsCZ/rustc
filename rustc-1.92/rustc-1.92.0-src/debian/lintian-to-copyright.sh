#!/bin/sh
# Pipe the output of lintian into this.

set -e

cleanup() {
    set +e

    [ -d "$venv_dir" ] && rm -rf "$venv_dir"
}
trap cleanup EXIT

# Create temporary venv
venv_dir="$(mktemp -d)"
python3 -m venv "$venv_dir"
"$venv_dir/bin/pip" install --quiet pytoml

sed -ne 's/.* file-without-copyright-information //p' | cut -d/ -f1-2 | sort -u | while read x; do
    "$venv_dir/bin/python" debian/scripts/guess-crate-copyright "$x"
done
