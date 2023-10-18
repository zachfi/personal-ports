PORTNAME=	grafana-loki
PORTVERSION=	2.9.2
PORTREVISION=	1
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	contact@zach.fi
COMMENT=	Like Prometheus, but for logs

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	grafana
GH_PROJECT=	loki

GO_TARGET=	github.com/${GH_ACCOUNT}/${GH_PROJECT}/cmd/loki github.com/${GH_ACCOUNT}/${GH_PROJECT}/clients/cmd/promtail
GO_BUILDFLAGS=	-ldflags='-X main.Version=v${PORTVERSION}' -mod=vendor

USE_RC_SUBR=	loki promtail

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/loki ${STAGEDIR}${PREFIX}/bin/loki
	${INSTALL_PROGRAM} ${WRKDIR}/bin/promtail ${STAGEDIR}${PREFIX}/bin/promtail
	${INSTALL_DATA} ${WRKSRC}/cmd/loki/loki-local-config.yaml ${STAGEDIR}${PREFIX}/etc/loki.yaml.sample
	${INSTALL_DATA} ${WRKSRC}/clients/cmd/promtail/promtail-local-config.yaml ${STAGEDIR}${PREFIX}/etc/promtail.yaml.sample

post-install:
	${MKDIR} ${STAGEDIR}/var/loki
	chgrp nobody ${STAGEDIR}/var/loki

.include <bsd.port.mk>
