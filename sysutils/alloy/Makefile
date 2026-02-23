PORTNAME=	alloy
DISTVERSIONPREFIX=	v
DISTVERSION=	1.13.1
PORTREVISION=	0
CATEGORIES=	sysutils

MAINTAINER=	zach.leslie@grafana.com
COMMENT=	OpenTelemetry Collector distribution with programmable pipelines
WWW=		https://github.com/grafana/alloy

LICENSE=	MIT

USES=		go:modules

# nodefault: go.mk sets WRKSRC for the module zip; avoid USE_GITHUB+WRKSRC sanity warning.
USE_GITHUB=	yes,nodefault
GH_ACCOUNT=	grafana
GH_PROJECT=	alloy

USE_RC_SUBR=	${PORTNAME}

SUB_FILES=	pkg-install

GO_MODULE=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
# Main alloy binary is built from ./collector (single main package).
# Use relative path so -mod=vendor treats it as main module, not an external import.
GO_TARGET=	./collector
GO_BUILDFLAGS=	-ldflags='-X github.com/grafana/alloy/internal/build.Version=${GH_TAGNAME}'

# Run before go-post-extract (800) so go mod tidy sees replace ./syntax and ./collector.
_USES_extract+=	700:alloy-pre-go-extract
alloy-pre-go-extract:
	${CP} -r ${WRKDIR}/${PORTNAME}-${DISTVERSION}/syntax ${GO_WRKSRC}
	${CP} -r ${WRKDIR}/${PORTNAME}-${DISTVERSION}/collector ${GO_WRKSRC}
	${CP} -r ${WRKDIR}/${PORTNAME}-${DISTVERSION}/extension ${GO_WRKSRC}

post-fetch:
	@${ECHO_MSG} "===> Fetching ${GO_MODNAME}/syntax dependency"
	(cd ${DISTDIR}/${DIST_SUBDIR}; [ -e syntax/go.mod ] || (\
		${MKDIR} syntax; \
		${TAR} -xzf ${DISTNAME}${EXTRACT_SUFX} ${PORTNAME}-${DISTVERSION}/syntax/go.mod; \
		${CP} ${PORTNAME}-${DISTVERSION}/syntax/go.mod syntax/go.mod))


# Build from tarball (has collector/); module zip omits it. Copy vendored deps into tarball.
post-extract:
	${CP} -r ${GO_WRKSRC}/vendor ${WRKDIR}/${PORTNAME}-${DISTVERSION}/

.include <bsd.port.mk>

# Override build/install to use tarball (has collector/); must be after include to override go.mk.
_GO_WRKSRC=	${WRKDIR}/${PORTNAME}-${DISTVERSION}
do-build:
	(cd ${_GO_WRKSRC}; \
		${SETENVI} ${WRK_ENV} ${MAKE_ENV} ${GO_ENV} GOMAXPROCS=${MAKE_JOBS_NUMBER} GOPROXY=off \
		${GO_CMD} build ${GO_BUILDFLAGS} -o ${GO_WRKDIR_BIN}/collector ./collector)

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/collector ${STAGEDIR}${PREFIX}/bin/${PORTNAME}
	${INSTALL_DATA} ${WRKDIR}/${PORTNAME}-${DISTVERSION}/example-config.alloy ${STAGEDIR}${PREFIX}/etc/alloy.flow.sample
	${MKDIR} ${STAGEDIR}/var/${PORTNAME}
