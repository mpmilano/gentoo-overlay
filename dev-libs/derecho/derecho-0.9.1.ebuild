EAPI=7
EGIT_REPO_URI="https://github.com/Derecho-Project/derecho.git"
#EGIT_COMMIT="v${PV}"
EGIT_BRANCH=sospdemo
inherit git-r3
inherit cmake-utils
DESCRIPTION="Derecho is an open-source C++ distributed computing toolkit that provides strong forms of distributed coordination and consistency at RDMA speeds."
HOMEPAGE="https://derecho-project.github.io/"

LICENSE="BSD"
SLOT=0

KEYWORDS=amd64

RDEPEND="=virtual/derecho-dependencies-${PV}"
DEPEND="${RDEPEND}"

src_configure() {
	local mycmakeargs=(
		-DCMAKE_BUILD_TYPE=Relwithdebinfo
	)

	cmake-utils_src_configure

}
