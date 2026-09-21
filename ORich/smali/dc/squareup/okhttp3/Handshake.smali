###### Class dc.squareup.okhttp3.Handshake (dc.squareup.okhttp3.Handshake)
.class public final Ldc/squareup/okhttp3/Handshake;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cipherSuite:Ldc/squareup/okhttp3/CipherSuite;

.field private final localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final tlsVersion:Ldc/squareup/okhttp3/TlsVersion;


# direct methods
.method private constructor <init>(Ldc/squareup/okhttp3/TlsVersion;Ldc/squareup/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/squareup/okhttp3/TlsVersion;",
            "Ldc/squareup/okhttp3/CipherSuite;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/Handshake;->tlsVersion:Ldc/squareup/okhttp3/TlsVersion;

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/Handshake;->cipherSuite:Ldc/squareup/okhttp3/CipherSuite;

    .line 4
    iput-object p3, p0, Ldc/squareup/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 5
    iput-object p4, p0, Ldc/squareup/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-void
.end method

.method public static get(Ldc/squareup/okhttp3/TlsVersion;Ldc/squareup/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Ldc/squareup/okhttp3/Handshake;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/squareup/okhttp3/TlsVersion;",
            "Ldc/squareup/okhttp3/CipherSuite;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ldc/squareup/okhttp3/Handshake;"
        }
    .end annotation

    const-string v0, "tlsVersion == null"

    .line 36
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "cipherSuite == null"

    .line 35
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    new-instance v0, Ldc/squareup/okhttp3/Handshake;

    invoke-static {p2}, Ldc/squareup/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 34
    invoke-static {p3}, Ldc/squareup/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Ldc/squareup/okhttp3/Handshake;-><init>(Ldc/squareup/okhttp3/TlsVersion;Ldc/squareup/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Ldc/squareup/okhttp3/Handshake;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62

    const-string v1, "SSL_NULL_WITH_NULL_NULL"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 6
    invoke-static {v0}, Ldc/squareup/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    .line 8
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_52

    const-string v2, "NONE"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 11
    invoke-static {v1}, Ldc/squareup/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Ldc/squareup/okhttp3/TlsVersion;

    move-result-object v1

    .line 15
    :try_start_24
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_28
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_24 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    const/4 v2, 0x0

    :goto_2a
    if-eqz v2, :cond_31

    .line 20
    invoke-static {v2}, Ldc/squareup/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_35

    .line 21
    :cond_31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 23
    :goto_35
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_40

    .line 25
    invoke-static {p0}, Ldc/squareup/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_44

    .line 26
    :cond_40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 28
    :goto_44
    new-instance v3, Ldc/squareup/okhttp3/Handshake;

    invoke-direct {v3, v1, v0, v2, p0}, Ldc/squareup/okhttp3/Handshake;-><init>(Ldc/squareup/okhttp3/TlsVersion;Ldc/squareup/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    .line 29
    :cond_4a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "tlsVersion == NONE"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "tlsVersion == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_5a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cipherSuite == SSL_NULL_WITH_NULL_NULL"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_62
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cipherSuite == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cipherSuite()Ldc/squareup/okhttp3/CipherSuite;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->cipherSuite:Ldc/squareup/okhttp3/CipherSuite;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Ldc/squareup/okhttp3/Handshake;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Ldc/squareup/okhttp3/Handshake;

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->tlsVersion:Ldc/squareup/okhttp3/TlsVersion;

    iget-object v2, p1, Ldc/squareup/okhttp3/Handshake;->tlsVersion:Ldc/squareup/okhttp3/TlsVersion;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->cipherSuite:Ldc/squareup/okhttp3/CipherSuite;

    iget-object v2, p1, Ldc/squareup/okhttp3/Handshake;->cipherSuite:Ldc/squareup/okhttp3/CipherSuite;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    iget-object v2, p1, Ldc/squareup/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    iget-object p1, p1, Ldc/squareup/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 v1, 0x1

    :cond_31
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->tlsVersion:Ldc/squareup/okhttp3/TlsVersion;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Ldc/squareup/okhttp3/Handshake;->cipherSuite:Ldc/squareup/okhttp3/CipherSuite;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Ldc/squareup/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Ldc/squareup/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public localCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-object v0
.end method

.method public localPrincipal()Ljava/security/Principal;
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return-object v0
.end method

.method public peerCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    return-object v0
.end method

.method public peerPrincipal()Ljava/security/Principal;
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return-object v0
.end method

.method public tlsVersion()Ldc/squareup/okhttp3/TlsVersion;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Handshake;->tlsVersion:Ldc/squareup/okhttp3/TlsVersion;

    return-object v0
.end method
