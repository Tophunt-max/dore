###### Class com.dcloud.zxing2.client.result.WifiResultParser (com.dcloud.zxing2.client.result.WifiResultParser)
.class public final Lcom/dcloud/zxing2/client/result/WifiResultParser;
.super Lcom/dcloud/zxing2/client/result/ResultParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ParsedResult;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/client/result/WifiResultParser;->parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/WifiParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/WifiParsedResult;
    .registers 8

    .line 2
    invoke-static {p1}, Lcom/dcloud/zxing2/client/result/ResultParser;->getMassagedText(Lcom/dcloud/zxing2/Result;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    const-string v0, "S:"

    const/16 v2, 0x3b

    const/4 v3, 0x0

    .line 6
    invoke-static {v0, p1, v2, v3}, Lcom/dcloud/zxing2/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_40

    :cond_20
    const-string v1, "P:"

    .line 10
    invoke-static {v1, p1, v2, v3}, Lcom/dcloud/zxing2/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    const-string v4, "T:"

    .line 11
    invoke-static {v4, p1, v2, v3}, Lcom/dcloud/zxing2/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_30

    const-string v4, "nopass"

    :cond_30
    const-string v5, "H:"

    .line 15
    invoke-static {v5, p1, v2, v3}, Lcom/dcloud/zxing2/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 16
    new-instance v2, Lcom/dcloud/zxing2/client/result/WifiParsedResult;

    invoke-direct {v2, v4, v0, v1, p1}, Lcom/dcloud/zxing2/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    :cond_40
    :goto_40
    return-object v1
.end method
