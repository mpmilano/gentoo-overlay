# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6


DESCRIPTION="A beautiful cross platform Desktop Player for Google Play Music"
HOMEPAGE="https://www.googleplaymusicdesktopplayer.com/"
SRC_URI="google-play-music-desktop-player_${PV}_amd64.deb.tar.bz2"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="net-libs/nodejs
app-arch/dpkg
net-dns/avahi
media-plugins/gmpc-avahi
"
RDEPEND="${DEPEND}"


src_configure (){
  mkdir ${T}/dpkg
  cp -rfp /var/lib/dpkg/* ${T}/dpkg/
}

src_compile() {
  echo done
}

src_install() {
  dpkg --admindir=${T}/dpkg/ --instdir=${D} -i --ignore-depends libappindicator1,avahi-daemon *.deb
}
