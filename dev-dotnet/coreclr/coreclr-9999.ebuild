EAPI=6
EGIT_REPO_URI="git://github.com/dotnet/coreclr.git"
inherit git-r3
inherit cmake-utils
DESCRIPTION="CoreCLR"
HOMEPAGE="https://github.com/dotnet/core"

LICENSE="MIT"
SLOT=0

RDEPEND="
sys-libs/llvm-libunwind
dev-util/cmake
dev-lang/python:2.7
>=sys-devel/clang-3.9.0
sys-devel/llvm
dev-util/lldb
dev-libs/icu
dev-util/lttng-ust
"
DEPEND="${RDEPEND}"

src_configre() {
    ./build.sh
    cmake-utils_src_configure
}

