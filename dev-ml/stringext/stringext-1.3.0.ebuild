inherit eutils findlib

DESCRIPTION="Extra string functions for OCaml. Mainly splitting."
HOMEPAGE="https://github.com/rgrinberg/stringext"
SRC_URI="https://github.com/rgrinberg/${PN}/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  dev-lang/ocaml
  dev-ml/findlib"

export OCAMLFIND_DESTDIR=${D}

src_unpack() {
    if [ "${A}" != "" ]; then
        unpack ${A}
    fi
	mv ${MY_P} ${S}
}

src_compile() {
	ocaml setup.ml -configure --destdir ${D} 
	ocaml setup.ml -build
}

src_install() {
	ocaml setup.ml -install
}
