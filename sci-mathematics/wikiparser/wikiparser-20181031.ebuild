# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=(python2_7)

inherit eutils autotools git-r3 distutils-r1 cmake-utils

DESCRIPTION="Fast C++ based parser for English Wikipedia"
HOMEPAGE="https://dizzylogic.com/wikiparser"
#SRC_URI="https://github.com/Microsoft/ivy/archive/v${PV}-msv.tar.gz"
EGIT_REPO_URI="https://github.com/dizzylogicc/WikiParser.git"
#EGIT_COMMIT="v${PV}-msv"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-python/virtualenv dev-qt/qtcore:5 dev-libs/boost dev-libs/re2 app-text/htmltidy dev-libs/pugixml"
DEPEND="${RDEPEND}"
DOCS=( README )

