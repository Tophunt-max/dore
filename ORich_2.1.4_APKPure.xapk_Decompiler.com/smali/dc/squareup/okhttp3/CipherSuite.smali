###### Class dc.squareup.okhttp3.CipherSuite (dc.squareup.okhttp3.CipherSuite)
.class public final Ldc/squareup/okhttp3/CipherSuite;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldc/squareup/okhttp3/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field static final ORDER_BY_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TLS_AES_128_CCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_AES_256_CCM_8_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_DSS_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_DSS_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_DSS_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_DSS_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_DSS_WITH_AES_256_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_DSS_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_DSS_WITH_DES_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_RSA_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_RSA_WITH_AES_256_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_RSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DHE_RSA_WITH_DES_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DH_anon_EXPORT_WITH_RC4_40_MD5:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DH_anon_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DH_anon_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DH_anon_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DH_anon_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DH_anon_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DH_anon_WITH_AES_256_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DH_anon_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DH_anon_WITH_DES_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_DH_anon_WITH_RC4_128_MD5:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_NULL_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_NULL_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_ECDSA_WITH_NULL_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_ECDSA_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_RSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_RSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_RSA_WITH_NULL_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_RSA_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_anon_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_anon_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_anon_WITH_NULL_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_ECDH_anon_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_FALLBACK_SCSV:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_KRB5_EXPORT_WITH_RC4_40_MD5:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_KRB5_EXPORT_WITH_RC4_40_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_KRB5_WITH_3DES_EDE_CBC_MD5:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_KRB5_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_KRB5_WITH_DES_CBC_MD5:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_KRB5_WITH_DES_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_KRB5_WITH_RC4_128_MD5:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_KRB5_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_PSK_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_PSK_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_PSK_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_PSK_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_EXPORT_WITH_DES40_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_EXPORT_WITH_RC4_40_MD5:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_AES_256_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_CAMELLIA_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_CAMELLIA_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_DES_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_NULL_MD5:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_NULL_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_NULL_SHA256:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_RC4_128_MD5:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_SEED_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;


