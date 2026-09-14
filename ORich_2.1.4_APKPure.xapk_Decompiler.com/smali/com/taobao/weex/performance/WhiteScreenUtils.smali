###### Class com.taobao.weex.performance.WhiteScreenUtils (com.taobao.weex.performance.WhiteScreenUtils)
.class public Lcom/taobao/weex/performance/WhiteScreenUtils;
.super Ljava/lang/Object;
.source "WhiteScreenUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doWhiteScreenCheck()Z
    .registers 9

    .line 39
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 43
    :cond_c
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    :try_start_14
    const-string v6, "wxapm"

    const-string v7, "new_ws_sampling"

    const-string v8, "100"

    .line 46
    invoke-interface {v0, v6, v7, v8}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2b
    cmpg-double v0, v2, v4

    if-gez v0, :cond_30

    const/4 v1, 0x1

    :cond_30
    return v1
.end method

.method private static geViewDetailTreeMsg(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string v1, "width"

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 141
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string v2, "x"

    .line 142
    aget v5, v1, v3

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "y"

    .line 143
    aget v1, v1, v4

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    instance-of v1, p0, Landroid/view/ViewGroup;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_38} :catch_7a

    const-string v2, "type"

    if-eqz v1, :cond_6e

    .line 146
    :try_start_3c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    check-cast p0, Landroid/view/ViewGroup;

    .line 148
    :goto_49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_7e

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/performance/WhiteScreenUtils;->geViewDetailTreeMsg(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 152
    :cond_6e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7e
    :goto_7e
    return-object v0
.end method

.method private static hasLeafViewOrSizeIgnore(Landroid/view/View;I)Z
    .registers 6

    .line 93
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-lez p1, :cond_1b

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ge v0, v2, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 p1, p1, -0x1

    goto :goto_1b

    :cond_1a
    :goto_1a
    return v1

    .line 104
    :cond_1b
    :goto_1b
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 105
    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 106
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 107
    invoke-static {v3, p1}, Lcom/taobao/weex/performance/WhiteScreenUtils;->hasLeafViewOrSizeIgnore(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_30

    return v1

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_33
    return v0
.end method

.method private static isInWhiteList(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 7

    .line 69
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const/4 v2, 0x0

    const-string v3, "wxapm"

    const-string v4, "ws_white_list"

    .line 73
    invoke-interface {v0, v3, v4, v2}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    :try_start_1c
    const-string v2, ";"

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    array-length v2, v0

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_41

    aget-object v4, v0, v3

    .line 80
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3a

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_36} :catch_3d

    if-eqz v4, :cond_3a

    const/4 p0, 0x1

    return p0

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :catch_3d
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_41
    return v1
.end method

.method public static isWhiteScreen(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v1

    .line 59
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_d

    return v0

    .line 62
    :cond_d
    invoke-static {p0}, Lcom/taobao/weex/performance/WhiteScreenUtils;->isInWhiteList(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result p0

    if-eqz p0, :cond_14

    return v0

    :cond_14
    const/4 p0, 0x3

    .line 65
    invoke-static {v1, p0}, Lcom/taobao/weex/performance/WhiteScreenUtils;->hasLeafViewOrSizeIgnore(Landroid/view/View;I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static takeViewTreeSnapShot(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, "nullInstance"

    return-object p0

    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object p0

    .line 123
    invoke-static {p0}, Lcom/taobao/weex/performance/WhiteScreenUtils;->geViewDetailTreeMsg(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 125
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const-string p0, ""

    return-object p0
.end method
