###### Class com.dcloud.zxing2.client.result.SMSParsedResult (com.dcloud.zxing2.client.result.SMSParsedResult)
.class public final Lcom/dcloud/zxing2/client/result/SMSParsedResult;
.super Lcom/dcloud/zxing2/client/result/ParsedResult;
.source "SourceFile"


# instance fields
.field private final body:Ljava/lang/String;

.field private final numbers:[Ljava/lang/String;

.field private final subject:Ljava/lang/String;

.field private final vias:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/client/result/ParsedResultType;->SMS:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/client/result/ParsedResult;-><init>(Lcom/dcloud/zxing2/client/result/ParsedResultType;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2
    iput-object v1, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    .line 3
    iput-object p1, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->body:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 6
    sget-object v0, Lcom/dcloud/zxing2/client/result/ParsedResultType;->SMS:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/client/result/ParsedResult;-><init>(Lcom/dcloud/zxing2/client/result/ParsedResultType;)V

    .line 7
    iput-object p1, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dcloud/zxing2/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dcloud/zxing2/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    iget-object v1, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->body:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dcloud/zxing2/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumbers()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getSMSURI()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms:"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4
    :goto_e
    iget-object v5, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3a

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    goto :goto_1c

    :cond_17
    const/16 v5, 0x2c

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :goto_1c
    iget-object v5, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v5, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    if-eqz v5, :cond_37

    aget-object v5, v5, v3

    if-eqz v5, :cond_37

    const-string v5, ";via="

    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v5, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 16
    :cond_3a
    iget-object v3, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->body:Ljava/lang/String;

    if-eqz v3, :cond_40

    const/4 v3, 0x1

    goto :goto_41

    :cond_40
    const/4 v3, 0x0

    .line 17
    :goto_41
    iget-object v4, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    if-eqz v4, :cond_46

    const/4 v1, 0x1

    :cond_46
    if-nez v3, :cond_4a

    if-eqz v1, :cond_6e

    :cond_4a
    const/16 v2, 0x3f

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5b

    const-string v2, "body="

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->body:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    if-eqz v1, :cond_6e

    if-eqz v3, :cond_64

    const/16 v1, 0x26

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_64
    const-string v1, "subject="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getVias()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    return-object v0
.end method
