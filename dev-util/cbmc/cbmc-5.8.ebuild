EAPI="5"

inherit cmake-utils

DESCRIPTION="CBMC is a Bounded Model Checker for ANSI-C and C++ programs."
HOMEPAGE="http://www.cprover.org/cbmc/"
SRC_URI="https://github.com/diffblue/cbmc/archive/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
LICENSE="ETH"
S="${WORKDIR}/cbmc-${P}"

DEPEND="dev-java/maven-bin"
RDEPEND="${DEPEND}"
