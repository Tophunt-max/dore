###### Class com.taobao.weex.utils.WXDeviceUtils (com.taobao.weex.utils.WXDeviceUtils)
.class public Lcom/taobao/weex/utils/WXDeviceUtils;
.super Ljava/lang/Object;
.source "WXDeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAutoResize(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 31
    :cond_4
    invoke-static {p0}, Lcom/taobao/weex/utils/WXDeviceUtils;->isMateX(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDeviceUtils;->isGalaxyFold(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_11

    :cond_10
    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static isGalaxyFold(Landroid/content/Context;)Z
    .registers 2

    .line 47
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "samsung"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "SM-F9000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isMateX(Landroid/content/Context;)Z
    .registers 2

    .line 38
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "HUAWEI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "unknownRLI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1e

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "HWTAH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method