# instance fields
.field final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/CipherSuite$1;

    invoke-direct {v0}, Ldc/squareup/okhttp3/CipherSuite$1;-><init>()V

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->INSTANCES:Ljava/util/Map;

    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    const/4 v1, 0x1

    .line 24
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_NULL_MD5:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    const/4 v1, 0x2

    .line 25
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_NULL_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const/4 v1, 0x3

    .line 26
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_EXPORT_WITH_RC4_40_MD5:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    const/4 v1, 0x4

    .line 27
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_RC4_128_MD5:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    const/4 v1, 0x5

    .line 28
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x8

    .line 31
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_EXPORT_WITH_DES40_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x9

    .line 32
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_DES_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0xa

    .line 33
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x11

    .line 40
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v1, 0x12

    .line 41
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_DSS_WITH_DES_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x13

    .line 42
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x14

    .line 43
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x15

    .line 44
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_RSA_WITH_DES_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x16

    .line 45
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x17

    .line 46
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DH_anon_EXPORT_WITH_RC4_40_MD5:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    const/16 v1, 0x18

    .line 47
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DH_anon_WITH_RC4_128_MD5:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x19

    .line 48
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const/16 v1, 0x1a

    .line 49
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DH_anon_WITH_DES_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1b

    .line 50
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DH_anon_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    const/16 v1, 0x1e

    .line 51
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_KRB5_WITH_DES_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1f

    .line 52
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_KRB5_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    const/16 v1, 0x20

    .line 53
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_KRB5_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    const/16 v1, 0x22

    .line 55
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_KRB5_WITH_DES_CBC_MD5:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    const/16 v1, 0x23

    .line 56
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_KRB5_WITH_3DES_EDE_CBC_MD5:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    const/16 v1, 0x24

    .line 57
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_KRB5_WITH_RC4_128_MD5:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    const/16 v1, 0x26

    .line 59
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    const/16 v1, 0x28

    .line 61
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_KRB5_EXPORT_WITH_RC4_40_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    const/16 v1, 0x29

    .line 62
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x2b

    .line 64
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_KRB5_EXPORT_WITH_RC4_40_MD5:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x2f

    .line 68
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x32

    .line 71
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x33

    .line 72
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x34

    .line 73
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DH_anon_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x35

    .line 74
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x38

    .line 77
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x39

    .line 78
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x3a

    .line 79
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DH_anon_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    const/16 v1, 0x3b

    .line 80
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_NULL_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x3c

    .line 81
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x3d

    .line 82
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x40

    .line 85
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x41

    .line 86
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_CAMELLIA_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x44

    .line 89
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x45

    .line 90
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x67

    .line 92
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6a

    .line 95
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_256_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6b

    .line 96
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x6c

    .line 97
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DH_anon_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6d

    .line 98
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DH_anon_WITH_AES_256_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x84

    .line 99
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_CAMELLIA_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x87

    .line 102
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x88

    .line 103
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_PSK_WITH_RC4_128_SHA"

    const/16 v1, 0x8a

    .line 105
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_PSK_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x8b

    .line 106
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_PSK_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x8c

    .line 107
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_PSK_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_PSK_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x8d

    .line 108
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_PSK_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_RSA_WITH_SEED_CBC_SHA"

    const/16 v1, 0x96

    .line 117
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_SEED_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9c

    .line 123
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9d

    .line 124
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9e

    .line 125
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9f

    .line 126
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa2

    .line 129
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa3

    .line 130
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa6

    .line 133
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DH_anon_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa7

    .line 134
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DH_anon_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const/16 v1, 0xff

    .line 165
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_FALLBACK_SCSV"

    const/16 v1, 0x5600

    .line 166
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_FALLBACK_SCSV:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const v1, 0xc001

    .line 167
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_NULL_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc002

    .line 168
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc003

    .line 169
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc004

    .line 170
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc005

    .line 171
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const v1, 0xc006

    .line 172
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_NULL_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc007

    .line 173
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc008

    .line 174
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc009

    .line 175
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00a

    .line 176
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const v1, 0xc00b

    .line 177
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_NULL_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const v1, 0xc00c

    .line 178
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc00d

    .line 179
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc00e

    .line 180
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00f

    .line 181
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const v1, 0xc010

    .line 182
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_NULL_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const v1, 0xc011

    .line 183
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc012

    .line 184
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc013

    .line 185
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc014

    .line 186
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    const v1, 0xc015

    .line 187
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_anon_WITH_NULL_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const v1, 0xc016

    .line 188
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_anon_WITH_RC4_128_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc017

    .line 189
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const v1, 0xc018

    .line 190
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_anon_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const v1, 0xc019

    .line 191
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_anon_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc023

    .line 201
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc024

    .line 202
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc025

    .line 203
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc026

    .line 204
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc027

    .line 205
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc028

    .line 206
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc029

    .line 207
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc02a

    .line 208
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02b

    .line 209
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02c

    .line 210
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02d

    .line 211
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02e

    .line 212
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02f

    .line 213
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc030

    .line 214
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc031

    .line 215
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc032

    .line 216
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const v1, 0xc035

    .line 219
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    const v1, 0xc036

    .line 220
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const v1, 0xcca8

    .line 342
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    const v1, 0xcca9

    .line 343
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const v1, 0xccaa

    .line 344
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    const v1, 0xccac

    .line 346
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_AES_128_GCM_SHA256"

    const/16 v1, 0x1301

    .line 351
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_AES_256_GCM_SHA384"

    const/16 v1, 0x1302

    .line 352
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_CHACHA20_POLY1305_SHA256"

    const/16 v1, 0x1303

    .line 353
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_AES_128_CCM_SHA256"

    const/16 v1, 0x1304

    .line 354
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_AES_128_CCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const-string v0, "TLS_AES_256_CCM_8_SHA256"

    const/16 v1, 0x1305

    .line 355
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/CipherSuite;->init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CipherSuite;->TLS_AES_256_CCM_8_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Ldc/squareup/okhttp3/CipherSuite;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized forJavaName(Ljava/lang/String;)Ldc/squareup/okhttp3/CipherSuite;
    .registers 4

    const-class v0, Ldc/squareup/okhttp3/CipherSuite;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Ldc/squareup/okhttp3/CipherSuite;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc/squareup/okhttp3/CipherSuite;

    if-nez v2, :cond_21

    .line 3
    invoke-static {p0}, Ldc/squareup/okhttp3/CipherSuite;->secondaryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc/squareup/okhttp3/CipherSuite;

    if-nez v2, :cond_1e

    .line 6
    new-instance v2, Ldc/squareup/okhttp3/CipherSuite;

    invoke-direct {v2, p0}, Ldc/squareup/okhttp3/CipherSuite;-><init>(Ljava/lang/String;)V

    .line 10
    :cond_1e
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit v0

    return-object v2

    :catchall_23
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static varargs forJavaNames([Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 3
    invoke-static {v3}, Ldc/squareup/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5
    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static init(Ljava/lang/String;I)Ldc/squareup/okhttp3/CipherSuite;
    .registers 3

    .line 1
    new-instance p1, Ldc/squareup/okhttp3/CipherSuite;

    invoke-direct {p1, p0}, Ldc/squareup/okhttp3/CipherSuite;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v0, Ldc/squareup/okhttp3/CipherSuite;->INSTANCES:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private static secondaryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "TLS_"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    const-string v3, "SSL_"

    if-eqz v1, :cond_1f

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1f
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_38
    return-object p0
.end method


# virtual methods
.method public javaName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/CipherSuite;->javaName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/CipherSuite;->javaName:Ljava/lang/String;

    return-object v0
.end method

###### Class dc.squareup.okhttp3.CipherSuite.AnonymousClass1 (dc.squareup.okhttp3.CipherSuite$1)
.class final Ldc/squareup/okhttp3/CipherSuite$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ldc/squareup/okhttp3/CipherSuite$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x4

    :goto_d
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v1, v0, :cond_23

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_20

    if-ge v4, v5, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x1

    :goto_1f
    return v2

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eq p1, p2, :cond_32

    if-ge p1, p2, :cond_30

    goto :goto_31

    :cond_30
    const/4 v2, 0x1

    :goto_31
    return v2

    :cond_32
    const/4 p1, 0x0

    return p1
.end method
