#!/bin/sh
# See README.Debian "Bootstrapping" for details.
#
# You may want to use `debian/rules source_orig-stage0` instead of calling this
# directly.

set -e

upstream_version="$(dpkg-parsechangelog -SVersion | sed -e 's/\(.*\)-.*/\1/g')"
upstream_bootstrap_arch="${upstream_bootstrap_arch:-amd64 arm64 armhf i386 ppc64el s390x riscv64}"
stage0_meta="src/stage0"
dist_server="$(sed -n 's/^dist_server=//p' "$stage0_meta")"
compiler_date="$(sed -n 's/^compiler_date=//p' "$stage0_meta")"
compiler_version="$(sed -n 's/^compiler_version=//p' "$stage0_meta")"

download_stage0_component() {
	local rust_triplet="$1"
	local component="$2"
	local filename="${component}-${compiler_version}-${rust_triplet}.tar.xz"
	local relpath="dist/${compiler_date}/${filename}"
	local checksum

	checksum="$(sed -n "s#^${relpath}=##p" "$stage0_meta")"
	if [ -z "$checksum" ]; then
		echo >&2 "$0: missing checksum for ${relpath} in ${stage0_meta}"
		exit 1
	fi

	mkdir -p "stage0/${compiler_date}"
	if [ ! -f "stage0/${compiler_date}/${filename}" ]; then
		echo "downloading ${dist_server}/${relpath}" >&2
		curl -fL --retry 3 -o "stage0/${compiler_date}/${filename}" "${dist_server}/${relpath}"
	fi

	printf '%s  %s\n' "$checksum" "stage0/${compiler_date}/${filename}" | sha256sum -c >/dev/null
}

rm -f stage0/*/*.sha256
mkdir -p stage0 build && ln -sf ../stage0 build/cache
touch stage0/hack
if [ -n "$(find stage0/ -type f)" ]; then
	echo >&2 "$0: NOTE: extra artifacts in stage0/ will be included:"
	find stage0/ -type f
fi
for deb_host_arch in $upstream_bootstrap_arch; do
	set -- $(make -s --no-print-directory -f debian/architecture-test.mk "rust-for-deb_${deb_host_arch}")
	deb_host_arch="$1"
	rust_triplet="$2"
	download_stage0_component "${rust_triplet}" rust-std
	download_stage0_component "${rust_triplet}" rustc
	download_stage0_component "${rust_triplet}" cargo
done

echo >&2 "building stage0 tar file now, this will take a while..."
stamp=@${SOURCE_DATE_EPOCH:-$(date +%s)}
touch --date="$stamp" stage0/dpkg-source-dont-rename-parent-directory
tar --mtime="$stamp" --clamp-mtime \
  --owner=root --group=root \
  -I 'xz -T0' \
  -cvf "../rustc_${upstream_version}.orig-stage0.tar.xz" \
  --transform "s/^stage0\///" \
  stage0/*

rm -f src/bootstrap/bootstrap.pyc

cat <<eof
================================================================================
orig-stage0 bootstrapping tarball created in ../rustc_${upstream_version}.orig-stage0.tar.xz
containing the upstream compilers for $upstream_bootstrap_arch

You *probably* now want to do the following steps:

1. Add [$(echo $upstream_bootstrap_arch | sed -e 's/\S*/!\0/g')] to the rustc/cargo Build-Depends in d/control
2. Update d/changelog
3. Run \`dpkg-source -b .\` to generate a .dsc that includes this tarball.
================================================================================
eof
