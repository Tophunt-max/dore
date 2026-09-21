###### Class dc.squareup.okhttp3.OkHttpClient (dc.squareup.okhttp3.OkHttpClient)
.class public Ldc/squareup/okhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ldc/squareup/okhttp3/Call$Factory;
.implements Ldc/squareup/okhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static tempSSLFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field final authenticator:Ldc/squareup/okhttp3/Authenticator;

.field final cache:Ldc/squareup/okhttp3/Cache;

.field final callTimeout:I

.field final certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

.field final certificatePinner:Ldc/squareup/okhttp3/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Ldc/squareup/okhttp3/CookieJar;

.field final dispatcher:Ldc/squareup/okhttp3/Dispatcher;

.field final dns:Ldc/squareup/okhttp3/Dns;

.field final eventListenerFactory:Ldc/squareup/okhttp3/EventListener$Factory;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final internalCache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final pingInterval:I

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxyAuthenticator:Ldc/squareup/okhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [Ldc/squareup/okhttp3/Protocol;

    .line 1
    sget-object v2, Ldc/squareup/okhttp3/Protocol;->HTTP_2:Ldc/squareup/okhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ldc/squareup/okhttp3/Protocol;->HTTP_1_1:Ldc/squareup/okhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ldc/squareup/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    new-array v0, v0, [Ldc/squareup/okhttp3/ConnectionSpec;

    .line 4
    sget-object v1, Ldc/squareup/okhttp3/ConnectionSpec;->MODERN_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Ldc/squareup/okhttp3/ConnectionSpec;->CLEARTEXT:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 8
    new-instance v0, Ldc/squareup/okhttp3/OkHttpClient$1;

    invoke-direct {v0}, Ldc/squareup/okhttp3/OkHttpClient$1;-><init>()V

    sput-object v0, Ldc/squareup/okhttp3/internal/Internal;->instance:Ldc/squareup/okhttp3/internal/Internal;

    const/4 v0, 0x0

    .line 108
    sput-object v0, Ldc/squareup/okhttp3/OkHttpClient;->tempSSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/OkHttpClient;-><init>(Ldc/squareup/okhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method constructor <init>(Ldc/squareup/okhttp3/OkHttpClient$Builder;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->dispatcher:Ldc/squareup/okhttp3/Dispatcher;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->dispatcher:Ldc/squareup/okhttp3/Dispatcher;

    .line 4
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 5
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 6
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 7
    iget-object v1, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 8
    iget-object v1, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 9
    iget-object v1, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Ldc/squareup/okhttp3/EventListener$Factory;

    iput-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->eventListenerFactory:Ldc/squareup/okhttp3/EventListener$Factory;

    .line 10
    iget-object v1, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 11
    iget-object v1, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->cookieJar:Ldc/squareup/okhttp3/CookieJar;

    iput-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->cookieJar:Ldc/squareup/okhttp3/CookieJar;

    .line 12
    iget-object v1, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->cache:Ldc/squareup/okhttp3/Cache;

    iput-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->cache:Ldc/squareup/okhttp3/Cache;

    .line 13
    iget-object v1, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->internalCache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    iput-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->internalCache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    .line 14
    iget-object v1, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_40
    const/4 v2, 0x0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldc/squareup/okhttp3/ConnectionSpec;

    if-nez v2, :cond_55

    .line 18
    invoke-virtual {v3}, Ldc/squareup/okhttp3/ConnectionSpec;->isTls()Z

    move-result v2

    if-eqz v2, :cond_40

    :cond_55
    const/4 v2, 0x1

    goto :goto_41

    .line 21
    :cond_57
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_77

    if-nez v2, :cond_5e

    goto :goto_77

    .line 25
    :cond_5e
    invoke-static {}, Ldc/squareup/okhttp3/internal/Util;->platformTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 26
    sget-object v1, Ldc/squareup/okhttp3/OkHttpClient;->tempSSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_6c

    .line 27
    invoke-static {v0}, Ldc/squareup/okhttp3/OkHttpClient;->newSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sput-object v1, Ldc/squareup/okhttp3/OkHttpClient;->tempSSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 29
    :cond_6c
    sget-object v1, Ldc/squareup/okhttp3/OkHttpClient;->tempSSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 30
    invoke-static {v0}, Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_7d

    .line 31
    :cond_77
    :goto_77
    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 32
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    .line 42
    :goto_7d
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_8a

    .line 43
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v0

    iget-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/platform/Platform;->configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 46
    :cond_8a
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 47
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->certificatePinner:Ldc/squareup/okhttp3/CertificatePinner;

    iget-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/CertificatePinner;->withCertificateChainCleaner(Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;)Ldc/squareup/okhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->certificatePinner:Ldc/squareup/okhttp3/CertificatePinner;

    .line 49
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Ldc/squareup/okhttp3/Authenticator;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->proxyAuthenticator:Ldc/squareup/okhttp3/Authenticator;

    .line 50
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->authenticator:Ldc/squareup/okhttp3/Authenticator;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->authenticator:Ldc/squareup/okhttp3/Authenticator;

    .line 51
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

    .line 52
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->dns:Ldc/squareup/okhttp3/Dns;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->dns:Ldc/squareup/okhttp3/Dns;

    .line 53
    iget-boolean v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->followSslRedirects:Z

    .line 54
    iget-boolean v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->followRedirects:Z

    .line 55
    iget-boolean v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 56
    iget v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->callTimeout:I

    iput v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->callTimeout:I

    .line 57
    iget v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->connectTimeout:I

    .line 58
    iget v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->readTimeout:I

    .line 59
    iget v0, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->writeTimeout:I

    .line 60
    iget p1, p1, Ldc/squareup/okhttp3/OkHttpClient$Builder;->pingInterval:I

    iput p1, p0, Ldc/squareup/okhttp3/OkHttpClient;->pingInterval:I

    .line 62
    iget-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f3

    .line 65
    iget-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_da

    return-void

    .line 66
    :cond_da
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_f3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static newSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/platform/Platform;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_16
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    const-string v0, "No System TLS"

    .line 5
    invoke-static {v0, p0}, Ldc/squareup/okhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public authenticator()Ldc/squareup/okhttp3/Authenticator;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->authenticator:Ldc/squareup/okhttp3/Authenticator;

    return-object v0
.end method

.method public cache()Ldc/squareup/okhttp3/Cache;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->cache:Ldc/squareup/okhttp3/Cache;

    return-object v0
.end method

.method public callTimeoutMillis()I
    .registers 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->callTimeout:I

    return v0
.end method

.method public certificatePinner()Ldc/squareup/okhttp3/CertificatePinner;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->certificatePinner:Ldc/squareup/okhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .registers 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public connectionPool()Ldc/squareup/okhttp3/ConnectionPool;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Ldc/squareup/okhttp3/CookieJar;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->cookieJar:Ldc/squareup/okhttp3/CookieJar;

    return-object v0
.end method

.method public dispatcher()Ldc/squareup/okhttp3/Dispatcher;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->dispatcher:Ldc/squareup/okhttp3/Dispatcher;

    return-object v0
.end method

.method public dns()Ldc/squareup/okhttp3/Dns;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->dns:Ldc/squareup/okhttp3/Dns;

    return-object v0
.end method

.method public eventListenerFactory()Ldc/squareup/okhttp3/EventListener$Factory;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->eventListenerFactory:Ldc/squareup/okhttp3/EventListener$Factory;

    return-object v0
.end method

.method public followRedirects()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public interceptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Ldc/squareup/okhttp3/internal/cache/InternalCache;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->cache:Ldc/squareup/okhttp3/Cache;

    if-eqz v0, :cond_7

    iget-object v0, v0, Ldc/squareup/okhttp3/Cache;->internalCache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->internalCache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    :goto_9
    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>(Ldc/squareup/okhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Call;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Ldc/squareup/okhttp3/RealCall;->newRealCall(Ldc/squareup/okhttp3/OkHttpClient;Ldc/squareup/okhttp3/Request;Z)Ldc/squareup/okhttp3/RealCall;

    move-result-object p1

    return-object p1
.end method

.method public newWebSocket(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/WebSocketListener;)Ldc/squareup/okhttp3/WebSocket;
    .registers 10

    .line 1
    new-instance v6, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->pingInterval:I

    int-to-long v4, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;-><init>(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/WebSocketListener;Ljava/util/Random;J)V

    .line 2
    invoke-virtual {v6, p0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->connect(Ldc/squareup/okhttp3/OkHttpClient;)V

    return-object v6
.end method

.method public pingIntervalMillis()I
    .registers 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->pingInterval:I

    return v0
.end method

.method public protocols()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Ldc/squareup/okhttp3/Authenticator;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->proxyAuthenticator:Ldc/squareup/okhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .registers 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .registers 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/OkHttpClient;->writeTimeout:I

    return v0
.end method

###### Class dc.squareup.okhttp3.OkHttpClient.AnonymousClass1 (dc.squareup.okhttp3.OkHttpClient$1)
.class final Ldc/squareup/okhttp3/OkHttpClient$1;
.super Ldc/squareup/okhttp3/internal/Internal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Ldc/squareup/okhttp3/Headers$Builder;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    return-void
.end method

.method public addLenient(Ldc/squareup/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-virtual {p1, p2, p3}, Ldc/squareup/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    return-void
.end method

.method public apply(Ldc/squareup/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    .line 1
    invoke-virtual {p1, p2, p3}, Ldc/squareup/okhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public code(Ldc/squareup/okhttp3/Response$Builder;)I
    .registers 2

    .line 1
    iget p1, p1, Ldc/squareup/okhttp3/Response$Builder;->code:I

    return p1
.end method

.method public connectionBecameIdle(Ldc/squareup/okhttp3/ConnectionPool;Ldc/squareup/okhttp3/internal/connection/RealConnection;)Z
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/ConnectionPool;->connectionBecameIdle(Ldc/squareup/okhttp3/internal/connection/RealConnection;)Z

    move-result p1

    return p1
.end method

.method public deduplicate(Ldc/squareup/okhttp3/ConnectionPool;Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .registers 4

    .line 1
    invoke-virtual {p1, p2, p3}, Ldc/squareup/okhttp3/ConnectionPool;->deduplicate(Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public equalsNonHost(Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/Address;)Z
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/Address;->equalsNonHost(Ldc/squareup/okhttp3/Address;)Z

    move-result p1

    return p1
.end method

.method public get(Ldc/squareup/okhttp3/ConnectionPool;Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;Ldc/squareup/okhttp3/Route;)Ldc/squareup/okhttp3/internal/connection/RealConnection;
    .registers 5

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Ldc/squareup/okhttp3/ConnectionPool;->get(Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;Ldc/squareup/okhttp3/Route;)Ldc/squareup/okhttp3/internal/connection/RealConnection;

    move-result-object p1

    return-object p1
.end method

.method public isInvalidHttpUrlHost(Ljava/lang/IllegalArgumentException;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid URL host"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public newWebSocketCall(Ldc/squareup/okhttp3/OkHttpClient;Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Call;
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p2, v0}, Ldc/squareup/okhttp3/RealCall;->newRealCall(Ldc/squareup/okhttp3/OkHttpClient;Ldc/squareup/okhttp3/Request;Z)Ldc/squareup/okhttp3/RealCall;

    move-result-object p1

    return-object p1
.end method

.method public put(Ldc/squareup/okhttp3/ConnectionPool;Ldc/squareup/okhttp3/internal/connection/RealConnection;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/ConnectionPool;->put(Ldc/squareup/okhttp3/internal/connection/RealConnection;)V

    return-void
.end method

.method public routeDatabase(Ldc/squareup/okhttp3/ConnectionPool;)Ldc/squareup/okhttp3/internal/connection/RouteDatabase;
    .registers 2

    .line 1
    iget-object p1, p1, Ldc/squareup/okhttp3/ConnectionPool;->routeDatabase:Ldc/squareup/okhttp3/internal/connection/RouteDatabase;

    return-object p1
.end method

.method public setCache(Ldc/squareup/okhttp3/OkHttpClient$Builder;Ldc/squareup/okhttp3/internal/cache/InternalCache;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->setInternalCache(Ldc/squareup/okhttp3/internal/cache/InternalCache;)V

    return-void
.end method

.method public streamAllocation(Ldc/squareup/okhttp3/Call;)Ldc/squareup/okhttp3/internal/connection/StreamAllocation;
    .registers 2

    .line 1
    check-cast p1, Ldc/squareup/okhttp3/RealCall;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/RealCall;->streamAllocation()Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    move-result-object p1

    return-object p1
.end method

.method public timeoutExit(Ldc/squareup/okhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3

    .line 1
    check-cast p1, Ldc/squareup/okhttp3/RealCall;

    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

###### Class dc.squareup.okhttp3.OkHttpClient.Builder (dc.squareup.okhttp3.OkHttpClient$Builder)
.class public final Ldc/squareup/okhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field authenticator:Ldc/squareup/okhttp3/Authenticator;

.field cache:Ldc/squareup/okhttp3/Cache;

.field callTimeout:I

.field certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

.field certificatePinner:Ldc/squareup/okhttp3/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Ldc/squareup/okhttp3/CookieJar;

.field dispatcher:Ldc/squareup/okhttp3/Dispatcher;

.field dns:Ldc/squareup/okhttp3/Dns;

.field eventListenerFactory:Ldc/squareup/okhttp3/EventListener$Factory;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field pingInterval:I

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;

.field proxyAuthenticator:Ldc/squareup/okhttp3/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 28
    new-instance v0, Ldc/squareup/okhttp3/Dispatcher;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->dispatcher:Ldc/squareup/okhttp3/Dispatcher;

    .line 29
    sget-object v0, Ldc/squareup/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 30
    sget-object v0, Ldc/squareup/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 31
    sget-object v0, Ldc/squareup/okhttp3/EventListener;->NONE:Ldc/squareup/okhttp3/EventListener;

    invoke-static {v0}, Ldc/squareup/okhttp3/EventListener;->factory(Ldc/squareup/okhttp3/EventListener;)Ldc/squareup/okhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Ldc/squareup/okhttp3/EventListener$Factory;

    .line 32
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    if-nez v0, :cond_37

    .line 34
    new-instance v0, Ldc/squareup/okhttp3/internal/proxy/NullProxySelector;

    invoke-direct {v0}, Ldc/squareup/okhttp3/internal/proxy/NullProxySelector;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 36
    :cond_37
    sget-object v0, Ldc/squareup/okhttp3/CookieJar;->NO_COOKIES:Ldc/squareup/okhttp3/CookieJar;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->cookieJar:Ldc/squareup/okhttp3/CookieJar;

    .line 37
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 38
    sget-object v0, Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 39
    sget-object v0, Ldc/squareup/okhttp3/CertificatePinner;->DEFAULT:Ldc/squareup/okhttp3/CertificatePinner;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->certificatePinner:Ldc/squareup/okhttp3/CertificatePinner;

    .line 40
    sget-object v0, Ldc/squareup/okhttp3/Authenticator;->NONE:Ldc/squareup/okhttp3/Authenticator;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Ldc/squareup/okhttp3/Authenticator;

    .line 41
    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->authenticator:Ldc/squareup/okhttp3/Authenticator;

    .line 42
    new-instance v0, Ldc/squareup/okhttp3/ConnectionPool;

    invoke-direct {v0}, Ldc/squareup/okhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

    .line 43
    sget-object v0, Ldc/squareup/okhttp3/Dns;->SYSTEM:Ldc/squareup/okhttp3/Dns;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->dns:Ldc/squareup/okhttp3/Dns;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 45
    iput-boolean v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 46
    iput-boolean v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->callTimeout:I

    const/16 v1, 0x2710

    .line 48
    iput v1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 49
    iput v1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 50
    iput v1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 51
    iput v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method

.method constructor <init>(Ldc/squareup/okhttp3/OkHttpClient;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 106
    iget-object v2, p1, Ldc/squareup/okhttp3/OkHttpClient;->dispatcher:Ldc/squareup/okhttp3/Dispatcher;

    iput-object v2, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->dispatcher:Ldc/squareup/okhttp3/Dispatcher;

    .line 107
    iget-object v2, p1, Ldc/squareup/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v2, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 108
    iget-object v2, p1, Ldc/squareup/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v2, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 109
    iget-object v2, p1, Ldc/squareup/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v2, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 110
    iget-object v2, p1, Ldc/squareup/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->eventListenerFactory:Ldc/squareup/okhttp3/EventListener$Factory;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Ldc/squareup/okhttp3/EventListener$Factory;

    .line 113
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 114
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->cookieJar:Ldc/squareup/okhttp3/CookieJar;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->cookieJar:Ldc/squareup/okhttp3/CookieJar;

    .line 115
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->internalCache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->internalCache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    .line 116
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->cache:Ldc/squareup/okhttp3/Cache;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->cache:Ldc/squareup/okhttp3/Cache;

    .line 117
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 118
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 119
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    .line 120
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 121
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->certificatePinner:Ldc/squareup/okhttp3/CertificatePinner;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->certificatePinner:Ldc/squareup/okhttp3/CertificatePinner;

    .line 122
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->proxyAuthenticator:Ldc/squareup/okhttp3/Authenticator;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Ldc/squareup/okhttp3/Authenticator;

    .line 123
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->authenticator:Ldc/squareup/okhttp3/Authenticator;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->authenticator:Ldc/squareup/okhttp3/Authenticator;

    .line 124
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

    .line 125
    iget-object v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->dns:Ldc/squareup/okhttp3/Dns;

    iput-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->dns:Ldc/squareup/okhttp3/Dns;

    .line 126
    iget-boolean v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 127
    iget-boolean v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 128
    iget-boolean v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 129
    iget v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->callTimeout:I

    iput v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->callTimeout:I

    .line 130
    iget v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->connectTimeout:I

    iput v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 131
    iget v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->readTimeout:I

    iput v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 132
    iget v0, p1, Ldc/squareup/okhttp3/OkHttpClient;->writeTimeout:I

    iput v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 133
    iget p1, p1, Ldc/squareup/okhttp3/OkHttpClient;->pingInterval:I

    iput p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method


# virtual methods
.method public addInterceptor(Ldc/squareup/okhttp3/Interceptor;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    if-eqz p1, :cond_8

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addNetworkInterceptor(Ldc/squareup/okhttp3/Interceptor;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    if-eqz p1, :cond_8

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public authenticator(Ldc/squareup/okhttp3/Authenticator;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    const-string v0, "authenticator == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->authenticator:Ldc/squareup/okhttp3/Authenticator;

    return-object p0
.end method

.method public build()Ldc/squareup/okhttp3/OkHttpClient;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/OkHttpClient;-><init>(Ldc/squareup/okhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public cache(Ldc/squareup/okhttp3/Cache;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->cache:Ldc/squareup/okhttp3/Cache;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->internalCache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    return-object p0
.end method

.method public callTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 5

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->callTimeout:I

    return-object p0
.end method

.method public callTimeout(Ljava/time/Duration;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 5

    .line 2
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, Ldc/squareup/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->callTimeout:I

    return-object p0
.end method

.method public certificatePinner(Ldc/squareup/okhttp3/CertificatePinner;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    const-string v0, "certificatePinner == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->certificatePinner:Ldc/squareup/okhttp3/CertificatePinner;

    return-object p0
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 5

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    return-object p0
.end method

.method public connectTimeout(Ljava/time/Duration;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 5

    .line 2
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, Ldc/squareup/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    return-object p0
.end method

.method public connectionPool(Ldc/squareup/okhttp3/ConnectionPool;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    const-string v0, "connectionPool == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

    return-object p0
.end method

.method public connectionSpecs(Ljava/util/List;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/ConnectionSpec;",
            ">;)",
            "Ldc/squareup/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method public cookieJar(Ldc/squareup/okhttp3/CookieJar;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    const-string v0, "cookieJar == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->cookieJar:Ldc/squareup/okhttp3/CookieJar;

    return-object p0
.end method

.method public dispatcher(Ldc/squareup/okhttp3/Dispatcher;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->dispatcher:Ldc/squareup/okhttp3/Dispatcher;

    return-object p0

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dispatcher == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dns(Ldc/squareup/okhttp3/Dns;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    const-string v0, "dns == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->dns:Ldc/squareup/okhttp3/Dns;

    return-object p0
.end method

.method public eventListener(Ldc/squareup/okhttp3/EventListener;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    const-string v0, "eventListener == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ldc/squareup/okhttp3/EventListener;->factory(Ldc/squareup/okhttp3/EventListener;)Ldc/squareup/okhttp3/EventListener$Factory;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Ldc/squareup/okhttp3/EventListener$Factory;

    return-object p0
.end method

.method public eventListenerFactory(Ldc/squareup/okhttp3/EventListener$Factory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    const-string v0, "eventListenerFactory == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Ldc/squareup/okhttp3/EventListener$Factory;

    return-object p0
.end method

.method public followRedirects(Z)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    return-object p0
.end method

.method public followSslRedirects(Z)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    const-string v0, "hostnameVerifier == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public interceptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public pingInterval(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 5

    const-string v0, "interval"

    .line 1
    invoke-static {v0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-object p0
.end method

.method public pingInterval(Ljava/time/Duration;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 5

    .line 2
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, Ldc/squareup/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-object p0
.end method

.method public protocols(Ljava/util/List;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Protocol;",
            ">;)",
            "Ldc/squareup/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    sget-object p1, Ldc/squareup/okhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Ldc/squareup/okhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    sget-object v1, Ldc/squareup/okhttp3/Protocol;->HTTP_1_1:Ldc/squareup/okhttp3/Protocol;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2d

    .line 6
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2d
    :goto_2d
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_3b

    goto :goto_52

    .line 10
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_52
    :goto_52
    sget-object p1, Ldc/squareup/okhttp3/Protocol;->HTTP_1_0:Ldc/squareup/okhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_75

    const/4 p1, 0x0

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    .line 21
    sget-object p1, Ldc/squareup/okhttp3/Protocol;->SPDY_3:Ldc/squareup/okhttp3/Protocol;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    return-object p0

    .line 25
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public proxy(Ljava/net/Proxy;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public proxyAuthenticator(Ldc/squareup/okhttp3/Authenticator;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    const-string v0, "proxyAuthenticator == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Ldc/squareup/okhttp3/Authenticator;

    return-object p0
.end method

.method public proxySelector(Ljava/net/ProxySelector;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    const-string v0, "proxySelector == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 5

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout:I

    return-object p0
.end method

.method public readTimeout(Ljava/time/Duration;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 5

    .line 2
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, Ldc/squareup/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout:I

    return-object p0
.end method

.method public retryOnConnectionFailure(Z)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    return-object p0
.end method

.method setInternalCache(Ldc/squareup/okhttp3/internal/cache/InternalCache;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->internalCache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->cache:Ldc/squareup/okhttp3/Cache;

    return-void
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    const-string v0, "socketFactory == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 3

    const-string v0, "sslSocketFactory == null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 4

    const-string v0, "sslSocketFactory == null"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "trustManager == null"

    .line 6
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 5
    invoke-static {p2}, Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    return-object p0
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 5

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    return-object p0
.end method

.method public writeTimeout(Ljava/time/Duration;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    .registers 5

    .line 2
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    invoke-static {v2, v0, v1, p1}, Ldc/squareup/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    return-object p0
.end method
