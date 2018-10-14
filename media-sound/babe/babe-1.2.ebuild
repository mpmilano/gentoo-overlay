EAPI=6

inherit cmake-utils

DESCRIPTION="vvave music player"
HOMEPAGE="https://vvave.kde.org/beta.html"
SRC_URI="http://download.kde.org/stable/babe/${PV}/src/babe-${PV}.tar.xz"
LICENSE="GPL-3+"

KEYWORDS=amd64

DEPEND="media-libs/gst-plugins-base media-libs/gst-plugins-good media-libs/gst-plugins-bad media-libs/gst-plugins-ugly media-plugins/gst-plugins-libav dev-qt/qtcore dev-libs/appstream media-libs/taglib media-libs/taglib-extras media-plugins/gst-plugins-taglib sys-devel/gettext kde-frameworks/ki18n kde-frameworks/kconfig kde-frameworks/knotifications kde-frameworks/kservice kde-frameworks/kio kde-frameworks/kirigami dev-qt/qtwebsockets dev-qt/qtquickcontrols dev-qt/qtquickcontrols2 dev-qt/qtmultimedia dev-qt/qtwebengine dev-qt/qtgraphicaleffects dev-qt/qtdeclarative"
RDEPEND="${DEPEND}"
SLOT=5
