EAPI=7
EGIT_REPO_URI="https://github.com/mpmilano/mutils.git"
#EGIT_COMMIT="pre-${PV}"
#SRC_URI="https://github.com/mpmilano/mutils/archive/${PV}.tar.gz -> mutils-${PV}.tar.gz"
SLOT=0
inherit git-r3 cmake-utils
DESCRIPTION="Basic utility C++ templates"
HOMEPAGE="https://github.com/mpmilano/mutils"

KEYWORDS=amd64

LICENSE="BSD"
SLOT=0

RDEPEND="
dev-util/cmake

"
DEPEND="${RDEPEND}"
