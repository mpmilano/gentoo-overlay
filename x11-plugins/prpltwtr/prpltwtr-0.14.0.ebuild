# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 autotools 

DESCRIPTION="libpurple plugin to add support for the twitter / status.net protocol"
HOMEPAGE="https://github.com/mikeage/prpltwtr"
EGIT_REPO_URI="${HOMEPAGE}"
EGIT_COMMIT="${PV}"
SRC_URI="https://github.com/mikeage/prpltwtr/archive/${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="net-im/pidgin
dev-vcs/git
dev-libs/json-glib"
RDEPEND="${DEPEND}"

src_prepare() {
./autogen.sh
eapply_user
}