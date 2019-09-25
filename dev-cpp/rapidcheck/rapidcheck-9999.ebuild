EAPI=7
EGIT_REPO_URI="https://github.com/emil-e/rapidcheck.git"
#EGIT_COMMIT="v0.${PV}"
inherit git-r3
inherit cmake-utils
DESCRIPTION="QuickCheck clone for C++ with the goal of being simple to use with as little boilerplate as possible."
HOMEPAGE="https://github.com/emil-e/rapidcheck"

LICENSE="BSD"
SLOT=0

RDEPEND="
dev-util/cmake
"
DEPEND="${RDEPEND}"
KEYWORDS=amd64