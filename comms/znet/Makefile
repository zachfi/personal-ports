# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	znet
PORTVERSION=	0.6.3
PORTREVISION=	0
DISTVERSIONPREFIX=v
CATEGORIES=	comms

MAINTAINER=	zach@zleslie.info
COMMENT=	Znet things listener

LICENSE=	APACHE20

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_BUILDFLAGS=	-ldflags='-X main.Version=v${PORTVERSION}'

PLIST_FILES=	bin/znet

USE_RC_SUBR=	znet

GH_TUPLE=	\
		Juniper:go-netconf:v0.1.1:juniper_go_netconf/vendor/github.com/Juniper/go-netconf \
		alecthomas:kingpin:v2.2.6:alecthomas_kingpin/vendor/gopkg.in/alecthomas/kingpin.v2 \
		alecthomas:template:fb15b899a751:alecthomas_template/vendor/github.com/alecthomas/template \
		alecthomas:units:c3de453c63f4:alecthomas_units/vendor/github.com/alecthomas/units \
		amimof:huego:fbe1857ba8f5:amimof_huego/vendor/github.com/amimof/huego \
		asaskevich:govalidator:f61b66f89f4a:asaskevich_govalidator/vendor/github.com/asaskevich/govalidator \
		beorn7:perks:v1.0.1:beorn7_perks/vendor/github.com/beorn7/perks \
		fsnotify:fsnotify:v1.4.7:fsnotify_fsnotify/vendor/github.com/fsnotify/fsnotify \
		go-asn1-ber:asn1-ber:f715ec2f112d:go_asn1_ber_asn1_ber/vendor/gopkg.in/asn1-ber.v1 \
		go-ini:ini:v1.51.0:go_ini_ini/vendor/gopkg.in/ini.v1 \
		go-ldap:ldap:v3.0.2:go_ldap_ldap/vendor/github.com/go-ldap/ldap \
		go-openapi:errors:v0.19.2:go_openapi_errors/vendor/github.com/go-openapi/errors \
		go-openapi:strfmt:v0.19.3:go_openapi_strfmt/vendor/github.com/go-openapi/strfmt \
		go-stack:stack:v1.8.0:go_stack_stack/vendor/github.com/go-stack/stack \
		go-yaml:yaml:v2.2.7:go_yaml_yaml/vendor/gopkg.in/yaml.v2 \
		golang:crypto:87dc89f01550:golang_crypto/vendor/golang.org/x/crypto \
		golang:net:aa69164e4478:golang_net/vendor/golang.org/x/net \
		golang:protobuf:v1.3.2:golang_protobuf/vendor/github.com/golang/protobuf \
		golang:snappy:v0.0.1:golang_snappy/vendor/github.com/golang/snappy \
		golang:sys:0a153f010e69:golang_sys/vendor/golang.org/x/sys \
		golang:text:v0.3.2:golang_text/vendor/golang.org/x/text \
		golang:time:9d24e82272b4:golang_time/vendor/golang.org/x/time \
		google:go-genproto:83cc0476cb11:google_go_genproto/vendor/google.golang.org/genproto \
		grpc:grpc-go:v1.25.1:grpc_grpc_go/vendor/google.golang.org/grpc \
		hashicorp:errwrap:v1.0.0:hashicorp_errwrap/vendor/github.com/hashicorp/errwrap \
		hashicorp:go-cleanhttp:v0.5.1:hashicorp_go_cleanhttp/vendor/github.com/hashicorp/go-cleanhttp \
		hashicorp:go-hclog:v0.9.2:hashicorp_go_hclog/vendor/github.com/hashicorp/go-hclog \
		hashicorp:go-multierror:v1.0.0:hashicorp_go_multierror/vendor/github.com/hashicorp/go-multierror \
		hashicorp:go-retryablehttp:v0.6.2:hashicorp_go_retryablehttp/vendor/github.com/hashicorp/go-retryablehttp \
		hashicorp:go-rootcerts:v1.0.1:hashicorp_go_rootcerts/vendor/github.com/hashicorp/go-rootcerts \
		hashicorp:go-sockaddr:v1.0.2:hashicorp_go_sockaddr/vendor/github.com/hashicorp/go-sockaddr \
		hashicorp:hcl:v1.0.0:hashicorp_hcl/vendor/github.com/hashicorp/hcl \
		hashicorp:vault:1cad00d1133b:hashicorp_vault/vendor/github.com/hashicorp/vault/sdk \
		hashicorp:vault:3b036e58e950:hashicorp_vault_1/vendor/github.com/hashicorp/vault/api \
		imdario:mergo:v0.3.7:imdario_mergo/vendor/github.com/imdario/mergo \
		inconshreveable:mousetrap:v1.0.0:inconshreveable_mousetrap/vendor/github.com/inconshreveable/mousetrap \
		jedib0t:go-pretty:v4.3.0:jedib0t_go_pretty/vendor/github.com/jedib0t/go-pretty \
		konsorten:go-windows-terminal-sequences:v1.0.2:konsorten_go_windows_terminal_sequences/vendor/github.com/konsorten/go-windows-terminal-sequences \
		magiconair:properties:v1.8.1:magiconair_properties/vendor/github.com/magiconair/properties \
		mattn:go-runewidth:v0.0.4:mattn_go_runewidth/vendor/github.com/mattn/go-runewidth \
		matttproud:golang_protobuf_extensions:v1.0.1:matttproud_golang_protobuf_extensions/vendor/github.com/matttproud/golang_protobuf_extensions \
		mitchellh:go-homedir:v1.1.0:mitchellh_go_homedir/vendor/github.com/mitchellh/go-homedir \
		mitchellh:mapstructure:v1.1.2:mitchellh_mapstructure/vendor/github.com/mitchellh/mapstructure \
		mongodb:mongo-go-driver:v1.1.1:mongodb_mongo_go_driver/vendor/go.mongodb.org/mongo-driver \
		nats-io:go-nats:v1.7.2:nats_io_go_nats/vendor/github.com/nats-io/go-nats \
		nats-io:nkeys:v0.1.0:nats_io_nkeys/vendor/github.com/nats-io/nkeys \
		nats-io:nuid:v1.0.1:nats_io_nuid/vendor/github.com/nats-io/nuid \
		pelletier:go-toml:v1.4.0:pelletier_go_toml/vendor/github.com/pelletier/go-toml \
		pierrec:lz4:v2.2.7:pierrec_lz4/vendor/github.com/pierrec/lz4 \
		prometheus:client_golang:v1.1.0:prometheus_client_golang/vendor/github.com/prometheus/client_golang \
		prometheus:client_model:14fe0d1b01d4:prometheus_client_model/vendor/github.com/prometheus/client_model \
		prometheus:common:v0.7.0:prometheus_common/vendor/github.com/prometheus/common \
		prometheus:procfs:v0.0.4:prometheus_procfs/vendor/github.com/prometheus/procfs \
		ryanuber:go-glob:v1.0.0:ryanuber_go_glob/vendor/github.com/ryanuber/go-glob \
		scottdware:go-junos:2fce6f5c1db4:scottdware_go_junos/vendor/github.com/scottdware/go-junos \
		scottdware:go-rested:93e152ef32a6:scottdware_go_rested/vendor/github.com/scottdware/go-rested \
		sirupsen:logrus:v1.4.2:sirupsen_logrus/vendor/github.com/sirupsen/logrus \
		spf13:afero:v1.2.2:spf13_afero/vendor/github.com/spf13/afero \
		spf13:cast:v1.3.0:spf13_cast/vendor/github.com/spf13/cast \
		spf13:cobra:v0.0.5:spf13_cobra/vendor/github.com/spf13/cobra \
		spf13:jwalterweatherman:v1.1.0:spf13_jwalterweatherman/vendor/github.com/spf13/jwalterweatherman \
		spf13:pflag:v1.0.5:spf13_pflag/vendor/github.com/spf13/pflag \
		spf13:viper:v1.6.1:spf13_viper/vendor/github.com/spf13/viper \
		square:go-jose:v2.3.1:square_go_jose/vendor/gopkg.in/square/go-jose.v2 \
		subosito:gotenv:v1.2.0:subosito_gotenv/vendor/github.com/subosito/gotenv \
		tcnksm:go-input:548a7d7a8ee8:tcnksm_go_input/vendor/github.com/tcnksm/go-input \
		xaque208:rftoy:4727b87c3461:xaque208_rftoy/vendor/github.com/xaque208/rftoy \
		xaque208:things:d57bea562936:xaque208_things/vendor/github.com/xaque208/things \
		ziutek:telnet:c3b780dc415b:ziutek_telnet/vendor/github.com/ziutek/telnet


do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/znet ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
