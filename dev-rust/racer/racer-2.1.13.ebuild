# Copyright 2017-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.2.0

EAPI=7

CRATES="
aho-corasick-0.6.6
ansi_term-0.11.0
arrayvec-0.4.7
atty-0.2.10
bitflags-1.0.3
byteorder-1.2.3
cfg-if-0.1.4
clap-2.32.0
cloudabi-0.0.3
crossbeam-deque-0.2.0
crossbeam-epoch-0.3.1
crossbeam-utils-0.2.2
derive_more-0.13.0
either-1.5.0
ena-0.9.3
env_logger-0.5.10
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
humantime-1.1.1
itoa-0.4.3
lazy_static-1.0.1
lazycell-1.0.0
libc-0.2.42
lock_api-0.1.3
log-0.4.3
memchr-2.0.1
memoffset-0.2.1
nodrop-0.1.12
num_cpus-1.8.0
owning_ref-0.3.3
parking_lot-0.6.4
parking_lot_core-0.2.14
parking_lot_core-0.3.1
proc-macro2-0.4.20
quick-error-1.2.2
quote-0.6.3
racer-2.1.13
racer-cargo-metadata-0.1.1
racer-interner-0.1.0
racer-testutils-0.1.0
rand-0.4.2
rand-0.5.5
rand_core-0.2.1
redox_syscall-0.1.40
redox_termios-0.1.1
regex-1.0.1
regex-syntax-0.6.1
remove_dir_all-0.5.1
rls-span-0.4.0
rustc-ap-arena-297.0.0
rustc-ap-graphviz-297.0.0
rustc-ap-rustc_cratesio_shim-297.0.0
rustc-ap-rustc_data_structures-297.0.0
rustc-ap-rustc_errors-297.0.0
rustc-ap-rustc_target-297.0.0
rustc-ap-serialize-297.0.0
rustc-ap-syntax-297.0.0
rustc-ap-syntax_pos-297.0.0
rustc-hash-1.0.1
rustc-rayon-0.1.1
rustc-rayon-core-0.1.1
rustc_version-0.2.2
ryu-0.2.6
scoped-tls-0.1.2
scopeguard-0.3.3
semver-0.9.0
semver-parser-0.7.0
serde-1.0.80
serde_derive-1.0.80
serde_json-1.0.32
smallvec-0.6.5
stable_deref_trait-1.1.0
strsim-0.7.0
syn-0.15.17
tempfile-3.0.2
termcolor-0.3.6
termcolor-1.0.4
termion-1.5.1
textwrap-0.10.0
thread_local-0.3.5
ucd-util-0.1.1
unicode-width-0.1.5
unicode-xid-0.1.0
unreachable-1.0.0
utf8-ranges-1.0.0
vec_map-0.8.1
void-1.0.2
winapi-0.3.5
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.1
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-0.1.6
wincolor-1.0.1
"

inherit cargo

DESCRIPTION="Code completion for Rust"
HOMEPAGE="https://github.com/racer-rust/racer"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="MIT" # Update to proper Gentoo format
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
