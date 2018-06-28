# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="std::tuple like methods for user defined types without any macro or boilerplate code"
HOMEPAGE="http://apolukhin.github.com/magic_get/index.html"
# The github zip does not contain the submodule(s) required to build the
# project, so use the git version and the git-r3 eclass instead
EGIT_REPO_URI="https://github.com/apolukhin/magic_get.git"
#EGIT_COMMIT="${PV}"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="|| ( >=sys-devel/clang-4.0.0 >=sys-devel/gcc-6.1.0 )"
RDEPEND="${DEPEND}"

src_install ()
{
	doheader -r include/*
}