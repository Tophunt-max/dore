###### Class com.taobao.weex.http.WXStreamModule (com.taobao.weex.http.WXStreamModule)
.class public Lcom/taobao/weex/http/WXStreamModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXStreamModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;,
        Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;
    }
.end annotation


# static fields
.field static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_TEXT:Ljava/lang/String; = "statusText"

.field public static certMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/http/CertDTO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "charset=([a-z0-9-]+)"

    .line 58
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/http/WXStreamModule;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/taobao/weex/http/WXStreamModule;-><init>(Lcom/taobao/weex/adapter/IWXHttpAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/adapter/IWXHttpAdapter;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule;->mAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    return-void
.end method

.method private extractHeaders(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/http/Options$Builder;)V
    .registers 8

    .line 337
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/http/WXHttpUtil;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user-agent"

    if-eqz p1, :cond_37

    .line 339
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 340
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 341
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 344
    :cond_2f
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/taobao/weex/http/Options$Builder;->putHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    goto :goto_18

    .line 347
    :cond_37
    invoke-virtual {p2, v1, v0}, Lcom/taobao/weex/http/Options$Builder;->putHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    return-void
.end method

.method static getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1d

    if-nez p1, :cond_5

    goto :goto_1d

    .line 305
    :cond_5
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 306
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 308
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method static readAsString([BLjava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_18

    .line 317
    sget-object v0, Lcom/taobao/weex/http/WXStreamModule;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 319
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_18
    const-string p1, "utf-8"

    .line 323
    :goto_1a
    :try_start_1a
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->base64:Lcom/taobao/weex/http/Options$Type;

    if-ne p2, v0, :cond_24

    const/4 p1, 0x2

    .line 324
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 326
    :cond_24
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_29} :catch_2a

    return-object p2

    :catch_2a
    move-exception p1

    const-string p2, ""

    .line 329
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private sendRequest(Lcom/taobao/weex/http/Options;Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 352
    new-instance v0, Lcom/taobao/weex/common/WXRequest;

    invoke-direct {v0}, Lcom/taobao/weex/common/WXRequest;-><init>()V

    .line 353
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    .line 354
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "request"

    invoke-interface {v1, p5, v3, v2}, Lcom/taobao/weex/adapter/URIAdapter;->rewrite(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, v0, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getBody()Ljava/lang/String;

    move-result-object p5

    iput-object p5, v0, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getTimeout()I

    move-result p5

    iput p5, v0, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    .line 357
    iput-object p4, v0, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getSslVerify()Z

    move-result p4

    iput-boolean p4, v0, Lcom/taobao/weex/common/WXRequest;->sslVerify:Z

    .line 359
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->isFirstIpv4()Z

    move-result p4

    iput-boolean p4, v0, Lcom/taobao/weex/common/WXRequest;->isFirstIpv4:Z

    .line 360
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getTlsConfig()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p4

    iput-object p4, v0, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    .line 362
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getHeaders()Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_61

    .line 363
    iget-object p4, v0, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    if-nez p4, :cond_58

    .line 364
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getHeaders()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    goto :goto_61

    .line 366
    :cond_58
    iget-object p4, v0, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 370
    :cond_61
    :goto_61
    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule;->mAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    if-nez p1, :cond_6d

    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object p1

    :cond_6d
    if-eqz p1, :cond_79

    .line 372
    new-instance p4, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;

    const/4 p5, 0x0

    invoke-direct {p4, p2, p3, p5}, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;-><init>(Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/WXStreamModule$1;)V

    invoke-interface {p1, v0, p4}, Lcom/taobao/weex/adapter/IWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    goto :goto_80

    :cond_79
    const-string p1, "WXStreamModule"

    const-string p2, "No HttpAdapter found,request failed."

    .line 374
    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_80
    return-void
.end method


# virtual methods
.method public configMTLS(Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_61

    .line 155
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_61

    .line 160
    :cond_c
    sget-object v0, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 164
    :goto_13
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 166
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "host"

    .line 168
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_56

    .line 172
    :cond_26
    new-instance v4, Lcom/taobao/weex/http/CertDTO;

    invoke-direct {v4}, Lcom/taobao/weex/http/CertDTO;-><init>()V

    .line 173
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    iput-object v3, v4, Lcom/taobao/weex/http/CertDTO;->host:Ljava/lang/String;

    const-string v5, "client"

    .line 175
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/http/CertDTO;->client:Ljava/lang/String;

    const-string v5, "clientPassword"

    .line 176
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/http/CertDTO;->clientPassword:Ljava/lang/String;

    const-string v5, "server"

    .line 177
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    new-array v5, v0, [Ljava/lang/String;

    .line 179
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 180
    iput-object v2, v4, Lcom/taobao/weex/http/CertDTO;->server:[Ljava/lang/String;

    .line 182
    sget-object v2, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 189
    :cond_59
    invoke-static {}, Lcom/taobao/weex/http/CertJSResponse;->obtainSuccess()Lcom/taobao/weex/http/CertJSResponse;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    :cond_61
    :goto_61
    const/4 p1, -0x1

    .line 156
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/taobao/weex/http/CertJSResponse;->obtainFail(ILjava/lang/String;)Lcom/taobao/weex/http/CertJSResponse;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 11
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/http/WXStreamModule;->fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const-string v3, "url"

    if-eqz v0, :cond_13

    .line 195
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    goto :goto_13

    :cond_11
    const/4 v4, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v4, 0x1

    :goto_14
    if-eqz v4, :cond_31

    if-eqz v1, :cond_30

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 199
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ok"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "statusText"

    const-string v3, "ERR_INVALID_REQUEST"

    .line 200
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-interface {v1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_30
    return-void

    :cond_31
    const-string v2, "method"

    .line 205
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "headers"

    .line 207
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string v5, "body"

    .line 208
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "type"

    .line 209
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "timeout"

    .line 210
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    const-string v9, "tls"

    .line 211
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    const-string v10, "sslVerify"

    .line 212
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "firstIpv4"

    .line 213
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    .line 215
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v11

    move-object/from16 v12, p4

    invoke-virtual {v11, v12}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v11

    if-eqz v11, :cond_86

    .line 217
    invoke-virtual {v11}, Lcom/taobao/weex/WXSDKInstance;->getStreamNetworkHandler()Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

    move-result-object v13

    if-eqz v13, :cond_86

    .line 218
    invoke-virtual {v11}, Lcom/taobao/weex/WXSDKInstance;->getStreamNetworkHandler()Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

    move-result-object v11

    invoke-interface {v11, v3}, Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;->fetchLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 219
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_86

    move-object v3, v11

    :cond_86
    if-eqz v2, :cond_8c

    .line 225
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 226
    :cond_8c
    new-instance v11, Lcom/taobao/weex/http/Options$Builder;

    invoke-direct {v11}, Lcom/taobao/weex/http/Options$Builder;-><init>()V

    const-string v13, "GET"

    .line 227
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c2

    const-string v14, "POST"

    .line 228
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c2

    const-string v14, "PUT"

    .line 229
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c2

    const-string v14, "DELETE"

    .line 230
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c2

    const-string v14, "HEAD"

    .line 231
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c2

    const-string v14, "PATCH"

    .line 232
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c2

    move-object v2, v13

    .line 227
    :cond_c2
    invoke-virtual {v11, v2}, Lcom/taobao/weex/http/Options$Builder;->setMethod(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v2

    .line 233
    invoke-virtual {v2, v3}, Lcom/taobao/weex/http/Options$Builder;->setUrl(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v2

    .line 234
    invoke-virtual {v2, v5}, Lcom/taobao/weex/http/Options$Builder;->setBody(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v2

    .line 235
    invoke-virtual {v2, v7}, Lcom/taobao/weex/http/Options$Builder;->setType(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v2

    .line 236
    invoke-virtual {v2, v8}, Lcom/taobao/weex/http/Options$Builder;->setTimeout(I)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v2

    .line 237
    invoke-virtual {v2, v10}, Lcom/taobao/weex/http/Options$Builder;->setSslVerify(Z)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v2

    .line 238
    invoke-virtual {v2, v9}, Lcom/taobao/weex/http/Options$Builder;->setAndroidTlsConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v2

    .line 239
    invoke-virtual {v2, v0}, Lcom/taobao/weex/http/Options$Builder;->setFirstIpv4(Z)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 241
    invoke-direct {p0, v4, v0}, Lcom/taobao/weex/http/WXStreamModule;->extractHeaders(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/http/Options$Builder;)V

    .line 242
    invoke-virtual {v0}, Lcom/taobao/weex/http/Options$Builder;->createOptions()Lcom/taobao/weex/http/Options;

    move-result-object v2

    .line 243
    new-instance v3, Lcom/taobao/weex/http/WXStreamModule$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/taobao/weex/http/WXStreamModule$2;-><init>(Lcom/taobao/weex/http/WXStreamModule;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/Options;)V

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/http/WXStreamModule;->sendRequest(Lcom/taobao/weex/http/Options;Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method parseData(Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/fastjson/JSONException;
        }
    .end annotation

    .line 282
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    if-ne p2, v0, :cond_9

    .line 283
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 284
    :cond_9
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    if-ne p2, v0, :cond_3f

    if-eqz p1, :cond_3a

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_3a

    :cond_16
    const-string p2, "("

    .line 288
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    const-string v0, ")"

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz p2, :cond_34

    if-ge p2, v0, :cond_34

    if-gtz v0, :cond_2b

    goto :goto_34

    .line 294
    :cond_2b
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 291
    :cond_34
    :goto_34
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    return-object p1

    .line 286
    :cond_3a
    :goto_3a
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :cond_3f
    return-object p1
.end method

.method public sendHttp(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .registers 13
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "method"

    .line 78
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 79
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "header"

    .line 80
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "body"

    .line 81
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "timeout"

    .line 82
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    const-string v5, "sslVerify"

    .line 83
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "firstIpv4"

    .line 84
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "tls"

    .line 85
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz v0, :cond_36

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_36
    new-instance v7, Lcom/taobao/weex/http/Options$Builder;

    invoke-direct {v7}, Lcom/taobao/weex/http/Options$Builder;-><init>()V

    const-string v8, "GET"

    .line 89
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6c

    const-string v9, "POST"

    .line 90
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6c

    const-string v9, "PUT"

    .line 91
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6c

    const-string v9, "DELETE"

    .line 92
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6c

    const-string v9, "HEAD"

    .line 93
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6c

    const-string v9, "PATCH"

    .line 94
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6c

    move-object v0, v8

    .line 89
    :cond_6c
    invoke-virtual {v7, v0}, Lcom/taobao/weex/http/Options$Builder;->setMethod(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v1}, Lcom/taobao/weex/http/Options$Builder;->setUrl(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v3}, Lcom/taobao/weex/http/Options$Builder;->setBody(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v4}, Lcom/taobao/weex/http/Options$Builder;->setTimeout(I)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v5}, Lcom/taobao/weex/http/Options$Builder;->setSslVerify(Z)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Lcom/taobao/weex/http/Options$Builder;->setAndroidTlsConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1, v6}, Lcom/taobao/weex/http/Options$Builder;->setFirstIpv4(Z)Lcom/taobao/weex/http/Options$Builder;

    move-result-object p1

    .line 102
    invoke-direct {p0, v2, p1}, Lcom/taobao/weex/http/WXStreamModule;->extractHeaders(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/http/Options$Builder;)V

    .line 103
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options$Builder;->createOptions()Lcom/taobao/weex/http/Options;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options$Builder;->createOptions()Lcom/taobao/weex/http/Options;

    move-result-object v2

    new-instance v3, Lcom/taobao/weex/http/WXStreamModule$1;

    invoke-direct {v3, p0, p2, v0}, Lcom/taobao/weex/http/WXStreamModule$1;-><init>(Lcom/taobao/weex/http/WXStreamModule;Ljava/lang/String;Lcom/taobao/weex/http/Options;)V

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 115
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 105
    invoke-direct/range {v1 .. v6}, Lcom/taobao/weex/http/WXStreamModule;->sendRequest(Lcom/taobao/weex/http/Options;Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.http.WXStreamModule.AnonymousClass1 (com.taobao.weex.http.WXStreamModule$1)
.class Lcom/taobao/weex/http/WXStreamModule$1;
.super Ljava/lang/Object;
.source "WXStreamModule.java"

# interfaces
.implements Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/http/WXStreamModule;->sendHttp(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/http/WXStreamModule;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$options:Lcom/taobao/weex/http/Options;


# direct methods
.method constructor <init>(Lcom/taobao/weex/http/WXStreamModule;Ljava/lang/String;Lcom/taobao/weex/http/Options;)V
    .registers 4

    .line 105
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$1;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iput-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$callback:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$options:Lcom/taobao/weex/http/Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/taobao/weex/common/WXResponse;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/common/WXResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$callback:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$1;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iget-object v0, v0, Lcom/taobao/weex/http/WXStreamModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_3c

    .line 109
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/http/WXStreamModule$1;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iget-object v1, v1, Lcom/taobao/weex/http/WXStreamModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$callback:Ljava/lang/String;

    if-eqz p1, :cond_37

    iget-object v3, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-nez v3, :cond_1f

    goto :goto_37

    :cond_1f
    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz p2, :cond_2a

    const-string v3, "Content-Type"

    .line 112
    invoke-static {p2, v3}, Lcom/taobao/weex/http/WXStreamModule;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2c

    :cond_2a
    const-string p2, ""

    :goto_2c
    iget-object v3, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$options:Lcom/taobao/weex/http/Options;

    invoke-virtual {v3}, Lcom/taobao/weex/http/Options;->getType()Lcom/taobao/weex/http/Options$Type;

    move-result-object v3

    .line 111
    invoke-static {p1, p2, v3}, Lcom/taobao/weex/http/WXStreamModule;->readAsString([BLjava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    :cond_37
    :goto_37
    const-string p1, "{}"

    .line 109
    :goto_39
    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

###### Class com.taobao.weex.http.WXStreamModule.AnonymousClass2 (com.taobao.weex.http.WXStreamModule$2)
.class Lcom/taobao/weex/http/WXStreamModule$2;
.super Ljava/lang/Object;
.source "WXStreamModule.java"

# interfaces
.implements Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/http/WXStreamModule;->fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/http/WXStreamModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$options:Lcom/taobao/weex/http/Options;


# direct methods
.method constructor <init>(Lcom/taobao/weex/http/WXStreamModule;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/Options;)V
    .registers 4

    .line 243
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$2;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iput-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$options:Lcom/taobao/weex/http/Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/taobao/weex/common/WXResponse;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/common/WXResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_b1

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "statusText"

    const-string v2, "status"

    if-eqz p1, :cond_8b

    .line 248
    iget-object v3, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    const-string v4, "-1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_8b

    .line 257
    :cond_1b
    iget-object v3, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 258
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc8

    const/4 v4, 0x0

    if-lt v3, v2, :cond_33

    const/16 v2, 0x12b

    if-gt v3, v2, :cond_33

    const/4 v2, 0x1

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    .line 259
    :goto_34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ok"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    const-string v5, "data"

    if-nez v2, :cond_49

    .line 261
    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 263
    :cond_49
    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    const-string v6, ""

    if-eqz p2, :cond_56

    const-string v7, "Content-Type"

    invoke-static {p2, v7}, Lcom/taobao/weex/http/WXStreamModule;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_57

    :cond_56
    move-object v7, v6

    :goto_57
    iget-object v8, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$options:Lcom/taobao/weex/http/Options;

    invoke-virtual {v8}, Lcom/taobao/weex/http/Options;->getType()Lcom/taobao/weex/http/Options$Type;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lcom/taobao/weex/http/WXStreamModule;->readAsString([BLjava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/String;

    move-result-object v2

    .line 265
    :try_start_61
    iget-object v7, p0, Lcom/taobao/weex/http/WXStreamModule$2;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iget-object v8, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$options:Lcom/taobao/weex/http/Options;

    invoke-virtual {v8}, Lcom/taobao/weex/http/Options;->getType()Lcom/taobao/weex/http/Options$Type;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/taobao/weex/http/WXStreamModule;->parseData(Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_61 .. :try_end_70} :catch_71

    goto :goto_81

    :catch_71
    move-exception v2

    .line 267
    invoke-static {v6, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "{\'err\':\'Data parse failed!\'}"

    .line 269
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :goto_81
    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/weex/http/Status;->getStatusText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a7

    :cond_8b
    :goto_8b
    const/4 v3, -0x1

    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ERR_CONNECT_FAILED"

    .line 250
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorMsg"

    if-eqz p1, :cond_a2

    .line 252
    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a7

    :cond_a2
    const-string p1, "response \u4e3a\u7a7a"

    .line 254
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a7
    const-string p1, "headers"

    .line 274
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_b1
    return-void
.end method

###### Class com.taobao.weex.http.WXStreamModule.ResponseCallback (com.taobao.weex.http.WXStreamModule$ResponseCallback)
.class interface abstract Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;
.super Ljava/lang/Object;
.source "WXStreamModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/http/WXStreamModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ResponseCallback"
.end annotation


# virtual methods
.method public abstract onResponse(Lcom/taobao/weex/common/WXResponse;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/common/WXResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.taobao.weex.http.WXStreamModule.StreamHttpListener (com.taobao.weex.http.WXStreamModule$StreamHttpListener)
.class Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;
.super Ljava/lang/Object;
.source "WXStreamModule.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/http/WXStreamModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamHttpListener"
.end annotation


# instance fields
.field private mCallback:Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;

.field private mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

.field private mRespHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResponse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    .line 389
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mCallback:Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;

    .line 390
    iput-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/WXStreamModule$1;)V
    .registers 4

    .line 382
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;-><init>(Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;)V

    return-void
.end method


# virtual methods
.method public onHeadersReceived(ILjava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "readyState"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_87

    .line 415
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 416
    :goto_26
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 417
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 418
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_26

    .line 420
    :cond_3f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "_"

    if-ne v1, v2, :cond_6b

    .line 421
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_55

    goto :goto_5c

    :cond_55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :goto_5c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 423
    :cond_6b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_72

    goto :goto_79

    :cond_72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :goto_79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 428
    :cond_87
    iget-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    const-string v0, "headers"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mRespHeaders:Ljava/util/Map;

    .line 430
    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_9e

    .line 431
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_9e
    return-void
.end method

.method public onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    .registers 4

    .line 447
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mCallback:Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;

    if-eqz v0, :cond_9

    .line 448
    iget-object v1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mRespHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;->onResponse(Lcom/taobao/weex/common/WXResponse;Ljava/util/Map;)V

    .line 451
    :cond_9
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_1d

    .line 452
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1f

    :cond_1d
    const-string v0, "response data is NUll!"

    :goto_1f
    const-string p1, "WXStreamModule"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public onHttpResponseProgress(I)V
    .registers 4

    .line 437
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "length"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_19

    .line 439
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method public onHttpStart()V
    .registers 4

    .line 396
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_28

    .line 397
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "readyState"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public onHttpUploadProgress(I)V
    .registers 2

    return-void
.end method
