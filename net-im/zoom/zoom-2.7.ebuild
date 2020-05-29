# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit unpacker

DESCRIPTION="Zoom.  For meetings"
HOMEPAGE="zoom.com"
SRC_URI="zoom_amd64.deb"

RESTRICT="fetch"
LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="
media-libs/gst-plugins-base
app-arch/dpkg
x11-misc/xcb
app-i18n/ibus
x11-libs/libXrandr
media-libs/mesa
media-libs/fontconfig:1.0
x11-libs/libXi
media-libs/gstreamer:1.0
media-libs/mesa
x11-libs/libSM
x11-libs/libXrender
media-sound/pulseaudio
x11-libs/libXcomposite
dev-qt/qtmultimedia
dev-qt/qtwebengine
dev-qt/qtsvg
dev-libs/libxslt
dev-db/sqlite:3
x11-libs/xcb-util-keysyms
sys-apps/dbus
dev-db/unixODBC
dev-libs/glib
dev-libs/nss
x11-libs/libxcb
"
RDEPEND="${DEPEND}"

#src_unpack (){
#	mkdir -p ${WORKDIR}/${P}
#	cp ${DISTDIR}/${A} ${WORKDIR}
#	cp ${DISTDIR}/${A} ${WORKDIR}/${P}/
#}

#src_configure (){
#  mkdir ${T}/dpkg
#  cp -rfp /var/lib/dpkg/* ${T}/dpkg/
#}

#src_compile() {
#  echo done
#}

#src_install() {
#  dpkg --admindir=${T}/dpkg/ --instdir=${D} -i --ignore-depends ibus,libxcb-shape0,libxcb-shm0,libxcb-xfixes0,libxcb-randr0,libxcb-image0,libfontconfig1,libgl1-mesa-glx,libxi6,libsm6,libxrender1,libpulse0,libxcomposite1,libxslt1.1,libsqlite3-0,libxcb-keysyms1,libxcb-xtest0,libdbus-1-3 *.deb
#}

src_unpack() {
	mkdir -p ${WORKDIR}/${P}
	unpack_deb ${A}
}

src_configure() {
	find ${WORKDIR} -name Zoom.desktop -exec rm {} \;
}

src_install() {
	for foo in "${WORKDIR}/usr/share/doc/zoom/*"; do
		dodoc $foo
		rm $foo
	done
	rmdir "${WORKDIR}/usr/share/doc/zoom/"
	rmdir "${WORKDIR}/usr/share/doc/"
	rm "${WORKDIR}/_gpgbuilder"
	rmdir ${WORKDIR}/${P}
	cp -Rp "${WORKDIR}/"* "${D}"
	if [ ! $? = 0 ]; then exit 1; fi
}

pkg_postinst(){
	xdg_mimeinfo_database_update
}

pkg_postrm(){
	xdg_mimeinfo_database_update
}
