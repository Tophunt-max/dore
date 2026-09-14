###### Class io.dcloud.common.adapter.util.CryptoProvider (io.dcloud.common.adapter.util.CryptoProvider)
.class public final Lio/dcloud/common/adapter/util/CryptoProvider;
.super Ljava/security/Provider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "Crypto"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "HARMONY (SHA1 digest; SecureRandom; SHA1withDSA signature)"

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "SecureRandom.SHA1PRNG"

    const-string v1, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v1, "Software"

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
