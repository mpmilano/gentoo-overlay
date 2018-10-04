# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils autotools #git-r3 

DESCRIPTION="The Storage Performance Development Kit (SPDK) provides a set of tools and libraries for writing high performance, scalable, user-mode storage applications."
HOMEPAGE="https://spdk.io/"
SRC_URI="https://github.com/spdk/spdk/archive/v${PV}.tar.gz"
#EGIT_REPO_URI="https://github.com/spdk/spdk.git"
#EGIT_COMMIT="v${PV}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="sys-fabric/dpdk"
DEPEND="${RDEPEND}"
DOCS=( doc )

src_configure () {
		${ECONF_SOURCE:-.}/configure \
        --prefix="${EPREFIX}"/usr \
        ${CTARGET:+--target=${CTARGET}} --with-dpdk=/usr/include/dpdk/
}
