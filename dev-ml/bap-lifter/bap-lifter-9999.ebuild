EAPI="5"

DESCRIPTION="BAP Lifter"
HOMEPAGE="http://bap.ece.cmu.edu"
EGIT_REPO_URI="ssh://maurer@gerrit.aegis.cylab.cmu.edu:29418/bap-lifter"
LICENSE="BSD3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
DEPEND=">=dev-lang/ocaml-4.01.0[ocamlopt] >=dev-ml/oasis-0.4.4 =dev-ml/bap-types-9999 =dev-ml/llvm-mc-9999"
RDEPEND="${DEPEND}"

inherit oasis git-r3

_git-r3_set_submodules() {
:;
}
