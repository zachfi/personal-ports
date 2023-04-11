# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	lpk
PORTVERSION=	0.0.1
PORTREVISION=	6
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	code@zleslie.info
COMMENT=	Read SSH keys from LDAP

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	zachfi
GH_PROJECT=	lpk

GO_TARGET=	github.com/${GH_ACCOUNT}/${GH_PROJECT}/cmd/lpk
GO_BUILDFLAGS=	-mod=vendor

PLIST_FILES=	bin/lpk

do-install:
	${INSTALL_PROGRAM} -m 0500 ${WRKDIR}/bin/lpk ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
