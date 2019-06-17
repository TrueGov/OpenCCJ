# $$
DOCNAME=	amendment

INCDIR=		${.CURDIR}/../../..
IMGDIR=		${INCDIR}/img
BIBDBDIR=	${INCDIR}/bib

TEX_DEFSTY=	legal
JA_TRADITIONAL=	yes
LOCALES=	en ja

ENCODING=	UTF-8
_LOCAL_NAME=	openccj
SRCDIR=		${.CURDIR}
DOCVERSION=	0.0
TAR_ARGS=	--exclude './amendment.sdoc' --exclude './.git' --exclude './html4' \
		--exclude './latex2e' --exclude './fig' --exclude './tbl' \
		--exclude './fontconfig' --exclude './*~' --exclude './*.bak'
CONVERTTEX_CMD=	${SETENV} RUBY_ARGS=${RUBY_ARGS} OPENTOOLSINCDIR=${OPENTOOLSINCDIR} DOCVERSION=${DOCVERSION} ${LATEX2LATEX}
POST_TEX_LIST=	${CONVERTTEX_CMD} -N -T legal -s 3 -p banner_longtable ${WRKSRC}/${DOCNAME}.tex
POST_PDF_LIST=	${MV} ${WRKSRC}/${DOCNAME}.pdf ${SRCDIR}/

.include "${INCDIR}/Makefile.sdoc.in"
