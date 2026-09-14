###### Class com.taobao.weex.http.Options (com.taobao.weex.http.Options)
.class Lcom/taobao/weex/http/Options;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/http/Options$Builder;,
        Lcom/taobao/weex/http/Options$Type;
    }
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFirstIpv4:Z

.field private method:Ljava/lang/String;

.field private sslVerify:Z

.field private timeout:I

.field private tlsConfig:Lcom/alibaba/fastjson/JSONObject;

.field private type:Lcom/taobao/weex/http/Options$Type;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/http/Options$Type;",
            "I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->text:Lcom/taobao/weex/http/Options$Type;

    iput-object v0, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    const v0, 0xea60

    .line 37
    iput v0, p0, Lcom/taobao/weex/http/Options;->timeout:I

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/taobao/weex/http/Options;->sslVerify:Z

    .line 39
    iput-boolean v1, p0, Lcom/taobao/weex/http/Options;->isFirstIpv4:Z

    .line 47
    iput-object p1, p0, Lcom/taobao/weex/http/Options;->method:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/taobao/weex/http/Options;->url:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/taobao/weex/http/Options;->headers:Ljava/util/Map;

    .line 50
    iput-object p4, p0, Lcom/taobao/weex/http/Options;->body:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    if-nez p6, :cond_20

    const p6, 0xea60

    .line 55
    :cond_20
    iput p6, p0, Lcom/taobao/weex/http/Options;->timeout:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;IZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/http/Options$Type;",
            "IZZ)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->text:Lcom/taobao/weex/http/Options$Type;

    iput-object v0, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    const v0, 0xea60

    .line 37
    iput v0, p0, Lcom/taobao/weex/http/Options;->timeout:I

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/taobao/weex/http/Options;->sslVerify:Z

    .line 39
    iput-boolean v1, p0, Lcom/taobao/weex/http/Options;->isFirstIpv4:Z

    .line 66
    iput-object p1, p0, Lcom/taobao/weex/http/Options;->method:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/taobao/weex/http/Options;->url:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/taobao/weex/http/Options;->headers:Ljava/util/Map;

    .line 69
    iput-object p4, p0, Lcom/taobao/weex/http/Options;->body:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    if-nez p6, :cond_20

    const p6, 0xea60

    .line 74
    :cond_20
    iput p6, p0, Lcom/taobao/weex/http/Options;->timeout:I

    .line 75
    iput-boolean p7, p0, Lcom/taobao/weex/http/Options;->sslVerify:Z

    .line 76
    iput-boolean p8, p0, Lcom/taobao/weex/http/Options;->isFirstIpv4:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;IZZLcom/taobao/weex/http/Options$1;)V
    .registers 10

    .line 30
    invoke-direct/range {p0 .. p8}, Lcom/taobao/weex/http/Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;IZZ)V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getSslVerify()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/taobao/weex/http/Options;->sslVerify:Z

    return v0
.end method

.method public getTimeout()I
    .registers 2

    .line 99
    iget v0, p0, Lcom/taobao/weex/http/Options;->timeout:I

    return v0
.end method

.method public getTlsConfig()Lcom/alibaba/fastjson/JSONObject;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->tlsConfig:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getType()Lcom/taobao/weex/http/Options$Type;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstIpv4()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Lcom/taobao/weex/http/Options;->isFirstIpv4:Z

    return v0
.end method

.method public setTlsConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/taobao/weex/http/Options;->tlsConfig:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

###### Class com.taobao.weex.http.Options.AnonymousClass1 (com.taobao.weex.http.Options$1)
.class synthetic Lcom/taobao/weex/http/Options$1;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/http/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.taobao.weex.http.Options.Builder (com.taobao.weex.http.Options$Builder)
.class public Lcom/taobao/weex/http/Options$Builder;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/http/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private androidTLSConfig:Lcom/alibaba/fastjson/JSONObject;

.field private body:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFirstIpv4:Z

.field private method:Ljava/lang/String;

.field private sslVerify:Z

.field private timeout:I

