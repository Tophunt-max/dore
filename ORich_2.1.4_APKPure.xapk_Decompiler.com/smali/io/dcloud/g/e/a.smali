###### Class io.dcloud.g.e.a (io.dcloud.g.e.a)
.class Lio/dcloud/g/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/g/e/a$b;,
        Lio/dcloud/g/e/a$a;,
        Lio/dcloud/g/e/a$c;
    }
.end annotation


# static fields
.field static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/dcloud/g/e/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Ljava/lang/String;Lio/dcloud/g/e/a$c;)Lio/dcloud/g/e/a$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 44
    invoke-static {p0, p1, v0}, Lio/dcloud/g/e/a;->a(Ljava/lang/String;Lio/dcloud/g/e/a$c;Ljava/lang/String;)Lio/dcloud/g/e/a$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lio/dcloud/g/e/a$c;Ljava/lang/String;)Lio/dcloud/g/e/a$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lio/dcloud/g/e/a;->a([BLio/dcloud/g/e/a$c;)Lio/dcloud/g/e/a$a;

    move-result-object p0

    return-object p0
.end method

.method public static a([BLio/dcloud/g/e/a$c;)Lio/dcloud/g/e/a$a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 46
    invoke-static {}, Lio/dcloud/g/e/a;->b()[B

    move-result-object v0

    const-string v1, "AES/CBC/PKCS5Padding"

    .line 47
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lio/dcloud/g/e/a$c;->a()Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 54
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    .line 55
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 56
    invoke-static {v0, p0}, Lio/dcloud/g/e/a$a;->a([B[B)[B

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lio/dcloud/g/e/a$c;->b()Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/g/e/a;->a([BLjavax/crypto/SecretKey;)[B

    move-result-object p1

    .line 59
    new-instance v1, Lio/dcloud/g/e/a$a;

    invoke-direct {v1, p0, v0, p1}, Lio/dcloud/g/e/a$a;-><init>([B[B[B)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Lio/dcloud/g/e/a$c;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, ":"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_47

    const/4 v0, 0x0

    .line 7
    aget-object v2, p0, v0

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 8
    array-length v3, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3f

    const/4 v3, 0x1

    .line 11
    aget-object p0, p0, v3

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 12
    array-length v1, p0

    const/16 v3, 0x20

    if-ne v1, v3, :cond_37

    .line 16
    new-instance v1, Lio/dcloud/g/e/a$c;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    array-length v4, v2

    const-string v5, "AES"

    invoke-direct {v3, v2, v0, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v0, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v3, v0}, Lio/dcloud/g/e/a$c;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v1

    .line 17
    :cond_37
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "Base64 decoded key is not 256 bytes"

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_3f
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "Base64 decoded key is not 128 bytes"

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot parse aesKey:hmacKey"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;[BI)Lio/dcloud/g/e/a$c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 20
    invoke-static {}, Lio/dcloud/g/e/a;->a()V

    .line 22
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/16 v1, 0x180

    invoke-direct {v0, p0, p1, p2, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const-string p0, "PBKDF2WithHmacSHA1"

    .line 25
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 26
    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    const/4 p1, 0x0

    const/16 p2, 0x10

    .line 29
    invoke-static {p0, p1, p2}, Lio/dcloud/g/e/a;->a([BII)[B

    move-result-object p1

    const/16 v0, 0x30

    .line 30
    invoke-static {p0, p2, v0}, Lio/dcloud/g/e/a;->a([BII)[B

    move-result-object p0

    .line 34
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 37
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "HmacSHA256"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 39
    new-instance p0, Lio/dcloud/g/e/a$c;

    invoke-direct {p0, p2, p1}, Lio/dcloud/g/e/a$c;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object p0
.end method

.method public static a(Lio/dcloud/g/e/a$a;Lio/dcloud/g/e/a$c;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lio/dcloud/g/e/a;->a(Lio/dcloud/g/e/a$a;Lio/dcloud/g/e/a$c;)[B

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static a()V
    .registers 3

    .line 60
    sget-object v0, Lio/dcloud/g/e/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 61
    const-class v1, Lio/dcloud/g/e/a$b;

    monitor-enter v1

    .line 62
    :try_start_b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_18

    .line 63
    invoke-static {}, Lio/dcloud/g/e/a$b;->b()V

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    :cond_18
    monitor-exit v1

    goto :goto_1d

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static a([B[B)Z
    .registers 7

    .line 82
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    :goto_8
    array-length v3, p0

    if-ge v0, v3, :cond_14

    .line 87
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    if-nez v1, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2
.end method

.method private static a(I)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 40
    invoke-static {}, Lio/dcloud/g/e/a;->a()V

    .line 41
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 42
    new-array p0, p0, [B

    .line 43
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method public static a(Lio/dcloud/g/e/a$a;Lio/dcloud/g/e/a$c;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lio/dcloud/g/e/a$a;->b()[B

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/g/e/a$a;->a()[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/g/e/a$a;->a([B[B)[B

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lio/dcloud/g/e/a$c;->b()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/g/e/a;->a([BLjavax/crypto/SecretKey;)[B

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lio/dcloud/g/e/a$a;->c()[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/g/e/a;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 71
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lio/dcloud/g/e/a$c;->a()Ljavax/crypto/SecretKey;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 73
    invoke-virtual {p0}, Lio/dcloud/g/e/a$a;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    .line 74
    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 76
    invoke-virtual {p0}, Lio/dcloud/g/e/a$a;->a()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 78
    :cond_3e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "MAC stored in civ does not match computed MAC."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a([BII)[B
    .registers 5

    sub-int/2addr p2, p1

    .line 88
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 89
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static a([BLjavax/crypto/SecretKey;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "HmacSHA256"

    .line 79
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 81
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Lio/dcloud/g/e/a$a;Lio/dcloud/g/e/a$c;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 2
    invoke-static {p0, p1, v0}, Lio/dcloud/g/e/a;->a(Lio/dcloud/g/e/a$a;Lio/dcloud/g/e/a$c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lio/dcloud/g/e/a;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static c()Lio/dcloud/g/e/a$c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/g/e/a;->a()V

    const-string v0, "AES"

    .line 2
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    .line 5
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 6
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    const/16 v1, 0x20

    .line 9
    invoke-static {v1}, Lio/dcloud/g/e/a;->a(I)[B

    move-result-object v1

    .line 10
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA256"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 12
    new-instance v1, Lio/dcloud/g/e/a$c;

    invoke-direct {v1, v0, v2}, Lio/dcloud/g/e/a$c;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v1
.end method

###### Class io.dcloud.g.e.a.C0069a (io.dcloud.g.e.a$a)
.class public Lio/dcloud/g/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/g/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:[B

.field private final b:[B

.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ":"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 10
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    const/4 v0, 0x0

    .line 13
    aget-object v0, p1, v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/g/e/a$a;->b:[B

    const/4 v0, 0x1

    .line 14
    aget-object v0, p1, v0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/g/e/a$a;->c:[B

    .line 15
    aget-object p1, p1, v1

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/g/e/a$a;->a:[B

    return-void

    .line 16
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot parse iv:ciphertext:mac"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B[B[B)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lio/dcloud/g/e/a$a;->a:[B

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lio/dcloud/g/e/a$a;->b:[B

    .line 5
    array-length v0, p2

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length p1, p3

    new-array p1, p1, [B

    iput-object p1, p0, Lio/dcloud/g/e/a$a;->c:[B

    .line 7
    array-length p2, p3

    invoke-static {p3, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a([B[B)[B
    .registers 5

    .line 2
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public a()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/e/a$a;->a:[B

    return-object v0
.end method

.method public b()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/e/a$a;->b:[B

    return-object v0
.end method

.method public c()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/e/a$a;->c:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/dcloud/g/e/a$a;

    if-eq v3, v2, :cond_11

    return v1

    .line 3
    :cond_11
    check-cast p1, Lio/dcloud/g/e/a$a;

    .line 4
    iget-object v2, p0, Lio/dcloud/g/e/a$a;->a:[B

    iget-object v3, p1, Lio/dcloud/g/e/a$a;->a:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 6
    :cond_1e
    iget-object v2, p0, Lio/dcloud/g/e/a$a;->b:[B

    iget-object v3, p1, Lio/dcloud/g/e/a$a;->b:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_29

    return v1

    .line 8
    :cond_29
    iget-object v2, p0, Lio/dcloud/g/e/a$a;->c:[B

    iget-object p1, p1, Lio/dcloud/g/e/a$a;->c:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_34

    return v1

    :cond_34
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/g/e/a$a;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lio/dcloud/g/e/a$a;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lio/dcloud/g/e/a$a;->c:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/g/e/a$a;->b:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lio/dcloud/g/e/a$a;->a:[B

    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lio/dcloud/g/e/a$a;->c:[B

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.g.e.a.b (io.dcloud.g.e.a$b)
.class public final Lio/dcloud/g/e/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/g/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/g/e/a$b$a;,
        Lio/dcloud/g/e/a$b$b;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lio/dcloud/g/e/a$b;->e()[B

    move-result-object v0

    sput-object v0, Lio/dcloud/g/e/a$b;->a:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[B
    .registers 1

    .line 1
    invoke-static {}, Lio/dcloud/g/e/a$b;->d()[B

    move-result-object v0

    return-object v0
.end method

.method public static b()V
    .registers 0

    .line 1
    invoke-static {}, Lio/dcloud/g/e/a$b;->c()V

    .line 2
    invoke-static {}, Lio/dcloud/g/e/a$b;->g()V

    return-void
.end method

.method private static c()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "org.apache.harmony.xnet.provider.jsse.NativeCrypto"

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_7b

    const/16 v2, 0x12

    if-le v1, v2, :cond_d

    goto :goto_7b

    .line 10
    :cond_d
    :try_start_d
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_72

    const-string v2, "RAND_seed"

    const/4 v3, 0x1

    :try_start_14
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [B

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 11
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lio/dcloud/g/e/a$b;->d()[B

    move-result-object v4

    aput-object v4, v2, v6

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_72

    const-string v1, "RAND_load_file"

    const/4 v2, 0x2

    :try_start_32
    new-array v5, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    .line 16
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "/dev/urandom"

    aput-object v2, v1, v6

    const/16 v2, 0x400

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_5b

    return-void

    .line 23
    :cond_5b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected number of bytes read from Linux PRNG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_72} :catch_72

    :catch_72
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to seed OpenSSL PRNG"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7b
    :goto_7b
    return-void
.end method

.method private static d()[B
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 6
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 7
    sget-object v2, Lio/dcloud/g/e/a$b;->a:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 8
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_32} :catch_33

    return-object v0

    :catch_33
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to generate seed"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static e()[B
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_c
    invoke-static {}, Lio/dcloud/g/e/a$b;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_20

    return-object v0

    .line 13
    :catch_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 encoding not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-class v1, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    return-object v0
.end method

.method private static g()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_7

    return-void

    :cond_7
    const-string v0, "SecureRandom.SHA1PRNG"

    .line 9
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v0

    .line 16
    const-class v1, Ljava/security/Security;

    monitor-enter v1

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    .line 17
    :try_start_13
    array-length v3, v0

    if-lt v3, v2, :cond_2d

    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lio/dcloud/g/e/a$b$b;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 21
    :cond_2d
    new-instance v0, Lio/dcloud/g/e/a$b$b;

    invoke-direct {v0}, Lio/dcloud/g/e/a$b$b;-><init>()V

    invoke-static {v0, v2}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 27
    :cond_35
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 28
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lio/dcloud/g/e/a$b$b;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_50
    .catchall {:try_start_13 .. :try_end_50} :catchall_ba

    if-eqz v2, :cond_9b

    const/4 v0, 0x0

    :try_start_53
    const-string v2, "SHA1PRNG"

    .line 41
    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_59
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_53 .. :try_end_59} :catch_5a
    .catchall {:try_start_53 .. :try_end_59} :catchall_ba

    goto :goto_62

    :catch_5a
    move-exception v2

    .line 47
    :try_start_5b
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "SHA1PRNG not available"

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_62
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lio/dcloud/g/e/a$b$b;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 62
    monitor-exit v1

    return-void

    .line 63
    :cond_7c
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecureRandom.getInstance(\"SHA1PRNG\") backed by wrong Provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_9b
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new SecureRandom() backed by wrong Provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_ba
    move-exception v0

    .line 94
    monitor-exit v1
    :try_end_bc
    .catchall {:try_start_5b .. :try_end_bc} :catchall_ba

    throw v0
.end method

###### Class io.dcloud.g.e.a.b.C0070a (io.dcloud.g.e.a$b$a)
.class public Lio/dcloud/g/e/a$b$a;
.super Ljava/security/SecureRandomSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/g/e/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final b:Ljava/io/File;

.field private static final c:Ljava/lang/Object;

.field private static d:Ljava/io/DataInputStream;

.field private static e:Ljava/io/OutputStream;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/g/e/a$b$a;->b:Ljava/io/File;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/dcloud/g/e/a$b$a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void
.end method

.method private a()Ljava/io/DataInputStream;
    .registers 6

    .line 1
    sget-object v0, Lio/dcloud/g/e/a$b$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lio/dcloud/g/e/a$b$a;->d:Ljava/io/DataInputStream;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_39

    if-nez v1, :cond_35

    .line 8
    :try_start_7
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lio/dcloud/g/e/a$b$a;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v1, Lio/dcloud/g/e/a$b$a;->d:Ljava/io/DataInputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_16
    .catchall {:try_start_7 .. :try_end_15} :catchall_39

    goto :goto_35

    :catch_16
    move-exception v1

    .line 10
    :try_start_17
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lio/dcloud/g/e/a$b$a;->b:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for reading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 14
    :cond_35
    :goto_35
    sget-object v1, Lio/dcloud/g/e/a$b$a;->d:Ljava/io/DataInputStream;

    monitor-exit v0

    return-object v1

    :catchall_39
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private b()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/dcloud/g/e/a$b$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lio/dcloud/g/e/a$b$a;->e:Ljava/io/OutputStream;

    if-nez v1, :cond_10

    .line 3
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lio/dcloud/g/e/a$b$a;->b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v1, Lio/dcloud/g/e/a$b$a;->e:Ljava/io/OutputStream;

    .line 5
    :cond_10
    sget-object v1, Lio/dcloud/g/e/a$b$a;->e:Ljava/io/OutputStream;

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .registers 2

    .line 1
    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/g/e/a$b$a;->engineNextBytes([B)V

    return-object p1
.end method

.method protected engineNextBytes([B)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lio/dcloud/g/e/a$b$a;->a:Z

    if-nez v0, :cond_b

    .line 3
    invoke-static {}, Lio/dcloud/g/e/a$b;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/g/e/a$b$a;->engineSetSeed([B)V

    .line 8
    :cond_b
    :try_start_b
    sget-object v0, Lio/dcloud/g/e/a$b$a;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1f

    .line 9
    :try_start_e
    invoke-direct {p0}, Lio/dcloud/g/e/a$b$a;->a()Ljava/io/DataInputStream;

    move-result-object v1

    .line 10
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_1c

    .line 11
    :try_start_13
    monitor-enter v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_14} :catch_1f

    .line 12
    :try_start_14
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 13
    monitor-exit v1

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_1f

    :catchall_1c
    move-exception p1

    .line 14
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p1
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception p1

    .line 19
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/g/e/a$b$a;->b:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected engineSetSeed([B)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    :try_start_1
    sget-object v1, Lio/dcloud/g/e/a$b$a;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_15
    .catchall {:try_start_1 .. :try_end_4} :catchall_13

    .line 2
    :try_start_4
    invoke-direct {p0}, Lio/dcloud/g/e/a$b$a;->b()Ljava/io/OutputStream;

    move-result-object v2

    .line 3
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_10

    .line 4
    :try_start_9
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 5
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_15
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    goto :goto_31

    :catchall_10
    move-exception p1

    .line 13
    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    :try_start_12
    throw p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_13} :catch_15
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception p1

    goto :goto_34

    .line 19
    :catch_15
    :try_start_15
    const-class p1, Lio/dcloud/g/e/a$b;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mix seed into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/g/e/a$b$a;->b:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_13

    .line 12
    :goto_31
    iput-boolean v0, p0, Lio/dcloud/g/e/a$b$a;->a:Z

    return-void

    .line 22
    :goto_34
    iput-boolean v0, p0, Lio/dcloud/g/e/a$b$a;->a:Z

    .line 23
    throw p1
.end method

###### Class io.dcloud.g.e.a.b.C0071b (io.dcloud.g.e.a$b$b)
.class Lio/dcloud/g/e/a$b$b;
.super Ljava/security/Provider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/g/e/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "LinuxPRNG"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "A Linux-specific random number provider that uses /dev/urandom"

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 7
    const-class v0, Lio/dcloud/g/e/a$b$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureRandom.SHA1PRNG"

    invoke-virtual {p0, v1, v0}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v1, "Software"

    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.g.e.a.c (io.dcloud.g.e.a$c)
.class public Lio/dcloud/g/e/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/g/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljavax/crypto/SecretKey;

.field private b:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/g/e/a$c;->a(Ljavax/crypto/SecretKey;)V

    .line 3
    invoke-virtual {p0, p2}, Lio/dcloud/g/e/a$c;->b(Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public a()Ljavax/crypto/SecretKey;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/e/a$c;->a:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public a(Ljavax/crypto/SecretKey;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/g/e/a$c;->a:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public b()Ljavax/crypto/SecretKey;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/e/a$c;->b:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public b(Ljavax/crypto/SecretKey;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/g/e/a$c;->b:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/dcloud/g/e/a$c;

    if-eq v3, v2, :cond_11

    return v1

    .line 3
    :cond_11
    check-cast p1, Lio/dcloud/g/e/a$c;

    .line 4
    iget-object v2, p0, Lio/dcloud/g/e/a$c;->b:Ljavax/crypto/SecretKey;

    iget-object v3, p1, Lio/dcloud/g/e/a$c;->b:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 6
    :cond_1e
    iget-object v2, p0, Lio/dcloud/g/e/a$c;->a:Ljavax/crypto/SecretKey;

    iget-object p1, p1, Lio/dcloud/g/e/a$c;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/g/e/a$c;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lio/dcloud/g/e/a$c;->b:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/g/e/a$c;->a()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lio/dcloud/g/e/a$c;->b()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
