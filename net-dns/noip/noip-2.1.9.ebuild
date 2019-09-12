# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6


DESCRIPTION="NoIP Dynamic update client (for NoIP dyndns service)"
HOMEPAGE="https://my.noip.com/#!/dynamic-dns/duc"
SRC_URI="noip-duc-linux.tar.gz"

RESTRICT="fetch"
LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="
net-misc/openssh
"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${P}-1

src_configure(){
 sed -i s%^PREFIX.*%PREFIX=${D}/usr% Makefile
 sed -i s%.*'${BINDIR}/${TGT} -'.*%% Makefile
 sed -i s%'.*mv /tmp/.*'%% Makefile
 sed -i s/.*CONFDIR.*// Makefile
}