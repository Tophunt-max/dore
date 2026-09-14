###### Class com.alibaba.fastjson.util.IOUtils (com.alibaba.fastjson.util.IOUtils)
.class public Lcom/alibaba/fastjson/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final ASCII_CHARS:[C

.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field static final sizeTable:[I

.field public static final specicalFlags_doubleQuotes:[B

.field public static final specicalFlags_singleQuotes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 18

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 25
    fill-array-data v0, :array_160

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    const/16 v0, 0x100

    new-array v1, v0, [Z

    .line 28
    sput-object v1, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 30
    :goto_11
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v4, v3

    const/16 v5, 0x5f

    const/16 v6, 0x5a

    const/16 v7, 0x61

    const/16 v8, 0x41

    const/4 v9, 0x1

    if-ge v2, v4, :cond_37

    if-lt v2, v8, :cond_26

    if-gt v2, v6, :cond_26

    .line 32
    aput-boolean v9, v3, v2

    goto :goto_33

    :cond_26
    if-lt v2, v7, :cond_2f

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_2f

    .line 34
    aput-boolean v9, v3, v2

    goto :goto_33

    :cond_2f
    if-ne v2, v5, :cond_33

    .line 36
    aput-boolean v9, v3, v2

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_11

    :cond_37
    new-array v2, v0, [Z

    .line 41
    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    const/4 v2, 0x0

    .line 44
    :goto_3c
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_64

    if-lt v2, v8, :cond_48

    if-gt v2, v6, :cond_48

    .line 46
    aput-boolean v9, v3, v2

    goto :goto_60

    :cond_48
    if-lt v2, v7, :cond_51

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_51

    .line 48
    aput-boolean v9, v3, v2

    goto :goto_60

    :cond_51
    if-ne v2, v5, :cond_56

    .line 50
    aput-boolean v9, v3, v2

    goto :goto_60

    :cond_56
    const/16 v4, 0x30

    if-lt v2, v4, :cond_60

    const/16 v4, 0x39

    if-gt v2, v4, :cond_60

    .line 52
    aput-boolean v9, v3, v2

    :cond_60
    :goto_60
    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_3c

    :cond_64
    new-array v2, v0, [B

    .line 57
    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    new-array v0, v0, [B

    .line 58
    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x80

    new-array v3, v3, [C

    .line 60
    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v3, 0x4

    aput-byte v3, v2, v1

    aput-byte v3, v2, v9

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    const/4 v5, 0x3

    aput-byte v3, v2, v5

    aput-byte v3, v2, v3

    const/4 v6, 0x5

    aput-byte v3, v2, v6

    const/4 v7, 0x6

    aput-byte v3, v2, v7

    const/4 v8, 0x7

    aput-byte v3, v2, v8

    const/16 v10, 0x8

    aput-byte v9, v2, v10

    const/16 v11, 0x9

    aput-byte v9, v2, v11

    const/16 v12, 0xa

    aput-byte v9, v2, v12

    const/16 v13, 0xb

    aput-byte v3, v2, v13

    const/16 v14, 0xc

    aput-byte v9, v2, v14

    const/16 v15, 0xd

    aput-byte v9, v2, v15

    const/16 v16, 0x22

    aput-byte v9, v2, v16

    const/16 v17, 0x5c

    aput-byte v9, v2, v17

    aput-byte v3, v0, v1

    aput-byte v3, v0, v9

    aput-byte v3, v0, v4

    aput-byte v3, v0, v5

    aput-byte v3, v0, v3

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    aput-byte v3, v0, v8

    aput-byte v9, v0, v10

    aput-byte v9, v0, v11

    aput-byte v9, v0, v12

    aput-byte v3, v0, v13

    aput-byte v9, v0, v14

    aput-byte v9, v0, v15

    aput-byte v9, v0, v17

    const/16 v2, 0x27

    aput-byte v9, v0, v2

    const/16 v0, 0xe

    :goto_cc
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_db

    .line 97
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v3, v2, v0

    .line 98
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_cc

    :cond_db
    const/16 v0, 0x7f

    :goto_dd
    const/16 v2, 0xa0

    if-gt v0, v2, :cond_ec

    .line 102
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v3, v2, v0

    .line 103
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 106
    :cond_ec
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x31

    .line 107
    aput-char v1, v0, v9

    const/16 v1, 0x32

    .line 108
    aput-char v1, v0, v4

    const/16 v1, 0x33

    .line 109
    aput-char v1, v0, v5

    const/16 v1, 0x34

    .line 110
    aput-char v1, v0, v3

    const/16 v1, 0x35

    .line 111
    aput-char v1, v0, v6

    const/16 v1, 0x36

    .line 112
    aput-char v1, v0, v7

    const/16 v1, 0x37

    .line 113
    aput-char v1, v0, v8

    const/16 v1, 0x62

    .line 114
    aput-char v1, v0, v10

    const/16 v1, 0x74

    .line 115
    aput-char v1, v0, v11

    const/16 v1, 0x6e

    .line 116
    aput-char v1, v0, v12

    const/16 v1, 0x76

    .line 117
    aput-char v1, v0, v13

    const/16 v1, 0x66

    .line 118
    aput-char v1, v0, v14

    const/16 v1, 0x72

    .line 119
    aput-char v1, v0, v15

    .line 120
    aput-char v16, v0, v16

    const/16 v1, 0x27

    .line 121
    aput-char v1, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    .line 122
    aput-char v2, v0, v1

    .line 123
    aput-char v17, v0, v17

    const/16 v0, 0x60

    new-array v0, v0, [C

    .line 126
    fill-array-data v0, :array_174

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    const/16 v0, 0x24

    new-array v0, v0, [C

    .line 203
    fill-array-data v0, :array_1d8

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 206
    fill-array-data v0, :array_200

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 212
    fill-array-data v0, :array_268

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    new-array v0, v12, [I

    .line 218
    fill-array-data v0, :array_2d0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    return-void

    :array_160
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

    :array_174
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    :array_1d8
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_200
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_268
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
    .end array-data

    :array_2d0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 136
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static getChars(JI[C)V
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_a

    const/16 v0, 0x2d

    neg-long p0, p0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p0, v1

    if-lez v3, :cond_35

    const-wide/16 v1, 0x64

    .line 166
    div-long v1, p0, v1

    const/4 v3, 0x6

    shl-long v3, v1, v3

    const/4 v5, 0x5

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    const/4 v5, 0x2

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    sub-long/2addr p0, v3

    long-to-int p1, p0

    add-int/lit8 p2, p2, -0x1

    .line 170
    sget-object p0, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char p0, p0, p1

    aput-char p0, p3, p2

    add-int/lit8 p2, p2, -0x1

    .line 171
    sget-object p0, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char p0, p0, p1

    aput-char p0, p3, p2

    move-wide p0, v1

    goto :goto_b

    :cond_35
    long-to-int p1, p0

    :goto_36
    const/high16 p0, 0x10000

    if-lt p1, p0, :cond_57

    .line 178
    div-int/lit8 p0, p1, 0x64

    shl-int/lit8 v1, p0, 0x6

    shl-int/lit8 v2, p0, 0x5

    add-int/2addr v1, v2

    shl-int/lit8 v2, p0, 0x2

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    add-int/lit8 p2, p2, -0x1

    .line 182
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v1, v1, p1

    aput-char v1, p3, p2

    add-int/lit8 p2, p2, -0x1

    .line 183
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char p1, v1, p1

    aput-char p1, p3, p2

    move p1, p0

    goto :goto_36

    :cond_57
    :goto_57
    const p0, 0xcccd

    mul-int p0, p0, p1

    ushr-int/lit8 p0, p0, 0x13

    shl-int/lit8 v1, p0, 0x3

    shl-int/lit8 v2, p0, 0x1

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    add-int/lit8 p2, p2, -0x1

    .line 191
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char p1, v1, p1

    aput-char p1, p3, p2

    if-nez p0, :cond_75

    if-eqz v0, :cond_74

    add-int/lit8 p2, p2, -0x1

    .line 196
    aput-char v0, p3, p2

    :cond_74
    return-void

    :cond_75
    move p1, p0

    goto :goto_57
.end method

.method public static stringSize(I)I
    .registers 3

    const/4 v0, 0x0

    .line 223
    :goto_1
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static stringSize(J)I
    .registers 8

    const/4 v0, 0x1

    const-wide/16 v1, 0xa

    move-wide v3, v1

    :goto_4
    const/16 v5, 0x13

    if-ge v0, v5, :cond_12

    cmp-long v5, p0, v3

    if-gez v5, :cond_d

    return v0

    :cond_d
    mul-long v3, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return v5
.end method
