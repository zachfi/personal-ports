# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	pf_exporter
PORTVERSION=	0.1.0
PORTREVISION=	0
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	code@zach.fi
COMMENT=	Export Prometheus metrics from PF

LICENSE=	APACHE20

BUILD_DEPENDS=	git:devel/git

USES=		go:1.22,modules
USE_GITHUB=	yes

GH_ACCOUNT=	mischief
GH_PROJECT=	pf_exporter

GO_TARGET=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
GO_BUILDFLAGS=	-mod=vendor

PLIST_FILES=	bin/pf_exporter

do-install:
	${INSTALL_PROGRAM} -m 0500 ${WRKDIR}/bin/pf_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
