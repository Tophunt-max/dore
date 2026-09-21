###### Class com.taobao.weex.ui.component.pesudo.TouchActivePseudoListener (com.taobao.weex.ui.component.pesudo.TouchActivePseudoListener)
.class public Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;
.super Ljava/lang/Object;
.source "TouchActivePseudoListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mIsConsumeOnTouch:Z

.field private mOnActivePseudoListner:Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;Z)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;->mOnActivePseudoListner:Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;

    .line 33
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;->mIsConsumeOnTouch:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 39
    iget-object p2, p0, Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;->mOnActivePseudoListner:Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;

    if-eqz p2, :cond_1f

    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    const/4 v1, 0x5

    if-ne p1, v1, :cond_f

    goto :goto_1c

    :cond_f
    const/4 v1, 0x3

    if-eq p1, v1, :cond_17

    if-eq p1, v0, :cond_17

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1f

    :cond_17
    const/4 p1, 0x0

    .line 43
    invoke-interface {p2, p1}, Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;->updateActivePseudo(Z)V

    goto :goto_1f

    .line 41
    :cond_1c
    :goto_1c
    invoke-interface {p2, v0}, Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;->updateActivePseudo(Z)V

    .line 46
    :cond_1f
    :goto_1f
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;->mIsConsumeOnTouch:Z

    return p1
.end method
