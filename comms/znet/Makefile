# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	znet
PORTVERSION=	0.29.4
PORTREVISION=	1
DISTVERSIONPREFIX=v
CATEGORIES=	comms

MAINTAINER=	zach@zleslie.info
COMMENT=	znet RPC components

LICENSE=	APACHE20

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_BUILDFLAGS=	-ldflags='-X main.Version=v${PORTVERSION}' -mod=vendor

PLIST_FILES=	bin/znet

USE_RC_SUBR=	znet timer gitwatch agent harvest builder arpwatch

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/znet ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
