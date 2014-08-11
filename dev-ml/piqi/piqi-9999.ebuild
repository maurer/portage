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
  ./configure --prefix=${EPREFIX}
}

src_compile() {
  emake -j1
}

inherit git-r3
