EAPI=7
EGIT_REPO_URI="https://github.com/mpmilano/mutils-tasks.git"
#EGIT_COMMIT="pre-${PV}"
#SRC_URI="https://github.com/mpmilano/mutils-tasks/archive/${PV}.tar.gz -> mutils-tasks-${PV}.tar.gz"
SLOT=0
inherit git-r3 cmake-utils
DESCRIPTION="Basic utility C++ templates: threading and multiprocessing"
HOMEPAGE="https://github.com/mpmilano/mutils-tasks"

KEYWORDS=amd64

LICENSE="BSD"
SLOT=0

RDEPEND="
dev-util/cmake
dev-libs/mutils
"
DEPEND="${RDEPEND}"
