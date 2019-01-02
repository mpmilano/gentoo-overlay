# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils autotools

DESCRIPTION="A bunch of deps Steven has told me I need to build his slides"
HOMEPAGE=""
SRC_URI=""
EGIT_REPO_URI=""
EGIT_COMMIT=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-python/python-frontmatter dev-python/beautifulsoup:4 dev-tex/biblatex >=app-text/pandoc-2.0.0.0 app-text/texlive dev-texlive/texlive-xetex dev-haskell/pandoc-citeproc dev-python/pandocfilters dev-tex/latexmk dev-texlive/texlive-bibtexextra dev-tex/minted dev-tex/biber"
DEPEND="${RDEPEND}"
DOCS=()

