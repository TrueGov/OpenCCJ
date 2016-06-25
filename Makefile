# $$
DOCNAME=	jcc

INCDIR=		${.CURDIR}/../..
IMGDIR=		${INCDIR}/img
BIBDBDIR=	${INCDIR}/bib
ENCODING=	UTF-8
CSSFILE=	jcc.css
_LOCAL_NAME=	openjcc
SRCDIR=		${.CURDIR}
TAR_ARGS=	--exclude './html4/*' --exclude './fig' --exclude './tbl' \
		--exclude './*~' --exclude './*.bak'

.include "${INCDIR}/Makefile.sdoc.in"
