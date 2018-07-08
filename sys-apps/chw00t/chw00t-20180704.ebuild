# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="chw00t - Unices chroot breaking tool"
HOMEPAGE="https://github.com/earthquake/chw00t"
# The github zip does not contain the submodule(s) required to build the
# project, so use the git version and the git-r3 eclass instead
#SRC_URI=""
EGIT_REPO_URI="https://github.com/earthquake/chw00t.git"
#EGIT_COMMIT="${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare(){
eapply_user
echo '#include <sys/sysmacros.h>' > prepare
mv chw00t.c prepare2
cat prepare prepare2 > chw00t.c
}

src_compile(){	
  cc chw00t.c -o chw00t -static
}

src_install(){
  dobin chw00t
}
