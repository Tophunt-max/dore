###### Class io.dcloud.common.util.net.RequestData (io.dcloud.common.util.net.RequestData)
.class public Lio/dcloud/common/util/net/RequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/net/RequestData$HttpOption;
    }
.end annotation


# static fields
.field public static final URL_HTTP:Ljava/lang/String; = "http"

.field public static final URL_HTTPS:Ljava/lang/String; = "https"


# instance fields
.field public URL_METHOD:Ljava/lang/String;

.field public isRedirect:Z

.field private mBody:Ljava/lang/String;

.field public mChunkSize:I

.field private mContentLength:J

.field private mHeads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpRequest:Ljava/net/HttpURLConnection;

.field private mIp:Ljava/lang/String;

.field private mNameValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOverrideMimeType:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mReqmethod:Ljava/lang/String;

.field public mTimeout:I

.field private mUrl:Ljava/lang/String;

.field public unTrustedCAType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http"

    .line 2
    iput-object v0, p0, Lio/dcloud/common/util/net/RequestData;->URL_METHOD:Ljava/lang/String;

    const-string v0, "accept"

    .line 6
    iput-object v0, p0, Lio/dcloud/common/util/net/RequestData;->unTrustedCAType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lio/dcloud/common/util/net/RequestData;->isRedirect:Z

    const v0, 0x1d4c0

    .line 31
    iput v0, p0, Lio/dcloud/common/util/net/RequestData;->mTimeout:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mOverrideMimeType:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lio/dcloud/common/util/net/RequestData;->mUrl:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lio/dcloud/common/util/net/RequestData;->mReqmethod:Ljava/lang/String;

    if-eqz p1, :cond_26

    const-string p2, "https"

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 48
    iput-object p2, p0, Lio/dcloud/common/util/net/RequestData;->URL_METHOD:Ljava/lang/String;

    .line 51
    :cond_26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/common/util/net/RequestData;->mNameValue:Ljava/util/HashMap;

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/common/util/net/RequestData;->mHeads:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addBody(Ljava/net/HttpURLConnection;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 7
    :try_start_a
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 8
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2e

    .line 11
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mBody:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public addBody(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    iput-object p1, p0, Lio/dcloud/common/util/net/RequestData;->mBody:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public addHeader(Ljava/net/HttpURLConnection;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHeads:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lio/dcloud/common/util/net/RequestData;->mHeads:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_25
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHeads:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHeads:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method public addParemeter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mNameValue:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mNameValue:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method public clearData()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public containHeader(Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_2c

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHeads:Ljava/util/HashMap;

    if-eqz v0, :cond_2c

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2
    iget-object v1, p0, Lio/dcloud/common/util/net/RequestData;->mHeads:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_2c
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHeads:Ljava/util/HashMap;

    if-eqz v0, :cond_35

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_35
    const/4 p1, 0x0

    return p1
.end method

.method public getHttpRequest()Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_72

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mReqmethod:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/net/RequestData$HttpOption;->valueOf(Ljava/lang/String;)Lio/dcloud/common/util/net/RequestData$HttpOption;

    move-result-object v0

    .line 4
    :try_start_e
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lio/dcloud/common/util/net/RequestData;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    .line 7
    sget-object v1, Lio/dcloud/common/util/net/RequestData$1;->$SwitchMap$io$dcloud$common$util$net$RequestData$HttpOption:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_76

    .line 28
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    goto :goto_5b

    .line 29
    :pswitch_2b
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    const-string v1, "OPTIONS"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_6a

    .line 30
    :pswitch_33
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    const-string v1, "TRACE"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_6a

    .line 31
    :pswitch_3b
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_6a

    .line 32
    :pswitch_43
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_6a

    .line 33
    :pswitch_4b
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_6a

    .line 34
    :pswitch_53
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_6a

    :goto_5b
    const-string v1, "GET"

    .line 53
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_60} :catch_70
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_60} :catch_66
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_60} :catch_61

    goto :goto_6a

    :catch_61
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6a

    :catch_66
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 67
    :goto_6a
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lio/dcloud/common/util/net/RequestData;->addHeader(Ljava/net/HttpURLConnection;)V

    goto :goto_72

    :catch_70
    move-exception v0

    .line 68
    throw v0

    .line 76
    :cond_72
    :goto_72
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mHttpRequest:Ljava/net/HttpURLConnection;

    return-object v0

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
    .end packed-switch
.end method

.method public getIP()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getReqmethod()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mReqmethod:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/RequestData;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setReqmethod(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/net/RequestData;->mReqmethod:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/net/RequestData;->mUrl:Ljava/lang/String;

    return-void
.end method

###### Class io.dcloud.common.util.net.RequestData.AnonymousClass1 (io.dcloud.common.util.net.RequestData$1)
.class synthetic Lio/dcloud/common/util/net/RequestData$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/net/RequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$dcloud$common$util$net$RequestData$HttpOption:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/util/net/RequestData$HttpOption;->values()[Lio/dcloud/common/util/net/RequestData$HttpOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/common/util/net/RequestData$1;->$SwitchMap$io$dcloud$common$util$net$RequestData$HttpOption:[I

    :try_start_9
    sget-object v1, Lio/dcloud/common/util/net/RequestData$HttpOption;->POST:Lio/dcloud/common/util/net/RequestData$HttpOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/common/util/net/RequestData$1;->$SwitchMap$io$dcloud$common$util$net$RequestData$HttpOption:[I

    sget-object v1, Lio/dcloud/common/util/net/RequestData$HttpOption;->PUT:Lio/dcloud/common/util/net/RequestData$HttpOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/common/util/net/RequestData$1;->$SwitchMap$io$dcloud$common$util$net$RequestData$HttpOption:[I

    sget-object v1, Lio/dcloud/common/util/net/RequestData$HttpOption;->DELETE:Lio/dcloud/common/util/net/RequestData$HttpOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/dcloud/common/util/net/RequestData$1;->$SwitchMap$io$dcloud$common$util$net$RequestData$HttpOption:[I

    sget-object v1, Lio/dcloud/common/util/net/RequestData$HttpOption;->HEAD:Lio/dcloud/common/util/net/RequestData$HttpOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/dcloud/common/util/net/RequestData$1;->$SwitchMap$io$dcloud$common$util$net$RequestData$HttpOption:[I

    sget-object v1, Lio/dcloud/common/util/net/RequestData$HttpOption;->TRACE:Lio/dcloud/common/util/net/RequestData$HttpOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/dcloud/common/util/net/RequestData$1;->$SwitchMap$io$dcloud$common$util$net$RequestData$HttpOption:[I

    sget-object v1, Lio/dcloud/common/util/net/RequestData$HttpOption;->OPTIONS:Lio/dcloud/common/util/net/RequestData$HttpOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lio/dcloud/common/util/net/RequestData$1;->$SwitchMap$io$dcloud$common$util$net$RequestData$HttpOption:[I

    sget-object v1, Lio/dcloud/common/util/net/RequestData$HttpOption;->GET:Lio/dcloud/common/util/net/RequestData$HttpOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method

###### Class io.dcloud.common.util.net.RequestData.HttpOption (io.dcloud.common.util.net.RequestData$HttpOption)
.class final enum Lio/dcloud/common/util/net/RequestData$HttpOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/net/RequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HttpOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/common/util/net/RequestData$HttpOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum DELETE:Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum GET:Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum HEAD:Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum OPTIONS:Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum POST:Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum PUT:Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum TRACE:Lio/dcloud/common/util/net/RequestData$HttpOption;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/common/util/net/RequestData$HttpOption;->GET:Lio/dcloud/common/util/net/RequestData$HttpOption;

    new-instance v1, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/common/util/net/RequestData$HttpOption;->POST:Lio/dcloud/common/util/net/RequestData$HttpOption;

    new-instance v3, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/common/util/net/RequestData$HttpOption;->PUT:Lio/dcloud/common/util/net/RequestData$HttpOption;

    new-instance v5, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/common/util/net/RequestData$HttpOption;->DELETE:Lio/dcloud/common/util/net/RequestData$HttpOption;

    new-instance v7, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v9, "HEAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/common/util/net/RequestData$HttpOption;->HEAD:Lio/dcloud/common/util/net/RequestData$HttpOption;

    new-instance v9, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v11, "TRACE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/dcloud/common/util/net/RequestData$HttpOption;->TRACE:Lio/dcloud/common/util/net/RequestData$HttpOption;

    new-instance v11, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v13, "OPTIONS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/dcloud/common/util/net/RequestData$HttpOption;->OPTIONS:Lio/dcloud/common/util/net/RequestData$HttpOption;

    const/4 v13, 0x7

    new-array v13, v13, [Lio/dcloud/common/util/net/RequestData$HttpOption;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 2
    sput-object v13, Lio/dcloud/common/util/net/RequestData$HttpOption;->$VALUES:[Lio/dcloud/common/util/net/RequestData$HttpOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/common/util/net/RequestData$HttpOption;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/common/util/net/RequestData$HttpOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/util/net/RequestData$HttpOption;

    return-object p0
.end method

.method public static values()[Lio/dcloud/common/util/net/RequestData$HttpOption;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/net/RequestData$HttpOption;->$VALUES:[Lio/dcloud/common/util/net/RequestData$HttpOption;

    invoke-virtual {v0}, [Lio/dcloud/common/util/net/RequestData$HttpOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/util/net/RequestData$HttpOption;

    return-object v0
.end method
