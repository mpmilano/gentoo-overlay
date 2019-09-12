EAPI=7
EGIT_REPO_URI="https://github.com/lefticus/constexpr_all_the_things.git"
EGIT_SUBMODULES=()
inherit git-r3
inherit cmake-utils
DESCRIPTION="A whole lot of tiny constexpr C++ programs by @lefticus and @elbeno"
HOMEPAGE="https://github.com/lefticus/constexpr_all_the_things"

LICENSE="MIT"
SLOT=0

KEYWORDS=amd64

RDEPEND="
dev-util/cmake
"
DEPEND="${RDEPEND}"

src_install(){
  cd src/include
  doheader -r *
}
