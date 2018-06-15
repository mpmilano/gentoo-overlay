# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils autotools git-r3

DESCRIPTION="Slack protocol plugin for libpurple"
HOMEPAGE="https://github.com/kaueraal/run_scaled"
SRC_URI=""
EGIT_REPO_URI="https://github.com/kaueraal/run_scaled.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=x11-wm/xpra-2.0.0 x11-misc/xvfb-run dev-python/xvfbwrapper"
DEPEND="${RDEPEND}"
DOCS=( README.md LICENSE )
