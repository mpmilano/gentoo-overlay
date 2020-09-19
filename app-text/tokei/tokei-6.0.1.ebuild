# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A program that allows you to count your code, quickly."
HOMEPAGE="https://github.com/Aaronepower/tokei"
EGIT_REPO_URI="git://github.com/Aaronepower/tokei.git"
EGIT_COMMIT="v${PV}"

LICENSE="|| ( MIT Unlicense )"
SLOT="0"
KEYWORDS="amd64 x86"

inherit cargo git-r3