.field private type:Lcom/taobao/weex/http/Options$Type;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/http/Options$Builder;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createOptions()Lcom/taobao/weex/http/Options;
    .registers 12

    .line 197
    new-instance v10, Lcom/taobao/weex/http/Options;

    iget-object v1, p0, Lcom/taobao/weex/http/Options$Builder;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/http/Options$Builder;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/http/Options$Builder;->headers:Ljava/util/Map;

    iget-object v4, p0, Lcom/taobao/weex/http/Options$Builder;->body:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/weex/http/Options$Builder;->type:Lcom/taobao/weex/http/Options$Type;

    iget v6, p0, Lcom/taobao/weex/http/Options$Builder;->timeout:I

    iget-boolean v7, p0, Lcom/taobao/weex/http/Options$Builder;->sslVerify:Z

    iget-boolean v8, p0, Lcom/taobao/weex/http/Options$Builder;->isFirstIpv4:Z

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/taobao/weex/http/Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;IZZLcom/taobao/weex/http/Options$1;)V

    .line 198
    iget-object v0, p0, Lcom/taobao/weex/http/Options$Builder;->androidTLSConfig:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v10, v0}, Lcom/taobao/weex/http/Options;->setTlsConfig(Lcom/alibaba/fastjson/JSONObject;)V

    return-object v10
.end method

.method public putHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/taobao/weex/http/Options$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAndroidTlsConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->androidTLSConfig:Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->body:Ljava/lang/String;

    return-object p0
.end method

.method public setFirstIpv4(Z)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 163
    iput-boolean p1, p0, Lcom/taobao/weex/http/Options$Builder;->isFirstIpv4:Z

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public setSslVerify(Z)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 158
    iput-boolean p1, p0, Lcom/taobao/weex/http/Options$Builder;->sslVerify:Z

    return-object p0
.end method

.method public setTimeout(I)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 192
    iput p1, p0, Lcom/taobao/weex/http/Options$Builder;->timeout:I

    return-object p0
.end method

.method public setType(Lcom/taobao/weex/http/Options$Type;)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->type:Lcom/taobao/weex/http/Options$Type;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;
    .registers 3

    .line 174
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    invoke-virtual {v0}, Lcom/taobao/weex/http/Options$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 175
    sget-object p1, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->type:Lcom/taobao/weex/http/Options$Type;

    goto :goto_37

    .line 176
    :cond_11
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    invoke-virtual {v0}, Lcom/taobao/weex/http/Options$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 177
    sget-object p1, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->type:Lcom/taobao/weex/http/Options$Type;

    goto :goto_37

    .line 178
    :cond_22
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->base64:Lcom/taobao/weex/http/Options$Type;

    invoke-virtual {v0}, Lcom/taobao/weex/http/Options$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 179
    sget-object p1, Lcom/taobao/weex/http/Options$Type;->base64:Lcom/taobao/weex/http/Options$Type;

    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->type:Lcom/taobao/weex/http/Options$Type;

    goto :goto_37

    .line 181
    :cond_33
    sget-object p1, Lcom/taobao/weex/http/Options$Type;->text:Lcom/taobao/weex/http/Options$Type;

    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->type:Lcom/taobao/weex/http/Options$Type;

    :goto_37
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

###### Class com.taobao.weex.http.Options.Type (com.taobao.weex.http.Options$Type)
.class public final enum Lcom/taobao/weex/http/Options$Type;
.super Ljava/lang/Enum;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/http/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/http/Options$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/http/Options$Type;

.field public static final enum base64:Lcom/taobao/weex/http/Options$Type;

.field public static final enum json:Lcom/taobao/weex/http/Options$Type;

.field public static final enum jsonp:Lcom/taobao/weex/http/Options$Type;

.field public static final enum text:Lcom/taobao/weex/http/Options$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 116
    new-instance v0, Lcom/taobao/weex/http/Options$Type;

    const-string v1, "json"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/http/Options$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    new-instance v1, Lcom/taobao/weex/http/Options$Type;

    const-string v3, "text"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/http/Options$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/http/Options$Type;->text:Lcom/taobao/weex/http/Options$Type;

    new-instance v3, Lcom/taobao/weex/http/Options$Type;

    const-string v5, "jsonp"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/http/Options$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    new-instance v5, Lcom/taobao/weex/http/Options$Type;

    const-string v7, "base64"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/taobao/weex/http/Options$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/taobao/weex/http/Options$Type;->base64:Lcom/taobao/weex/http/Options$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/taobao/weex/http/Options$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 115
    sput-object v7, Lcom/taobao/weex/http/Options$Type;->$VALUES:[Lcom/taobao/weex/http/Options$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Type;
    .registers 2

    .line 115
    const-class v0, Lcom/taobao/weex/http/Options$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/http/Options$Type;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/http/Options$Type;
    .registers 1

    .line 115
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->$VALUES:[Lcom/taobao/weex/http/Options$Type;

    invoke-virtual {v0}, [Lcom/taobao/weex/http/Options$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/http/Options$Type;

    return-object v0
.end method
