EAPI=5

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://forge.ocamlcore.org/frs/download.php/1199/zarith-1.2.1.tgz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/ocaml-4.01.0[ocamlopt] dev-libs/gmp"
RDEPEND="${DEPEND}"

pkg_setup() {
	OCAMLDIR=`ocamlc -where`
}

src_configure () {
  ./configure -installdir ${D}${OCAMLDIR}
}

src_install () {
  dodir ${OCAMLDIR}
  cp ${OCAMLDIR}/ld.conf ${D}${OCAMLDIR}/ld.conf || die
  emake OCAMLFIND_LDCONF=${D}${OCAMLDIR}/ld.conf install
  rm ${D}${OCAMLDIR}/ld.conf || die
}
