# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="a command line search tool that combines usability with raw speed"
HOMEPAGE="https://github.com/BurntSushi/ripgrep"
EGIT_REPO_URI="git://github.com/BurntSushi/ripgrep.git"
EGIT_COMMIT="${PV}"

LICENSE="|| ( MIT Unlicense )"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="
	dev-util/cargo
	>=dev-lang/rust-1.11
"

inherit cargo git-r3

src_install() {
	cargo_src_install
	dobin target/release/rg
	doman doc/rg.1
	dodoc CHANGELOG.md README.md
}
