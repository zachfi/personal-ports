# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	lpk
PORTVERSION=	0.0.1
PORTREVISION=	2
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	code@zleslie.info
COMMENT=	Read SSH keys from LDAP

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208
GH_PROJECT=	lpk

GO_TARGET=	github.com/${GH_ACCOUNT}/${GH_PROJECT}/cmd/lpk

PLIST_FILES=	bin/lpk

do-install:
	${INSTALL_PROGRAM} -m 0700 ${WRKDIR}/bin/lpk ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
