###### Class com.alibaba.fastjson.parser.JSONScanner (com.alibaba.fastjson.parser.JSONScanner)
.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# static fields
.field protected static final typeFieldName:[C


# instance fields
.field public final ISO8601_LEN_0:I

.field public final ISO8601_LEN_1:I

.field public final ISO8601_LEN_2:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 35
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 38
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>()V

    const/16 v0, 0xa

    .line 124
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    const/16 v0, 0x13

    .line 125
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    const/16 v0, 0x17

    .line 126
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    .line 39
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    .line 41
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 45
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_23

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :cond_23
    return-void
.end method

.method public constructor <init>([CI)V
    .registers 4

    .line 63
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .registers 6

    .line 67
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static checkDate(CCCCCCII)Z
    .registers 12

    const/16 v0, 0x32

    const/16 v1, 0x31

    const/4 v2, 0x0

    if-eq p0, v1, :cond_a

    if-eq p0, v0, :cond_a

    return v2

    :cond_a
    const/16 p0, 0x30

    if-lt p1, p0, :cond_49

    const/16 v3, 0x39

    if-le p1, v3, :cond_13

    goto :goto_49

    :cond_13
    if-lt p2, p0, :cond_49

    if-le p2, v3, :cond_18

    goto :goto_49

    :cond_18
    if-lt p3, p0, :cond_49

    if-le p3, v3, :cond_1d

    goto :goto_49

    :cond_1d
    if-ne p4, p0, :cond_24

    if-lt p5, v1, :cond_23

    if-le p5, v3, :cond_2d

    :cond_23
    return v2

    :cond_24
    if-ne p4, v1, :cond_49

    if-eq p5, p0, :cond_2d

    if-eq p5, v1, :cond_2d

    if-eq p5, v0, :cond_2d

    return v2

    :cond_2d
    if-ne p6, p0, :cond_34

    if-lt p7, v1, :cond_33

    if-le p7, v3, :cond_47

    :cond_33
    return v2

    :cond_34
    if-eq p6, v1, :cond_42

    if-ne p6, v0, :cond_39

    goto :goto_42

    :cond_39
    const/16 p1, 0x33

    if-ne p6, p1, :cond_41

    if-eq p7, p0, :cond_47

    if-eq p7, v1, :cond_47

    :cond_41
    return v2

    :cond_42
    :goto_42
    if-lt p7, p0, :cond_49

    if-le p7, v3, :cond_47

    goto :goto_49

    :cond_47
    const/4 p0, 0x1

    return p0

    :cond_49
    :goto_49
    return v2
.end method

.method private checkTime(CCCCCC)Z
    .registers 11

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p1, v2, :cond_c

    if-lt p2, v2, :cond_b

    if-le p2, v0, :cond_20

    :cond_b
    return v1

    :cond_c
    const/16 v3, 0x31

    if-ne p1, v3, :cond_15

    if-lt p2, v2, :cond_14

    if-le p2, v0, :cond_20

    :cond_14
    return v1

    :cond_15
    const/16 v3, 0x32

    if-ne p1, v3, :cond_42

    if-lt p2, v2, :cond_42

    const/16 p1, 0x34

    if-le p2, p1, :cond_20

    goto :goto_42

    :cond_20
    const/16 p1, 0x35

    const/16 p2, 0x36

    if-lt p3, v2, :cond_2d

    if-gt p3, p1, :cond_2d

    if-lt p4, v2, :cond_2c

    if-le p4, v0, :cond_32

    :cond_2c
    return v1

    :cond_2d
    if-ne p3, p2, :cond_42

    if-eq p4, v2, :cond_32

    return v1

    :cond_32
    if-lt p5, v2, :cond_3b

    if-gt p5, p1, :cond_3b

    if-lt p6, v2, :cond_3a

    if-le p6, v0, :cond_40

    :cond_3a
    return v1

    :cond_3b
    if-ne p5, p2, :cond_42

    if-eq p6, v2, :cond_40

    return v1

    :cond_40
    const/4 p1, 0x1

    return p1

    :cond_42
    :goto_42
    return v1
.end method

.method private setCalendar(CCCCCCCC)V
    .registers 11

    .line 456
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 457
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 458
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget p1, v0, p1

    mul-int/lit16 p1, p1, 0x3e8

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget p2, v0, p2

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p1, p2

    sget-object p2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget p2, p2, p3

    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p1, p2

    sget-object p2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget p2, p2, p4

    add-int/2addr p1, p2

    .line 459
    sget-object p2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget p2, p2, p5

    mul-int/lit8 p2, p2, 0xa

    sget-object p3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget p3, p3, p6

    add-int/2addr p2, p3

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 460
    sget-object p4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget p4, p4, p7

    mul-int/lit8 p4, p4, 0xa

    sget-object p5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget p5, p5, p8

    add-int/2addr p4, p5

    .line 461
    iget-object p5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {p5, p3, p1}, Ljava/util/Calendar;->set(II)V

    .line 462
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 463
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 6

    .line 81
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final arrayCopy(I[CII)V
    .registers 6

    .line 517
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p4, p1

    invoke-virtual {v0, p1, p4, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public bytesValue()[B
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/Base64;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final charAt(I)C
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_b

    const/16 p1, 0x1a

    return p1

    .line 55
    :cond_b
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method protected final copyTo(II[C)V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final indexOf(CI)I
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    return p1
.end method

.method public isEOF()Z
    .registers 4

    .line 513
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1e

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1d

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :cond_1e
    :goto_1e
    return v2
.end method

.method public final next()C
    .registers 2

    .line 59
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .registers 4

    .line 113
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 115
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_21

    const/16 v2, 0x53

    if-eq v0, v2, :cond_21

    const/16 v2, 0x42

    if-eq v0, v2, :cond_21

    const/16 v2, 0x46

    if-eq v0, v2, :cond_21

    const/16 v2, 0x44

    if-ne v0, v2, :cond_23

    :cond_21
    add-int/lit8 v1, v1, -0x1

    .line 121
    :cond_23
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanISO8601DateIfMatch()Z
    .registers 2

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .registers 34

    move-object/from16 v9, p0

    .line 133
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int v10, v0, v1

    const/4 v11, 0x6

    const/4 v12, 0x3

    const/16 v13, 0xd

    const/4 v14, 0x2

    const/16 v15, 0x39

    const/4 v8, 0x5

    const/16 v16, 0x1

    const/16 v7, 0x30

    const/4 v6, 0x0

    if-nez p1, :cond_b6

    if-le v10, v13, :cond_b6

    .line 136
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 137
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 138
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v14

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 139
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v12

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 140
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 141
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v8

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 143
    iget v13, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v13, v10

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 144
    iget v12, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v12, v10

    sub-int/2addr v12, v14

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v14, 0x2f

    if-ne v0, v14, :cond_b6

    const/16 v0, 0x44

    if-ne v1, v0, :cond_b6

    const/16 v0, 0x61

    if-ne v2, v0, :cond_b6

    const/16 v0, 0x74

    if-ne v3, v0, :cond_b6

    const/16 v0, 0x65

    if-ne v4, v0, :cond_b6

    const/16 v0, 0x28

    if-ne v5, v0, :cond_b6

    if-ne v13, v14, :cond_b6

    const/16 v0, 0x29

    if-ne v12, v0, :cond_b6

    const/4 v0, -0x1

    const/4 v1, 0x6

    :goto_79
    if-ge v1, v10, :cond_90

    .line 149
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_88

    move v0, v1

    goto :goto_8d

    :cond_88
    if-lt v2, v7, :cond_90

    if-le v2, v15, :cond_8d

    goto :goto_90

    :cond_8d
    :goto_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_90
    :goto_90
    const/4 v1, -0x1

    if-ne v0, v1, :cond_94

    return v6

    .line 159
    :cond_94
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    sub-int/2addr v0, v1

    .line 160
    invoke-virtual {v9, v1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 164
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 165
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 167
    iput v8, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v16

    :cond_b6
    const/16 v12, 0x11

    const/16 v13, 0x8

    const/16 v14, 0xc

    const/16 v5, 0xb

    const/16 v4, 0xe

    if-eq v10, v13, :cond_363

    if-eq v10, v4, :cond_363

    if-ne v10, v12, :cond_c8

    goto/16 :goto_363

    .line 243
    :cond_c8
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    if-ge v10, v0, :cond_cd

    return v6

    .line 247
    :cond_cd
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_da

    return v6

    .line 250
    :cond_da
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_e5

    return v6

    .line 254
    :cond_e5
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 255
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 256
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v18, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v27

    .line 257
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v17, 0x3

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 258
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v8

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v29

    .line 259
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v30

    .line 260
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 261
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v31

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v27

    move/from16 v22, v28

    move/from16 v23, v29

    move/from16 v24, v30

    move/from16 v25, v13

    move/from16 v26, v31

    .line 262
    invoke-static/range {v19 .. v26}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_13b

    return v6

    :cond_13b
    move-object/from16 v0, p0

    const/16 v11, 0x2d

    move/from16 v3, v27

    const/16 v11, 0xe

    move/from16 v4, v28

    const/16 v15, 0xb

    move/from16 v5, v29

    const/4 v12, 0x0

    move/from16 v6, v30

    move v7, v13

    const/4 v13, 0x5

    move/from16 v8, v31

    .line 266
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 268
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_195

    const/16 v1, 0x20

    if-ne v0, v1, :cond_166

    if-nez p1, :cond_166

    goto :goto_195

    :cond_166
    const/16 v1, 0x22

    if-eq v0, v1, :cond_170

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_16f

    goto :goto_170

    :cond_16f
    return v12

    .line 274
    :cond_170
    :goto_170
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v15, v12}, Ljava/util/Calendar;->set(II)V

    .line 275
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 276
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 277
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 279
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xa

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 281
    iput v13, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v16

    .line 270
    :cond_195
    :goto_195
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    if-ge v10, v0, :cond_19a

    return v12

    .line 287
    :cond_19a
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v1, 0xd

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v7, 0x3a

    if-eq v0, v7, :cond_1a8

    return v12

    .line 290
    :cond_1a8
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_1b3

    return v12

    .line 294
    :cond_1b3
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v15

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 295
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v23

    .line 296
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v24

    .line 297
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v25

    .line 298
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v1, 0x11

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v22

    .line 299
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v26

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    move/from16 v5, v22

    move/from16 v6, v26

    .line 301
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_1f5

    return v12

    .line 305
    :cond_1f5
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v0, v8

    mul-int/lit8 v0, v0, 0xa

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, v23

    add-int/2addr v0, v1

    .line 306
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, v24

    mul-int/lit8 v1, v1, 0xa

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v25

    add-int/2addr v1, v2

    .line 307
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v22

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v26

    add-int/2addr v2, v3

    .line 308
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 309
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 310
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 312
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x13

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_34f

    .line 314
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    if-ge v10, v0, :cond_238

    return v12

    .line 326
    :cond_238
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    if-lt v0, v8, :cond_34e

    const/16 v1, 0x39

    if-le v0, v1, :cond_24a

    goto/16 :goto_34e

    .line 330
    :cond_24a
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v2, v0

    .line 334
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x15

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v2, v8, :cond_263

    if-gt v2, v1, :cond_263

    mul-int/lit8 v0, v0, 0xa

    .line 336
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x2

    goto :goto_264

    :cond_263
    const/4 v1, 0x1

    :goto_264
    const/4 v2, 0x2

    if-ne v1, v2, :cond_27d

    .line 342
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x16

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v2, v8, :cond_27d

    const/16 v3, 0x39

    if-gt v2, v3, :cond_27d

    mul-int/lit8 v0, v0, 0xa

    .line 344
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x3

    .line 349
    :cond_27d
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v11, v0}, Ljava/util/Calendar;->set(II)V

    .line 352
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x14

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_297

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_294

    goto :goto_297

    :cond_294
    const/4 v6, 0x0

    goto/16 :goto_32d

    .line 354
    :cond_297
    :goto_297
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v2, v8, :cond_34e

    const/16 v3, 0x31

    if-le v2, v3, :cond_2aa

    goto/16 :goto_34e

    .line 359
    :cond_2aa
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v1

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v8, :cond_34e

    const/16 v4, 0x39

    if-le v3, v4, :cond_2bd

    goto/16 :goto_34e

    .line 364
    :cond_2bd
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x14

    add-int/2addr v4, v1

    const/4 v5, 0x3

    add-int/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_2e7

    .line 366
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x14

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_2d8

    return v12

    .line 371
    :cond_2d8
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x14

    add-int/2addr v4, v1

    add-int/2addr v4, v13

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_2e5

    return v12

    :cond_2e5
    const/4 v11, 0x6

    goto :goto_2fa

    :cond_2e7
    if-ne v4, v8, :cond_2f9

    .line 377
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x14

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_2f7

    return v12

    :cond_2f7
    const/4 v11, 0x5

    goto :goto_2fa

    :cond_2f9
    const/4 v11, 0x3

    .line 386
    :goto_2fa
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v4, v2

    mul-int/lit8 v2, v2, 0xa

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v4, v3

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0xe10

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_30e

    neg-int v2, v2

    .line 391
    :cond_30e
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eq v0, v2, :cond_32c

    .line 392
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 393
    array-length v2, v0

    if-lez v2, :cond_32c

    .line 394
    aget-object v0, v0, v12

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 395
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_32c
    move v6, v11

    .line 401
    :goto_32d
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v6

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_340

    const/16 v2, 0x22

    if-eq v0, v2, :cond_340

    return v12

    .line 405
    :cond_340
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v1

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 407
    iput v13, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v16

    :cond_34e
    :goto_34e
    return v12

    .line 318
    :cond_34f
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 320
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x13

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 322
    iput v13, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v16

    :cond_363
    :goto_363
    const/4 v7, 0x5

    const/16 v8, 0x30

    const/16 v11, 0xe

    const/4 v12, 0x0

    const/16 v15, 0xb

    if-eqz p1, :cond_36e

    return v12

    .line 177
    :cond_36e
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 178
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 179
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 180
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v4, 0x3

    add-int/2addr v0, v4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 181
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 182
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 183
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v17, 0x6

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v17

    .line 184
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v17

    move/from16 v30, v18

    .line 186
    invoke-static/range {v23 .. v30}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_3c4

    return v12

    :cond_3c4
    move-object/from16 v0, p0

    move/from16 v7, v17

    move/from16 v8, v18

    .line 190
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    if-eq v10, v13, :cond_477

    .line 194
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 195
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 196
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 197
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v15

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v17

    .line 198
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    .line 199
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v1, 0xd

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v19

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v13

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    .line 201
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_40f

    return v12

    :cond_40f
    const/16 v0, 0x11

    if-ne v10, v0, :cond_452

    .line 206
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 207
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 208
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v0, v3, :cond_451

    const/16 v4, 0x39

    if-le v0, v4, :cond_433

    goto :goto_451

    :cond_433
    if-lt v1, v3, :cond_451

    if-le v1, v4, :cond_438

    goto :goto_451

    :cond_438
    if-lt v2, v3, :cond_451

    if-le v2, v4, :cond_43d

    goto :goto_451

    .line 219
    :cond_43d
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v3, v0

    mul-int/lit8 v0, v0, 0x64

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v3, v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    move v6, v0

    goto :goto_453

    :cond_451
    :goto_451
    return v12

    :cond_452
    const/4 v6, 0x0

    .line 224
    :goto_453
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v0, v7

    mul-int/lit8 v0, v0, 0xa

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, v8

    add-int/2addr v0, v1

    .line 225
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, v13

    mul-int/lit8 v1, v1, 0xa

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v17

    add-int/2addr v1, v2

    .line 226
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v18

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v19

    add-int/2addr v2, v3

    move v12, v6

    move v6, v0

    goto :goto_47a

    :cond_477
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 234
    :goto_47a
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v15, v6}, Ljava/util/Calendar;->set(II)V

    .line 235
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 236
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 237
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 239
    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v16
.end method

.method public final stringVal()Ljava/lang/String;
    .registers 5

    .line 96
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_f

    .line 98
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final subString(II)Ljava/lang/String;
    .registers 7

    .line 105
    new-array v0, p2, [C

    move v1, p1

    :goto_3
    add-int v2, p1, p2

    if-ge v1, v2, :cond_14

    sub-int v2, v1, p1

    .line 107
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 109
    :cond_14
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method
