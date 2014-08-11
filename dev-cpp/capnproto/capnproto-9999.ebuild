EAPI=5

DESCRIPTION="RPC/Serialization system with capabilities support"
HOMEPAGE="http://capnproto.org"

EGIT_REPO_URI="https://github.com/kentonv/capnproto.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

inherit eutils autotools-multilib git-r3

S=${WORKDIR}/${P}/c++

src_prepare() {
  epatch ${FILESDIR}/${P}-no-ldconfig.patch
  eautoreconf
}
