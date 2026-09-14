###### Class dc.squareup.okhttp3.internal.platform.AndroidPlatform (dc.squareup.okhttp3.internal.platform.AndroidPlatform)
.class Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;
.super Ldc/squareup/okhttp3/internal/platform/Platform;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;,
        Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;,
        Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;
    }
.end annotation


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0


# instance fields
.field private final closeGuard:Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;

.field private final getAlpnSelectedProtocol:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldc/squareup/okhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setAlpnProtocols:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldc/squareup/okhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setHostname:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldc/squareup/okhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setUseSessionTickets:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldc/squareup/okhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final sslParametersClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ldc/squareup/okhttp3/internal/platform/OptionalMethod;Ldc/squareup/okhttp3/internal/platform/OptionalMethod;Ldc/squareup/okhttp3/internal/platform/OptionalMethod;Ldc/squareup/okhttp3/internal/platform/OptionalMethod;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ldc/squareup/okhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Ldc/squareup/okhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Ldc/squareup/okhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Ldc/squareup/okhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/platform/Platform;-><init>()V

    .line 2
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->get()Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->closeGuard:Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;

    .line 7
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    .line 8
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->setUseSessionTickets:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;

    .line 9
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->setHostname:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;

    .line 10
    iput-object p4, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;

    .line 11
    iput-object p5, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;

    return-void
.end method

.method private api23IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x0

    :try_start_3
    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_15} :catch_16

    return p1

    .line 5
    :catch_16
    invoke-super {p0, p1}, Ldc/squareup/okhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private api24IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x1

    :try_start_3
    new-array v2, v1, [Ljava/lang/Class;

    .line 1
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 3
    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_1c} :catch_1d

    return p1

    .line 5
    :catch_1d
    invoke-direct {p0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->api23IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static buildIfSupported()Ldc/squareup/okhttp3/internal/platform/Platform;
    .registers 10

    .line 1
    const-class v0, [B

    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->getSdkInt()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    const-string v1, "com.android.org.conscrypt.SSLParametersImpl"

    .line 9
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_10} :catch_12

    :goto_10
    move-object v4, v1

    goto :goto_19

    :catch_12
    :try_start_12
    const-string v1, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    .line 12
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_10

    .line 16
    :goto_19
    new-instance v5, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_1b} :catch_5b

    const-string v1, "setUseSessionTickets"

    const/4 v3, 0x1

    :try_start_1e
    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-direct {v5, v2, v1, v6}, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 18
    new-instance v6, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_2a} :catch_5b

    const-string v1, "setHostname"

    :try_start_2c
    new-array v7, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {v6, v2, v1, v7}, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 23
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->supportsAlpn()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 24
    new-instance v1, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;
    :try_end_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_3d} :catch_5b

    const-string v7, "getAlpnSelectedProtocol"

    :try_start_3f
    new-array v9, v8, [Ljava/lang/Class;

    invoke-direct {v1, v0, v7, v9}, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 26
    new-instance v7, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_46} :catch_5b

    const-string v9, "setAlpnProtocols"

    :try_start_48
    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v8

    invoke-direct {v7, v2, v9, v3}, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v8, v7

    move-object v7, v1

    goto :goto_54

    :cond_52
    move-object v7, v2

    move-object v8, v7

    .line 30
    :goto_54
    new-instance v0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;-><init>(Ljava/lang/Class;Ldc/squareup/okhttp3/internal/platform/OptionalMethod;Ldc/squareup/okhttp3/internal/platform/OptionalMethod;Ldc/squareup/okhttp3/internal/platform/OptionalMethod;Ldc/squareup/okhttp3/internal/platform/OptionalMethod;)V
    :try_end_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_48 .. :try_end_5a} :catch_5b

    return-object v0

    :catch_5b
    return-object v2
.end method

.method static getSdkInt()I
    .registers 1

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_2} :catch_3

    return v0

    :catch_3
    const/4 v0, 0x0

    return v0
.end method

