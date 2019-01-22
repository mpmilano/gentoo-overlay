EAPI=5
EGIT_REPO_URI="git://github.com/preshing/junction.git"
inherit git-r3
inherit cmake-utils
DESCRIPTION="Concurrent data structures in C++"
HOMEPAGE="https://github.com/preshing/junction"

LICENSE="BSD"
SLOT=0

RDEPEND="
dev-util/cmake
"
DEPEND="${RDEPEND}"

src_prepare() {
    cd ../
    git clone https://github.com/preshing/turf.git
    cd -
}
