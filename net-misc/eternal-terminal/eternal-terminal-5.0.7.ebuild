# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Re-Connectable secure remote shell"
HOMEPAGE="https://mistertea.github.io/EternalTerminal/"
# The github zip does not contain the submodule(s) required to build the
# project, so use the git version and the git-r3 eclass instead
SRC_URI="https://github.com/MisterTea/EternalTerminal/archive/et-v${PV}.tar.gz"
EGIT_REPO_URI="https://github.com/MisterTea/EternalTerminal.git"
EGIT_COMMIT="et-v${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-libs/boost dev-libs/libsodium sys-libs/ncurses dev-libs/protobuf dev-util/cmake dev-cpp/gflags net-misc/wget"
RDEPEND="${DEPEND}"

