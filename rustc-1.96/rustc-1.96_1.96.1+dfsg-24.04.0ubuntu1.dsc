-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: rustc-1.96
Binary: rustc-1.96, libstd-rust-1.96, libstd-rust-1.96-dev, rust-1.96-gdb, rust-1.96-lldb, rust-1.96-doc, rust-1.96-src, rust-1.96-clippy, rust-1.96-miri, rustfmt-1.96, rust-1.96-all, cargo-1.96, cargo-1.96-doc
Architecture: any all
Version: 1.96.1+dfsg-24.04.0ubuntu1
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Uploaders:  Ximin Luo <infinity0@debian.org>, Sylvestre Ledru <sylvestre@debian.org>, Fabian Grünbichler <debian@fabian.gruenbichler.email>
Homepage: http://www.rust-lang.org/
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/rust-team/rust
Vcs-Git: https://salsa.debian.org/rust-team/rust.git
Testsuite: autopkgtest
Testsuite-Triggers: @builddeps@, cargo, git, librust-anyhow-dev
Build-Depends: debhelper (>= 9), debhelper-compat (= 13), dh-cargo (>= 28ubuntu1~), dpkg-dev (>= 1.17.14), python3:native, cargo-1.95 | cargo-1.96 <!pkg.rustc.dlstage0>, rustc-1.95 | rustc-1.96 <!pkg.rustc.dlstage0>, llvm-22-dev:native, llvm-22-tools:native, libclang-rt-22-dev (>= 1:22.0.0), libclang-common-22-dev (>= 1:22.0.0), cmake (>= 3.0) | cmake3, pkgconf, zlib1g-dev:native, zlib1g-dev, liblzma-dev:native, bash-completion, libcurl4-gnutls-dev | libcurl4-openssl-dev, libssh2-1-dev, libgit2-dev (>= 1.9.1~~), libgit2-dev (<< 1.10~~), libhttp-parser-dev, libsqlite3-dev, libonig-dev, binutils (>= 2.26) <!nocheck> | binutils-2.26 <!nocheck>, git <!nocheck>, procps <!nocheck>, libjs-jquery <!nocheck>, libjs-highlight.js <!nocheck>, libjs-mathjax <!nocheck>, fonts-open-sans <!nocheck>, fonts-font-awesome <!nocheck>, gdb (>= 7.12) <!nocheck>, libc6-dbg [armhf], curl <pkg.rustc.dlstage0>, ca-certificates <pkg.rustc.dlstage0>
Build-Depends-Indep: clang-22:native, libssl-dev
Build-Conflicts: gdb-minimal (<< 8.1-0ubuntu6) <!nocheck>
Package-List:
 cargo-1.96 deb devel optional arch=any
 cargo-1.96-doc deb doc optional arch=all profile=!nodoc
 libstd-rust-1.96 deb libs optional arch=any
 libstd-rust-1.96-dev deb libdevel optional arch=any
 rust-1.96-all deb devel optional arch=all
 rust-1.96-clippy deb devel optional arch=any
 rust-1.96-doc deb doc optional arch=all profile=!nodoc
 rust-1.96-gdb deb devel optional arch=all
 rust-1.96-lldb deb devel optional arch=all
 rust-1.96-miri deb devel optional arch=any
 rust-1.96-src deb devel optional arch=all
 rustc-1.96 deb devel optional arch=any
 rustfmt-1.96 deb devel optional arch=any
Checksums-Sha1:
 0a08685bd8d1d0a8595ec6ea9b6501529bf69738 75544392 rustc-1.96_1.96.1+dfsg.orig-vendor.tar.xz
 9b1e3c4bc349836f245c9d3e5acf98a851cc2159 77871460 rustc-1.96_1.96.1+dfsg.orig.tar.xz
 3dea3c5fd8185beb554d33ec6ab11dc911edaa9d 151244 rustc-1.96_1.96.1+dfsg-24.04.0ubuntu1.debian.tar.xz
Checksums-Sha256:
 64ff61f3ca1aa9f6363f69471c88a40ea3fcf79c2930591eab143f99d612ec03 75544392 rustc-1.96_1.96.1+dfsg.orig-vendor.tar.xz
 66662fa147871b9049c24ca626f56b2cc4afb564c77fd83f26057864ec7912aa 77871460 rustc-1.96_1.96.1+dfsg.orig.tar.xz
 1e54e10ff2657b47d76eccf1345e88ed4b862331339a00017ef234cc812ef1ec 151244 rustc-1.96_1.96.1+dfsg-24.04.0ubuntu1.debian.tar.xz
Files:
 80c21d5ec16749868f9946f117a17fb4 75544392 rustc-1.96_1.96.1+dfsg.orig-vendor.tar.xz
 001ec31e003cf01b6b393015319dc932 77871460 rustc-1.96_1.96.1+dfsg.orig.tar.xz
 ba7be1f7fd163059e74b33c55102f463 151244 rustc-1.96_1.96.1+dfsg-24.04.0ubuntu1.debian.tar.xz
