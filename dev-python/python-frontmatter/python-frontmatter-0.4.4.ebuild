# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=(python3_{4,5,6,7})

inherit eutils autotools git-r3 distutils-r1

DESCRIPTION="Parse and manage posts with YAML (or other) frontmatter"
HOMEPAGE=" http://python-frontmatter.rtfd.io"
SRC_URI="https://github.com/eyeseast/python-frontmatter/archive/v${PV}.tar.gz"
EGIT_REPO_URI="https://github.com/eyeseast/python-frontmatter.git"
EGIT_COMMIT="v${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-python/pyyaml dev-python/six dev-python/toml"
DEPEND="${RDEPEND}"
DOCS=( README.md )

