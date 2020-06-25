EAPI=7
DESCRIPTION="Emerge this to get a PROVIDES for pulseaudio but actually pull in apulse"


LICENSE="BSD"
SLOT=0

KEYWORDS=amd64

RDEPEND="
media-sound/apulse
media-libs/sbc
media-libs/webrtc-audio-processing
net-libs/libasyncns
"
DEPEND="${RDEPEND}"
