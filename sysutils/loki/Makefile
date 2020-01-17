# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	loki
PORTVERSION=	1.2.0
PORTREVISION=	1
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	zach@zleslie.info
COMMENT=	Like Prometheus, but for logs

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git


#USES=		go
USE_GITHUB=	nodefault

DISTNAME=	loki-canary-freebsd-amd64
EXTRACT_SUFX=	.zip

GH_ACCOUNT=	grafana
GH_PROJECT=	loki

NO_BUILD=	yes

#GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
#GO_TARGET=	github.com/${GH_ACCOUNT}/${GH_PROJECT}

MASTER_SITES=  https://github.com/${GH_ACCOUNT}/${PORTNAME}/releases/download/${DISTVERSIONPREFIX}${PORTVERSION}/

PLIST_FILES=	bin/loki

USE_RC_SUBR=	loki

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/${DISTNAME} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
