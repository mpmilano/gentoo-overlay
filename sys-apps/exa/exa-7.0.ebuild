EAPI=6
EGIT_REPO_URI="git://github.com/ogham/exa.git"
EGIT_COMMIT="v0.${PV}"
inherit git-r3
DESCRIPTION="Replacement for 'ls' written in Rust."
HOMEPAGE="https://the.exa.website/"
KEYWORDS="amd64 x86"
FEATURES=""

LICENSE="MIT"
SLOT=0

RDEPEND="
dev-util/cmake
dev-lang/rust
dev-vcs/git
"
DEPEND="${RDEPEND}"

src_compile(){
	unset FEATURES
	echo $FEATURES
	emake
}

src_install(){
	unset FEATURES
	if [[ -f Makefile ]] || [[ -f GNUmakefile ]] || [[ -f makefile ]] ; then
		emake DESTDIR="${D}" install
	fi
	einstalldocs
}
