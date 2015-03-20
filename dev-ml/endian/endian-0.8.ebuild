inherit eutils findlib versionator
MY_PN="ocplib-${PN}"
MY_PV=${PV}
MY_P="${MY_PN}-${MY_PV}"

DESCRIPTION=""
HOMEPAGE="https://github.com/OCamlPro/ocplib-endian/"
SRC_URI="https://github.com/OCamlPro/${MY_PN}/archive/${MY_PV}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  dev-lang/ocaml
  dev-ml/cppo
  dev-ml/findlib"

src_unpack() {
    if [ "${A}" != "" ]; then
        unpack ${A}
    fi
	mv ${MY_P} ${S}
}

src_compile() {
	emake || die "make failed"
}

src_install() {
	findlib_src_install
}
