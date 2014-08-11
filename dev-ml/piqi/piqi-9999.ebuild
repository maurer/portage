EAPI=5

DESCRIPTION="Piqi serialization format for OCaml"
HOMEPAGE=""
EGIT_REPO_URI="https://github.com/alavrik/piqi.git"

LICENSE="Apache"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=dev-lang/ocaml-4.01.0[ocamlopt] >=dev-ml/xmlm-1.1.1 >=dev-ml/ulex-1.1 =dev-ml/easy-format-9999"
RDEPEND="${DEPEND}"

src_configure() {
  ./configure --prefix=${EPREFIX}/usr
}

src_compile() {
  emake -j1
  emake -j1 ocaml
}

src_install() {
  default
  libdir=`ocamlc -where`
  dodir ${libdir}
  emake OCAMLFIND_DESTDIR="${D}${libdir}" ocaml-install
}

inherit git-r3
