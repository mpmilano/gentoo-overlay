EAPI=7

inherit cmake-utils
inherit git-r3
DISTUTILS_OPTIONAL=1
PYTHON_COMPAT=(python{2_7,3_5,3_6})
inherit eutils
inherit distutils-r1

EGIT_REPO_URI="https://github.com/apache/incubator-mxnet.git"
EGIT_COMMIT=1.5.0
EGIT_SUBMODULES=( "*" "-3rdparty/ps-lite" "-3rdparty/openmp" )
DESCRIPTION="Lightweight, Portable, Flexible Distributed/Mobile Deep Learning with Dynamic, Mutation-aware Dataflow Dep Scheduler; for Python, R, Julia, Scala, Go, Javascript and more"
HOMEPAGE="https://mxnet.apache.org"
#SRC_URI="https://github.com/apache/incubator-mxnet/archive/${PV}.tar.gz"
IUSE="cuda cudnn distributed examples jemalloc lapack mkldnn opencv openmp python tcmalloc test"

LICENSE="Apache-2.0"
SLOT=0

KEYWORDS=amd64

RDEPEND="dev-util/nvidia-cuda-sdk dev-util/nvidia-cuda-toolkit"
DEPEND="${RDEPEND}"

CMAKE_MAKEFILE_GENERATOR=emake

RDEPEND="
	sci-libs/atlas
	sci-libs/cblas-reference
	sys-libs/libomp
	cuda? ( dev-util/nvidia-cuda-toolkit:=
		cudnn? ( dev-libs/cudnn )
	)
	distributed? ( sci-libs/ps-lite )
	jemalloc? ( <dev-libs/jemalloc-5.0.0 )
	lapack? ( virtual/lapack )
	mkldnn? ( sci-libs/mkl-dnn )
	opencv? ( media-libs/opencv:= )
	python? (
		${PYTHON_DEPS}
		>=dev-python/numpy-1.8.2[${PYTHON_USEDEP}]
		<=dev-python/numpy-1.15.0[${PYTHON_USEDEP}]
		>=dev-python/requests-2.18.4[${PYTHON_USEDEP}]
		<dev-python/requests-2.19.0[${PYTHON_USEDEP}]
		>=dev-python/graphviz-0.8.1[${PYTHON_USEDEP}]
		<dev-python/graphviz-0.9.0[${PYTHON_USEDEP}]
	)
	tcmalloc? ( dev-util/google-perftools )"
DEPEND="${RDEPEND}
	python? ( dev-python/setuptools[${PYTHON_USEDEP}] )
	test? ( dev-cpp/gtest )"
REQUIRED_USE="python? ( ${PYTHON_REQUIRED_USE} )
	?? ( tcmalloc jemalloc )"

#PATCHES=( "${FILESDIR}/${P}-python-fix-library-load-and-install.patch"
#	"${FILESDIR}/${P}-Use-shared-gtest.patch"
#	"${FILESDIR}/${P}-Use-shared-MKLDNN.patch"
#	"${FILESDIR}/${P}-optional-tests.patch")

pkg_setup() {
if use cuda; then
	lsmod|grep -q '^nvidia_uvm'
	if [ $? -ne 0 ] || [ ! -c /dev/nvidia-uvm ]; then
		eerror "Please run: \"nvidia-modprobe -u -c 0\" before attempting to install ${PN}."
		eerror "Otherwise the hardware autodetect will fail and all architecture modules will be built."
	fi
	fi
}

src_prepare() {
	cmake-utils_src_prepare
	if use python; then
		cd "${S}"/python
		distutils-r1_src_prepare
	fi
	if use distributed; then
		cd "${S}"
		epatch "${FILESDIR}/${P}-Use-zmq-shared-library.patch"
		epatch "${FILESDIR}/${P}-Use-shared-pslite.patch"
	fi
}

src_configure() {
	local mycmakeargs=(
		-DUSE_CPP_PACKAGE=ON
		-DBUILD_SHARED_LIBS=ON
		-DUSE_CUDA=$(usex cuda)
		-DUSE_OLDCMAKECUDA=1
		-DUSE_CUDNN=$(usex cudnn)
		-DUSE_GPERFTOOLS=$(usex tcmalloc)
		-DUSE_JEMALLOC=$(usex jemalloc)
		-DUSE_LAPACK=$(usex lapack)
		-DUSE_MKLDNN=$(usex mkldnn)
		-DUSE_OPENCV=$(usex opencv)
		-DUSE_OPENMP=$(usex openmp)
		-DBUILD_TESTS=$(usex test)
		-DBLAS=Atlas
		-DUSE_DIST_KVSTORE=$(usex distributed)
		-DINSTALL_EXAMPLES=$(usex examples)
	)

	addwrite /dev/nvidia-uvm
	addwrite /dev/nvidiactl
	addwrite /dev/nvidia0

	cmake-utils_src_configure

	if use python; then
		cd python;
		distutils-r1_src_configure
	fi
}

src_compile() {
	cmake-utils_src_compile USE_CPP_PACKAGE=1

	if use python; then
		cd python
		export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${BUILD_DIR}"
		distutils-r1_src_compile
	fi
}

src_install() {
	#doheader -r include/mxnet
	cmake-utils_src_install USE_CPP_PACKAGE=1
	if use python; then
		cd python
		distutils-r1_src_install
	fi

	#cd "${BUILD_DIR}"
	#dolib.so libmxnet.so
}
