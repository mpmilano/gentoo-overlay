EAPI=5

DESCRIPTION="A utility library used by various potassco projects"
HOMEPAGE="https://potassco.org/"
EGIT_REPO_URI="https://github.com/potassco/libpotassco.git"
EGIT_BRANCH="dev"
EGIT_COMMIT="b0fd12ee1a07e234956ab13cf189ea1a6c5016ea"

LICENSE="MIT"
inherit cmake-utils git-r3

SLOT="0"

KEYWORDS="amd64 ppc ppc64 x86"

IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_configure() {
   local mycmakeargs=( "-DLIB_POTASSCO_INSTALL_LIB=true" )
   cmake-utils_src_configure
}