# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#inherit cmake-utils git-r3 dotnet

DESCRIPTION="The P programming language."
HOMEPAGE="https://github.com/p-org/P"
# The github zip does not contain the submodule(s) required to build the
# project, so use the git version and the git-r3 eclass instead
SRC_URI=""
EGIT_REPO_URI="https://github.com/p-org/P.git"
#EGIT_COMMIT="${PV}"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND="sys-devel/clang
	sys-libs/ncurses:0
	dev-dotnet/dotnetcore-sdk-bin
	dev-util/cmake
	virtual/jdk
"
RDEPEND="${DEPEND}"
BUILD_DIR="${WORKDIR}/Bld/build"
CMAKE_USE_DIR="${S}/Src"

#src_prepare(){
#	DOTNET_CLI_TELEMETRY_OPTOUT=1 DOTNET_SKIP_FIRST_TIME_EXPERIENCE=true dotnet build -c Release P.sln
#	cmake-utils_src_prepare
#}