Original-Maintainer: Debian Rust Maintainers <pkg-rust-maintainers@alioth-lists.debian.net>
Vendored-Sources-Rust: addr2line@0.24.2
 , addr2line@0.25.1, adler2@2.0.1, aes@0.8.4, aho-corasick@1.1.3, aho-corasick@1.1.4
 , alloca@0.4.0, allocator-api2@0.2.21, android_system_properties@0.1.5, anes@0.1.6
 , annotate-snippets@0.11.5, annotate-snippets@0.12.15, anstream@0.6.21, anstream@1.0.0
 , anstyle-hyperlink@1.0.2, anstyle-lossy@1.1.4, anstyle-lossy@1.1.5, anstyle-parse@0.2.7
 , anstyle-parse@1.0.0, anstyle-progress@0.1.0, anstyle-query@1.1.4, anstyle-query@1.1.5
 , anstyle-svg@0.1.11, anstyle-svg@1.1.0, anstyle-wincon@3.0.10, anstyle-wincon@3.0.11
 , anstyle@1.0.10, anstyle@1.0.11, anstyle@1.0.13, anstyle@1.0.14, anyhow@1.0.100
 , anyhow@1.0.102, ar_archive_writer@0.5.1, arbitrary@1.4.2, arc-swap@1.9.0, arrayref@0.3.9
 , arrayvec@0.7.6, askama@0.15.4, askama_derive@0.15.4, askama_macros@0.15.4
 , askama_parser@0.15.4, assert_cmd@2.1.1, async-trait@0.1.89, atomic-polyfill@1.0.3
 , atomic-waker@1.1.2, autocfg@1.5.0, backtrace@0.3.75, base16ct@0.2.0, base64@0.21.7
 , base64@0.22.1, base64ct@1.8.3, basic-toml@0.1.10, bincode@1.3.3, bit-set@0.8.0, bit-vec@0.8.0
 , bitflags@1.3.2, bitflags@2.10.0, bitflags@2.11.0, bitflags@2.6.0, bitflags@2.9.1
 , bitflags@2.9.4, bitmaps@2.1.0, blake3@1.8.2, blake3@1.8.4, block-buffer@0.10.4
 , block-buffer@0.12.0, block2@0.6.2, borsh@1.5.7, boxcar@0.2.14, bstr@1.10.0, bstr@1.12.1
 , bumpalo@3.19.0, bumpalo@3.20.2, bytecheck@0.8.2, bytecheck_derive@0.8.2, bytecount@0.6.9
 , byteorder@1.5.0, bytes@1.11.1, camino@1.2.1, camino@1.2.2, capstone-sys@0.18.0
 , capstone@0.14.0, cargo-platform@0.1.9, cargo-platform@0.2.0, cargo-platform@0.3.1
 , cargo-platform@0.3.2, cargo-util-schemas@0.8.2, cargo_metadata@0.18.1, cargo_metadata@0.21.0
 , cargo_metadata@0.23.0, cargo_metadata@0.23.1, cast@0.3.0, cc@1.2.0, cc@1.2.16, cc@1.2.28
 , cc@1.2.38, cc@1.2.45, cc@1.2.58, cfg-if@1.0.0, cfg-if@1.0.1, cfg-if@1.0.3, cfg-if@1.0.4
 , cfg_aliases@0.2.1, chacha20@0.10.0, chrono-tz@0.10.4, chrono@0.4.41, chrono@0.4.42
 , ciborium-io@0.2.2, ciborium-ll@0.2.2, ciborium@0.2.2, cipher@0.4.4, clap-cargo@0.12.0
 , clap@4.5.20, clap@4.5.48, clap@4.5.51, clap@4.5.54, clap@4.6.0, clap_builder@4.5.20
 , clap_builder@4.5.48, clap_builder@4.5.51, clap_builder@4.5.54, clap_builder@4.6.0
 , clap_complete@4.5.37, clap_complete@4.6.0, clap_derive@4.5.18, clap_derive@4.5.49
 , clap_lex@0.7.2, clap_lex@0.7.5, clap_lex@0.7.6, clap_lex@1.1.0, clru@0.6.3, cmake@0.1.54
 , cmov@0.5.2, cobs@0.3.0, codespan-reporting@0.13.1, color-eyre@0.6.5
 , color-print-proc-macro@0.3.7, color-print@0.3.7, color-spantrace@0.3.0, colorchoice@1.0.4
 , colorchoice@1.0.5, colored@2.2.0, colored@3.0.0, comma@1.0.0, console@0.15.11
 , const-oid@0.10.2, const-oid@0.9.6, constant_time_eq@0.3.1, constant_time_eq@0.4.2
 , content_inspector@0.2.4, core-foundation-sys@0.8.7, core-foundation@0.10.1, countme@3.0.1
 , cov-mark@2.1.0, cpufeatures@0.2.15, cpufeatures@0.2.17, cpufeatures@0.3.0, crc32fast@1.5.0
 , criterion-plot@0.6.0, criterion-plot@0.8.2, criterion@0.7.0, criterion@0.8.2
 , critical-section@1.2.0, crossbeam-channel@0.5.15, crossbeam-deque@0.8.5
 , crossbeam-deque@0.8.6, crossbeam-epoch@0.9.18, crossbeam-queue@0.3.12, crossbeam-utils@0.8.20
 , crossbeam-utils@0.8.21, crunchy@0.2.4, crypto-bigint@0.5.5, crypto-common@0.1.6
 , crypto-common@0.1.7, crypto-common@0.2.1, ct-codecs@1.1.6, ctrlc@3.5.0, ctrlc@3.5.1
 , ctutils@0.4.0, curl-sys@0.4.84+curl-8.17.0, curl-sys@0.4.87+curl-8.19.0, curl@0.4.49
 , cxx-build@1.0.188, cxx@1.0.188, cxxbridge-cmd@1.0.188, cxxbridge-flags@1.0.188
 , cxxbridge-macro@1.0.188, darling@0.20.11, darling_core@0.20.11, darling_macro@0.20.11
 , dashmap@6.1.0, datafrog@2.0.1, dateparser@0.2.1, dbus@0.9.9, der@0.7.10, deranged@0.5.3
 , deranged@0.5.8, derive-where@1.6.0, derive-where@1.6.1, derive_arbitrary@1.4.2
 , derive_builder@0.20.2, derive_builder_core@0.20.2, derive_builder_macro@0.20.2
 , derive_setters@0.1.8, dhat@0.3.3, diff@0.1.13, difflib@0.4.0, digest@0.10.7, digest@0.11.2
 , directories@6.0.0, dirs-sys@0.5.0, dirs@6.0.0, dispatch2@0.3.1, dispatch@0.2.0
 , displaydoc@0.2.5, dissimilar@1.0.10, dlmalloc@0.2.11, doc-comment@0.3.4, dot@0.1.4
 , drop_bomb@0.1.5, dunce@1.0.5, dyn-clone@1.0.20, ecdsa@0.16.9, ed25519-compact@2.2.0
 , ego-tree@0.10.0, either@1.15.0, elasticlunr-rs@3.0.2, elliptic-curve@0.13.8, elsa@1.11.2
 , embedded-io@0.4.0, embedded-io@0.6.1, ena@0.14.3, encode_unicode@1.0.0, encoding_rs@0.8.35
 , env_filter@0.1.4, env_logger@0.11.8, equivalent@1.0.2, erased-serde@0.4.10
 , erased-serde@0.4.9, errno@0.3.11, errno@0.3.14, escargot@0.5.15, expect-test@1.5.1
 , eyre@0.6.12, fallible-iterator@0.3.0, fallible-streaming-iterator@0.1.9, fancy-regex@0.16.2
 , faster-hex@0.10.0, fastrand@2.3.0, ff@0.13.1, fiat-crypto@0.3.0, filetime@0.2.26
 , filetime@0.2.27, find-msvc-tools@0.1.2, find-msvc-tools@0.1.4, find-msvc-tools@0.1.5
 , find-msvc-tools@0.1.9, fixedbitset@0.5.7, flate2@1.1.2, flate2@1.1.5, flate2@1.1.9
 , fluent-bundle@0.16.0, fluent-langneg@0.13.1, fluent-syntax@0.12.0, fnv@1.0.7, foldhash@0.1.5
 , foldhash@0.2.0, font-awesome-as-a-crate@0.3.0, foreign-types-shared@0.1.1
 , foreign-types@0.3.2, form_urlencoded@1.2.2, fortanix-sgx-abi@0.6.1, fs-err@2.11.0
 , fs_extra@1.3.0, fsevent-sys@4.1.0, fst@0.4.7, futf@0.1.5, futures-channel@0.3.31
 , futures-channel@0.3.32, futures-core@0.3.31, futures-core@0.3.32, futures-executor@0.3.31
 , futures-executor@0.3.32, futures-io@0.3.31, futures-io@0.3.32, futures-macro@0.3.31
 , futures-sink@0.3.31, futures-sink@0.3.32, futures-task@0.3.31, futures-task@0.3.32
 , futures-timer@3.0.3, futures-util@0.3.31, futures-util@0.3.32, futures@0.3.31, futures@0.3.32
 , generic-array@0.14.7, generic-array@0.14.9, getopts@0.2.24, getrandom@0.2.16
 , getrandom@0.2.17, getrandom@0.3.2, getrandom@0.3.3, getrandom@0.3.4, getrandom@0.4.2
 , gimli@0.31.1, gimli@0.32.3, git2-curl@0.21.0, git2@0.20.2, git2@0.20.4, gix-actor@0.40.0
 , gix-archive@0.30.0, gix-attributes@0.31.0, gix-bitmap@0.3.0, gix-blame@0.11.0
 , gix-chunk@0.7.0, gix-command@0.8.0, gix-commitgraph@0.35.0, gix-config-value@0.17.1
 , gix-config@0.54.0, gix-credentials@0.37.1, gix-date@0.15.1, gix-diff@0.61.0, gix-dir@0.23.0
 , gix-discover@0.49.0, gix-error@0.2.1, gix-features@0.46.2, gix-filter@0.28.0, gix-fs@0.19.2
 , gix-glob@0.24.0, gix-hash@0.23.0, gix-hashtable@0.13.0, gix-ignore@0.19.1, gix-index@0.49.0
 , gix-lock@21.0.2, gix-merge@0.14.0, gix-negotiate@0.29.0, gix-object@0.58.0, gix-odb@0.78.0
 , gix-pack@0.68.0, gix-packetline@0.21.2, gix-path@0.11.2, gix-pathspec@0.16.1
 , gix-prompt@0.14.1, gix-protocol@0.59.0, gix-quote@0.7.0, gix-ref@0.61.0, gix-refspec@0.39.0
 , gix-revision@0.43.0, gix-revwalk@0.29.0, gix-sec@0.13.2, gix-shallow@0.10.0
 , gix-status@0.28.0, gix-submodule@0.28.0, gix-tempfile@21.0.2, gix-trace@0.1.18
 , gix-transport@0.55.1, gix-traverse@0.55.0, gix-url@0.35.2, gix-utils@0.3.1
 , gix-validate@0.11.0, gix-worktree-state@0.28.0, gix-worktree-stream@0.30.0
 , gix-worktree@0.50.0, gix@0.81.0, glob@0.3.3, globset@0.4.15, globset@0.4.18, group@0.13.0
 , gsgdt@0.1.2, h2@0.4.13, half@2.7.1, handlebars@6.3.2, handlebars@6.4.0, hash32@0.2.1
 , hash32@0.3.1, hashbrown@0.14.5, hashbrown@0.15.5, hashbrown@0.16.0, hashbrown@0.16.1
 , hashlink@0.10.0, hashlink@0.11.0, heapless@0.7.17, heapless@0.8.0, heck@0.4.1, heck@0.5.0
 , hermit-abi@0.5.2, hex@0.4.3, hkdf@0.12.4, hmac@0.12.1, hmac@0.13.0, home@0.5.11, home@0.5.12
 , html-escape@0.2.13, html5ever@0.29.1, html5ever@0.36.1, html_parser@0.7.0, http-auth@0.1.10
 , http-body-util@0.1.3, http-body@1.0.1, http@1.4.0, httparse@1.10.1, humansize@2.1.3
 , humantime@2.3.0, hybrid-array@0.4.10, hyper-rustls@0.27.7, hyper-util@0.1.20, hyper@1.9.0
 , iana-time-zone-haiku@0.1.2, iana-time-zone@0.1.64, icu_collections@2.0.0
 , icu_collections@2.1.1, icu_collections@2.2.0, icu_list@2.1.1, icu_locale@2.1.1
 , icu_locale_core@2.0.0, icu_locale_core@2.1.1, icu_locale_core@2.2.0, icu_locale_data@2.1.1
 , icu_normalizer@2.0.0, icu_normalizer@2.1.1, icu_normalizer@2.2.0, icu_normalizer_data@2.0.0
 , icu_normalizer_data@2.1.1, icu_normalizer_data@2.2.0, icu_properties@2.0.1
 , icu_properties@2.1.1, icu_properties@2.2.0, icu_properties_data@2.0.1
 , icu_properties_data@2.1.1, icu_properties_data@2.2.0, icu_provider@2.0.0, icu_provider@2.1.1
 , icu_provider@2.2.0, id-arena@2.3.0, ident_case@1.0.1, idna@1.1.0, idna_adapter@1.2.1
 , ignore@0.4.23, ignore@0.4.25, im-rc@15.1.0, imara-diff@0.1.8, imara-diff@0.2.0
 , indenter@0.3.4, indexmap@2.11.4, indexmap@2.12.1, indexmap@2.13.0, indicatif@0.17.11
 , indoc@1.0.9, inotify-sys@0.1.5, inotify@0.11.0, inout@0.1.4, insta@1.43.1
 , intl-memoizer@0.5.3, intl_pluralrules@7.0.2, intrusive-collections@0.9.7, inventory@0.3.21
 , io-close@0.3.7, io-uring@0.7.8, ipc-channel@0.20.2, ipnet@2.12.0, iri-string@0.7.12
 , is_executable@1.0.5, is_terminal_polyfill@1.70.2, itertools@0.12.1, itertools@0.13.0
 , itertools@0.14.0, itoa@0.4.8, itoa@1.0.11, itoa@1.0.15, itoa@1.0.18, jiff-static@0.2.16
 , jiff-static@0.2.23, jiff-tzdb-platform@0.1.3, jiff-tzdb@0.1.6, jiff@0.2.16, jiff@0.2.23
 , jobserver@0.1.34, jod-thread@1.0.0, js-sys@0.3.82, js-sys@0.3.94, jsonpath-rust@1.0.4
 , junction@1.3.0, kqueue-sys@1.0.4, kqueue@1.1.1, kstring@2.0.2, la-arena@0.3.1
 , lazy_static@1.5.0, leb128@0.2.5, leb128fmt@0.1.0, levenshtein@1.0.5, lexopt@0.3.1
 , libc@0.2.174, libc@0.2.175, libc@0.2.177, libc@0.2.183, libc@0.2.184, libdbus-sys@0.2.6
 , libffi-sys@4.1.0, libffi@5.1.0, libgit2-sys@0.18.2+1.9.1, libgit2-sys@0.18.3+1.9.2
 , libloading@0.8.9, libloading@0.9.0, libm@0.2.15, libmimalloc-sys@0.1.44
 , libnghttp2-sys@0.1.13+1.68.1, libredox@0.1.10, libredox@0.1.15, libredox@0.1.3
 , libsqlite3-sys@0.37.0, libz-sys@1.1.23, libz-sys@1.1.24, line-index@0.1.2, linereader@0.4.0
 , link-cplusplus@1.0.12, linux-raw-sys@0.11.0, linux-raw-sys@0.12.1, linux-raw-sys@0.9.3
 , litemap@0.8.0, litemap@0.8.1, litemap@0.8.2, lock_api@0.4.13, lock_api@0.4.14, log@0.4.22
 , log@0.4.28, log@0.4.29, lsp-server@0.7.9, lsp-types@0.95.0, lzma-sys@0.1.20, mac@0.1.1
 , markup5ever@0.14.1, markup5ever@0.36.1, match_token@0.1.0, matchers@0.1.0, matchers@0.2.0
 , maybe-async@0.2.10, md-5@0.10.6, mdbook-core@0.5.2, mdbook-driver@0.5.2, mdbook-html@0.5.2
 , mdbook-i18n-helpers@0.4.0, mdbook-markdown@0.5.2, mdbook-preprocessor@0.5.2
 , mdbook-renderer@0.5.2, mdbook-summary@0.5.2, measureme@12.0.3, memchr@2.7.5, memchr@2.7.6
 , memchr@2.8.0, memfd@0.6.5, memmap2@0.2.3, memmap2@0.9.10, memmap2@0.9.8, memoffset@0.9.1
 , mimalloc@0.1.48, mime@0.3.17, minifier@0.3.6, minimal-lexical@0.2.1, miniz_oxide@0.8.9
 , mintex@0.1.4, mio@1.0.4, mio@1.1.0, mio@1.1.1, mio@1.2.0, miow@0.6.1, moto-rt@0.16.0
 , munge@0.4.7, munge_macro@0.4.7, new_debug_unreachable@1.0.6, nix@0.30.1, nohash-hasher@0.2.0
 , nom@7.1.3, nonempty@0.12.0, normalize-line-endings@0.3.0, normpath@1.3.0, normpath@1.5.0
 , notify-types@2.0.0, notify@8.2.0, ntapi@0.4.1, nu-ansi-term@0.46.0, nu-ansi-term@0.50.3
 , num-bigint@0.4.6, num-complex@0.4.6, num-conv@0.2.0, num-conv@0.2.1, num-integer@0.1.46
 , num-iter@0.1.45, num-modular@0.6.1, num-order@1.2.0, num-rational@0.4.2, num-traits@0.2.19
 , num@0.4.3, num_cpus@1.17.0, num_threads@0.1.7, number_prefix@0.4.0, objc2-cloud-kit@0.3.2
 , objc2-core-data@0.3.2, objc2-core-foundation@0.3.2, objc2-core-graphics@0.3.2
 , objc2-core-image@0.3.2, objc2-core-location@0.3.2, objc2-core-text@0.3.2, objc2-encode@4.1.0
 , objc2-foundation@0.3.2, objc2-io-kit@0.3.2, objc2-io-surface@0.3.2, objc2-quartz-core@0.3.2
 , objc2-ui-kit@0.3.2, objc2-user-notifications@0.3.2, objc2@0.6.3, objc2@0.6.4, object@0.36.7
 , object@0.37.3, odht@0.3.1, once_cell@1.20.2, once_cell@1.21.3, once_cell@1.21.4
 , once_cell_polyfill@1.70.2, oorandom@11.1.5, opener@0.7.2, opener@0.8.2, opener@0.8.4
 , openssl-macros@0.1.1, openssl-probe@0.1.6, openssl-src@300.5.4+3.5.4, openssl-sys@0.9.111
 , openssl-sys@0.9.112, openssl@0.10.76, option-ext@0.2.0, ordered-float@2.10.1, orion@0.17.13
 , os_info@3.14.0, overload@0.1.1, owo-colors@4.2.3, p384@0.13.1, page_size@0.6.0
 , papergrid@0.11.0, parking_lot@0.12.4, parking_lot@0.12.5, parking_lot_core@0.9.11
 , parking_lot_core@0.9.12, partial_ref@0.3.3, partial_ref_derive@0.3.3, pasetors@0.7.8
 , paste@1.0.15, pathdiff@0.2.3, pem-rfc7468@0.7.0, percent-encoding@2.3.2
 , perf-event-open-sys@3.0.0, perf-event-open-sys@4.0.0, perf-event@0.4.8, pest@2.8.3
 , pest@2.8.6, pest_derive@2.8.3, pest_derive@2.8.6, pest_generator@2.8.3, pest_generator@2.8.6
 , pest_meta@2.8.3, pest_meta@2.8.6, petgraph@0.8.2, phf@0.11.3, phf@0.12.1, phf@0.13.1
 , phf_codegen@0.11.3, phf_codegen@0.13.1, phf_generator@0.11.3, phf_generator@0.13.1
 , phf_shared@0.11.3, phf_shared@0.12.1, phf_shared@0.13.1, pin-project-lite@0.2.16
 , pin-project-lite@0.2.17, pin-utils@0.1.0, pkcs8@0.10.2, pkg-config@0.3.31, pkg-config@0.3.32
 , plain@0.2.3, plotters-backend@0.3.7, plotters-svg@0.3.7, plotters@0.3.7, polib@0.2.0
 , polonius-engine@0.13.0, portable-atomic-util@0.2.4, portable-atomic-util@0.2.6
 , portable-atomic@1.11.1, portable-atomic@1.13.1, postcard@1.1.3, potential_utf@0.1.3
 , potential_utf@0.1.4, potential_utf@0.1.5, powerfmt@0.2.0, ppv-lite86@0.2.21
 , precomputed-hash@0.1.1, predicates-core@1.0.9, predicates-tree@1.0.12, predicates@3.1.3
 , pretty_assertions@1.4.1, prettydiff@0.9.0, prettyplease@0.2.37, primeorder@0.13.6
 , proc-macro-hack@0.5.20+deprecated, proc-macro2@1.0.101, proc-macro2@1.0.103
 , proc-macro2@1.0.106, proc-macro2@1.0.89, proc-macro2@1.0.95, process-wrap@8.2.1
 , prodash@31.0.0, proptest@1.11.0, proptest@1.9.0, protobuf-support@3.7.1, protobuf@3.7.1
 , psm@0.1.26, ptr_meta@0.3.1, ptr_meta_derive@0.3.1, pulldown-cmark-escape@0.11.0
 , pulldown-cmark-to-cmark@10.0.4, pulldown-cmark-to-cmark@19.0.1
 , pulldown-cmark-to-cmark@21.1.0, pulldown-cmark@0.11.3, pulldown-cmark@0.12.2
 , pulldown-cmark@0.13.0, pulldown-cmark@0.13.3, pulldown-cmark@0.9.6, punycode@0.4.1
 , quick-error@1.2.3, quine-mc_cluskey@0.2.4, quote@1.0.37, quote@1.0.40, quote@1.0.42
 , quote@1.0.45, r-efi-alloc@2.1.0, r-efi@5.2.0, r-efi@5.3.0, r-efi@6.0.0
 , ra-ap-rustc_abi@0.143.0, ra-ap-rustc_ast_ir@0.143.0, ra-ap-rustc_hashes@0.143.0
 , ra-ap-rustc_index@0.143.0, ra-ap-rustc_index_macros@0.143.0, ra-ap-rustc_lexer@0.143.0
 , ra-ap-rustc_next_trait_solver@0.143.0, ra-ap-rustc_parse_format@0.143.0
 , ra-ap-rustc_pattern_analysis@0.143.0, ra-ap-rustc_type_ir@0.143.0
 , ra-ap-rustc_type_ir_macros@0.143.0, railroad@0.3.3, rancor@0.1.1, rand@0.10.0, rand@0.8.5
 , rand@0.9.2, rand_chacha@0.3.1, rand_chacha@0.9.0, rand_core@0.10.0, rand_core@0.6.4
 , rand_core@0.9.3, rand_core@0.9.5, rand_xorshift@0.4.0, rand_xoshiro@0.6.0, rand_xoshiro@0.7.0
 , rayon-core@1.13.0, rayon@1.11.0, redox_syscall@0.5.13, redox_syscall@0.5.17
 , redox_syscall@0.5.18, redox_syscall@0.5.7, redox_syscall@0.7.3, redox_users@0.5.2
 , ref-cast-impl@1.0.25, ref-cast@1.0.25, regex-automata@0.1.10, regex-automata@0.4.13
 , regex-automata@0.4.14, regex-automata@0.4.9, regex-lite@0.1.8, regex-syntax@0.6.29
 , regex-syntax@0.8.10, regex-syntax@0.8.5, regex-syntax@0.8.8, regex@1.11.1, regex@1.12.2
 , regex@1.12.3, rend@0.5.3, reqwest@0.13.2, rfc6979@0.4.0, ring@0.17.14, rkyv@0.8.15
 , rkyv_derive@0.8.15, rowan@0.15.18, rsqlite-vfs@0.1.0, rusqlite@0.39.0
 , rustc-build-sysroot@0.5.13, rustc-demangle@0.1.25, rustc-demangle@0.1.26
 , rustc-demangle@0.1.27, rustc-hash@1.1.0, rustc-hash@2.1.1, rustc-hash@2.1.2
 , rustc-literal-escaper@0.0.4, rustc-literal-escaper@0.0.5, rustc-literal-escaper@0.0.7
 , rustc-semver@1.1.0, rustc-stable-hash@0.1.2, rustc_apfloat@0.2.3+llvm-462a31f5a5ab
 , rustc_tools_util@0.4.2, rustc_version@0.4.1, rustfix@0.8.7, rustix@1.0.7, rustix@1.1.2
 , rustix@1.1.4, rustls-pki-types@1.14.0, rustls-webpki@0.103.10, rustls@0.23.37
 , rustversion@1.0.22, rusty-fork@0.3.1, ruzstd@0.7.3, ruzstd@0.8.2, ryu@1.0.18, ryu@1.0.20
 , salsa-macro-rules@0.25.2, salsa-macros@0.25.2, salsa@0.25.2, same-file@1.0.6, schannel@0.1.28
 , schannel@0.1.29, schemars@1.1.0, schemars@1.2.1, schemars_derive@1.1.0, schemars_derive@1.2.1
 , scip@0.5.2, scoped-tls@1.0.1, scopeguard@1.2.0, scratch@1.0.9, sec1@0.7.3
 , security-framework-sys@2.17.0, security-framework@3.7.0, self_cell@1.2.1, semver@1.0.23
 , semver@1.0.27, serde-untagged@0.1.9, serde-value@0.7.0, serde@1.0.215, serde@1.0.219
 , serde@1.0.226, serde@1.0.228, serde_core@1.0.226, serde_core@1.0.228, serde_derive@1.0.215
 , serde_derive@1.0.219, serde_derive@1.0.226, serde_derive@1.0.228
 , serde_derive_internals@0.29.1, serde_ignored@0.1.14, serde_json@1.0.132, serde_json@1.0.145
 , serde_json@1.0.149, serde_path_to_error@0.1.20, serde_repr@0.1.20, serde_spanned@0.6.9
 , serde_spanned@1.0.3, serde_spanned@1.1.0, serde_spanned@1.1.1, serde_test@1.0.177
 , sha1-checked@0.10.0, sha1@0.10.6, sha1@0.11.0, sha2@0.10.8, sha2@0.10.9, sha2@0.11.0
 , sharded-slab@0.1.7, shell-escape@0.1.5, shell-words@1.1.1, shlex@1.3.0, signature@2.2.0
 , simd-adler32@0.3.7, simd-adler32@0.3.9, simdutf8@0.1.5, similar@2.7.0, siphasher@1.0.1
 , sized-chunks@0.6.5, slab@0.4.11, slab@0.4.12, smallvec@1.13.2, smallvec@1.15.1
 , smol_str@0.3.2, snapbox-macros@1.1.0, snapbox@1.2.0, socket2@0.6.1, socket2@0.6.3
 , spanned@0.4.1, spdx-expression@0.5.2, spdx-rs@0.5.5, spin@0.9.8, spki@0.7.3
 , sqlite-wasm-rs@0.5.2, stable_deref_trait@1.2.0, stable_deref_trait@1.2.1, stacker@0.1.21
 , static_assertions@1.1.0, string_cache@0.8.9, string_cache@0.9.0, string_cache_codegen@0.5.4
 , string_cache_codegen@0.6.1, stringdex@0.0.6, strsim@0.11.1, strum@0.24.1, strum_macros@0.24.3
 , subtle@2.6.1, supports-hyperlinks@3.2.0, supports-unicode@3.0.0, syn@1.0.109, syn@2.0.104
 , syn@2.0.106, syn@2.0.110, syn@2.0.117, syn@2.0.87, sync_wrapper@1.0.2, synstructure@0.12.6
 , synstructure@0.13.2, syntect@5.3.0, sysinfo@0.38.4, tabled@0.15.0, tar@0.4.45
 , temp-dir@0.1.16, tempfile@3.21.0, tempfile@3.23.0, tempfile@3.27.0, tendril@0.4.3
 , tenthash@1.1.0, term@1.2.1, termcolor@1.4.1, terminal_size@0.4.4, termize@0.2.1
 , termtree@0.5.1, text-size@1.1.1, textwrap@0.16.2, thin-vec@0.2.14, thiserror-impl@1.0.69
 , thiserror-impl@2.0.16, thiserror-impl@2.0.17, thiserror-impl@2.0.18, thiserror@1.0.69
 , thiserror@2.0.16, thiserror@2.0.17, thiserror@2.0.18, thorin-dwp@0.9.0, thousands@0.2.0
 , thread_local@1.1.8, thread_local@1.1.9, threadpool@1.8.1, tikv-jemalloc-ctl@0.5.4
 , tikv-jemalloc-sys@0.5.4+5.3.0-patched
 , tikv-jemalloc-sys@0.6.1+5.3.0-1-ge13ca993e8ccb9ba9847cc330696e02839f328f7
 , tikv-jemallocator@0.5.4, time-core@0.1.8, time-macros@0.2.27, time@0.3.47, tinystr@0.8.1
 , tinystr@0.8.2, tinystr@0.8.3, tinytemplate@1.2.1, tinyvec@1.10.0, tinyvec@1.11.0
 , tinyvec_macros@0.1.1, tokio-rustls@0.26.4, tokio-util@0.7.18, tokio@1.46.1, tokio@1.50.0
 , toml@0.5.11, toml@0.7.8, toml@0.8.23, toml@0.9.8, toml@1.1.0+spec-1.1.0
 , toml@1.1.2+spec-1.1.0, toml_datetime@0.6.11, toml_datetime@0.7.3
 , toml_datetime@1.1.0+spec-1.1.0, toml_datetime@1.1.1+spec-1.1.0, toml_edit@0.19.15
 , toml_edit@0.22.27, toml_edit@0.25.10+spec-1.1.0, toml_parser@1.0.4
 , toml_parser@1.1.0+spec-1.1.0, toml_parser@1.1.2+spec-1.1.0, toml_write@0.1.2
 , toml_writer@1.0.4, toml_writer@1.1.0+spec-1.1.0, toml_writer@1.1.1+spec-1.1.0
 , topological-sort@0.2.2, tower-http@0.6.8, tower-layer@0.3.3, tower-service@0.3.3, tower@0.5.3
 , tracing-attributes@0.1.28, tracing-attributes@0.1.30, tracing-attributes@0.1.31
 , tracing-chrome@0.7.2, tracing-core@0.1.33, tracing-core@0.1.34, tracing-core@0.1.35
 , tracing-core@0.1.36, tracing-error@0.2.1, tracing-log@0.2.0, tracing-serde@0.2.0
 , tracing-subscriber@0.3.19, tracing-subscriber@0.3.20, tracing-subscriber@0.3.22
 , tracing-subscriber@0.3.23, tracing-tree@0.3.1, tracing-tree@0.4.0, tracing@0.1.41
 , tracing@0.1.43, tracing@0.1.44, triomphe@0.1.14, try-lock@0.2.5, twox-hash@1.6.3
 , twox-hash@2.1.2, type-map@0.5.1, typed-arena@2.0.2, typeid@1.0.3, typenum@1.17.0
 , typenum@1.19.0, ucd-parse@0.1.13, ucd-trie@0.1.7, ui_test@0.30.3, unarray@0.1.4
 , ungrammar@1.16.1, unic-langid-impl@0.9.6, unic-langid-macros-impl@0.9.6
 , unic-langid-macros@0.9.6, unic-langid@0.9.6, unicase@2.8.1, unicase@2.9.0, unicode-bom@2.0.3
 , unicode-ident@1.0.13, unicode-ident@1.0.18, unicode-ident@1.0.19, unicode-ident@1.0.22
 , unicode-ident@1.0.24, unicode-normalization@0.1.25, unicode-properties@0.1.3
 , unicode-properties@0.1.4, unicode-script@0.5.7, unicode-security@0.1.2
 , unicode-segmentation@1.12.0, unicode-width@0.1.14, unicode-width@0.2.2, unicode-xid@0.2.6
 , unified-diff@0.2.1, untrusted@0.9.0, unwinding@0.2.8, url@2.5.7, url@2.5.8, urlencoding@2.1.3
 , utf-8@0.7.6, utf8-width@0.1.7, utf8-width@0.1.8, utf8_iter@1.0.4, utf8parse@0.2.2
 , uuid@1.18.1, valuable@0.1.0, valuable@0.1.1, varisat-checker@0.2.2, varisat-dimacs@0.2.2
 , varisat-formula@0.2.2, varisat-internal-macros@0.2.2, varisat-internal-proof@0.2.2
 , varisat@0.2.2, vcpkg@0.2.15, vec_mut_scan@0.3.0, version_check@0.9.5, vex-sdk@0.27.1
 , wait-timeout@0.2.1, walkdir@2.5.0, want@0.3.1
 , wasi-preview1-component-adapter-provider@43.0.0, wasi@0.11.1+wasi-snapshot-preview1
 , wasi@0.14.2+wasi-0.2.4, wasi@0.14.4+wasi-0.2.4, wasip2@1.0.1+wasi-0.2.4
 , wasip2@1.0.2+wasi-0.2.9, wasip3@0.4.0+wasi-0.3.0-rc-2026-01-06, wasm-bindgen-futures@0.4.67
 , wasm-bindgen-macro-support@0.2.105, wasm-bindgen-macro-support@0.2.117
 , wasm-bindgen-macro@0.2.105, wasm-bindgen-macro@0.2.117, wasm-bindgen-shared@0.2.105
 , wasm-bindgen-shared@0.2.117, wasm-bindgen@0.2.105, wasm-bindgen@0.2.117
 , wasm-component-ld@0.5.22, wasm-encoder@0.219.2, wasm-encoder@0.244.0, wasm-encoder@0.246.2
 , wasm-metadata@0.244.0, wasm-metadata@0.246.2, wasmparser@0.219.2, wasmparser@0.236.1
 , wasmparser@0.244.0, wasmparser@0.246.2, wast@246.0.2, wat@1.246.2, web-sys@0.3.82
 , web-sys@0.3.94, web-time@1.1.0, web_atoms@0.2.0, winapi-i686-pc-windows-gnu@0.4.0
 , winapi-util@0.1.10, winapi-util@0.1.11, winapi-x86_64-pc-windows-gnu@0.4.0, winapi@0.3.9
 , windows-bindgen@0.66.0, windows-collections@0.2.0, windows-collections@0.3.2
 , windows-core@0.61.0, windows-core@0.61.2, windows-core@0.62.2, windows-future@0.2.0
 , windows-future@0.2.1, windows-future@0.3.2, windows-implement@0.60.0
 , windows-implement@0.60.2, windows-interface@0.59.1, windows-interface@0.59.3
 , windows-link@0.1.1, windows-link@0.1.3, windows-link@0.2.0, windows-link@0.2.1
 , windows-numerics@0.2.0, windows-numerics@0.3.1, windows-result@0.3.2, windows-result@0.3.4
 , windows-result@0.4.1, windows-strings@0.4.0, windows-strings@0.4.2, windows-strings@0.5.1
 , windows-sys@0.52.0, windows-sys@0.59.0, windows-sys@0.60.2, windows-sys@0.61.0
 , windows-sys@0.61.2, windows-targets@0.52.6, windows-targets@0.53.2, windows-targets@0.53.3
 , windows-targets@0.53.5, windows-threading@0.1.0, windows-threading@0.2.1, windows@0.61.1
 , windows@0.61.3, windows@0.62.2, windows_aarch64_gnullvm@0.52.6
 , windows_aarch64_gnullvm@0.53.0, windows_aarch64_gnullvm@0.53.1, windows_aarch64_msvc@0.52.6
 , windows_aarch64_msvc@0.53.0, windows_aarch64_msvc@0.53.1, windows_i686_gnu@0.52.6
 , windows_i686_gnu@0.53.0, windows_i686_gnu@0.53.1, windows_i686_gnullvm@0.52.6
 , windows_i686_gnullvm@0.53.0, windows_i686_gnullvm@0.53.1, windows_i686_msvc@0.52.6
 , windows_i686_msvc@0.53.0, windows_i686_msvc@0.53.1, windows_x86_64_gnu@0.52.6
 , windows_x86_64_gnu@0.53.0, windows_x86_64_gnu@0.53.1, windows_x86_64_gnullvm@0.52.6
 , windows_x86_64_gnullvm@0.53.0, windows_x86_64_gnullvm@0.53.1, windows_x86_64_msvc@0.52.6
 , windows_x86_64_msvc@0.53.0, windows_x86_64_msvc@0.53.1, winnow@0.5.40, winnow@0.7.13
 , winnow@0.7.15, winnow@1.0.0, winnow@1.0.1, winsplit@0.1.0, wit-bindgen-core@0.51.0
 , wit-bindgen-rt@0.39.0, wit-bindgen-rust-macro@0.51.0, wit-bindgen-rust@0.51.0
 , wit-bindgen@0.45.1, wit-bindgen@0.46.0, wit-bindgen@0.51.0, wit-component@0.244.0
 , wit-component@0.246.2, wit-parser@0.244.0, wit-parser@0.246.2, write-json@0.1.4
 , writeable@0.6.1, writeable@0.6.2, xattr@1.6.1, xflags-macros@0.3.2, xflags@0.3.2
 , xshell-macros@0.2.7, xshell@0.2.7, xz2@0.1.7, yansi@1.0.1, yoke-derive@0.8.0
 , yoke-derive@0.8.1, yoke-derive@0.8.2, yoke@0.8.0, yoke@0.8.1, yoke@0.8.2
 , zerocopy-derive@0.8.27, zerocopy-derive@0.8.48, zerocopy@0.8.27, zerocopy@0.8.48
 , zerofrom-derive@0.1.6, zerofrom-derive@0.1.7, zerofrom@0.1.6, zerofrom@0.1.7, zeroize@1.8.2
 , zerotrie@0.2.2, zerotrie@0.2.3, zerotrie@0.2.4, zerovec-derive@0.11.1, zerovec-derive@0.11.2
 , zerovec-derive@0.11.3, zerovec@0.11.4, zerovec@0.11.5, zerovec@0.11.6, zip@4.6.1
 , zlib-rs@0.6.3, zmij@1.0.21

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEBA4y7RgfpWqP10UabjGunhICqWAFAmpckk0ACgkQbjGunhIC
qWBNUA//U3B4nidzzHyvwAVDa2x2KM57qLvoOk5DtmvGhE3be7cbcsZMcBioXH0R
AxilcUOOYb3Lwl3kn3E20OnsxSLNlmIcCWsGSgWPq+LQVyBjaKrPBCMaStSzCUZk
lWU2v0K05eNtmpXdaokxsMooSIfYXmG2QrBT4V+xBMgPdlrKuXvrg9AqfVSHjgSd
BJ2V0MXBUQrvoJaaiEEXrQjRKqsyDdIUiFatcIKbcxn/AJsAYCtMkDkUMaWynS8v
AWg597BlmALIPrPH6EL8WyprpPbU+qdF4Ky0aU2FOIDsdlH7jbGtN9RzH/3f4loW
BPJdLmSqbWqNhLiawbbiPJpfmjBahT51qjg0CtpS1aML9yf+PlwvSCXxhZhioxwu
pYWOZk5nVHxlavjvjCkJiBS6/OH0j4yKIrLptDXbyJAT+QINKZm8GdSHHlafdtOe
scSArkj2Vazy+PkxpttedUHk9uWUTQxc6sjt3AaXnMySF3tLVL6kHDLLziDJqf4E
REQuiN+6OZ3ocYlpz6OCYKj6YT9oIvdLwHnjKqwQL9+iR0MFRWmHmTXVkhX647xm
/gRZg8ngg+jefgZD5QHgZeWgOVj4Uv91323o+yG4qPixSqj3QkQYUJSPR4Ki6xQO
zJ+2NcrNiYD9MDd28C8aXhtnMpW4x1l4fPmi0XFa3evlobBlpsA=
=gRsZ
-----END PGP SIGNATURE-----
