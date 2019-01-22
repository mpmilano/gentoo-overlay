EAPI=6
EGIT_REPO_URI="git://github.com/google/xi-editor.git"
EGIT_COMMIT="v0.${PV}"

CRATES="serde-0.9
serde_json-0.9
crossbeam-0.2.10
itoa-0.3.1
num-traits-0.1.37
dtoa-0.4.1
time-0.1.36
libc-0.2.21
bytecount-0.1.6
"

inherit cargo git-r3
DESCRIPTION="A modern editor with a backend written in Rust."
HOMEPAGE="https://github.com/google/xi-editor"
KEYWORDS="amd64 x86"

LICENSE="MIT"
SLOT=0

RDEPEND="
dev-lang/rust
dev-vcs/git
"
DEPEND="${RDEPEND}"

src_compile() {
	cd rust
	cargo_src_compile
}

src_install() {
	cd rust
	cargo_src_install
}

