###### Class com.taobao.weex.utils.OsVersion (com.taobao.weex.utils.OsVersion)
.class public Lcom/taobao/weex/utils/OsVersion;
.super Ljava/lang/Object;
.source "OsVersion.java"


# static fields
.field private static sIsAtLeastJB_MR2:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    invoke-static {}, Lcom/taobao/weex/utils/OsVersion;->getApiVersion()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 30
    :goto_b
    sput-boolean v0, Lcom/taobao/weex/utils/OsVersion;->sIsAtLeastJB_MR2:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiVersion()I
    .registers 1

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static isAtLeastJB_MR2()Z
    .registers 1

    .line 38
    sget-boolean v0, Lcom/taobao/weex/utils/OsVersion;->sIsAtLeastJB_MR2:Z

    return v0
.end method
