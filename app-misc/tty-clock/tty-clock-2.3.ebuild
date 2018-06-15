# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils autotools git-r3

DESCRIPTION="Clock using lib ncurses"
HOMEPAGE="https://github.com/xorg62/tty-clock"
SRC_URI=""
EGIT_REPO_URI="https://github.com/xorg62/tty-clock.git"
EGIT_COMMIT="v${PV}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="sys-libs/ncurses"
DEPEND="${RDEPEND}"
DOCS=( README  )
