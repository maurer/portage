EAPI=5

DESCRIPTION="OCaml Indentation Pretty Printer"
HOMEPAGE=""
EGIT_REPO_URI="https://github.com/mjambon/easy-format"

LICENSE="Apache"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=dev-lang/ocaml-4.01.0[ocamlopt]"
RDEPEND="${DEPEND}"

inherit git-r3

src_install() {
  libdir=`ocamlc -where`
  dodir ${libdir}/caml
  emake OCAMLFIND_DESTDIR="${D}${libdir}" install
}
