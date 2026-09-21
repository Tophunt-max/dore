###### Class com.taobao.weex.ui.animation.WXAnimationModule (com.taobao.weex.ui.animation.WXAnimationModule)
.class public Lcom/taobao/weex/ui/animation/WXAnimationModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXAnimationModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method


# virtual methods
.method public transition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_26

    .line 41
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;

    iget-object v1, p0, Lcom/taobao/weex/ui/animation/WXAnimationModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->getPageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    :cond_26
    return-void
.end method

###### Class com.taobao.weex.ui.animation.WXAnimationModule.AnimationHolder (com.taobao.weex.ui.animation.WXAnimationModule$AnimationHolder)
.class public Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;
.super Ljava/lang/Object;
.source "WXAnimationModule.java"

# interfaces
.implements Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/animation/WXAnimationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationHolder"
.end annotation


# instance fields
.field private callback:Ljava/lang/String;

.field private wxAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/animation/WXAnimationBean;Ljava/lang/String;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;->wxAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    .line 57
    iput-object p2, p0, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;->callback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lio/dcloud/feature/uniapp/AbsSDKInstance;Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 6

    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    .line 63
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;

    check-cast p1, Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;->wxAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v2, p0, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;->callback:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/taobao/weex/ui/animation/WXAnimationBean;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->getPageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    :cond_22
    return-void
.end method
