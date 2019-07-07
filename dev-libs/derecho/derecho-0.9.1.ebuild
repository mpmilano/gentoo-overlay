EAPI=7
EGIT_REPO_URI="https://github.com/Derecho-Project/derecho.git"
#EGIT_COMMIT="v${PV}"
inherit git-r3
inherit cmake-utils
DESCRIPTION="Derecho is an open-source C++ distributed computing toolkit that provides strong forms of distributed coordination and consistency at RDMA speeds."
HOMEPAGE="https://derecho-project.github.io/"

LICENSE="BSD"
SLOT=0

KEYWORDS=amd64

RDEPEND="
dev-util/cmake
sys-fabric/librdmacm
sys-fabric/libibverbs
=sys-fabric/libfabric-1.7.0
dev-libs/spdlog
dev-libs/mutils
dev-libs/mutils-containers
dev-libs/mutils-tasks
"
DEPEND="${RDEPEND}"
