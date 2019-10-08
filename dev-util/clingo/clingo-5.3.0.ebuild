EAPI=5

DESCRIPTION="A grounder and solver for logic programs"
HOMEPAGE="https://potassco.org/clingo"
SRC_URI="https://github.com/potassco/clingo/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"

inherit cmake-utils 

SLOT="0"

KEYWORDS="amd64 ppc ppc64 x86"

IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

