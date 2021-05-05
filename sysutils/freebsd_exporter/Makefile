# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	freebsd_exporter
PORTVERSION=	0.1.0
PORTREVISION=	0
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	zach@zleslie.info
COMMENT=	Prometheus Exporter for FreeBSD

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_BUILDFLAGS=	-ldflags='-X main.Version=v${PORTVERSION}' -mod=vendor

PLIST_FILES=	bin/freebsd_exporter

USE_RC_SUBR=	freebsd_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/freebsd_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
