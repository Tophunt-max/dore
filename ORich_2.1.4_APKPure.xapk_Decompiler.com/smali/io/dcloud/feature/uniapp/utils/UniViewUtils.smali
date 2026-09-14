###### Class io.dcloud.feature.uniapp.utils.UniViewUtils (io.dcloud.feature.uniapp.utils.UniViewUtils)
.class public Lio/dcloud/feature/uniapp/utils/UniViewUtils;
.super Lcom/taobao/weex/utils/WXViewUtils;
.source "UniViewUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/taobao/weex/utils/WXViewUtils;-><init>()V

    return-void
.end method

.method public static getUniHeight(Ljava/lang/String;)I
    .registers 1

    .line 26
    invoke-static {p0}, Lio/dcloud/feature/uniapp/utils/UniViewUtils;->getWeexHeight(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
