###### Class io.dcloud.feature.weex.extend.DCCoverImageComponent (io.dcloud.feature.weex.extend.DCCoverImageComponent)
.class public Lio/dcloud/feature/weex/extend/DCCoverImageComponent;
.super Lcom/taobao/weex/ui/component/WXImage;
.source "DCCoverImageComponent.java"


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXImage;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method


# virtual methods
.method protected setImage(Ljava/lang/String;Lcom/taobao/weex/common/WXImageStrategy;)V
    .registers 5

    .line 23
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 24
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;

    move-result-object v1

    .line 23
    invoke-static {p1, v0, v1, p2}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    return-void
.end method
