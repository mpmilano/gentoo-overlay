# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=(python2_7)

inherit git-r3 distutils-r1

DESCRIPTION="Create a graphical representation of dependency relationships between Ivy conjectures"
HOMEPAGE="https://github.com/kach/poison-ivy"
#SRC_URI="https://github.com/Microsoft/ivy/archive/v${PV}-msv.tar.gz"
EGIT_REPO_URI="https://github.com/kach/poison-ivy.git"
#EGIT_COMMIT="v${PV}-msv"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="sci-mathematics/ivy"
DEPEND="${RDEPEND}"
DOCS=( README.md )

src_prepare(){
  distutils-r1_src_prepare
  cat > setup.py<<EOF
from distutils.core import setup
setup(name='poison-ivy', version='1.0', scripts=['poisonivy.py'])
EOF
}
