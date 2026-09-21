###### Class com.taobao.weex.ui.view.WXSwitchView (com.taobao.weex.ui.view.WXSwitchView)
.class public Lcom/taobao/weex/ui/view/WXSwitchView;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "WXSwitchView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# instance fields
.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXSwitchView;->setShowText(Z)V

    const/16 p1, 0x10

    .line 36
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXSwitchView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXSwitchView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXSwitchView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_d

    .line 53
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_d
    return v0
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXSwitchView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method
