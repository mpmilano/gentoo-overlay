EAPI=6
EGIT_REPO_URI="git://github.com/preshing/turf.git"
inherit git-r3
inherit cmake-utils
DESCRIPTION="Configurable C++ platform adapter"
HOMEPAGE="https://github.com/preshing/junction"

LICENSE="BSD"
SLOT=0

RDEPEND="
dev-util/cmake
dev-lang/python
"
DEPEND="${RDEPEND}"


