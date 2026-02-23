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


do-install:
	# GO_TARGET is ./collector; bsd.go.mk outputs bin/collector
	${INSTALL_PROGRAM} ${WRKDIR}/bin/collector ${STAGEDIR}${PREFIX}/bin/${PORTNAME}
	${INSTALL_DATA} ${WRKDIR}/${PORTNAME}-${DISTVERSION}/example-config.alloy ${STAGEDIR}${PREFIX}/etc/alloy.flow.sample
	${MKDIR} ${STAGEDIR}/var/${PORTNAME}

# Build from tarball so ./collector is part of the main module (zip omits it).
GO_WRKSRC=	${WRKDIR}/${PORTNAME}-${DISTVERSION}

.include <bsd.port.mk>
