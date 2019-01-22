# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6


DESCRIPTION="List the members of a group"
HOMEPAGE="https://snapshot.debian.org/package/members/20080128-5%2Bnmu1/#members_20080128-5:2b:nmu1:2b:b1"
SRC_URI="https://snapshot.debian.org/archive/debian/20170307T093428Z/pool/main/m/members/members_20080128-5%2Bnmu1%2Bb1_amd64.deb"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND="
virtual/libc
sys-devel/gcc
app-arch/dpkg
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
  dpkg --admindir=${T}/dpkg/ --instdir=${D} -i --ignore-depends libc6,libgcc1,libstdc++6 *.deb
}
