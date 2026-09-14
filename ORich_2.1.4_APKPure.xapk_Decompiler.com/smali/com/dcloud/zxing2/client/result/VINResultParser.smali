###### Class com.dcloud.zxing2.client.result.VINResultParser (com.dcloud.zxing2.client.result.VINResultParser)
.class public final Lcom/dcloud/zxing2/client/result/VINResultParser;
.super Lcom/dcloud/zxing2/client/result/ResultParser;
.source "SourceFile"


# static fields
.field private static final AZ09:Ljava/util/regex/Pattern;

.field private static final IOQ:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[IOQ]"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dcloud/zxing2/client/result/VINResultParser;->IOQ:Ljava/util/regex/Pattern;

    const-string v0, "[A-Z0-9]{17}"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dcloud/zxing2/client/result/VINResultParser;->AZ09:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static checkChar(I)C
    .registers 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    return p0

    :cond_8
    if-ne p0, v0, :cond_d

    const/16 p0, 0x58

    return p0

    .line 1
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static checkChecksum(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_1c

    add-int/lit8 v3, v1, 0x1

    .line 2
    invoke-static {v3}, Lcom/dcloud/zxing2/client/result/VINResultParser;->vinPositionWeight(I)I

    move-result v4

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/dcloud/zxing2/client/result/VINResultParser;->vinCharValue(C)I

    move-result v1

    mul-int v4, v4, v1

    add-int/2addr v2, v4

    move v1, v3

    goto :goto_3

    :cond_1c
    const/16 v1, 0x8

    .line 4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    .line 5
    rem-int/lit8 v2, v2, 0xb

    invoke-static {v2}, Lcom/dcloud/zxing2/client/result/VINResultParser;->checkChar(I)C

    move-result v1

    if-ne p0, v1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0
.end method

.method private static countryCode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v1, 0x45

    const/16 v2, 0x33

    const/16 v3, 0x39

    const/16 v4, 0x41

    if-eq v0, v3, :cond_89

    const-string v5, "DE"

    const/16 v6, 0x54

    const/16 v7, 0x53

    if-eq v0, v7, :cond_79

    const/16 v8, 0x5a

    const/16 v9, 0x52

    if-eq v0, v8, :cond_72

    const/16 v8, 0x57

    packed-switch v0, :pswitch_data_96

    packed-switch v0, :pswitch_data_a4

    packed-switch v0, :pswitch_data_b0

    goto/16 :goto_94

    :pswitch_2f
    if-lt p0, v4, :cond_94

    if-gt p0, v8, :cond_94

    const-string p0, "MX"

    return-object p0

    :pswitch_36
    const-string p0, "CA"

    return-object p0

    :pswitch_39
    const-string p0, "US"

    return-object p0

    :pswitch_3c
    if-lt p0, v4, :cond_94

    if-gt p0, v1, :cond_94

    const-string p0, "IN"

    return-object p0

    :pswitch_43
    const-string p0, "CN"

    return-object p0

    :pswitch_46
    const/16 v0, 0x4c

    if-lt p0, v0, :cond_94

    if-gt p0, v9, :cond_94

    const-string p0, "KO"

    return-object p0

    :pswitch_4f
    if-lt p0, v4, :cond_94

    if-gt p0, v6, :cond_94

    const-string p0, "JP"

    return-object p0

    :pswitch_56
    const/16 v0, 0x30

    if-eq p0, v0, :cond_5e

    if-lt p0, v2, :cond_94

    if-gt p0, v3, :cond_94

    :cond_5e
    const-string p0, "RU"

    return-object p0

    :pswitch_61
    return-object v5

    :pswitch_62
    const/16 v0, 0x46

    if-lt p0, v0, :cond_6b

    if-gt p0, v9, :cond_6b

    const-string p0, "FR"

    return-object p0

    :cond_6b
    if-lt p0, v7, :cond_94

    if-gt p0, v8, :cond_94

    const-string p0, "ES"

    return-object p0

    :cond_72
    if-lt p0, v4, :cond_94

    if-gt p0, v9, :cond_94

    const-string p0, "IT"

    return-object p0

    :cond_79
    if-lt p0, v4, :cond_82

    const/16 v0, 0x4d

    if-gt p0, v0, :cond_82

    const-string p0, "UK"

    return-object p0

    :cond_82
    const/16 v0, 0x4e

    if-lt p0, v0, :cond_94

    if-gt p0, v6, :cond_94

    return-object v5

    :cond_89
    if-lt p0, v4, :cond_8d

    if-le p0, v1, :cond_91

    :cond_8d
    if-lt p0, v2, :cond_94

    if-gt p0, v3, :cond_94

    :cond_91
    const-string p0, "BR"

    return-object p0

    :cond_94
    :goto_94
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_96
    .packed-switch 0x31
        :pswitch_39
        :pswitch_36
        :pswitch_2f
        :pswitch_39
        :pswitch_39
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x4a
        :pswitch_4f
        :pswitch_46
        :pswitch_43
        :pswitch_3c
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x56
        :pswitch_62
        :pswitch_61
        :pswitch_56
    .end packed-switch
.end method

.method private static modelYear(C)I
    .registers 3

    const/16 v0, 0x45

    if-lt p0, v0, :cond_c

    const/16 v1, 0x48

    if-gt p0, v1, :cond_c

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7c0

    return p0

    :cond_c
    const/16 v0, 0x4a

    if-lt p0, v0, :cond_18

    const/16 v1, 0x4e

    if-gt p0, v1, :cond_18

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7c4

    return p0

    :cond_18
    const/16 v0, 0x50

    if-ne p0, v0, :cond_1f

    const/16 p0, 0x7c9

    return p0

    :cond_1f
    const/16 v0, 0x52

    if-lt p0, v0, :cond_2b

    const/16 v1, 0x54

    if-gt p0, v1, :cond_2b

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7ca

    return p0

    :cond_2b
    const/16 v0, 0x56

    if-lt p0, v0, :cond_37

    const/16 v1, 0x59

    if-gt p0, v1, :cond_37

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7cd

    return p0

    :cond_37
    const/16 v0, 0x31

    if-lt p0, v0, :cond_43

    const/16 v1, 0x39

    if-gt p0, v1, :cond_43

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7d1

    return p0

    :cond_43
    const/16 v0, 0x41

    if-lt p0, v0, :cond_4f

    const/16 v1, 0x44

    if-gt p0, v1, :cond_4f

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7da

    return p0

    .line 1
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static vinCharValue(C)I
    .registers 3

    const/16 v0, 0x41

    if-lt p0, v0, :cond_c

    const/16 v1, 0x49

    if-gt p0, v1, :cond_c

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_c
    const/16 v0, 0x4a

    if-lt p0, v0, :cond_18

    const/16 v1, 0x52

    if-gt p0, v1, :cond_18

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_18
    const/16 v0, 0x53

    if-lt p0, v0, :cond_24

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_24

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x2

    return p0

    :cond_24
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2e

    const/16 v1, 0x39

    if-gt p0, v1, :cond_2e

    sub-int/2addr p0, v0

    return p0

    .line 1
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static vinPositionWeight(I)I
    .registers 4

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-lt p0, v1, :cond_a

    const/4 v1, 0x7

    if-gt p0, v1, :cond_a

    sub-int/2addr v0, p0

    return v0

    :cond_a
    const/16 v1, 0x8

    const/16 v2, 0xa

    if-ne p0, v1, :cond_11

    return v2

    :cond_11
    if-ne p0, v0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    if-lt p0, v2, :cond_1e

    const/16 v0, 0x11

    if-gt p0, v0, :cond_1e

    rsub-int/lit8 p0, p0, 0x13

    return p0

    .line 1
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ParsedResult;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/client/result/VINResultParser;->parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/VINParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/VINParsedResult;
    .registers 15

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getBarcodeFormat()Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v0

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return-object v2

    .line 5
    :cond_a
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/dcloud/zxing2/client/result/VINResultParser;->IOQ:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 7
    sget-object p1, Lcom/dcloud/zxing2/client/result/VINResultParser;->AZ09:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_2b

    return-object v2

    .line 11
    :cond_2b
    :try_start_2b
    invoke-static {v4}, Lcom/dcloud/zxing2/client/result/VINResultParser;->checkChecksum(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_32

    return-object v2

    :cond_32
    const/4 p1, 0x0

    const/4 v0, 0x3

    .line 14
    invoke-virtual {v4, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 15
    new-instance p1, Lcom/dcloud/zxing2/client/result/VINParsedResult;

    const/16 v1, 0x9

    .line 17
    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x11

    .line 18
    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-static {v5}, Lcom/dcloud/zxing2/client/result/VINResultParser;->countryCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/16 v3, 0x8

    .line 20
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/dcloud/zxing2/client/result/VINResultParser;->modelYear(C)I

    move-result v10

    const/16 v0, 0xa

    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v0, 0xb

    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lcom/dcloud/zxing2/client/result/VINParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_68} :catch_69

    return-object p1

    :catch_69
    return-object v2
.end method
