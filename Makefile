# $$
DOCNAME=	jcc

INCDIR=		${.CURDIR}/../../..
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
DOCVERSION=	0.0
DOCNAME_PDF=	amendment
TAR_ARGS=	--exclude './amendment.sdoc' --exclude './.git' --exclude './html4' \
		--exclude './latex2e' --exclude './fig' --exclude './tbl' \
		--exclude './fontconfig' --exclude './*~' --exclude './*.bak'
CONVERTTEX_CMD=	${SETENV} RUBY_ARGS=${RUBY_ARGS} OPENTOOLSINCDIR=${OPENTOOLSINCDIR} DOCVERSION=${DOCVERSION} ${LATEX2LATEX}
CONVERTSDOC_CMD=${SETENV} RUBY_ARGS=${RUBY_ARGS} OPENTOOLSINCDIR=${OPENTOOLSINCDIR} ${SDOC2SDOC}
CONVERTGH_CMD=	${SETENV} RUBY_ARGS=${RUBY_ARGS} OPENTOOLSINCDIR=${OPENTOOLSINCDIR} ${SDOC2PAGE} -L -s -t './Templates/github/page/LeapDay.html'

.include "${INCDIR}/Makefile.sdoc.in"
