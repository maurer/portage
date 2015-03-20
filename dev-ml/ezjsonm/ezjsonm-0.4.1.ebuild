inherit eutils findlib

DESCRIPTION="An easy interface on top of the Jsonm library."
HOMEPAGE="https://github.com/mirage/ezjsonm"
SRC_URI="https://github.com/mirage/${PN}/archive/${PV}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  dev-lang/ocaml
  dev-ml/findlib
  dev-ml/jsonm
  dev-ml/sexplib
  dev-ml/hex"

src_unpack() {
    if [ "${A}" != "" ]; then
        unpack ${A}
    fi
	mv ${MY_P} ${S}
}

src_compile() {
	emake
}

src_install() {
	findlib_src_install
}
