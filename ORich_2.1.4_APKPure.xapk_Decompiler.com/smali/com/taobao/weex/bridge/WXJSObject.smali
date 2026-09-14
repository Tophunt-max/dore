###### Class com.taobao.weex.bridge.WXJSObject (com.taobao.weex.bridge.WXJSObject)
.class public Lcom/taobao/weex/bridge/WXJSObject;
.super Ljava/lang/Object;
.source "WXJSObject.java"


# static fields
.field public static final JSON:I = 0x3

.field public static final NUMBER:I = 0x1

.field public static final String:I = 0x2

.field public static final WSON:I = 0x4


# instance fields
.field public data:Ljava/lang/Object;

.field public key:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 37
    iput-object p2, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 42
    iput-object p2, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    .line 43
    iput-object p3, p0, Lcom/taobao/weex/bridge/WXJSObject;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-nez p1, :cond_d

    .line 49
    iput v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    const-string p1, ""

    .line 50
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    return-void

    .line 54
    :cond_d
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    .line 55
    instance-of v1, p1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 56
    iput v2, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 57
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    goto :goto_55

    .line 58
    :cond_25
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_2c

    .line 59
    iput v2, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    goto :goto_55

    .line 60
    :cond_2c
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_41

    .line 61
    iput v2, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 62
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    int-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    goto :goto_55

    .line 63
    :cond_41
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 64
    iput v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    goto :goto_55

    .line 65
    :cond_48
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_55

    const/4 v0, 0x3

    .line 66
    iput v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 67
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    :cond_55
    :goto_55
    return-void
.end method
