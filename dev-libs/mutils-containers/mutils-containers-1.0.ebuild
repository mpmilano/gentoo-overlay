EAPI=7
EGIT_REPO_URI="https://github.com/mpmilano/mutils-containers.git"
#EGIT_COMMIT="pre-${PV}"
#SRC_URI="https://github.com/mpmilano/mutils-containers/archive/${PV}.tar.gz -> mutils-containers-${PV}.tar.gz"
SLOT=0
inherit git-r3 cmake-utils
DESCRIPTION="Basic utility C++ templates: containers"
HOMEPAGE="https://github.com/mpmilano/mutils-containers"

KEYWORDS=amd64

LICENSE="BSD"
SLOT=0

RDEPEND="
dev-util/cmake
dev-libs/mutils
"
DEPEND="${RDEPEND}"
