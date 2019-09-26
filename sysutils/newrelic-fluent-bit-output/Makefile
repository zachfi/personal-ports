# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	newrelic-fluent-bit-output
PORTVERSION=	g20190926
CATEGORIES=	sysutils

MAINTAINER=	zach@zleslie.info
COMMENT=	NewRelic output plugin for fluent-bit

LICENSE=	APACHE20

BUILD_DEPENDS=	git:devel/git fluent-bit:sysutils/fluent-bit go:lang/go

USES=		go go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	newrelic
GH_TAGNAME=	38a6228e

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	lib/out_newrelic.so

do-build:
	@( cd ${WRKSRC}; \
		${SETENV} ${MAKE_ENV} GOFLAGS="-mod=vendor" go build -buildmode=c-shared -o out_newrelic.so . ; \
		)

# GH_TUPLE=       \
#                 fluent:fluent-bit-go:51032bd05190:fluent_fluent_bit_go/vendor/github.com/fluent/fluent-bit-go \
#                 fsnotify:fsnotify:v1.4.7:fsnotify_fsnotify/vendor/gopkg.in/fsnotify.v1 \
#                 go-tomb:tomb:dd632973f1e7:go_tomb_tomb/vendor/gopkg.in/tomb.v1 \
#                 go-yaml:yaml:v2.2.1:go_yaml_yaml/vendor/gopkg.in/yaml.v2 \
#                 golang:net:161cd47e91fd:golang_net/vendor/golang.org/x/net \
#                 golang:protobuf:v1.2.0:golang_protobuf/vendor/github.com/golang/protobuf \
#                 golang:sys:d0be0721c37e:golang_sys/vendor/golang.org/x/sys \
#                 golang:text:v0.3.0:golang_text/vendor/golang.org/x/text \
#                 hpcloud:tail:v1.0.0:hpcloud_tail/vendor/github.com/hpcloud/tail \
#                 onsi:ginkgo:v1.8.0:onsi_ginkgo/vendor/github.com/onsi/ginkgo \
#                 onsi:gomega:v1.5.0:onsi_gomega/vendor/github.com/onsi/gomega \
#                 ugorji:go:2dc34c0b8780:ugorji_go/vendor/github.com/ugorji/go/codec

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/src/github.com/newrelic/newrelic-fluent-bit-output/out_newrelic.so ${STAGEDIR}${PREFIX}/lib

.include <bsd.port.mk>
