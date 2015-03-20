inherit eutils findlib versionator
MY_PN="ocaml-${PN}"
MY_PV=${PV}
MY_P="${MY_PN}-${MY_PV}"

DESCRIPTION="CoHTTP is an OCaml library for creating HTTP daemons. It has a portable HTTP parser, and implementations using various asynchronous programming libraries"
HOMEPAGE="https://github.com/mirage/ocaml-cohttp"
SRC_URI="https://github.com/mirage/${MY_PN}/archive/v${MY_PV}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  dev-lang/ocaml
  dev-ml/lwt
  dev-ml/cmdliner
  dev-ml/re2
  dev-ml/uri
  dev-ml/fieldslib
  dev-ml/sexplib
  dev-ml/conduit
  dev-ml/stringext
  dev-ml/base64"

libdir=`ocamlc -where`
export OCAMLFIND_DESTDIR=${D}${libdir}

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
	dodir ${libdir}
	ocaml setup.ml -install
}
