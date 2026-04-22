# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	freebsd_controller
PORTVERSION=	0.1.8
PORTREVISION=	6
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	contact@zach.fi
COMMENT=	A Kubernetes Controller on FreeBSD
WWW=		https://github.com/zachfi/freebsd_controller

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	zachfi
GH_PROJECT=	freebsd_controller

GO_MODULE=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_BUILDFLAGS=	-ldflags='-X main.Version=v${PORTVERSION}' -mod=vendor

PLIST_FILES=	bin/freebsd_controller

USE_RC_SUBR=	freebsd_controller

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/freebsd_controller ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
