# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils autotools git-r3

DESCRIPTION="Slack protocol plugin for libpurple"
HOMEPAGE="https://github.com/dylex/slack-libpurple"
SRC_URI=""
EGIT_REPO_URI="https://github.com/dylex/slack-libpurple.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-libs/json-glib
	 net-im/pidgin"
DEPEND="${RDEPEND}"
DOCS=( README.md COPYING )
