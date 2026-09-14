###### Class com.dcloud.zxing2.common.StringUtils (com.dcloud.zxing2.common.StringUtils)
.class public final Lcom/dcloud/zxing2/common/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field public static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dcloud/zxing2/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    const-string v1, "SJIS"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "EUC_JP"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    sput-boolean v0, Lcom/dcloud/zxing2/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_17

    .line 1
    sget-object v2, Lcom/dcloud/zxing2/DecodeHintType;->CHARACTER_SET:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    if-eqz v1, :cond_26

    .line 5
    sget-object v2, Lcom/dcloud/zxing2/DecodeHintType;->autoDecodeCharset:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 6
    invoke-static/range {p0 .. p0}, Lcom/dcloud/zxing2/common/StringUtils;->guessEncodingSmart([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_26
    array-length v1, v0

    .line 32
    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v4, :cond_42

    aget-byte v2, v0, v6

    const/16 v7, -0x11

    if-ne v2, v7, :cond_42

    aget-byte v2, v0, v5

    const/16 v7, -0x45

    if-ne v2, v7, :cond_42

    aget-byte v2, v0, v3

    const/16 v7, -0x41

    if-ne v2, v7, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_53
    if-ge v9, v1, :cond_102

    if-nez v5, :cond_5b

    if-nez v7, :cond_5b

    if-eqz v8, :cond_102

    .line 41
    :cond_5b
    aget-byte v4, v0, v9

    and-int/lit16 v4, v4, 0xff

    if-eqz v8, :cond_8e

    and-int/lit16 v0, v4, 0x80

    if-lez v10, :cond_6b

    if-nez v0, :cond_68

    goto :goto_8d

    :cond_68
    add-int/lit8 v10, v10, -0x1

    goto :goto_8e

    :cond_6b
    if-eqz v0, :cond_8e

    and-int/lit8 v0, v4, 0x40

    if-nez v0, :cond_72

    goto :goto_8d

    :cond_72
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x20

    if-nez v0, :cond_7b

    add-int/lit8 v12, v12, 0x1

    goto :goto_8e

    :cond_7b
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x10

    if-nez v0, :cond_84

    add-int/lit8 v13, v13, 0x1

    goto :goto_8e

    :cond_84
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x8

    if-nez v0, :cond_8d

    add-int/lit8 v14, v14, 0x1

    goto :goto_8e

    :cond_8d
    :goto_8d
    const/4 v8, 0x0

    :cond_8e
    :goto_8e
    const/16 v0, 0x7f

    if-eqz v5, :cond_ac

    if-le v4, v0, :cond_9a

    const/16 v0, 0xa0

    if-ge v4, v0, :cond_9a

    const/4 v5, 0x0

    goto :goto_ac

    :cond_9a
    const/16 v0, 0x9f

    if-le v4, v0, :cond_ac

    const/16 v0, 0xc0

    if-lt v4, v0, :cond_aa

    const/16 v0, 0xd7

    if-eq v4, v0, :cond_aa

    const/16 v0, 0xf7

    if-ne v4, v0, :cond_ac

    :cond_aa
    add-int/lit8 v16, v16, 0x1

    :cond_ac
    :goto_ac
    if-eqz v7, :cond_fb

    if-lez v11, :cond_c0

    const/16 v0, 0x40

    if-lt v4, v0, :cond_fa

    const/16 v0, 0x7f

    if-eq v4, v0, :cond_fa

    const/16 v0, 0xfc

    if-le v4, v0, :cond_bd

    goto :goto_fa

    :cond_bd
    add-int/lit8 v11, v11, -0x1

    goto :goto_fb

    :cond_c0
    const/16 v0, 0x80

    if-eq v4, v0, :cond_fa

    const/16 v0, 0xa0

    if-eq v4, v0, :cond_fa

    const/16 v0, 0xef

    if-le v4, v0, :cond_cd

    goto :goto_fa

    :cond_cd
    const/16 v0, 0xa0

    if-le v4, v0, :cond_e2

    const/16 v0, 0xe0

    if-ge v4, v0, :cond_e2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v17, 0x1

    if-le v0, v15, :cond_df

    move v15, v0

    move/from16 v17, v15

    goto :goto_f7

    :cond_df
    move/from16 v17, v0

    goto :goto_f7

    :cond_e2
    const/16 v0, 0x7f

    if-le v4, v0, :cond_f5

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v0, v18, 0x1

    if-le v0, v6, :cond_f2

    move v6, v0

    move/from16 v18, v6

    :goto_ef
    const/16 v17, 0x0

    goto :goto_fb

    :cond_f2
    move/from16 v18, v0

    goto :goto_ef

    :cond_f5
    const/16 v17, 0x0

    :goto_f7
    const/16 v18, 0x0

    goto :goto_fb

    :cond_fa
    :goto_fa
    const/4 v7, 0x0

    :cond_fb
    :goto_fb
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v4, 0x3

    goto/16 :goto_53

    :cond_102
    if-eqz v8, :cond_107

    if-lez v10, :cond_107

    const/4 v8, 0x0

    :cond_107
    if-eqz v7, :cond_10c

    if-lez v11, :cond_10c

    const/4 v7, 0x0

    :cond_10c
    const-string v0, "UTF-8"

    if-eqz v8, :cond_117

    if-nez v2, :cond_116

    add-int/2addr v12, v13

    add-int/2addr v12, v14

    if-lez v12, :cond_117

    :cond_116
    return-object v0

    :cond_117
    const-string v2, "SJIS"

    if-eqz v7, :cond_125

    .line 137
    sget-boolean v4, Lcom/dcloud/zxing2/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v4, :cond_124

    const/4 v4, 0x3

    if-ge v15, v4, :cond_124

    if-lt v6, v4, :cond_125

    :cond_124
    return-object v2

    :cond_125
    const-string v4, "ISO8859_1"

    if-eqz v5, :cond_137

    if-eqz v7, :cond_137

    const/4 v6, 0x2

    if-ne v15, v6, :cond_130

    if-eq v3, v6, :cond_136

    :cond_130
    mul-int/lit8 v0, v16, 0xa

    if-lt v0, v1, :cond_135

    goto :goto_136

    :cond_135
    move-object v2, v4

    :cond_136
    :goto_136
    return-object v2

    :cond_137
    if-eqz v5, :cond_13a

    return-object v4

    :cond_13a
    if-eqz v7, :cond_13d

    return-object v2

    :cond_13d
    if-eqz v8, :cond_140

    return-object v0

    .line 161
    :cond_140
    sget-object v0, Lcom/dcloud/zxing2/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    return-object v0
.end method

.method public static guessEncodingSmart([B)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([B)V

    .line 4
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 5
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    return-object p0

    :cond_19
    const-string p0, "GB2312"

    return-object p0
.end method
