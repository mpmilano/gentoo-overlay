# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

OFED_VER="3.12"
SLOT=$OFED_VER
OFED_RC="1"
OFED_RC_VER="1"
OFED_SUFFIX="1"

inherit multilib-minimal autotools eutils rpm 

DESCRIPTION="OpenIB userspace RDMA CM library"

KEYWORDS="~alpha amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux"
IUSE="static-libs"

DEPEND="sys-fabric/libibverbs:${SLOT}[static-libs?,${MULTILIB_USEDEP}]"
RDEPEND="${DEPEND}
		!sys-fabric/openib-userspace"
#block_other_ofed_versions

SRC_URI="https://github.com/ofiwg/librdmacm/archive/v${PV}.tar.gz"

src_prepare(){
 eautoreconf
 eapply_user
}

multilib_src_configure() {
	ECONF_SOURCE=${S} \
	econf $(use_enable static-libs static)
}

multilib_src_install_all() {
	einstalldocs
	use static-libs || find "${ED}/usr" -name '*.la' -delete
}
