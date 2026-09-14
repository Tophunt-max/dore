###### Class com.alibaba.fastjson.util.Base64 (com.alibaba.fastjson.util.Base64)
.class public Lcom/alibaba/fastjson/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final CA:[C

.field public static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    const/16 v1, 0x100

    new-array v1, v1, [I

    .line 14
    sput-object v1, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/4 v2, -0x1

    .line 16
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 17
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_22

    .line 18
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    aget-char v4, v4, v2

    aput v2, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 19
    :cond_22
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeFast(Ljava/lang/String;)[B
    .registers 15

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    new-array p0, v1, [B

    return-object p0

    :cond_a
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1e

    .line 164
    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1e

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1e
    :goto_1e
    if-lez v2, :cond_2f

    .line 168
    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_2f

    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 172
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_44

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_42

    const/4 v4, 0x2

    goto :goto_45

    :cond_42
    const/4 v4, 0x1

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    :goto_45
    sub-int v5, v2, v3

    add-int/2addr v5, v6

    const/16 v7, 0x4c

    if-le v0, v7, :cond_5a

    .line 174
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0xd

    if-ne v0, v7, :cond_57

    div-int/lit8 v0, v5, 0x4e

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    shl-int/2addr v0, v6

    goto :goto_5b

    :cond_5a
    const/4 v0, 0x0

    :goto_5b
    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x6

    shr-int/lit8 v5, v5, 0x3

    sub-int/2addr v5, v4

    .line 177
    new-array v7, v5, [B

    .line 181
    div-int/lit8 v8, v5, 0x3

    mul-int/lit8 v8, v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_69
    if-ge v9, v8, :cond_b9

    .line 183
    sget-object v11, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v11, v3

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v12, v11, v12

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v3, v12

    add-int/lit8 v12, v13, 0x1

    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v13, v11, v13

    shl-int/lit8 v13, v13, 0x6

    or-int/2addr v3, v13

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    or-int/2addr v3, v11

    add-int/lit8 v11, v9, 0x1

    shr-int/lit8 v12, v3, 0x10

    int-to-byte v12, v12

    .line 187
    aput-byte v12, v7, v9

    add-int/lit8 v9, v11, 0x1

    shr-int/lit8 v12, v3, 0x8

    int-to-byte v12, v12

    .line 188
    aput-byte v12, v7, v11

    add-int/lit8 v11, v9, 0x1

    int-to-byte v3, v3

    .line 189
    aput-byte v3, v7, v9

    if-lez v0, :cond_b6

    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0x13

    if-ne v10, v3, :cond_b6

    add-int/lit8 v13, v13, 0x2

    move v3, v13

    const/4 v10, 0x0

    goto :goto_b7

    :cond_b6
    move v3, v13

    :goto_b7
    move v9, v11

    goto :goto_69

    :cond_b9
    if-ge v9, v5, :cond_e2

    const/4 v0, 0x0

    :goto_bc
    sub-int v8, v2, v4

    if-gt v3, v8, :cond_d3

    .line 202
    sget-object v8, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v8, v3

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v3, v8

    or-int/2addr v1, v3

    add-int/2addr v0, v6

    move v3, v10

    goto :goto_bc

    :cond_d3
    const/16 p0, 0x10

    :goto_d5
    if-ge v9, v5, :cond_e2

    add-int/lit8 v0, v9, 0x1

    shr-int v2, v1, p0

    int-to-byte v2, v2

    .line 205
    aput-byte v2, v7, v9

    add-int/lit8 p0, p0, -0x8

    move v9, v0

    goto :goto_d5

    :cond_e2
    return-object v7
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
    .registers 15

    const/4 v0, 0x0

    if-nez p2, :cond_6

    new-array p0, v0, [B

    return-object p0

    :cond_6
    add-int v1, p1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    if-ge p1, v1, :cond_19

    .line 97
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_19

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_19
    :goto_19
    if-lez v1, :cond_28

    .line 101
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_28

    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 105
    :cond_28
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3c

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3a

    const/4 v3, 0x2

    goto :goto_3d

    :cond_3a
    const/4 v3, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    const/16 v5, 0x4c

    if-le p2, v5, :cond_52

    .line 107
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0xd

    if-ne p2, v5, :cond_4f

    div-int/lit8 p2, v4, 0x4e

    goto :goto_50

    :cond_4f
    const/4 p2, 0x0

    :goto_50
    shl-int/2addr p2, v2

    goto :goto_53

    :cond_52
    const/4 p2, 0x0

    :goto_53
    sub-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    .line 110
    new-array v5, v4, [B

    .line 114
    div-int/lit8 v6, v4, 0x3

    mul-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_61
    if-ge v7, v6, :cond_b1

    .line 116
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aget p1, v9, p1

    shl-int/lit8 p1, p1, 0x12

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v10, v9, v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr p1, v10

    add-int/lit8 v10, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v9, v11

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr p1, v11

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v9, v9, v10

    or-int/2addr p1, v9

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, p1, 0x10

    int-to-byte v10, v10

    .line 119
    aput-byte v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v10, p1, 0x8

    int-to-byte v10, v10

    .line 120
    aput-byte v10, v5, v9

    add-int/lit8 v9, v7, 0x1

    int-to-byte p1, p1

    .line 121
    aput-byte p1, v5, v7

    if-lez p2, :cond_ae

    add-int/lit8 v8, v8, 0x1

    const/16 p1, 0x13

    if-ne v8, p1, :cond_ae

    add-int/lit8 v11, v11, 0x2

    move p1, v11

    const/4 v8, 0x0

    goto :goto_af

    :cond_ae
    move p1, v11

    :goto_af
    move v7, v9

    goto :goto_61

    :cond_b1
    if-ge v7, v4, :cond_da

    const/4 p2, 0x0

    :goto_b4
    sub-int v6, v1, v3

    if-gt p1, v6, :cond_cb

    .line 134
    sget-object v6, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aget p1, v6, p1

    mul-int/lit8 v6, p2, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr p1, v6

    or-int/2addr v0, p1

    add-int/2addr p2, v2

    move p1, v8

    goto :goto_b4

    :cond_cb
    const/16 p0, 0x10

    :goto_cd
    if-ge v7, v4, :cond_da

    add-int/lit8 p1, v7, 0x1

    shr-int p2, v0, p0

    int-to-byte p2, p2

    .line 137
    aput-byte p2, v5, v7

    add-int/lit8 p0, p0, -0x8

    move v7, p1

    goto :goto_cd

    :cond_da
    return-object v5
.end method

.method public static final decodeFast([CII)[B
    .registers 15

    const/4 v0, 0x0

    if-nez p2, :cond_6

    new-array p0, v0, [B

    return-object p0

    :cond_6
    add-int v1, p1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    if-ge p1, v1, :cond_17

    .line 42
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v4, p0, p1

    aget v3, v3, v4

    if-gez v3, :cond_17

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_17
    :goto_17
    if-lez v1, :cond_24

    .line 46
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v4, p0, v1

    aget v3, v3, v4

    if-gez v3, :cond_24

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 50
    :cond_24
    aget-char v3, p0, v1

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_34

    add-int/lit8 v3, v1, -0x1

    aget-char v3, p0, v3

    if-ne v3, v4, :cond_32

    const/4 v3, 0x2

    goto :goto_35

    :cond_32
    const/4 v3, 0x1

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    const/16 v5, 0x4c

    if-le p2, v5, :cond_48

    .line 52
    aget-char p2, p0, v5

    const/16 v5, 0xd

    if-ne p2, v5, :cond_45

    div-int/lit8 p2, v4, 0x4e

    goto :goto_46

    :cond_45
    const/4 p2, 0x0

    :goto_46
    shl-int/2addr p2, v2

    goto :goto_49

    :cond_48
    const/4 p2, 0x0

    :goto_49
    sub-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    .line 55
    new-array v5, v4, [B

    .line 59
    div-int/lit8 v6, v4, 0x3

    mul-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_57
    if-ge v7, v6, :cond_9f

    .line 61
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v10, p1, 0x1

    aget-char p1, p0, p1

    aget p1, v9, p1

    shl-int/lit8 p1, p1, 0x12

    add-int/lit8 v11, v10, 0x1

    aget-char v10, p0, v10

    aget v10, v9, v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr p1, v10

    add-int/lit8 v10, v11, 0x1

    aget-char v11, p0, v11

    aget v11, v9, v11

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr p1, v11

    add-int/lit8 v11, v10, 0x1

    aget-char v10, p0, v10

    aget v9, v9, v10

    or-int/2addr p1, v9

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, p1, 0x10

    int-to-byte v10, v10

    .line 64
    aput-byte v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v10, p1, 0x8

    int-to-byte v10, v10

    .line 65
    aput-byte v10, v5, v9

    add-int/lit8 v9, v7, 0x1

    int-to-byte p1, p1

    .line 66
    aput-byte p1, v5, v7

    if-lez p2, :cond_9c

    add-int/lit8 v8, v8, 0x1

    const/16 p1, 0x13

    if-ne v8, p1, :cond_9c

    add-int/lit8 v11, v11, 0x2

    move p1, v11

    const/4 v8, 0x0

    goto :goto_9d

    :cond_9c
    move p1, v11

    :goto_9d
    move v7, v9

    goto :goto_57

    :cond_9f
    if-ge v7, v4, :cond_c6

    const/4 p2, 0x0

    :goto_a2
    sub-int v6, v1, v3

    if-gt p1, v6, :cond_b7

    .line 79
    sget-object v6, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v8, p1, 0x1

    aget-char p1, p0, p1

    aget p1, v6, p1

    mul-int/lit8 v6, p2, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr p1, v6

    or-int/2addr v0, p1

    add-int/2addr p2, v2

    move p1, v8

    goto :goto_a2

    :cond_b7
    const/16 p0, 0x10

    :goto_b9
    if-ge v7, v4, :cond_c6

    add-int/lit8 p1, v7, 0x1

    shr-int p2, v0, p0

    int-to-byte p2, p2

    .line 82
    aput-byte p2, v5, v7

    add-int/lit8 p0, p0, -0x8

    move v7, p1

    goto :goto_b9

    :cond_c6
    return-object v5
.end method
