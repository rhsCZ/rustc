#!/usr/bin/env python3
# This script "brute-forces" the removal of the privacy-breach-logo
# Lintian error by replacing any remote resources referenced in the
# Rust docs with local copies of the resources or text.
#
# This *could* be done as a patch, but refreshing said patch every
# time a new Rust version came out would be tedious and error-prone.
#
# New replacements can be added to replace_urls_in_html.

import sys
from pathlib import Path
import re


def compute_topdir(file_path: Path, root_dir: Path) -> str:
    """
    Compute a relative path from the file to the root_dir.
    Example: html/std/index.html -> ../../..
    """
    rel_path = file_path.parent.relative_to(root_dir)
    return "../" * len(rel_path.parts)


def replace_urls_in_html(file_path: Path, topdir: str):
    """
    Replace external logos and badges with local equivalents.
    """
    content = file_path.read_text(encoding="utf-8")

    # Replace rust-lang.org logos
    content = re.sub(
        r"https://(?:doc|www)\.rust-lang\.org/(favicon\.ico|logos/rust-logo-32x32-blk\.png)",
        f"{topdir}rust-logo-32x32-blk.png",
        content,
    )

    # Replace GitHub Actions badge
    content = re.sub(
        r'<img src="https://github\.com/rust-lang/rust-clippy/workflows/Clippy%20Test%20\(bors\)/badge\.svg[^"]*" alt="([^"]*)" */>',
        r'<span class="deb-privacy-replace--github.com-badge>\1</span>',
        content,
    )

    # Replace shields.io badges
    content = re.sub(
        r'<img src="https://img\.shields\.io/[^"]*" alt="([^"]*)" */>',
        r'<span class="deb-privacy-replace--shields-io">\1</span>',
        content,
    )

    # Write back
    file_path.write_text(content, encoding="utf-8")


def main(argv):
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <docs_root>", file=sys.stderr)
        sys.exit(1)

    doc_root = Path(sys.argv[1]).resolve()
    if not doc_root.is_dir():
        print(f"Error: {doc_root} is not a directory", file=sys.stderr)
        sys.exit(1)

    # Find all HTML files under html/ subdirs
    html_files = list(doc_root.rglob("html/**/*.html"))
    if not html_files:
        print("No HTML files found; nothing to do.")
        return

    for file_path in html_files:
        topdir = compute_topdir(file_path, doc_root)
        replace_urls_in_html(file_path, topdir)

    print(f"Processed {len(html_files)} HTML files.")


if __name__ == "__main__":
    main(sys.argv)
