EAPI="5"

DESCRIPTION="LLVM MCInst Disassembly for OCaml"
HOMEPAGE="http://llvm.org"
EGIT_REPO_URI="ssh://maurer@gerrit.aegis.cylab.cmu.edu:29418/llvm-mc"
LICENSE="BSD3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
DEPEND=">=dev-lang/ocaml-4.01.0[ocamlopt] >=dev-ml/oasis-0.4.4 sys-devel/llvm"
RDEPEND="${DEPEND}"

inherit oasis git-r3
