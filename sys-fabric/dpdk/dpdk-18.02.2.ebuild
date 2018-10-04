# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#inherit eutils autotools git-r3

DESCRIPTION="DPDK is the Data Plane Development Kit that consists of libraries to accelerate packet processing workloads running on a wide variety of CPU architectures."
HOMEPAGE="https://www.dpdk.org/"
SRC_URI="https://fast.dpdk.org/rel/dpdk-${PV}.tar.xz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="sys-devel/make sys-apps/coreutils >=dev-lang/python-3.2.0 sys-process/numactl"
DEPEND="${RDEPEND}"
DOCS=( README )

S="${WORKDIR}/dpdk-stable-${PV}"

src_configure (){
		emake config T=x86_64-native-linuxapp-gcc
}

src_compile() {
		cd ${S}/build
		emake 
}

src_install() {
		emake DESTDIR="${D}/usr" install T=x86_64-native-linuxapp-gcc
		einstalldocs
		cd "${D}/usr"; ln -s . usr
		einstalldocs
}

