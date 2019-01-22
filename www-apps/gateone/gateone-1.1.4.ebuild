# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )
inherit distutils-r1

DESCRIPTION="an HTML5-powered terminal emulator and SSH client"
HOMEPAGE="https://github.com/dcwangmit01/GateOne"
SRC_URI="https://github.com/dcwangmit01/GateOne/archive/1.1.4-unofficial.patchfix.20181221.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="dtach kerberos pam"

DEPEND=">=www-servers/tornado-2.2"
RDEPEND="${DEPEND}
	dev-python/pillow[${PYTHON_USEDEP}]
	dtach? ( app-misc/dtach )
	kerberos? ( dev-python/pykerberos )
	pam? ( dev-python/python-pam )"

S="${WORKDIR}/GateOne-1.1.4-unofficial.patchfix.20181221"

pkg_postinst() {
	sed s%GATEONE=/var/tmp/portage/www-apps/gateone-1.1.4/image/_python3.6/usr/lib/python-exec/python3.6/gateone%GATEONE=/usr/bin/gateone% -i /etc/init.d/gateone
}
