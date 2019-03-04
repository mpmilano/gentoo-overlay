# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 cmake-utils

DESCRIPTION="C++ Library Manager for Windows, Linux, and MacOS"
HOMEPAGE="https://github.com/Microsoft/vcpkg"
#SRC_URI="http://www.cs.cornell.edu/~milano/packages/google-play-music-desktop-player_${PV}_amd64.deb.tar.bz2"
EGIT_REPO_URI="https://github.com/Microsoft/vcpkg.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-vcs/git
>=dev-util/cmake-3.12.4
>=dev-util/ninja-1.8.2
"
RDEPEND="${DEPEND}"
CMAKE_MIN_VERSION=3.12.4
CMAKE_USE_DIR="${S}/toolsrc"

src_install(){

	dobin ${BUILD_DIR}/vcpkg
	cat > ${T}/vcpkg-env.sh <<EOF
	export VCPKG_ROOT=~/.gentoo-vcpkg-root
EOF
	cat > ${T}/vcpkg-setup.sh <<EOF
git clone https://github.com/Microsoft/vcpkg.git ~/.gentoo-vcpkg-root
EOF
	chmod a+rx ${T}/vcpkg-setup.sh
	chmod a-w ${T}/vcpkg-setup.sh
	dobin ${T}/vcpkg-setup.sh
	chmod a+rx ${T}/vcpkg-env.sh
	chmod a-w ${T}/vcpkg-env.sh
	dobin ${T}/vcpkg-env.sh
}
