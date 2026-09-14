###### Class dc.squareup.okhttp3.CertificatePinner (dc.squareup.okhttp3.CertificatePinner)
.class public final Ldc/squareup/okhttp3/CertificatePinner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/CertificatePinner$Builder;,
        Ldc/squareup/okhttp3/CertificatePinner$Pin;
    }
.end annotation


# static fields
.field public static final DEFAULT:Ldc/squareup/okhttp3/CertificatePinner;


# instance fields
.field private final certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

.field private final pins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ldc/squareup/okhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/CertificatePinner$Builder;-><init>()V

    invoke-virtual {v0}, Ldc/squareup/okhttp3/CertificatePinner$Builder;->build()Ldc/squareup/okhttp3/CertificatePinner;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/CertificatePinner;->DEFAULT:Ldc/squareup/okhttp3/CertificatePinner;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldc/squareup/okhttp3/CertificatePinner$Pin;",
            ">;",
            "Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/CertificatePinner;->pins:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/CertificatePinner;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    return-void
.end method

.method public static pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_20

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sha256/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Ldc/squareup/okhttp3/CertificatePinner;->sha256(Ljava/security/cert/X509Certificate;)Ldc/squareup/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Ldc/squareup/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Certificate pinning requires X509 certificates"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static sha1(Ljava/security/cert/X509Certificate;)Ldc/squareup/okio/ByteString;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Ldc/squareup/okio/ByteString;->sha1()Ldc/squareup/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method static sha256(Ljava/security/cert/X509Certificate;)Ldc/squareup/okio/ByteString;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Ldc/squareup/okio/ByteString;->sha256()Ldc/squareup/okio/ByteString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/CertificatePinner;->findMatchingPins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 4
    :cond_b
    iget-object v1, p0, Ldc/squareup/okhttp3/CertificatePinner;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    if-eqz v1, :cond_13

    .line 5
    invoke-virtual {v1, p2, p1}, Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;->clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 8
    :cond_13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_81

    .line 9
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move-object v7, v6

    const/4 v8, 0x0

    :goto_28
    if-ge v8, v5, :cond_7e

    .line 16
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldc/squareup/okhttp3/CertificatePinner$Pin;

    .line 17
    iget-object v10, v9, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const-string v11, "sha256/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_49

    if-nez v6, :cond_40

    .line 18
    invoke-static {v4}, Ldc/squareup/okhttp3/CertificatePinner;->sha256(Ljava/security/cert/X509Certificate;)Ldc/squareup/okio/ByteString;

    move-result-object v6

    .line 19
    :cond_40
    iget-object v9, v9, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hash:Ldc/squareup/okio/ByteString;

    invoke-virtual {v9, v6}, Ldc/squareup/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    return-void

    .line 20
    :cond_49
    iget-object v10, v9, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const-string v11, "sha1/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_65

    if-nez v7, :cond_59

    .line 21
    invoke-static {v4}, Ldc/squareup/okhttp3/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Ldc/squareup/okio/ByteString;

    move-result-object v7

    .line 22
    :cond_59
    iget-object v9, v9, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hash:Ldc/squareup/okio/ByteString;

    invoke-virtual {v9, v7}, Ldc/squareup/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    return-void

    :cond_62
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 24
    :cond_65
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported hashAlgorithm: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 30
    :cond_81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Certificate pinning failure!"

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n  Peer certificate chain:"

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_95
    const-string v5, "\n    "

    if-ge v4, v3, :cond_bc

    .line 34
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 35
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ldc/squareup/okhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 36
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_95

    :cond_bc
    const-string p2, "\n  Pinned certificates for "

    .line 38
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    :goto_cd
    if-ge v2, p1, :cond_de

    .line 40
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldc/squareup/okhttp3/CertificatePinner$Pin;

    .line 41
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_cd

    .line 43
    :cond_de
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs check(Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 44
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ldc/squareup/okhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ldc/squareup/okhttp3/CertificatePinner;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Ldc/squareup/okhttp3/CertificatePinner;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    check-cast p1, Ldc/squareup/okhttp3/CertificatePinner;

    iget-object v2, p1, Ldc/squareup/okhttp3/CertificatePinner;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    .line 2
    invoke-static {v1, v2}, Ldc/squareup/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Ldc/squareup/okhttp3/CertificatePinner;->pins:Ljava/util/Set;

    iget-object p1, p1, Ldc/squareup/okhttp3/CertificatePinner;->pins:Ljava/util/Set;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method findMatchingPins(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ldc/squareup/okhttp3/CertificatePinner;->pins:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc/squareup/okhttp3/CertificatePinner$Pin;

    .line 3
    invoke-virtual {v2, p1}, Ldc/squareup/okhttp3/CertificatePinner$Pin;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_2b
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/CertificatePinner;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Ldc/squareup/okhttp3/CertificatePinner;->pins:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method withCertificateChainCleaner(Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;)Ldc/squareup/okhttp3/CertificatePinner;
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/CertificatePinner;->certificateChainCleaner:Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;

    invoke-static {v0, p1}, Ldc/squareup/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    goto :goto_11

    :cond_a
    new-instance v0, Ldc/squareup/okhttp3/CertificatePinner;

    iget-object v1, p0, Ldc/squareup/okhttp3/CertificatePinner;->pins:Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Ldc/squareup/okhttp3/CertificatePinner;-><init>(Ljava/util/Set;Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;)V

    :goto_11
    return-object v0
.end method

###### Class dc.squareup.okhttp3.CertificatePinner.Builder (dc.squareup.okhttp3.CertificatePinner$Builder)
.class public final Ldc/squareup/okhttp3/CertificatePinner$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/CertificatePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final pins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs add(Ljava/lang/String;[Ljava/lang/String;)Ldc/squareup/okhttp3/CertificatePinner$Builder;
    .registers 8

    const-string v0, "pattern == null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_18

    aget-object v2, p2, v1

    .line 2
    iget-object v3, p0, Ldc/squareup/okhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    new-instance v4, Ldc/squareup/okhttp3/CertificatePinner$Pin;

    invoke-direct {v4, p1, v2}, Ldc/squareup/okhttp3/CertificatePinner$Pin;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    return-object p0
.end method

.method public build()Ldc/squareup/okhttp3/CertificatePinner;
    .registers 4

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/CertificatePinner;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Ldc/squareup/okhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldc/squareup/okhttp3/CertificatePinner;-><init>(Ljava/util/Set;Ldc/squareup/okhttp3/internal/tls/CertificateChainCleaner;)V

    return-object v0
.end method

###### Class dc.squareup.okhttp3.CertificatePinner.Pin (dc.squareup.okhttp3.CertificatePinner$Pin)
.class final Ldc/squareup/okhttp3/CertificatePinner$Pin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/CertificatePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pin"
.end annotation


# static fields
.field private static final WILDCARD:Ljava/lang/String; = "*."


# instance fields
.field final canonicalHostname:Ljava/lang/String;

.field final hash:Ldc/squareup/okio/ByteString;

.field final hashAlgorithm:Ljava/lang/String;

.field final pattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    const-string v0, "*."

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "http://"

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okhttp3/HttpUrl;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ldc/squareup/okhttp3/HttpUrl;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    :goto_43
    iput-object p1, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;

    const-string p1, "sha1/"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 7
    iput-object p1, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const/4 p1, 0x5

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okio/ByteString;->decodeBase64(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hash:Ldc/squareup/okio/ByteString;

    goto :goto_70

    :cond_5b
    const-string p1, "sha256/"

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 10
    iput-object p1, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const/4 p1, 0x7

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okio/ByteString;->decodeBase64(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hash:Ldc/squareup/okio/ByteString;

    .line 16
    :goto_70
    iget-object p1, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hash:Ldc/squareup/okio/ByteString;

    if-eqz p1, :cond_75

    return-void

    .line 17
    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pins must be base64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_8c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pins must start with \'sha256/\' or \'sha1/\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Ldc/squareup/okhttp3/CertificatePinner$Pin;

    if-eqz v0, :cond_26

    iget-object v0, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    check-cast p1, Ldc/squareup/okhttp3/CertificatePinner$Pin;

    iget-object v1, p1, Ldc/squareup/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    iget-object v1, p1, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hash:Ldc/squareup/okio/ByteString;

    iget-object p1, p1, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hash:Ldc/squareup/okio/ByteString;

    .line 4
    invoke-virtual {v0, p1}, Ldc/squareup/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hash:Ldc/squareup/okio/ByteString;

    invoke-virtual {v1}, Ldc/squareup/okio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .registers 12

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    const-string v1, "*."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v3, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_31

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;

    .line 5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    .line 6
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    return v2

    .line 10
    :cond_33
    iget-object v0, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/CertificatePinner$Pin;->hash:Ldc/squareup/okio/ByteString;

    invoke-virtual {v1}, Ldc/squareup/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
