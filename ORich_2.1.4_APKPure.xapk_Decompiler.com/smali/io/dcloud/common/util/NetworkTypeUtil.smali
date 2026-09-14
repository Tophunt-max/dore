###### Class io.dcloud.common.util.NetworkTypeUtil (io.dcloud.common.util.NetworkTypeUtil)
.class public Lio/dcloud/common/util/NetworkTypeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NETWORK_TYPE_2G:I = 0x4

.field public static final NETWORK_TYPE_3G:I = 0x5

.field public static final NETWORK_TYPE_4G:I = 0x6

.field public static final NETWORK_TYPE_DISABLED:I = 0x1

.field public static final NETWORK_TYPE_LINE:I = 0x2

.field public static final NETWORK_TYPE_UNKONWN:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentAPN(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_1b

    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1b

    .line 7
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .registers 4

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_33

    .line 4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 6
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_34

    :pswitch_23
    return v2

    :pswitch_24
    const/4 p0, 0x6

    return p0

    :pswitch_26
    const/4 p0, 0x5

    return p0

    :pswitch_28
    const/4 p0, 0x4

    return p0

    .line 30
    :cond_2a
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_32

    const/4 p0, 0x3

    return p0

    :cond_32
    return v2

    :cond_33
    return v0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
        :pswitch_26
        :pswitch_28
        :pswitch_26
        :pswitch_26
        :pswitch_23
        :pswitch_26
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_26
        :pswitch_24
        :pswitch_23
        :pswitch_24
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public static isWifiProxy(Landroid/content/Context;)Z
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-lt v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_23

    const-string p0, "http.proxyHost"

    .line 5
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http.proxyPort"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const-string v0, "-1"

    .line 7
    :goto_1e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2e

    .line 9
    :cond_23
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result p0

    move-object v4, v0

    move v0, p0

    move-object p0, v4

    .line 12
    :goto_2e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_38

    const/4 p0, -0x1

    if-eq v0, p0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    return v1
.end method
