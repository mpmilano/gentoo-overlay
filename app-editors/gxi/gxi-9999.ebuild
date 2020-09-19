EAPI=7
EGIT_REPO_URI="git://github.com/bvinc/gxi.git"

CRATES="cairo-rs-0.1.2
env_logger-0.4
gdk-0.5.2
gdk-sys-0.3.3
gio-0.1.0
gio-sys-0.3.3
glib-0.1.0
gtk-sys-0.3.3
log-0.3
pango-0.1.0
serde-1.0
serde_derive-1.0
serde_json-1.0"

inherit cargo git-r3
DESCRIPTION="A GTK frontend for the xi text editor, written in rust"
HOMEPAGE="https://github.com/bvinc/gxi"
KEYWORDS="amd64 x86"

LICENSE="MIT"
SLOT=0

RDEPEND="
dev-lang/rust
app-editors/xi-editor
dev-vcs/git
"
DEPEND="${RDEPEND}"

