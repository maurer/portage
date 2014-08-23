EAPI="5"

DESCRIPTION="BAP Decompiler"
HOMEPAGE="http://bap.ece.cmu.edu"
EGIT_REPO_URI="ssh://git@git.aegis.cylab.cmu.edu:2023/bap/bap-decompiler.git"
LICENSE="BSD3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
DEPEND="dev-ml/camlidl dev-ml/camomile >=dev-lang/ocaml-4.01.0[ocamlopt] >=dev-ml/zarith-1.2.1 dev-lang/python:2.7"
RDEPEND="${DEPEND}"

inherit git-r3

src_prepare () {
  cd bap-types
  epatch ${FILESDIR}/use-temp.patch
  cd ../decompiler-visualizer
  epatch ${FILESDIR}/phoenix2-install.patch
}

src_configure () {
  cd bap-types
  ./autogen.sh
  econf
}

src_compile () {
  cd bap-types
  emake
}

src_install () {
  PHOENIX_DIR=/var/lib/phoenix
  into ${PHOENIX_DIR}
  insinto ${PHOENIX_DIR}/visualizer
  doins -r decompiler-visualizer/{css,decompiler.html,extjs,js,layouts,prettify,resources}
  newbin bap-types/utils/demo decomp-backend
  dobin decompiler-visualizer/chopdis
  newbin decompiler-visualizer/phoenix2 phoenix
  dosym ${PHOENIX_DIR}/bin/phoenix /usr/bin/phoenix
}
