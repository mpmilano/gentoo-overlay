EAPI=6
EGIT_REPO_URI="git://github.com/jwilm/alacritty.git"

CRATES="libc-0.2.23
cgmath-0.7
notify-2.6
bitflags-0.7
font-{ path-./font }
errno-0.2
parking_lot-0.3.1
serde-0.9
serde_yaml-0.6
serde_derive-0.9
vte-0.3.0
mio-=0.6.2
serde_json-0.9
xdg-2.0.0
log-0.3
clap-2.20
fnv-1.0.5
unicode-width-0.1.4
arraydeque-0.2
clippy-0.0.104"

inherit cargo git-r3
DESCRIPTION="A cross-platform, GPU-accelerated terminal emulator"
HOMEPAGE="https://github.com/jwilm/alacritty"
KEYWORDS="amd64 x86"

LICENSE="Apache-2.0"
SLOT=0

RDEPEND="
dev-lang/rust
dev-vcs/git
media-libs/freetype
dev-util/cmake
media-libs/fontconfig
x11-misc/xclip
virtual/pkgconfig
dev-libs/expat
sys-devel/make
"
DEPEND="${RDEPEND}"

src_install() {
	mkdir -p ${D}/etc/alacritty/
	cp alacritty.yml ${D}/etc/alacritty/
	cargo_src_install
	einstalldocs
}
