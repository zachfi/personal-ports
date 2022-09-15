# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	freebsd_controller
PORTVERSION=	0.1.1
PORTREVISION=	3
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	zach@zleslie.info
COMMENT=	A Kubernetes Controller on FreeBSD

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_BUILDFLAGS=	-ldflags='-X main.Version=v${PORTVERSION}' -mod=vendor

PLIST_FILES=	bin/freebsd_controller

USE_RC_SUBR=	freebsd_controller

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/freebsd_controller ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
