EAPI=5

DESCRIPTION="A conflict-driven nogood learning answer set solver"
HOMEPAGE="http://www.cs.uni-potsdam.de/clasp/"
SRC_URI="https://github.com/potassco/clasp/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"

inherit cmake-utils 

SLOT="0"

KEYWORDS="amd64 ppc ppc64 x86"

IUSE=""

DEPEND="dev-util/libpotassco"
RDEPEND="${DEPEND}"

src_prepare(){
    sed s/'potassco_FOUND'/'true'/ -i ${S}/CMakeLists.txt
}