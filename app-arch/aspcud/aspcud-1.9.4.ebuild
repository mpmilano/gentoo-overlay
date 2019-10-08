EAPI=5

DESCRIPTION="A solver for package problems in CUDF format"
HOMEPAGE="https://potassco.org/aspcud/"
SRC_URI="https://github.com/potassco/aspcud/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"

inherit cmake-utils 

SLOT="0"

KEYWORDS="amd64 ppc ppc64 x86"

IUSE=""

DEPEND="dev-util/clingo"
RDEPEND="${DEPEND}"

