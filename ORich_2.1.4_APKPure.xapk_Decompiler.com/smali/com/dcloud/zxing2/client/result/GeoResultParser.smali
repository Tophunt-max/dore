###### Class com.dcloud.zxing2.client.result.GeoResultParser (com.dcloud.zxing2.client.result.GeoResultParser)
.class public final Lcom/dcloud/zxing2/client/result/GeoResultParser;
.super Lcom/dcloud/zxing2/client/result/ResultParser;
.source "SourceFile"


# static fields
.field private static final GEO_URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dcloud/zxing2/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/GeoParsedResult;
    .registers 14

    .line 2
    invoke-static {p1}, Lcom/dcloud/zxing2/client/result/ResultParser;->getMassagedText(Lcom/dcloud/zxing2/Result;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/dcloud/zxing2/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x1

    .line 14
    :try_start_18
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x4056800000000000L    # 90.0

    cmpl-double v0, v3, v5

    if-gtz v0, :cond_6e

    const-wide v5, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_33

    goto :goto_6e

    :cond_33
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v7, 0x4066800000000000L    # 180.0

    cmpl-double v0, v5, v7

    if-gtz v0, :cond_6e

    const-wide v7, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_4f

    goto :goto_6e

    :cond_4f
    const/4 v0, 0x3

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v7, 0x0

    if-nez v2, :cond_59

    goto :goto_67

    .line 25
    :cond_59
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_61} :catch_6e

    cmpg-double p1, v10, v7

    if-gez p1, :cond_66

    return-object v1

    :cond_66
    move-wide v7, v10

    .line 33
    :goto_67
    new-instance p1, Lcom/dcloud/zxing2/client/result/GeoParsedResult;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/dcloud/zxing2/client/result/GeoParsedResult;-><init>(DDDLjava/lang/String;)V

    return-object p1

    :catch_6e
    :cond_6e
    :goto_6e
    return-object v1
.end method

.method public bridge synthetic parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ParsedResult;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/client/result/GeoResultParser;->parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/GeoParsedResult;

    move-result-object p1

    return-object p1
.end method