.method private static supportsAlpn()Z
    .registers 2

    const-string v0, "GMSCore_OpenSSL"

    .line 1
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    const-string v0, "android.net.Network"

    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_f} :catch_10

    return v1

    :catch_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;
    .registers 9

    :try_start_0
    const-string v0, "android.net.http.X509TrustManagerExtensions"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_36

    const-string v3, "checkServerTrusted"

    const/4 v5, 0x3

    :try_start_1d
    new-array v5, v5, [Ljava/lang/Class;

    .line 4
    const-class v6, [Ljava/security/cert/X509Certificate;

    aput-object v6, v5, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    const/4 v1, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    new-instance v1, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;

    invoke-direct {v1, v2, v0}, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_36

    return-object v1

    .line 8
    :catch_36
    invoke-super {p0, p1}, Ldc/squareup/okhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object p1

    return-object p1
.end method

.method public buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Ldc/squareup/okhttp3/internal/tls/TrustRootIndex;
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4} :catch_1b

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    :try_start_7
    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    new-instance v1, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;

    invoke-direct {v1, p1, v0}, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_1a} :catch_1b

    return-object v1

    .line 6
    :catch_1b
    invoke-super {p0, p1}, Ldc/squareup/okhttp3/internal/platform/Platform;->buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Ldc/squareup/okhttp3/internal/tls/TrustRootIndex;

    move-result-object p1

    return-object p1
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_18

    .line 1
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->setUseSessionTickets:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->setHostname:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_18
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;

    if-eqz p2, :cond_2f

    invoke-virtual {p2, p1}, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f

    new-array p2, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {p3}, Ldc/squareup/okhttp3/internal/platform/Platform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v0

    .line 8
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;

    invoke-virtual {p3, p1, p2}, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Exception in connect"

    .line 1
    :try_start_2
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_17
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 14
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ne p2, p3, :cond_16

    .line 15
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 17
    throw p2

    .line 19
    :cond_16
    throw p1

    :catch_17
    move-exception p1

    .line 20
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 22
    throw p2

    :catch_21
    move-exception p1

    .line 23
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_2e

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 24
    :cond_2e
    throw p1
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .registers 4

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_2} :catch_d

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    const/16 v1, 0x16

    if-ge v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :catch_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    if-eqz v0, :cond_17

    :try_start_10
    const-string v0, "TLSv1.2"

    .line 10
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    :cond_17
    :try_start_17
    const-string v0, "TLS"

    .line 17
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No TLS provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-object v1

    .line 4
    :cond_d
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Ldc/squareup/okhttp3/internal/platform/OptionalMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ldc/squareup/okhttp3/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_21

    .line 5
    new-instance v1, Ljava/lang/String;

    sget-object v0, Ldc/squareup/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_21
    return-object v1
.end method

.method public getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->closeGuard:Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->createAndOpen(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_b

    .line 2
    invoke-super {p0, p1}, Ldc/squareup/okhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_b
    :try_start_b
    const-string v0, "android.security.NetworkSecurityPolicy"

    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_11} :catch_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_11} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_11} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_11} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_11} :catch_26

    const-string v1, "getInstance"

    const/4 v2, 0x0

    :try_start_14
    new-array v3, v2, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-direct {p0, p1, v0, v1}, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->api24IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_25} :catch_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_25} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_25} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_25} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_25} :catch_26

    return p1

    :catch_26
    move-exception p1

    goto :goto_2b

    :catch_28
    move-exception p1

    goto :goto_2b

    :catch_2a
    move-exception p1

    :goto_2b
    const-string v0, "unable to determine cleartext support"

    .line 12
    invoke-static {v0, p1}, Ldc/squareup/okhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 13
    :catch_32
    invoke-super {p0, p1}, Ldc/squareup/okhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x3

    :goto_5
    const/16 p1, 0xa

    if-eqz p3, :cond_1f

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1f
    const/4 p3, 0x0

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_24
    if-ge p3, v1, :cond_45

    .line 5
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v1

    :goto_2f
    add-int/lit16 v3, p3, 0xfa0

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9
    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string v4, "OkHttp"

    invoke-static {v0, v4, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v3, v2, :cond_43

    add-int/lit8 p3, v3, 0x1

    goto :goto_24

    :cond_43
    move p3, v3

    goto :goto_2f

    :cond_45
    return-void
.end method

.method public logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->closeGuard:Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;

    invoke-virtual {v0, p2}, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpen(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p2, 0x5

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p2, p1, v0}, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method protected trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 6

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Ldc/squareup/okhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    const-string v0, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v2, 0x0

    .line 8
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 9
    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 12
    invoke-static {p1, v0, v1}, Ldc/squareup/okhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_1d} :catch_1e

    goto :goto_23

    .line 14
    :catch_1e
    invoke-super {p0, p1}, Ldc/squareup/okhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p1

    return-object p1

    .line 18
    :cond_23
    :goto_23
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string v1, "x509TrustManager"

    invoke-static {v0, p1, v1}, Ldc/squareup/okhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    if-eqz p1, :cond_30

    return-object p1

    .line 22
    :cond_30
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string v1, "trustManager"

    invoke-static {v0, p1, v1}, Ldc/squareup/okhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    return-object p1
