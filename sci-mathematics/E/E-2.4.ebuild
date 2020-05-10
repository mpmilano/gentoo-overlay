EAPI=7

inherit eutils autotools

DESCRIPTION="The E prover"
HOMEPAGE="https://wwwlehre.dhbw-stuttgart.de/~sschulz/E/E.html"
SRC_URI="http://wwwlehre.dhbw-stuttgart.de/~sschulz/WORK/E_DOWNLOAD/V_${PV}/E.tgz -> E-2.4.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
#DOCS=( README )
S=${WORKDIR}/${PN}

src_configure() {
	./configure --prefix="${EPREFIX}"/usr \
				${CTARGET:+--target=${CTARGET}} \
				${EXTRA_ECONF} \
				|| die "econf failed"
}
