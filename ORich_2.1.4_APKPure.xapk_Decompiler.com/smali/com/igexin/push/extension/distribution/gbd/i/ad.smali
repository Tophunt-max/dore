###### Class com.igexin.push.extension.distribution.gbd.i.ad (com.igexin.push.extension.distribution.gbd.i.ad)
.class public final Lcom/igexin/push/extension/distribution/gbd/i/ad;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "RSA"

.field private static b:Ljava/lang/String; = "RSA/NONE/OAEPWithSHA1AndMGF1Padding"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a([B)Ljava/security/PublicKey;
    .registers 2

    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    sget-object p0, Lcom/igexin/push/extension/distribution/gbd/i/ad;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    return-object p0

    :catchall_10
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BLjava/security/PublicKey;)[B
    .registers 4

    :try_start_0
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/i/ad;->b:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
