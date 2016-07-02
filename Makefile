# $$
DOCNAME=	jcc
#DOCNAME=	test

INCDIR=		${.CURDIR}/../..
IMGDIR=		${INCDIR}/img
BIBDBDIR=	${INCDIR}/bib

CSSFILE=	jcc.css
SDOC_HTML_SPLIT=section
WITHOUT_TOC=	yes
SDOC_HTML_NUMBEREDTITLE_OPTION=

ENCODING=	UTF-8
_LOCAL_NAME=	openjcc
SRCDIR=		${.CURDIR}
PAGESDIR=	${SRCDIR}/pages
TAR_ARGS=	--exclude './.git' --exclude './html4/*' --exclude './fig' --exclude './tbl' \
		--exclude './*~' --exclude './*.bak'
CONVERTGH_CMD=	${SETENV} RUBY_ARGS=${RUBY_ARGS} OPENTOOLSINCDIR=${OPENTOOLSINCDIR} ${SDOC2PAGE}

.include "${INCDIR}/Makefile.sdoc.in"
