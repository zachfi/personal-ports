PORTNAME=	grafana-agent
PORTVERSION=	0.40.3
PORTREVISION=	1
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	contact@zach.fi
COMMENT=	Grafama Agent for observability swiss-army

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	grafana
GH_PROJECT=	agent

GO_TARGET=	github.com/${GH_ACCOUNT}/${GH_PROJECT}/cmd/grafana-agent
GO_BUILDFLAGS=	-ldflags='-X github.com/grafana/agent/internal/build.Version=v${PORTVERSION}' -mod=vendor

USE_RC_SUBR=	grafana-agent

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/grafana-agent ${STAGEDIR}${PREFIX}/bin/grafana-agent
	# ${INSTALL_DATA} ${WRKSRC}/clients/cmd/promtail/promtail-local-config.yaml ${STAGEDIR}${PREFIX}/etc/promtail.yaml.sample

.include <bsd.port.mk>
