inherit eutils findlib versionator
MY_PN="ocaml-${PN}"
MY_PV=${PV}
MY_P="${MY_PN}-${MY_PV}"

DESCRIPTION="The conduit library takes care of establishing and listening for TCP and SSL/TLS connections for the Lwt and Async libraries."
HOMEPAGE="https://github.com/mirage/ocaml-conduit"
SRC_URI="https://github.com/mirage/${MY_PN}/archive/v${MY_PV}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  dev-lang/ocaml
  dev-ml/findlib
  dev-ml/sexplib
  dev-ml/stringext
  dev-ml/uri
  dev-ml/cstruct
  >=dev-ml/ipaddr-2.5.0"

src_unpack() {
    if [ "${A}" != "" ]; then
        unpack ${A}
    fi
	mv ${MY_P} ${S}
}

src_compile() {
	emake
}

src_install() {
	findlib_src_install
}
