# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="A LLVM-based static analysis framework."
HOMEPAGE="https://phasar.org/"
# The github zip does not contain the submodule(s) required to build the
# project, so use the git version and the git-r3 eclass instead
SRC_URI="https://github.com/secure-software-engineering/phasar/archive/v-pldi18.tar.gz"
EGIT_REPO_URI="https://github.com/secure-software-engineering/phasar.git"
#EGIT_COMMIT="${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="sys-devel/clang:5
	dev-db/sqlite
	dev-db/mysql-connector-c++
	net-misc/curl
	sys-libs/zlib
	>=dev-libs/boost-1.63.0
	>=dev-lang/python-3.0.0"
RDEPEND="${DEPEND}"

