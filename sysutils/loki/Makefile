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


USES=		go:modules
USE_GITHUB=	yes
# USE_GITHUB=	nodefault

# DISTNAME=	loki-canary-freebsd-amd64
# EXTRACT_SUFX=	.zip

GH_ACCOUNT=	grafana
GH_PROJECT=	loki

# NO_BUILD=	yes

GO_TARGET=	github.com/${GH_ACCOUNT}/${GH_PROJECT}/cmd/loki github.com/${GH_ACCOUNT}/${GH_PROJECT}/cmd/promtail github.com/${GH_ACCOUNT}/${GH_PROJECT}/cmd/logcli

# MASTER_SITES=  https://github.com/${GH_ACCOUNT}/${PORTNAME}/releases/download/${DISTVERSIONPREFIX}${PORTVERSION}/

USE_RC_SUBR=	loki

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/loki ${STAGEDIR}${PREFIX}/bin/loki
	${INSTALL_PROGRAM} ${WRKDIR}/bin/promtail ${STAGEDIR}${PREFIX}/bin/promtail
	${INSTALL_PROGRAM} ${WRKDIR}/bin/logcli ${STAGEDIR}${PREFIX}/bin/logcli
	${INSTALL_DATA} ${WRKSRC}/cmd/loki/loki-local-config.yaml ${STAGEDIR}${PREFIX}/etc/loki.yaml.sample

.include <bsd.port.mk>
