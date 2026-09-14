###### Class dc.squareup.okhttp3.ConnectionSpec (dc.squareup.okhttp3.ConnectionSpec)
.class public final Ldc/squareup/okhttp3/ConnectionSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Ldc/squareup/okhttp3/CipherSuite;

.field public static final CLEARTEXT:Ldc/squareup/okhttp3/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

.field public static final MODERN_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

.field private static final RESTRICTED_CIPHER_SUITES:[Ldc/squareup/okhttp3/CipherSuite;

.field public static final RESTRICTED_TLS:Ldc/squareup/okhttp3/ConnectionSpec;


# instance fields
.field final cipherSuites:[Ljava/lang/String;

.field final supportsTlsExtensions:Z

.field final tls:Z

.field final tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    const/16 v0, 0xb

    new-array v1, v0, [Ldc/squareup/okhttp3/CipherSuite;

    .line 1
    sget-object v2, Ldc/squareup/okhttp3/CipherSuite;->TLS_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Ldc/squareup/okhttp3/CipherSuite;->TLS_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sget-object v6, Ldc/squareup/okhttp3/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v8, Ldc/squareup/okhttp3/CipherSuite;->TLS_AES_128_CCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    sget-object v10, Ldc/squareup/okhttp3/CipherSuite;->TLS_AES_256_CCM_8_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const/4 v11, 0x4

    aput-object v10, v1, v11

    sget-object v12, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const/4 v13, 0x5

    aput-object v12, v1, v13

    sget-object v14, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const/4 v15, 0x6

    aput-object v14, v1, v15

    sget-object v16, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const/16 v17, 0x7

    aput-object v16, v1, v17

    sget-object v18, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const/16 v19, 0x8

    aput-object v18, v1, v19

    sget-object v20, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const/16 v21, 0x9

    aput-object v20, v1, v21

    sget-object v22, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const/16 v23, 0xa

    aput-object v22, v1, v23

    sput-object v1, Ldc/squareup/okhttp3/ConnectionSpec;->RESTRICTED_CIPHER_SUITES:[Ldc/squareup/okhttp3/CipherSuite;

    const/16 v0, 0x12

    new-array v0, v0, [Ldc/squareup/okhttp3/CipherSuite;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    aput-object v6, v0, v7

    aput-object v8, v0, v9

    aput-object v10, v0, v11

    aput-object v12, v0, v13

    aput-object v14, v0, v15

    aput-object v16, v0, v17

    aput-object v18, v0, v19

    aput-object v20, v0, v21

    aput-object v22, v0, v23

    .line 20
    sget-object v2, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const/16 v4, 0xb

    aput-object v2, v0, v4

    sget-object v2, Ldc/squareup/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const/16 v4, 0xc

    aput-object v2, v0, v4

    sget-object v2, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Ldc/squareup/okhttp3/CipherSuite;

    const/16 v4, 0xd

    aput-object v2, v0, v4

    sget-object v2, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Ldc/squareup/okhttp3/CipherSuite;

    const/16 v4, 0xe

    aput-object v2, v0, v4

    sget-object v2, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const/16 v4, 0xf

    aput-object v2, v0, v4

    sget-object v2, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const/16 v4, 0x10

    aput-object v2, v0, v4

    sget-object v2, Ldc/squareup/okhttp3/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Ldc/squareup/okhttp3/CipherSuite;

    const/16 v4, 0x11

    aput-object v2, v0, v4

    sput-object v0, Ldc/squareup/okhttp3/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Ldc/squareup/okhttp3/CipherSuite;

    .line 48
    new-instance v2, Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    invoke-direct {v2, v5}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;-><init>(Z)V

    .line 49
    invoke-virtual {v2, v1}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->cipherSuites([Ldc/squareup/okhttp3/CipherSuite;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object v1

    new-array v2, v7, [Ldc/squareup/okhttp3/TlsVersion;

    sget-object v4, Ldc/squareup/okhttp3/TlsVersion;->TLS_1_3:Ldc/squareup/okhttp3/TlsVersion;

    aput-object v4, v2, v3

    sget-object v6, Ldc/squareup/okhttp3/TlsVersion;->TLS_1_2:Ldc/squareup/okhttp3/TlsVersion;

    aput-object v6, v2, v5

    .line 50
    invoke-virtual {v1, v2}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tlsVersions([Ldc/squareup/okhttp3/TlsVersion;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v5}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->build()Ldc/squareup/okhttp3/ConnectionSpec;

    move-result-object v1

    sput-object v1, Ldc/squareup/okhttp3/ConnectionSpec;->RESTRICTED_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

    .line 55
    new-instance v1, Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    invoke-direct {v1, v5}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;-><init>(Z)V

    .line 56
    invoke-virtual {v1, v0}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->cipherSuites([Ldc/squareup/okhttp3/CipherSuite;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object v1

    new-array v2, v11, [Ldc/squareup/okhttp3/TlsVersion;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    sget-object v4, Ldc/squareup/okhttp3/TlsVersion;->TLS_1_1:Ldc/squareup/okhttp3/TlsVersion;

    aput-object v4, v2, v7

    sget-object v4, Ldc/squareup/okhttp3/TlsVersion;->TLS_1_0:Ldc/squareup/okhttp3/TlsVersion;

    aput-object v4, v2, v9

    .line 57
    invoke-virtual {v1, v2}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tlsVersions([Ldc/squareup/okhttp3/TlsVersion;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v5}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->build()Ldc/squareup/okhttp3/ConnectionSpec;

    move-result-object v1

    sput-object v1, Ldc/squareup/okhttp3/ConnectionSpec;->MODERN_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

    .line 62
    new-instance v1, Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    invoke-direct {v1, v5}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;-><init>(Z)V

    .line 63
    invoke-virtual {v1, v0}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->cipherSuites([Ldc/squareup/okhttp3/CipherSuite;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v5, [Ldc/squareup/okhttp3/TlsVersion;

    aput-object v4, v1, v3

    .line 64
    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tlsVersions([Ldc/squareup/okhttp3/TlsVersion;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v5}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->build()Ldc/squareup/okhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/ConnectionSpec;->COMPATIBLE_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

    .line 69
    new-instance v0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->build()Ldc/squareup/okhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/ConnectionSpec;->CLEARTEXT:Ldc/squareup/okhttp3/ConnectionSpec;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okhttp3/ConnectionSpec$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tls:Z

    iput-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tls:Z

    .line 3
    iget-object v0, p1, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 4
    iget-object v0, p1, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 5
    iget-boolean p1, p1, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    iput-boolean p1, p0, Ldc/squareup/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    return-void
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Ldc/squareup/okhttp3/ConnectionSpec;
    .registers 7

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Ldc/squareup/okhttp3/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    .line 2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldc/squareup/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ldc/squareup/okhttp3/internal/Util;->intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 3
    :cond_11
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_15
    iget-object v1, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_26

    sget-object v1, Ldc/squareup/okhttp3/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Ldc/squareup/okhttp3/internal/Util;->intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    .line 6
    :cond_26
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_2a
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 11
    sget-object v2, Ldc/squareup/okhttp3/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, p1, v3}, Ldc/squareup/okhttp3/internal/Util;->indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_41

    const/4 p2, -0x1

    if-eq v2, p2, :cond_41

    .line 14
    aget-object p1, p1, v2

    invoke-static {v0, p1}, Ldc/squareup/okhttp3/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_41
    new-instance p1, Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    invoke-direct {p1, p0}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;-><init>(Ldc/squareup/okhttp3/ConnectionSpec;)V

    .line 19
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v1}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->build()Ldc/squareup/okhttp3/ConnectionSpec;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ldc/squareup/okhttp3/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Ldc/squareup/okhttp3/ConnectionSpec;

    move-result-object p2

    .line 3
    iget-object v0, p2, Ldc/squareup/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 4
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 6
    :cond_b
    iget-object p2, p2, Ldc/squareup/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz p2, :cond_12

    .line 7
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Ldc/squareup/okhttp3/CipherSuite;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Ldc/squareup/okhttp3/ConnectionSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 4
    :cond_a
    check-cast p1, Ldc/squareup/okhttp3/ConnectionSpec;

    .line 5
    iget-boolean v2, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tls:Z

    iget-boolean v3, p1, Ldc/squareup/okhttp3/ConnectionSpec;->tls:Z

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    if-eqz v2, :cond_32

    .line 8
    iget-object v2, p0, Ldc/squareup/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v3, p1, Ldc/squareup/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    .line 9
    :cond_20
    iget-object v2, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v3, p1, Ldc/squareup/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    .line 10
    :cond_2b
    iget-boolean v2, p0, Ldc/squareup/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean p1, p1, Ldc/squareup/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    if-eq v2, p1, :cond_32

    return v1

    :cond_32
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tls:Z

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Ldc/squareup/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1f

    :cond_1d
    const/16 v0, 0x11

    :goto_1f
    return v0
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tls:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 5
    :cond_6
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_17

    sget-object v2, Ldc/squareup/okhttp3/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 6
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v2, v0, v3}, Ldc/squareup/okhttp3/internal/Util;->nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 12
    :cond_17
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_28

    sget-object v2, Ldc/squareup/okhttp3/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    .line 13
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {v2, v0, p1}, Ldc/squareup/okhttp3/internal/Util;->nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_28

    return v1

    :cond_28
    const/4 p1, 0x1

    return p1
.end method

.method public isTls()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tls:Z

    return v0
.end method

.method public supportsTlsExtensions()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Ldc/squareup/okhttp3/TlsVersion;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tls:Z

    if-nez v0, :cond_7

    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 5
    :cond_7
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ldc/squareup/okhttp3/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    .line 6
    :goto_17
    iget-object v2, p0, Ldc/squareup/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Ldc/squareup/okhttp3/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class dc.squareup.okhttp3.ConnectionSpec.Builder (dc.squareup.okhttp3.ConnectionSpec$Builder)
.class public final Ldc/squareup/okhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field cipherSuites:[Ljava/lang/String;

.field supportsTlsExtensions:Z

.field tls:Z

.field tlsVersions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldc/squareup/okhttp3/ConnectionSpec;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-boolean v0, p1, Ldc/squareup/okhttp3/ConnectionSpec;->tls:Z

    iput-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tls:Z

    .line 5
    iget-object v0, p1, Ldc/squareup/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 6
    iget-object v0, p1, Ldc/squareup/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 7
    iget-boolean p1, p1, Ldc/squareup/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iput-boolean p1, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tls:Z

    return-void
.end method


# virtual methods
.method public allEnabledCipherSuites()Ldc/squareup/okhttp3/ConnectionSpec$Builder;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0

    .line 3
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public allEnabledTlsVersions()Ldc/squareup/okhttp3/ConnectionSpec$Builder;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0

    .line 3
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Ldc/squareup/okhttp3/ConnectionSpec;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/ConnectionSpec;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/ConnectionSpec;-><init>(Ldc/squareup/okhttp3/ConnectionSpec$Builder;)V

    return-object v0
.end method

.method public varargs cipherSuites([Ldc/squareup/okhttp3/CipherSuite;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;
    .registers 5

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_19

    .line 3
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 5
    aget-object v2, p1, v1

    iget-object v2, v2, Ldc/squareup/okhttp3/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7
    :cond_14
    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object p1

    return-object p1

    .line 8
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;
    .registers 3

    .line 9
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_18

    .line 11
    array-length v0, p1

    if-eqz v0, :cond_10

    .line 15
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0

    .line 16
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supportsTlsExtensions(Z)Ldc/squareup/okhttp3/ConnectionSpec$Builder;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_7

    .line 2
    iput-boolean p1, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-object p0

    .line 3
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS extensions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs tlsVersions([Ldc/squareup/okhttp3/TlsVersion;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;
    .registers 5

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_19

    .line 3
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 5
    aget-object v2, p1, v1

    iget-object v2, v2, Ldc/squareup/okhttp3/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8
    :cond_14
    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Ldc/squareup/okhttp3/ConnectionSpec$Builder;
    .registers 3

    .line 10
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_18

    .line 12
    array-length v0, p1

    if-eqz v0, :cond_10

    .line 16
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Ldc/squareup/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
