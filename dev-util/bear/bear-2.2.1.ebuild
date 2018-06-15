# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Bear is a tool that generates a compilation database for clang tooling."
HOMEPAGE="https://github.com/rizsotto/Bear"
# The github zip does not contain the submodule(s) required to build the
# project, so use the git version and the git-r3 eclass instead
SRC_URI=""
EGIT_REPO_URI="https://github.com/rizsotto/Bear.git"
EGIT_COMMIT="${PV}"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="sys-devel/clang
	sys-libs/ncurses:0"
RDEPEND="${DEPEND}"

src_install() {
	cmake-utils_src_install
}
