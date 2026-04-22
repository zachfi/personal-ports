# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	freebsd_exporter
PORTVERSION=	0.3.3
PORTREVISION=	3
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	contact@zach.fi
COMMENT=	Prometheus Exporter for FreeBSD
WWW=		https://github.com/zachfi/freebsd_exporter

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	zachfi
GH_PROJECT=	freebsd_exporter

GO_MODULE=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_BUILDFLAGS=	-ldflags='-X main.Version=v${PORTVERSION}' -mod=vendor

PLIST_FILES=	bin/freebsd_exporter

USE_RC_SUBR=	freebsd_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/freebsd_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
