EAPI=5

DESCRIPTION="Piqi serialization format for OCaml"
HOMEPAGE=""
EGIT_REPO_URI="https://github.com/alavrik/piqi-ocaml.git"

LICENSE="Apache"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=dev-lang/ocaml-4.01.0[ocamlopt] =dev-ml/piqi-9999"
RDEPEND="${DEPEND}"

inherit git-r3

src_compile () {
  emake -j1
}

src_install () {
  libdir=`ocamlc -where`
  dodir ${libdir}
  dodir /usr/bin/
  emake DESTDIR=${D}/usr OCAMLFIND_DESTDIR=${D}${libdir} install
}
