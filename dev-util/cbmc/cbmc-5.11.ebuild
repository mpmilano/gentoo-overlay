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

src_unpack () {
	unpack ${A}
	cd ${S}
	if [ -f CMakeLists.txt ]; then
		sed s/'add_subdirectory(jbmc)'//g -i CMakeLists.txt
		sed s/'java_bytecode'//g -i CMakeLists.txt
		sed s/'java-models-library'//g -i CMakeLists.txt
		sed s/'jbmc-lib'//g -i CMakeLists.txt
		sed s/'jbmc'//g -i CMakeLists.txt
		sed s/'janalyzer-lib'//g -i CMakeLists.txt
		sed s/'janalyzer'//g -i CMakeLists.txt
		sed s/'jdiff-lib'//g -i CMakeLists.txt
		sed s/'jdiff'//g -i CMakeLists.txt
		sed s/'java-testing-utils'//g -i CMakeLists.txt
		sed s/'java-unit'//g -i CMakeLists.txt
		sed s/'miniz'//g -i CMakeLists.txt
	else
		exit 1
	fi
}


src_install(){
	dobin ${BUILD_DIR}/bin/*
}
