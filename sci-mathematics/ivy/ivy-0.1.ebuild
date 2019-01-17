# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=(python2_7)

inherit eutils autotools git-r3 distutils-r1

DESCRIPTION="IVy is a tool for specifying, modeling, implementing and verifying protcols"
HOMEPAGE="http://microsoft.github.io/ivy/"
SRC_URI="https://github.com/Microsoft/ivy/archive/v${PV}-msv.tar.gz"
EGIT_REPO_URI="https://github.com/Microsoft/ivy.git"
EGIT_COMMIT="v${PV}-msv"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="sci-mathematics/z3[python_single_target_python2_7] dev-python/virtualenv dev-python/tarjan dev-python/pygraphviz"
DEPEND="${RDEPEND}"
#DOCS=( README )

