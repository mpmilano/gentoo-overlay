# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=(python2_7 python3_{4,5,6,7})

inherit eutils autotools distutils-r1

DESCRIPTION="Implementation of Tarjan's algorithm: resolve cyclic deps"
HOMEPAGE="https://pypi.org/project/tarjan"
SRC_URI="https://files.pythonhosted.org/packages/7c/74/a35aabdb826eb6a29a74e792f75e1228d9ce3811fbf52b1931d515274cb2/tarjan-${PV}.tar.gz"
#EGIT_REPO_URI="https://github.com/eyeseast/python-frontmatter.git"
#EGIT_COMMIT="v${PV}"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
#DOCS=( README.md )

