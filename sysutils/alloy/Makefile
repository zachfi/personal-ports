PORTNAME=	alloy
PORTVERSION=	1.4.1
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils
PORTREVISION=	1

MAINTAINER=	zach.leslie@grafana.com
COMMENT=	OpenTelemetry Collector distribution with programmable pipelines
WWW=		https://github.com/grafana/alloy

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:1.22,modules
USE_GITHUB=	yes

GH_ACCOUNT=	grafana
GH_PROJECT=	alloy
USE_RC_SUBR=	alloy

GO_MODULE=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
GO_TARGET=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
GO_BUILDFLAGS=	-ldflags='-X github.com/grafana/alloy/internal/build.Version=v${PORTVERSION}'

post-fetch:
	@${ECHO_MSG} "===> Fetching ${GO_MODNAME}/syntax dependency";
	(cd ${DISTDIR}/${DIST_SUBDIR}; [ -e syntax/go.mod ] || mkdir syntax/; \
		tar -xzf grafana-alloy-v${PORTVERSION}_GH0.tar.gz ${PORTNAME}-${PORTVERSION}/syntax/go.mod; \
		cp ${PORTNAME}-${PORTVERSION}/syntax/go.mod syntax/go.mod)
	@${ECHO_MSG} "===> Fetching ${GO_MODNAME}/internal/etc/datadogreceiver dependency";
	(cd ${DISTDIR}/${DIST_SUBDIR}; [ -e internal/etc/datadogreceiver/go.mod ] || mkdir -p internal/etc/datadogreceiver/; \
		tar -xzf grafana-alloy-v${PORTVERSION}_GH0.tar.gz ${PORTNAME}-${PORTVERSION}/internal/etc/datadogreceiver/go.mod; \
		cp ${PORTNAME}-${PORTVERSION}/internal/etc/datadogreceiver/go.mod internal/etc/datadogreceiver/go.mod)

post-extract:
	cp -r ${WRKDIR}/${PORTNAME}-${PORTVERSION}/syntax ${GO_WRKSRC}/syntax;
	mkdir -p ${GO_WRKSRC}/internal/etc
	cp -r ${WRKDIR}/${PORTNAME}-${PORTVERSION}/internal/etc/datadogreceiver ${GO_WRKSRC}/internal/etc/datadogreceiver;

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/alloy ${STAGEDIR}${PREFIX}/bin/alloy
	${INSTALL_DATA} ${WRKSRC}/example-config.alloy ${STAGEDIR}${PREFIX}/etc/alloy.flow.sample

post-install:
	${MKDIR} ${STAGEDIR}/var/alloy
	chgrp nobody ${STAGEDIR}/var/alloy

.include <bsd.port.mk>
