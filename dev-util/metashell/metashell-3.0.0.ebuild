# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="This is a sample skeleton ebuild file"
HOMEPAGE="http://metashell.org/"
# The github zip does not contain the submodule(s) required to build the
# project, so use the git version and the git-r3 eclass instead
SRC_URI=""
EGIT_REPO_URI="https://github.com/metashell/metashell.git"
EGIT_COMMIT="v${PV}"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
BUILD_THREADS="9"

DEPEND="sys-devel/clang
	sys-libs/ncurses:0"
RDEPEND="${DEPEND}"

src_compile() {
 BUILD_THREADS="9" ./build.sh
}

