# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6


DESCRIPTION="Remember the Milk (RTM) is an application service provider for Web-based task- and time-management"
HOMEPAGE="https://www.rememberthemilk.com/"
SRC_URI="rememberthemilk_1.1.9_amd64.deb"

RESTRICT="fetch"
LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="
app-arch/dpkg
gnome-base/gconf:2
x11-libs/libnotify
dev-libs/libxslt
dev-libs/nss
x11-libs/libXScrnSaver
dev-libs/libappindicator
"
RDEPEND="${DEPEND}"

src_unpack (){
	mkdir -p ${WORKDIR}/${P}
	cp ${DISTDIR}/${A} ${WORKDIR}
	cp ${DISTDIR}/${A} ${WORKDIR}/${P}/
}

src_configure (){
  mkdir ${T}/dpkg
  cp -rfp /var/lib/dpkg/* ${T}/dpkg/
}

src_compile() {
  echo done
}

src_install() {
  dpkg --admindir=${T}/dpkg/ --instdir=${D} -i --ignore-depends gconf2,gconf-service,libnotify4,libxtst6,libnss3,libxss1,libappindicator1 *.deb
}
