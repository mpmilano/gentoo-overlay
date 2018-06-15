# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils autotools git-r3

#MY_PV="c9b74a765767"
#S="${WORKDIR}/${PN}-${PV}-${MY_PV}"
DESCRIPTION="Facebook protocol plugin for libpurple"
HOMEPAGE="https://github.com/dequis/purple-facebook"
SRC_URI=""
EGIT_REPO_URI="https://github.com/dequis/purple-facebook.git"
#EGIT_COMMIT="v${PV}-${MY_PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-libs/json-glib
	 dev-vcs/mercurial
	 net-im/pidgin"
DEPEND="${RDEPEND}"
DOCS=( AUTHORS ChangeLog NEWS README VERSION )

post_src_unpack() {
	ln -s ${PN}-${PV} ${PN}-${PV}-${MY_PV}
}

src_configure() {
	econf --with-ssl-certs
}

src_prepare() {
		./autogen.sh
	eautoreconf
}
