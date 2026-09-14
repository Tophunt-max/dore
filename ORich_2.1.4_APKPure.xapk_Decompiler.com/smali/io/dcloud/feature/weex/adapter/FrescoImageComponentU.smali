###### Class io.dcloud.feature.weex.adapter.FrescoImageComponentU (io.dcloud.feature.weex.adapter.FrescoImageComponentU)
.class public Lio/dcloud/feature/weex/adapter/FrescoImageComponentU;
.super Lio/dcloud/feature/weex/adapter/FrescoImageComponent;
.source "FrescoImageComponentU.java"


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponentU;->mIsUni:Z

    return-void
.end method
