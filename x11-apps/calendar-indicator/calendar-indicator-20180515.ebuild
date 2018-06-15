# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=(python2_7)

inherit eutils autotools git-r3 distutils-r1

DESCRIPTION="Calendar-Indicator an indicator for Google Calendar"
HOMEPAGE="https://github.com/atareao/calendar-indicator"
SRC_URI=""
EGIT_REPO_URI="https://github.com/atareao/calendar-indicator.git"
#EGIT_COMMIT="v${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-python/gdata dev-python/lxml dev-python/python-dateutil dev-libs/libappindicator dev-python/python-distutils-extra dev-python/polib"
DEPEND="${RDEPEND}"
DOCS=( README )

