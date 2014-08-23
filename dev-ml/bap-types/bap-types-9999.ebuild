EAPI="5"

DESCRIPTION="BAP Core Types"
HOMEPAGE="http://bap.ece.cmu.edu"
EGIT_REPO_URI="ssh://${BAP_GIT_USER}@gerrit.aegis.cylab.cmu.edu:29418/bap-types"
LICENSE="BSD3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
DEPEND="dev-ml/piqi dev-ml/piqi-ocaml >=dev-lang/ocaml-4.01.0[ocamlopt] >=dev-ml/oasis-0.4.4 >=dev-ml/core_kernel-110.01.00 >=dev-ml/zarith-1.2.1"
RDEPEND="${DEPEND}"

inherit oasis git-r3
