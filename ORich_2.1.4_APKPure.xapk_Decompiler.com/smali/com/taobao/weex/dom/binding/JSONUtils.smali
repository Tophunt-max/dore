###### Class com.taobao.weex.dom.binding.JSONUtils (com.taobao.weex.dom.binding.JSONUtils)
.class public Lcom/taobao/weex/dom/binding/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isJSON(Ljava/lang/Object;)Z
    .registers 2

    .line 31
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 34
    :cond_6
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 35
    check-cast p0, Ljava/lang/String;

    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isJSON(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "{"

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static toJSON(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;
    .registers 2

    .line 41
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_7

    .line 42
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0

    .line 44
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    return-object p0
.end method
