###### Class com.taobao.weex.utils.WXWsonJSONSwitch (com.taobao.weex.utils.WXWsonJSONSwitch)
.class public Lcom/taobao/weex/utils/WXWsonJSONSwitch;
.super Ljava/lang/Object;
.source "WXWsonJSONSwitch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WXSwitch"

.field public static USE_WSON:Z = true

.field public static final WSON_OFF:Ljava/lang/String; = "wson_off"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertJSONToWsonIfUseWson([B)[B
    .registers 2

    .line 40
    sget-boolean v0, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-nez p0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, "["

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 48
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/wson/WsonUtils;->toWson(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    .line 50
    :cond_1f
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/wson/WsonUtils;->toWson(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final convertWXJSObjectDataToJSON(Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/Object;
    .registers 3

    .line 95
    iget v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    .line 96
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcom/taobao/weex/wson/Wson;->parse([B)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 98
    :cond_18
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static fromObjectToJSONString(Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_18

    .line 117
    iget v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    .line 118
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/taobao/weex/wson/Wson;->parse([B)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 v0, 0x0

    .line 123
    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final parseWsonOrJSON([B)Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    :try_start_4
    sget-boolean v0, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    if-eqz v0, :cond_d

    .line 62
    invoke-static {p0}, Lcom/taobao/weex/wson/Wson;->parse([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 64
    :cond_d
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception v0

    const-string v1, "WXSwitch"

    .line 67
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    sget-boolean v0, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    if-eqz v0, :cond_2d

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 71
    :cond_2d
    invoke-static {p0}, Lcom/taobao/weex/wson/Wson;->parse([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;
    .registers 3

    if-nez p0, :cond_9

    .line 81
    new-instance p0, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 83
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/taobao/weex/bridge/WXJSObject;

    if-ne v0, v1, :cond_14

    .line 84
    check-cast p0, Lcom/taobao/weex/bridge/WXJSObject;

    return-object p0

    .line 86
    :cond_14
    sget-boolean v0, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    if-eqz v0, :cond_23

    .line 87
    new-instance v0, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x4

    invoke-static {p0}, Lcom/taobao/weex/wson/Wson;->toWson(Ljava/lang/Object;)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 89
    :cond_23
    new-instance v0, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x3

    invoke-static {p0}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method
