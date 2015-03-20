inherit eutils findlib versionator
MY_PN="ocaml-${PN}"
MY_PV=${PV}
MY_P="${MY_PN}-${MY_PV}"

DESCRIPTION="Cstruct is a library and syntax extension to make it easier to access C-like structures directly from OCaml."
HOMEPAGE="https://github.com/mirage/ocaml-cstruct"
SRC_URI="https://github.com/mirage/${MY_PN}/archive/v${MY_PV}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  dev-lang/ocaml
  dev-ml/findlib
  dev-ml/endian
  dev-ml/sexplib
  dev-ml/type_conv"

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
