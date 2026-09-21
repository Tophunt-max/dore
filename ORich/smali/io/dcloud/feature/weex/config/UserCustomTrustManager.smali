###### Class io.dcloud.feature.weex.config.UserCustomTrustManager (io.dcloud.feature.weex.config.UserCustomTrustManager)
.class public Lio/dcloud/feature/weex/config/UserCustomTrustManager;
.super Ljava/lang/Object;
.source "UserCustomTrustManager.java"


# static fields
.field private static cacheCertSSLFactory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/taobao/weex/http/CertDTO;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static cacheSSLFactory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/dcloud/feature/weex/config/AndroidTlsConfig;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheSSLFactory:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheCertSSLFactory:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSSLSocketFactory(Lcom/taobao/weex/http/CertDTO;Lcom/taobao/weex/WXSDKInstance;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 11

    const-string v0, "PKCS12"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return-object v1

    .line 146
    :cond_6
    sget-object v2, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheCertSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 147
    sget-object v2, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheCertSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_19

    return-object v2

    :cond_19
    if-nez p1, :cond_1c

    return-object v1

    :cond_1c
    :try_start_1c
    const-string v2, "TLS"

    .line 162
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 164
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 166
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .line 169
    iget-object v5, p0, Lcom/taobao/weex/http/CertDTO;->client:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_3a

    const/4 v5, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v5, 0x0

    :goto_3b
    iget-object v8, p0, Lcom/taobao/weex/http/CertDTO;->clientPassword:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v7, v8

    and-int/2addr v5, v7

    if-eqz v5, :cond_75

    .line 170
    invoke-static {}, Lio/dcloud/feature/weex/config/MimeInfoParser;->getInstance()Lio/dcloud/feature/weex/config/MimeInfoParser;

    move-result-object v5

    iget-object v7, p0, Lcom/taobao/weex/http/CertDTO;->client:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lio/dcloud/feature/weex/config/MimeInfoParser;->obtainMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    move-result-object v5

    if-eqz v5, :cond_56

    .line 173
    invoke-virtual {v5, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->getDataBytes(Lcom/taobao/weex/WXSDKInstance;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_5c

    .line 176
    :cond_56
    iget-object v5, p0, Lcom/taobao/weex/http/CertDTO;->client:Ljava/lang/String;

    invoke-static {p1, v5}, Lio/dcloud/feature/weex/config/MimeInfoParser;->getFilePathStream(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    :goto_5c
    if-eqz v5, :cond_76

    .line 181
    invoke-virtual {p0}, Lcom/taobao/weex/http/CertDTO;->getClientPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 182
    invoke-virtual {p0}, Lcom/taobao/weex/http/CertDTO;->getClientPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    goto :goto_76

    :cond_75
    move-object v4, v1

    :cond_76
    :goto_76
    const-string v3, "X.509"

    .line 191
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 192
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 194
    :goto_80
    invoke-virtual {p0}, Lcom/taobao/weex/http/CertDTO;->getServer()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v6, v5, :cond_b9

    .line 196
    invoke-static {}, Lio/dcloud/feature/weex/config/MimeInfoParser;->getInstance()Lio/dcloud/feature/weex/config/MimeInfoParser;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/http/CertDTO;->getServer()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Lio/dcloud/feature/weex/config/MimeInfoParser;->obtainMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    move-result-object v5

    if-eqz v5, :cond_9c

    .line 200
    invoke-virtual {v5, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->getDataBytes(Lcom/taobao/weex/WXSDKInstance;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_a6

    .line 202
    :cond_9c
    invoke-virtual {p0}, Lcom/taobao/weex/http/CertDTO;->getServer()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-static {p1, v5}, Lio/dcloud/feature/weex/config/MimeInfoParser;->getFilePathStream(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    :goto_a6
    if-eqz v5, :cond_b6

    .line 205
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 206
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 207
    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    :cond_b6
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 212
    :cond_b9
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 213
    invoke-virtual {p1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    if-nez v4, :cond_d3

    .line 217
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    goto :goto_e3

    .line 219
    :cond_d3
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0, p1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 223
    :goto_e3
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    .line 226
    sget-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheCertSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_f5

    .line 228
    sget-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheCertSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 230
    :cond_f5
    sget-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheCertSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fa
    .catch Ljava/security/KeyManagementException; {:try_start_1c .. :try_end_fa} :catch_114
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c .. :try_end_fa} :catch_10f
    .catch Ljava/security/KeyStoreException; {:try_start_1c .. :try_end_fa} :catch_10a
    .catch Ljava/security/cert/CertificateException; {:try_start_1c .. :try_end_fa} :catch_105
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_fa} :catch_100
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1c .. :try_end_fa} :catch_fb

    return-object p1

    :catch_fb
    move-exception p0

    .line 244
    invoke-virtual {p0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_118

    :catch_100
    move-exception p0

    .line 242
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_118

    :catch_105
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_118

    :catch_10a
    move-exception p0

    .line 238
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_118

    :catch_10f
    move-exception p0

    .line 236
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_118

    :catch_114
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/security/KeyManagementException;->printStackTrace()V

    :goto_118
    return-object v1
.end method

.method public static getSSLSocketFactory(Lio/dcloud/feature/weex/config/AndroidTlsConfig;Lcom/taobao/weex/WXSDKInstance;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 11

    const-string v0, "PKCS12"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return-object v1

    .line 43
    :cond_6
    sget-object v2, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 44
    sget-object v2, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_19

    return-object v2

    :cond_19
    if-nez p1, :cond_1c

    return-object v1

    :cond_1c
    :try_start_1c
    const-string v2, "TLS"

    .line 60
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 62
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 64
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .line 67
    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getKeystore()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_3c

    const/4 v5, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v5, 0x0

    :goto_3d
    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getStorePass()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v7, v8

    and-int/2addr v5, v7

    if-eqz v5, :cond_73

    .line 68
    invoke-static {}, Lio/dcloud/feature/weex/config/MimeInfoParser;->getInstance()Lio/dcloud/feature/weex/config/MimeInfoParser;

    move-result-object v5

    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getKeystore()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/dcloud/feature/weex/config/MimeInfoParser;->obtainMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    move-result-object v5

    if-eqz v5, :cond_72

    .line 70
    invoke-virtual {v5, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->getDataBytes(Lcom/taobao/weex/WXSDKInstance;)Ljava/io/InputStream;

    move-result-object v5

    .line 72
    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getStorePass()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 73
    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getStorePass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    goto :goto_74

    :cond_72
    return-object v1

    :cond_73
    move-object v4, v1

    :goto_74
    const-string v3, "X.509"

    .line 83
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 84
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 86
    :goto_7e
    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getCa()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v6, v5, :cond_aa

    .line 88
    invoke-static {}, Lio/dcloud/feature/weex/config/MimeInfoParser;->getInstance()Lio/dcloud/feature/weex/config/MimeInfoParser;

    move-result-object v5

    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getCa()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Lio/dcloud/feature/weex/config/MimeInfoParser;->obtainMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    move-result-object v5

    if-eqz v5, :cond_a7

    .line 91
    invoke-virtual {v5, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->getDataBytes(Lcom/taobao/weex/WXSDKInstance;)Ljava/io/InputStream;

    move-result-object v5

    .line 92
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 93
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    :cond_a7
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 98
    :cond_aa
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    if-nez v4, :cond_c4

    .line 103
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    goto :goto_d4

    .line 105
    :cond_c4
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0, p1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 109
    :goto_d4
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    .line 112
    sget-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_e6

    .line 114
    sget-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 116
    :cond_e6
    sget-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_eb
    .catch Ljava/security/KeyManagementException; {:try_start_1c .. :try_end_eb} :catch_105
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c .. :try_end_eb} :catch_100
    .catch Ljava/security/KeyStoreException; {:try_start_1c .. :try_end_eb} :catch_fb
    .catch Ljava/security/cert/CertificateException; {:try_start_1c .. :try_end_eb} :catch_f6
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_eb} :catch_f1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1c .. :try_end_eb} :catch_ec

    return-object p1

    :catch_ec
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_109

    :catch_f1
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_109

    :catch_f6
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_109

    :catch_fb
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_109

    :catch_100
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_109

    :catch_105
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/security/KeyManagementException;->printStackTrace()V

    :goto_109
    return-object v1
.end method
