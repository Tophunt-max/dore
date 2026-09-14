###### Class com.dcloud.zxing2.oned.CodaBarWriter (com.dcloud.zxing2.oned.CodaBarWriter)
.class public final Lcom/dcloud/zxing2/oned/CodaBarWriter;
.super Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final DEFAULT_GUARD:C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v1, v0, [C

    .line 1
    fill-array-data v1, :array_1c

    sput-object v1, Lcom/dcloud/zxing2/oned/CodaBarWriter;->START_END_CHARS:[C

    new-array v2, v0, [C

    .line 2
    fill-array-data v2, :array_24

    sput-object v2, Lcom/dcloud/zxing2/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    new-array v0, v0, [C

    .line 3
    fill-array-data v0, :array_2c

    sput-object v0, Lcom/dcloud/zxing2/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    const/4 v0, 0x0

    .line 4
    aget-char v0, v1, v0

    sput-char v0, Lcom/dcloud/zxing2/oned/CodaBarWriter;->DEFAULT_GUARD:C

    return-void

    :array_1c
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_24
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    :array_2c
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .registers 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v0, v3, :cond_1f

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v3, Lcom/dcloud/zxing2/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_96

    .line 6
    :cond_1f
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 8
    sget-object v4, Lcom/dcloud/zxing2/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v4, v0}, Lcom/dcloud/zxing2/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v5

    .line 9
    invoke-static {v4, v3}, Lcom/dcloud/zxing2/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    .line 10
    sget-object v6, Lcom/dcloud/zxing2/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v6, v0}, Lcom/dcloud/zxing2/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v0

    .line 11
    invoke-static {v6, v3}, Lcom/dcloud/zxing2/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    const-string v6, "Invalid start/end guards: "

    if-eqz v5, :cond_64

    if-eqz v4, :cond_4f

    goto :goto_96

    .line 14
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    if-eqz v0, :cond_7e

    if-eqz v3, :cond_69

    goto :goto_96

    .line 19
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    if-nez v4, :cond_16a

    if-nez v3, :cond_16a

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v3, Lcom/dcloud/zxing2/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_96
    const/16 v0, 0x14

    const/4 v3, 0x1

    .line 34
    :goto_99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_ef

    .line 35
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_ea

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_ea

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_bb

    goto :goto_ea

    .line 37
    :cond_bb
    sget-object v4, Lcom/dcloud/zxing2/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/dcloud/zxing2/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_ca

    add-int/lit8 v0, v0, 0xa

    goto :goto_ec

    .line 40
    :cond_ca
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot encode : \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ea
    :goto_ea
    add-int/lit8 v0, v0, 0x9

    :goto_ec
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 44
    :cond_ef
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 46
    new-array v0, v0, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 48
    :goto_f9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_169

    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eqz v3, :cond_110

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    if-ne v3, v6, :cond_12c

    :cond_110
    const/16 v6, 0x2a

    if-eq v5, v6, :cond_12a

    const/16 v6, 0x45

    if-eq v5, v6, :cond_127

    const/16 v6, 0x4e

    if-eq v5, v6, :cond_124

    const/16 v6, 0x54

    if-eq v5, v6, :cond_121

    goto :goto_12c

    :cond_121
    const/16 v5, 0x41

    goto :goto_12c

    :cond_124
    const/16 v5, 0x42

    goto :goto_12c

    :cond_127
    const/16 v5, 0x44

    goto :goto_12c

    :cond_12a
    const/16 v5, 0x43

    :cond_12c
    :goto_12c
    const/4 v6, 0x0

    .line 68
    :goto_12d
    sget-object v7, Lcom/dcloud/zxing2/oned/CodaBarReader;->ALPHABET:[C

    array-length v8, v7

    if-ge v6, v8, :cond_13e

    .line 70
    aget-char v7, v7, v6

    if-ne v5, v7, :cond_13b

    .line 71
    sget-object v5, Lcom/dcloud/zxing2/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v5, v5, v6

    goto :goto_13f

    :cond_13b
    add-int/lit8 v6, v6, 0x1

    goto :goto_12d

    :cond_13e
    const/4 v5, 0x0

    :goto_13f
    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_141
    const/4 v8, 0x0

    :goto_142
    const/4 v9, 0x7

    if-ge v6, v9, :cond_15b

    .line 79
    aput-boolean v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    rsub-int/lit8 v9, v6, 0x6

    shr-int v9, v5, v9

    and-int/2addr v9, v2

    if-eqz v9, :cond_156

    if-ne v8, v2, :cond_153

    goto :goto_156

    :cond_153
    add-int/lit8 v8, v8, 0x1

    goto :goto_142

    :cond_156
    :goto_156
    xor-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_141

    .line 89
    :cond_15b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v3, v5, :cond_166

    .line 90
    aput-boolean v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    :cond_166
    add-int/lit8 v3, v3, 0x1

    goto :goto_f9

    :cond_169
    return-object v0

    .line 91
    :cond_16a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
