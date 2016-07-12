# $$
DOCNAME=	amendment

INCDIR=		${.CURDIR}/../../..
IMGDIR=		${INCDIR}/img
BIBDBDIR=	${INCDIR}/bib

TEX_DEFSTY=	legal

ENCODING=	EUC-JP
_LOCAL_NAME=	openjcc
SRCDIR=		${.CURDIR}
DOCVERSION=	0.0
TAR_ARGS=	--exclude './.git' --exclude './html4/*' --exclude './fig' --exclude './tbl' \
		--exclude './*~' --exclude './*.bak'
CONVERTTEX_CMD=	${SETENV} RUBY_ARGS=${RUBY_ARGS} OPENTOOLSINCDIR=${OPENTOOLSINCDIR} DOCVERSION=${DOCVERSION} ${LATEX2LATEX}
POST_TEX_LIST=	${CONVERTTEX_CMD} -N -T legal -s 3 -p banner_longtable ${WRKSRC}/${DOCNAME}.tex
POST_PDF_LIST=	${MV} ${WRKSRC}/${DOCNAME}.pdf ${SRCDIR}/

.include "${INCDIR}/Makefile.sdoc.in"
