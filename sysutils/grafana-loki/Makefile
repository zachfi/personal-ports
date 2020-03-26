PORTNAME=	grafana-loki
PORTVERSION=	1.3.0
PORTREVISION=	2
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	zach@zleslie.info
COMMENT=	Like Prometheus, but for logs

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	grafana
GH_PROJECT=	loki

GO_TARGET=	github.com/${GH_ACCOUNT}/${GH_PROJECT}/cmd/loki github.com/${GH_ACCOUNT}/${GH_PROJECT}/cmd/promtail github.com/${GH_ACCOUNT}/${GH_PROJECT}/cmd/logcli

USE_RC_SUBR=	loki promtail

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/loki ${STAGEDIR}${PREFIX}/bin/loki
	${INSTALL_PROGRAM} ${WRKDIR}/bin/promtail ${STAGEDIR}${PREFIX}/bin/promtail
	${INSTALL_PROGRAM} ${WRKDIR}/bin/logcli ${STAGEDIR}${PREFIX}/bin/logcli
	${INSTALL_DATA} ${WRKSRC}/cmd/loki/loki-local-config.yaml ${STAGEDIR}${PREFIX}/etc/loki.yaml.sample
	${INSTALL_DATA} ${WRKSRC}/cmd/promtail/promtail-local-config.yaml ${STAGEDIR}${PREFIX}/etc/promtail.yaml.sample

post-install:
	${MKDIR} ${STAGEDIR}/var/loki
	chown nobody:nobody ${STAGEDIR}/var/loki

.include <bsd.port.mk>
