# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: 

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4} )
inherit distutils-r1 git-r3 multilib

DESCRIPTION="Capnproto Python Bindings"
HOMEPAGE=""
EGIT_REPO_URI="https://github.com/jparyani/pycapnp.git"

LICENSE="BSD2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="=dev-cpp/capnproto-9999"
DEPEND="${RDEPEND}"

