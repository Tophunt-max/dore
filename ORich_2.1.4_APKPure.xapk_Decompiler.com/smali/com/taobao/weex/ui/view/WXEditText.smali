###### Class com.taobao.weex.ui.view.WXEditText (com.taobao.weex.ui.view.WXEditText)
.class public Lcom/taobao/weex/ui/view/WXEditText;
.super Lio/dcloud/common/core/ui/keyboard/DCEditText;
.source "WXEditText.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# instance fields
.field private mAllowCopyPaste:Z

.field private mAllowDisableMovement:Z

.field private mLines:I

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/core/ui/keyboard/DCEditText;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 41
    iput p1, p0, Lcom/taobao/weex/ui/view/WXEditText;->mLines:I

    .line 42
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXEditText;->mAllowDisableMovement:Z

    .line 43
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXEditText;->mAllowCopyPaste:Z

    .line 47
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x0

    const/16 v0, 0x10

    if-lt p1, v0, :cond_15

    .line 48
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/view/WXEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18

    .line 50
    :cond_15
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/view/WXEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_18
    return-void
.end method


# virtual methods
.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXEditText;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->onSizeChanged(IIII)V

    .line 98
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXEditText;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 99
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXEditText;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    .line 101
    iget-boolean p3, p0, Lcom/taobao/weex/ui/view/WXEditText;->mAllowDisableMovement:Z

    if-eqz p3, :cond_20

    if-ge p2, p1, :cond_20

    .line 102
    new-instance p1, Landroid/text/method/BaseMovementMethod;

    invoke-direct {p1}, Landroid/text/method/BaseMovementMethod;-><init>()V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_27

    .line 104
    :cond_20
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXEditText;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 3

    .line 153
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXEditText;->mAllowCopyPaste:Z

    if-eqz v0, :cond_d

    invoke-super {p0, p1}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->onTextContextMenuItem(I)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 72
    invoke-super {p0, p1}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXEditText;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_d

    .line 74
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 77
    :cond_d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v2, 0x1

    if-eqz p1, :cond_27

    if-eq p1, v2, :cond_22

    const/4 v2, 0x3

    if-eq p1, v2, :cond_22

    goto :goto_32

    :cond_22
    const/4 p1, 0x0

    .line 88
    invoke-interface {v1, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_32

    .line 81
    :cond_27
    iget p1, p0, Lcom/taobao/weex/ui/view/WXEditText;->mLines:I

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXEditText;->getLineCount()I

    move-result v3

    if-ge p1, v3, :cond_32

    .line 83
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_32
    :goto_32
    return v0
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXEditText;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public setAllowCopyPaste(Z)V
    .registers 4

    .line 114
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXEditText;->mAllowCopyPaste:Z

    const/16 v0, 0x17

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    .line 116
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setLongClickable(Z)V

    const/4 p1, 0x0

    .line 117
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 118
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_29

    .line 119
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    goto :goto_29

    :cond_16
    const/4 p1, 0x0

    .line 122
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setLongClickable(Z)V

    .line 123
    new-instance p1, Lcom/taobao/weex/ui/view/WXEditText$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/view/WXEditText$1;-><init>(Lcom/taobao/weex/ui/view/WXEditText;)V

    .line 144
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_26

    .line 145
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 147
    :cond_26
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public setAllowDisableMovement(Z)V
    .registers 2

    .line 110
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXEditText;->mAllowDisableMovement:Z

    return-void
.end method

.method public setLines(I)V
    .registers 2

    .line 66
    invoke-super {p0, p1}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->setLines(I)V

    .line 67
    iput p1, p0, Lcom/taobao/weex/ui/view/WXEditText;->mLines:I

    return-void
.end method

###### Class com.taobao.weex.ui.view.WXEditText.AnonymousClass1 (com.taobao.weex.ui.view.WXEditText$1)
.class Lcom/taobao/weex/ui/view/WXEditText$1;
.super Ljava/lang/Object;
.source "WXEditText.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXEditText;->setAllowCopyPaste(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXEditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXEditText$1;->this$0:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
