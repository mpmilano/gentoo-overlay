EAPI=5
EGIT_REPO_URI="git://github.com/efficient/libcuckoo.git"
EGIT_COMMIT="v0.${PV}"
inherit git-r3
inherit cmake-utils
DESCRIPTION="A high-performance, concurrent hash table"
HOMEPAGE="https://github.com/efficient/libcuckoo"

LICENSE="BSD"
SLOT=0

RDEPEND="
dev-util/cmake
"
DEPEND="${RDEPEND}"


