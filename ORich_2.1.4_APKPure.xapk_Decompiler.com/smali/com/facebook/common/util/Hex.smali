###### Class com.facebook.common.util.Hex (com.facebook.common.util.Hex)
.class public Lcom/facebook/common/util/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final DIGITS:[B

.field private static final FIRST_CHAR:[C

.field private static final HEX_DIGITS:[C

.field private static final SECOND_CHAR:[C


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 24
    fill-array-data v0, :array_66

    sput-object v0, Lcom/facebook/common/util/Hex;->HEX_DIGITS:[C

    const/16 v0, 0x100

    new-array v1, v0, [C

    .line 30
    sput-object v1, Lcom/facebook/common/util/Hex;->FIRST_CHAR:[C

    new-array v1, v0, [C

    .line 31
    sput-object v1, Lcom/facebook/common/util/Hex;->SECOND_CHAR:[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_2e

    .line 35
    sget-object v3, Lcom/facebook/common/util/Hex;->FIRST_CHAR:[C

    sget-object v4, Lcom/facebook/common/util/Hex;->HEX_DIGITS:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    aput-char v5, v3, v2

    .line 36
    sget-object v3, Lcom/facebook/common/util/Hex;->SECOND_CHAR:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2e
    const/16 v0, 0x67

    new-array v0, v0, [B

    .line 40
    sput-object v0, Lcom/facebook/common/util/Hex;->DIGITS:[B

    const/4 v0, 0x0

    :goto_35
    const/16 v2, 0x46

    if-gt v0, v2, :cond_41

    .line 44
    sget-object v2, Lcom/facebook/common/util/Hex;->DIGITS:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_41
    const/4 v0, 0x0

    :goto_42
    const/16 v2, 0xa

    if-ge v0, v2, :cond_50

    .line 47
    sget-object v2, Lcom/facebook/common/util/Hex;->DIGITS:[B

    add-int/lit8 v3, v0, 0x30

    aput-byte v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_42

    :cond_50
    :goto_50
    const/4 v0, 0x6

    if-ge v1, v0, :cond_64

    .line 50
    sget-object v0, Lcom/facebook/common/util/Hex;->DIGITS:[B

    add-int/lit8 v2, v1, 0x41

    add-int/lit8 v3, v1, 0xa

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x61

    .line 51
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_50

    :cond_64
    return-void

    nop

    :array_66
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2Hex(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/16 v0, 0xff

    if-gt p0, v0, :cond_26

    if-ltz p0, :cond_26

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/common/util/Hex;->FIRST_CHAR:[C

    aget-char v1, v1, p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/common/util/Hex;->SECOND_CHAR:[C

    aget-char p0, v1, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The int converting to hex should be in range 0~255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hexString"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_57

    shr-int/lit8 v1, v0, 0x1

    .line 98
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    const/4 v5, 0x1

    if-ge v3, v0, :cond_3d

    add-int/lit8 v6, v3, 0x1

    .line 100
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x66

    if-le v3, v7, :cond_1e

    :goto_1c
    const/4 v2, 0x1

    goto :goto_3d

    .line 106
    :cond_1e
    sget-object v8, Lcom/facebook/common/util/Hex;->DIGITS:[B

    aget-byte v3, v8, v3

    const/4 v9, -0x1

    if-ne v3, v9, :cond_26

    goto :goto_1c

    :cond_26
    add-int/lit8 v10, v6, 0x1

    .line 112
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v7, :cond_2f

    goto :goto_1c

    .line 118
    :cond_2f
    aget-byte v6, v8, v6

    if-ne v6, v9, :cond_34

    goto :goto_1c

    :cond_34
    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v6

    int-to-byte v3, v3

    .line 124
    aput-byte v3, v1, v4

    add-int/2addr v4, v5

    move v3, v10

    goto :goto_f

    :cond_3d
    :goto_3d
    if-nez v2, :cond_40

    return-object v1

    .line 128
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hexadecimal digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Odd number of characters."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeHex([BZ)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "zeroTerminated"
        }
    .end annotation

    .line 73
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 76
    :goto_8
    array-length v4, p0

    if-ge v2, v4, :cond_27

    .line 77
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_14

    if-eqz p1, :cond_14

    goto :goto_27

    :cond_14
    add-int/lit8 v5, v3, 0x1

    .line 82
    sget-object v6, Lcom/facebook/common/util/Hex;->FIRST_CHAR:[C

    aget-char v6, v6, v4

    aput-char v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    .line 83
    sget-object v6, Lcom/facebook/common/util/Hex;->SECOND_CHAR:[C

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 86
    :cond_27
    :goto_27
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    const-string v0, " "

    const-string v1, ""

    .line 135
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 136
    invoke-static {p0}, Lcom/facebook/common/util/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
