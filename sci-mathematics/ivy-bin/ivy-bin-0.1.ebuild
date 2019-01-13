# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=(python2_7)

inherit eutils autotools distutils-r1

DESCRIPTION="IVy is a tool for specifying, modeling, implementing and verifying protcols"
HOMEPAGE="http://microsoft.github.io/ivy/"
SRC_URI="https://github.com/Microsoft/ivy/releases/download/v${PV}-msv/ms-ivy_${PV}_amd64.deb"


LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

#need python use on tk, probably

RDEPEND="sci-mathematics/z3 dev-python/virtualenv dev-tcltk/tix dev-python/pip dev-python/pygraphviz dev-lang/tk"
DEPEND="${RDEPEND}"


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
  dpkg --admindir=${T}/dpkg/ --instdir=${D} -i --ignore-depends python-ply,python-graphviz,python-tk,tix,python-pip *.deb
}
