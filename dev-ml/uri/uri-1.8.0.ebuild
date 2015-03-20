inherit eutils findlib versionator
MY_PN="ocaml-${PN}"
MY_PV=${PV}
MY_P="${MY_PN}-${MY_PV}"

DESCRIPTION="OCaml RFC3986 URI/URL parsing library."
HOMEPAGE="https://github.com/mirage/ocaml-uri"
SRC_URI="https://github.com/mirage/${MY_PN}/archive/v${MY_PV}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  dev-lang/ocaml
  dev-ml/findlib
  dev-ml/re2
  dev-ml/sexplib
  dev-ml/stringext
  dev-ml/type_conv"

libdir=`ocamlc -where`
export OCAMLFIND_DESTDIR=${D}${libdir}

src_unpack() {
    if [ "${A}" != "" ]; then
        unpack ${A}
    fi
	mv ${MY_P} ${S}
}

src_compile() {
    ocaml setup.ml -configure
	ocaml setup.ml -build
}

src_install() {
	dodir ${libdir}
	ocaml setup.ml -install
}
