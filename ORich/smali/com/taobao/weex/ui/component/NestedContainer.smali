###### Class com.taobao.weex.ui.component.NestedContainer (com.taobao.weex.ui.component.NestedContainer)
.class public interface abstract Lcom/taobao/weex/ui/component/NestedContainer;
.super Ljava/lang/Object;
.source "NestedContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;
    }
.end annotation


# virtual methods
.method public abstract getViewContainer()Landroid/view/ViewGroup;
.end method

.method public abstract reload()V
.end method

.method public abstract renderNewURL(Ljava/lang/String;)V
.end method

.method public abstract setOnNestEventListener(Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;)V
.end method

###### Class com.taobao.weex.ui.component.NestedContainer.OnNestedInstanceEventListener (com.taobao.weex.ui.component.NestedContainer$OnNestedInstanceEventListener)
.class public interface abstract Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;
.super Ljava/lang/Object;
.source "NestedContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/NestedContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNestedInstanceEventListener"
.end annotation


# virtual methods
.method public abstract onCreated(Lcom/taobao/weex/ui/component/NestedContainer;Lcom/taobao/weex/WXSDKInstance;)V
.end method

.method public abstract onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPreCreate(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;)Z
.end method

.method public abstract transformUrl(Ljava/lang/String;)Ljava/lang/String;
.end method
