inherit eutils findlib

DESCRIPTION="A library for manipulation of IP (and MAC) address representations."
HOMEPAGE="https://github.com/mirage/ocaml-ipaddr"
EGIT_REPO_URI="https://github.com/mirage/ocaml-ipaddr.git"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  dev-lang/ocaml
  dev-ml/findlib
  dev-ml/sexplib
  dev-ml/type-conv"

src_unpack() {
    if [ "${A}" != "" ]; then
        unpack ${A}
    fi
	mv ocaml-ipaddr ${S}
}

src_compile() {
	emake
}

src_install() {
	findlib_src_install
}
inherit git-r3
