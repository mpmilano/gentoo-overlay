EAPI=5

DESCRIPTION="Set up global OPAM environment"
HOMEPAGE="http://www.cs.cornell.edu/~milano"
SRC_URI=""

#EGIT_REPO_URI="https://github.com/ocaml/opam-repository.git"

#inherit git-r3

LICENSE="GPL-3"

SLOT="0"

KEYWORDS="amd64 ppc ppc64 x86"

IUSE=""

DEPEND="dev-ml/opam dev-vcs/darcs app-arch/aspcud"
RDEPEND="${DEPEND}"

#OPAMROOT

pkg_setup(){
mkdir -p "${S}/opt/opam/env"
mkdir -p "${S}/opt/opam/repo"
cd "${S}/opt/opam/"; git clone https://github.com/ocaml/opam-repository.git repo
cd repo
opam env --set-root=${S}/opt/opam/env
opam-admin make
opam init --root=${S}/opt/opam/env
}

src_install(){
cp -rfp ${S}/* ${D}/
}

