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

USE_GITHUB=	yes
GH_ACCOUNT=	grafana

USE_RC_SUBR=	${PORTNAME}

SUB_FILES=	pkg-install

GO_MODULE=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
# Main alloy binary is built from ./collector (single main package).
# Use relative path so -mod=vendor treats it as main module, not an external import.
GO_TARGET=	./collector
GO_BUILDFLAGS=	-ldflags='-X github.com/grafana/alloy/internal/build.Version=${GH_TAGNAME}'

post-fetch:
	@${ECHO_MSG} "===> Fetching ${GO_MODNAME}/syntax dependency"
	(cd ${DISTDIR}/${DIST_SUBDIR}; [ -e syntax/go.mod ] || (\
		${MKDIR} syntax; \
		${TAR} -xzf ${DISTNAME}${EXTRACT_SUFX} ${PORTNAME}-${DISTVERSION}/syntax/go.mod; \
		${CP} ${PORTNAME}-${DISTVERSION}/syntax/go.mod syntax/go.mod))

post-extract:
	# Go module zip lacks collector/ and extension/; copy from GitHub tarball.
	${CP} -r ${WRKDIR}/${PORTNAME}-${DISTVERSION}/syntax ${GO_WRKSRC}
	${CP} -r ${WRKDIR}/${PORTNAME}-${DISTVERSION}/collector ${GO_WRKSRC}
	${CP} -r ${WRKDIR}/${PORTNAME}-${DISTVERSION}/extension ${GO_WRKSRC}

do-install:
	# GO_TARGET is ./collector; bsd.go.mk outputs bin/collector
	${INSTALL_PROGRAM} ${WRKDIR}/bin/collector ${STAGEDIR}${PREFIX}/bin/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/example-config.alloy ${STAGEDIR}${PREFIX}/etc/alloy.flow.sample
	${MKDIR} ${STAGEDIR}/var/${PORTNAME}

.include <bsd.port.mk>
