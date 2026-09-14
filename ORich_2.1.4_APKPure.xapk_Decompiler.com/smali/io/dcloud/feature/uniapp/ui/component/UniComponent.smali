###### Class io.dcloud.feature.uniapp.ui.component.UniComponent (io.dcloud.feature.uniapp.ui.component.UniComponent)
.class public Lio/dcloud/feature/uniapp/ui/component/UniComponent;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "UniComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/uniapp/ui/component/UniComponent$OnClickListener;,
        Lio/dcloud/feature/uniapp/ui/component/UniComponent$OnFocusChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public mUniSDKInstance:Lio/dcloud/feature/uniapp/UniSDKInstance;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/uniapp/UniSDKInstance;Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;ILio/dcloud/feature/uniapp/ui/action/AbsComponentData;)V
    .registers 5

    .line 38
    check-cast p2, Lcom/taobao/weex/ui/component/WXVContainer;

    check-cast p4, Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 39
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/component/UniComponent;->mUniSDKInstance:Lio/dcloud/feature/uniapp/UniSDKInstance;

    return-void
.end method

.method public constructor <init>(Lio/dcloud/feature/uniapp/UniSDKInstance;Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;)V
    .registers 4

    .line 43
    check-cast p2, Lcom/taobao/weex/ui/component/WXVContainer;

    check-cast p3, Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 44
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/component/UniComponent;->mUniSDKInstance:Lio/dcloud/feature/uniapp/UniSDKInstance;

    return-void
.end method


# virtual methods
.method protected final addClickListener(Lio/dcloud/feature/uniapp/ui/component/UniComponent$OnClickListener;)V
    .registers 2

    .line 92
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V

    return-void
.end method

.method protected final addFocusChangeListener(Lio/dcloud/feature/uniapp/ui/component/UniComponent$OnFocusChangeListener;)V
    .registers 2

    .line 88
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    return-void
.end method

.method public final bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 62
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

.method public final bindHolder(Lcom/taobao/weex/ui/IFComponentHolder;)V
    .registers 2

    .line 80
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindHolder(Lcom/taobao/weex/ui/IFComponentHolder;)V

    return-void
.end method

.method public bindHolder(Lio/dcloud/feature/uniapp/ui/AbsIComponentHolder;)V
    .registers 2

    .line 75
    check-cast p1, Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindHolder(Lcom/taobao/weex/ui/IFComponentHolder;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 103
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/UniComponent;->mUniSDKInstance:Lio/dcloud/feature/uniapp/UniSDKInstance;

    return-void
.end method

.method public final findUniComponent(Ljava/lang/String;)Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;
    .registers 4

    .line 66
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/UniComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 67
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/UniComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUniInstance()Lio/dcloud/feature/uniapp/UniSDKInstance;
    .registers 2

    .line 48
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/UniComponent;->mUniSDKInstance:Lio/dcloud/feature/uniapp/UniSDKInstance;

    return-object v0
.end method

.method public postAnimation(Lio/dcloud/feature/uniapp/ui/component/UniAnimationHolder;)V
    .registers 2

    .line 84
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->postAnimation(Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;)V

    return-void
.end method

.method public final updateStyles(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 57
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyles(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

.method protected updateStyles(Lio/dcloud/feature/uniapp/ui/component/UniComponent;)V
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/UniComponent;->updateStyles(Lio/dcloud/feature/uniapp/ui/component/UniComponent;)V

    return-void
.end method

###### Class io.dcloud.feature.uniapp.ui.component.UniComponent.OnClickListener (io.dcloud.feature.uniapp.ui.component.UniComponent$OnClickListener)
.class public interface abstract Lio/dcloud/feature/uniapp/ui/component/UniComponent$OnClickListener;
.super Ljava/lang/Object;
.source "UniComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/ui/component/UniComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClickListener"
.end annotation

###### Class io.dcloud.feature.uniapp.ui.component.UniComponent.OnFocusChangeListener (io.dcloud.feature.uniapp.ui.component.UniComponent$OnFocusChangeListener)
.class public interface abstract Lio/dcloud/feature/uniapp/ui/component/UniComponent$OnFocusChangeListener;
.super Ljava/lang/Object;
.source "UniComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/ui/component/UniComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFocusChangeListener"
.end annotation
