# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit eutils java-pkg-2 git-r3

DESCRIPTION="A client, protocol and server for running without incurring JVM startup overhead"
HOMEPAGE="http://martiansoftware.com/nailgun/index.html"

EGIT_REPO_URI="https://github.com/martylamb/nailgun.git"
EGIT_COMMIT="nailgun-all-v${PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND=">=virtual/jre-1.8
	!app-editors/ng"
DEPEND=">=virtual/jdk-1.8
	dev-java/maven-bin"

#need jcoverage
RESTRICT="test"

src_prepare() {
	mvn clean install -DskipTests -Dmaven.test.skip=true
}

src_compile() {
	make
}

src_install() {
	dobin nailgun-client/target/ng

	mv nailgun-server/target/nailgun-server-${PV}-SNAPSHOT.jar nailgun.jar
	java-pkg_newjar nailgun.jar
}
