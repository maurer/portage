EAPI=5

DESCRIPTION="RPC/Serialization system with capabilities support"
HOMEPAGE="http://capnproto.org"
SRC_URI="https://capnproto.org/capnproto-c++-0.4.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

inherit eutils autotools-multilib

src_unpack() {
  default
  mv ${WORKDIR}/${PN}-c++-${PV} ${WORKDIR}/${P}
}

src_prepare() {
  epatch ${FILESDIR}/${PN}-no-ldconfig.patch
}
