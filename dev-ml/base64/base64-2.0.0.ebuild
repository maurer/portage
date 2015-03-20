inherit eutils findlib versionator
MY_PN="ocaml-${PN}"
MY_PV=${PV}
MY_P="${MY_PN}-${MY_PV}"

DESCRIPTION="Base64 is a group of similar binary-to-text encoding schemes that represent binary data in an ASCII string format by translating it into a radix-64 representation. It is specified in RFC 2045. This package provides this functionality as a library for OCaml"
HOMEPAGE="https://github.com/mirage/ocaml-base64"
SRC_URI="https://github.com/mirage/${MY_PN}/archive/v${MY_PV}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  dev-lang/ocaml
  dev-ml/findlib"

src_unpack() {
    if [ "${A}" != "" ]; then
        unpack ${A}
    fi
	mv ${MY_P} ${S}
}

src_compile() {
	econf
	emake
}

src_install() {
	findlib_src_install
}
