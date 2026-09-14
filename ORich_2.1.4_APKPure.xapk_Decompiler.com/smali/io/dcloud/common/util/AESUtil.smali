###### Class io.dcloud.common.util.AESUtil (io.dcloud.common.util.AESUtil)
.class public Lio/dcloud/common/util/AESUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Default_transformation:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field public static final TAG:Ljava/lang/String; = "AESUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCipher(I[BLjava/lang/String;[B)Ljavax/crypto/Cipher;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 3
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    if-nez p3, :cond_15

    .line 4
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p3

    new-array p3, p3, [B

    :cond_15
    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 5
    invoke-virtual {p1, p0, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object p1
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/dcloud/common/util/AESUtil;->decrypt([B[B[B)[B

    move-result-object p0

    .line 3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static decrypt([B[B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "AES/CBC/PKCS5Padding"

    .line 7
    invoke-static {v0, p0, v1, p1}, Lio/dcloud/common/util/AESUtil;->createCipher(I[BLjava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lio/dcloud/common/util/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 5

    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_14

    const-string v1, "AES/CBC/PKCS5Padding"

    if-eqz p1, :cond_e

    .line 3
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_f

    :cond_e
    move-object p1, v0

    :goto_f
    invoke-static {p0, p2, v1, p1}, Lio/dcloud/common/util/AESUtil;->encrypt([B[BLjava/lang/String;[B)[B

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_18
    return-object v0
.end method

.method private static encrypt([B[BLjava/lang/String;[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 6
    invoke-static {v0, p0, p2, p3}, Lio/dcloud/common/util/AESUtil;->createCipher(I[BLjava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method