.end method

###### Class dc.squareup.okhttp3.internal.platform.AndroidPlatform.AndroidCertificateChainCleaner (dc.squareup.okhttp3.internal.platform.AndroidPlatform$AndroidCertificateChainCleaner)
.class final Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;
.super Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndroidCertificateChainCleaner"
.end annotation


# instance fields
.field private final checkServerTrusted:Ljava/lang/reflect/Method;

.field private final x509TrustManagerExtensions:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->x509TrustManagerExtensions:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->checkServerTrusted:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->checkServerTrusted:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->x509TrustManagerExtensions:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    const-string v3, "RSA"

    aput-object v3, v2, p1

    const/4 p1, 0x2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_24} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_24} :catch_25

    return-object p1

    :catch_25
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :catch_2c
    move-exception p1

    .line 10
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 12
    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class dc.squareup.okhttp3.internal.platform.AndroidPlatform.AndroidTrustRootIndex (dc.squareup.okhttp3.internal.platform.AndroidPlatform$AndroidTrustRootIndex)
.class final Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/internal/tls/TrustRootIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndroidTrustRootIndex"
.end annotation


# instance fields
.field private final findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

.field private final trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 3
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 4
    :cond_a
    check-cast p1, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    iget-object v3, p1, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/TrustAnchor;

    if-eqz p1, :cond_17

    .line 4
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_17} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-object v0

    :catch_18
    move-exception p1

    const-string v0, "unable to get issues and signature"

    .line 7
    invoke-static {v0, p1}, Ldc/squareup/okhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

###### Class dc.squareup.okhttp3.internal.platform.AndroidPlatform.CloseGuard (dc.squareup.okhttp3.internal.platform.AndroidPlatform$CloseGuard)
.class final Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloseGuard"
.end annotation


# instance fields
.field private final getMethod:Ljava/lang/reflect/Method;

.field private final openMethod:Ljava/lang/reflect/Method;

.field private final warnIfOpenMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;

    .line 4
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method static get()Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "dalvik.system.CloseGuard"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_28

    const-string v2, "get"

    const/4 v3, 0x0

    :try_start_a
    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_28

    const-string v4, "open"

    const/4 v5, 0x1

    :try_start_13
    new-array v5, v5, [Ljava/lang/Class;

    .line 3
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_28

    const-string v5, "warnIfOpen"

    :try_start_1f
    new-array v3, v3, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_28

    move-object v1, v0

    move-object v0, v2

    goto :goto_2a

    :catch_28
    move-object v1, v0

    move-object v4, v1

    .line 10
    :goto_2a
    new-instance v2, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;

    invoke-direct {v2, v0, v4, v1}, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v2
.end method


# virtual methods
.method createAndOpen(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const/4 v2, 0x0

    :try_start_6
    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    :cond_17
    return-object v1
.end method

.method warnIfOpen(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 1
    :try_start_3
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    const/4 v0, 0x1

    :catch_b
    :cond_b
    return v0
.end method
