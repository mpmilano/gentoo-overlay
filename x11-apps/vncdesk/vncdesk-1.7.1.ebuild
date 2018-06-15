# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=(python3_{4,5,6})

inherit eutils autotools git-r3 distutils-r1

DESCRIPTION="Run applications in VNC desktops. Use for scaling on HiDPI displays."
HOMEPAGE="https://github.com/feklee/vncdesk"
SRC_URI=""
EGIT_REPO_URI="https://github.com/feklee/vncdesk.git"
EGIT_COMMIT="v${PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="net-misc/tigervnc >=net-libs/gtk-vnc-0.5.0 dev-libs/gobject-introspection dev-libs/gobject-introspection-common"
DEPEND="${RDEPEND}"
DOCS=( README.rst COPYING )

