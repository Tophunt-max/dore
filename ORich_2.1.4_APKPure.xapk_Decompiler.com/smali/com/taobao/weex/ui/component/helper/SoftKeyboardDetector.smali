###### Class com.taobao.weex.ui.component.helper.SoftKeyboardDetector (com.taobao.weex.ui.component.helper.SoftKeyboardDetector)
.class public Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;
.super Ljava/lang/Object;
.source "SoftKeyboardDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;,
        Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;,
        Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;
    }
.end annotation


# static fields
.field private static final KEYBOARD_VISIBLE_THRESHOLD_DIP:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityRoot(Landroid/app/Activity;)Landroid/view/View;
    .registers 2

    if-eqz p0, :cond_a

    const v0, 0x1020002

    .line 105
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isKeyboardVisible(Landroid/app/Activity;)Z
    .registers 3

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 93
    invoke-static {p0}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;->getActivityRoot(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_25

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    .line 98
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    if-le p0, v0, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public static registerKeyboardEventListener(Landroid/app/Activity;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_44

    if-nez p1, :cond_6

    goto :goto_44

    .line 48
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 51
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_26

    :cond_20
    const-string p0, "SoftKeyboard detector can\'t work with softInputMode is SOFT_INPUT_ADJUST_NOTHING or SOFT_INPUT_ADJUST_PAN"

    .line 54
    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-object v0

    .line 60
    :cond_26
    invoke-static {p0}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;->getActivityRoot(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_32

    const-string p0, "Activity root is null!"

    .line 63
    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-object v0

    .line 67
    :cond_32
    new-instance v0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;

    invoke-direct {v0, v1, p1}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;-><init>(Landroid/view/View;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)V

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 88
    new-instance p1, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;-><init>(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p1

    :cond_44
    :goto_44
    const-string p0, "Activity or listener is null!"

    .line 44
    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.taobao.weex.ui.component.helper.SoftKeyboardDetector.AnonymousClass1 (com.taobao.weex.ui.component.helper.SoftKeyboardDetector$1)
.class final Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;
.super Ljava/lang/Object;
.source "SoftKeyboardDetector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;->registerKeyboardEventListener(Landroid/app/Activity;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final threshold:I

.field final synthetic val$activityRoot:Landroid/view/View;

.field final synthetic val$listener:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;

.field private final visibleFrame:Landroid/graphics/Rect;

.field private wasKeyboardOpened:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;)V
    .registers 3

    .line 67
    iput-object p1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->val$activityRoot:Landroid/view/View;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->val$listener:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->visibleFrame:Landroid/graphics/Rect;

    const/high16 p1, 0x42c80000    # 100.0f

    .line 70
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->threshold:I

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->wasKeyboardOpened:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->val$activityRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->visibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->val$activityRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->visibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    .line 77
    iget v1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->threshold:I

    if-le v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 78
    :goto_1f
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->wasKeyboardOpened:Z

    if-ne v0, v1, :cond_24

    return-void

    .line 82
    :cond_24
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->wasKeyboardOpened:Z

    .line 83
    iget-object v1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$1;->val$listener:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;

    invoke-interface {v1, v0}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;->onKeyboardEvent(Z)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.helper.SoftKeyboardDetector.DefaultUnRegister (com.taobao.weex.ui.component.helper.SoftKeyboardDetector$DefaultUnRegister)
.class public final Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;
.super Ljava/lang/Object;
.source "SoftKeyboardDetector.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultUnRegister"
.end annotation


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private listenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;->activityRef:Ljava/lang/ref/WeakReference;

    .line 117
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;->listenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 123
    iget-object v1, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2f

    if-eqz v1, :cond_2f

    .line 126
    invoke-static {v0}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;->getActivityRoot(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 128
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_28

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_2f

    .line 131
    :cond_28
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 136
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 137
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$DefaultUnRegister;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

###### Class com.taobao.weex.ui.component.helper.SoftKeyboardDetector.OnKeyboardEventListener (com.taobao.weex.ui.component.helper.SoftKeyboardDetector$OnKeyboardEventListener)
.class public interface abstract Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;
.super Ljava/lang/Object;
.source "SoftKeyboardDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnKeyboardEventListener"
.end annotation


# virtual methods
.method public abstract onKeyboardEvent(Z)V
.end method

###### Class com.taobao.weex.ui.component.helper.SoftKeyboardDetector.Unregister (com.taobao.weex.ui.component.helper.SoftKeyboardDetector$Unregister)
.class public interface abstract Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;
.super Ljava/lang/Object;
.source "SoftKeyboardDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Unregister"
.end annotation


# virtual methods
.method public abstract execute()V
.end method
