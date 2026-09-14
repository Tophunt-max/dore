###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompat (com.dcloud.android.v4.view.ViewPropertyAnimatorCompat)
.class public Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

.field static final LISTENER_TAG_ID:I = 0x7e000000

.field private static final TAG:Ljava/lang/String; = "ViewAnimatorCompat"


# instance fields
.field private mEndAction:Ljava/lang/Runnable;

.field private mOldLayerType:I

.field private mStartAction:Ljava/lang/Runnable;

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 3
    new-instance v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_45

    :cond_e
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    .line 5
    new-instance v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_45

    :cond_1a
    const/16 v1, 0x12

    if-lt v0, v1, :cond_26

    .line 7
    new-instance v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_45

    :cond_26
    const/16 v1, 0x10

    if-lt v0, v1, :cond_32

    .line 9
    new-instance v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_45

    :cond_32
    const/16 v1, 0xe

    if-lt v0, v1, :cond_3e

    .line 11
    new-instance v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_45

    .line 13
    :cond_3e
    new-instance v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    :goto_45
    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 3
    iput-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    return p0
.end method

.method static synthetic access$402(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    return p1
.end method


# virtual methods
.method public alpha(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->alpha(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public alphaBy(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->alphaBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public cancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->cancel(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->getDuration(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J

    move-result-wide v0

    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->getInterpolator(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->getStartDelay(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J

    move-result-wide v0

    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public rotation(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotation(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public rotationBy(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public rotationX(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationX(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public rotationXBy(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationXBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public rotationY(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationY(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public rotationYBy(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationYBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public scaleX(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleX(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public scaleXBy(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleXBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public scaleY(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleY(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public scaleYBy(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleYBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public setDuration(J)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setDuration(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V

    :cond_f
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setInterpolator(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/view/animation/Interpolator;)V

    :cond_f
    return-object p0
.end method

.method public setListener(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setListener(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V

    :cond_f
    return-object p0
.end method

.method public setStartDelay(J)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setStartDelay(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V

    :cond_f
    return-object p0
.end method

.method public setUpdateListener(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setUpdateListener(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;)V

    :cond_f
    return-object p0
.end method

.method public start()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->start(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public translationX(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationX(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public translationXBy(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationXBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public translationY(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationY(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public translationYBy(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationYBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public translationZ(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationZ(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public translationZBy(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationZBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public withEndAction(Ljava/lang/Runnable;)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->withEndAction(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_f
    return-object p0
.end method

.method public withLayer()Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->withLayer(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    :cond_f
    return-object p0
.end method

.method public withStartAction(Ljava/lang/Runnable;)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->withStartAction(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_f
    return-object p0
.end method

.method public x(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->x(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public xBy(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->xBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public y(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->y(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public yBy(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->yBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public z(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->z(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

.method public zBy(F)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->zBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    :cond_f
    return-object p0
.end method

###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompat.AnonymousClass1 (com.dcloud.android.v4.view.ViewPropertyAnimatorCompat$1)
.class synthetic Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompat.BaseViewPropertyAnimatorCompatImpl (com.dcloud.android.v4.view.ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewPropertyAnimatorCompatImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;
    }
.end annotation


# instance fields
.field mStarterMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic access$200(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->startAnimation(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method private postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    if-nez v0, :cond_24

    .line 5
    new-instance v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;-><init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$1;)V

    .line 6
    iget-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    if-nez p1, :cond_1f

    .line 7
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    .line 9
    :cond_1f
    iget-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_24
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeStartMessage(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method

.method private startAnimation(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 5

    const/high16 v0, 0x7e000000

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    if-eqz v1, :cond_d

    .line 4
    check-cast v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 6
    :goto_e
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$100(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v1

    .line 7
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$000(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz v1, :cond_1b

    .line 9
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1b
    if-eqz v0, :cond_23

    .line 12
    invoke-interface {v0, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 13
    invoke-interface {v0, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :cond_23
    if-eqz p1, :cond_28

    .line 16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 18
    :cond_28
    iget-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    if-eqz p1, :cond_2f

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-void
.end method


# virtual methods
.method public alpha(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public alphaBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public cancel(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public getDuration(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
    .registers 3

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getInterpolator(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)Landroid/view/animation/Interpolator;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public getStartDelay(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
    .registers 3

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public rotation(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public rotationBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public rotationX(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public rotationXBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public rotationY(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public rotationYBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public scaleX(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public scaleXBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public scaleY(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public scaleYBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public setDuration(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
    .registers 5

    return-void
.end method

.method public setInterpolator(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .registers 4

    return-void
.end method

.method public setListener(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V
    .registers 4

    const/high16 p1, 0x7e000000

    .line 1
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setStartDelay(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
    .registers 5

    return-void
.end method

.method public setUpdateListener(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;)V
    .registers 4

    return-void
.end method

.method public start(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->removeStartMessage(Landroid/view/View;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->startAnimation(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public translationX(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public translationXBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public translationY(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public translationYBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public translationZ(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    return-void
.end method

.method public translationZBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    return-void
.end method

.method public withEndAction(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-static {p1, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$002(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public withLayer(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public withStartAction(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-static {p1, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$102(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public x(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public xBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public y(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public yBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->postStartMessage(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method public z(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    return-void
.end method

.method public zBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompat.BaseViewPropertyAnimatorCompatImpl.Starter (com.dcloud.android.v4.view.ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter)
.class Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Starter"
.end annotation


# instance fields
.field mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic this$0:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;


# direct methods
.method private constructor <init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 4

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->this$0:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p2, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$1;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;-><init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 3
    iget-object v1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->this$0:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;

    iget-object v2, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v1, v2, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->access$200(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    :cond_11
    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompat.ICSViewPropertyAnimatorCompatImpl (com.dcloud.android.v4.view.ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICSViewPropertyAnimatorCompatImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;
    }
.end annotation


# instance fields
.field mLayerMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;->mLayerMap:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public alpha(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->alpha(Landroid/view/View;F)V

    return-void
.end method

.method public alphaBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->alphaBy(Landroid/view/View;F)V

    return-void
.end method

.method public cancel(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->cancel(Landroid/view/View;)V

    return-void
.end method

.method public getDuration(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
    .registers 3

    .line 1
    invoke-static {p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->getDuration(Landroid/view/View;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getStartDelay(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
    .registers 3

    .line 1
    invoke-static {p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->getStartDelay(Landroid/view/View;)J

    move-result-wide p1

    return-wide p1
.end method

.method public rotation(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->rotation(Landroid/view/View;F)V

    return-void
.end method

.method public rotationBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->rotationBy(Landroid/view/View;F)V

    return-void
.end method

.method public rotationX(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->rotationX(Landroid/view/View;F)V

    return-void
.end method

.method public rotationXBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->rotationXBy(Landroid/view/View;F)V

    return-void
.end method

.method public rotationY(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->rotationY(Landroid/view/View;F)V

    return-void
.end method

.method public rotationYBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->rotationYBy(Landroid/view/View;F)V

    return-void
.end method

.method public scaleX(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->scaleX(Landroid/view/View;F)V

    return-void
.end method

.method public scaleXBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->scaleXBy(Landroid/view/View;F)V

    return-void
.end method

.method public scaleY(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->scaleY(Landroid/view/View;F)V

    return-void
.end method

.method public scaleYBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->scaleYBy(Landroid/view/View;F)V

    return-void
.end method

.method public setDuration(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
    .registers 5

    .line 1
    invoke-static {p2, p3, p4}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->setDuration(Landroid/view/View;J)V

    return-void
.end method

.method public setInterpolator(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->setInterpolator(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setListener(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V
    .registers 5

    const/high16 v0, 0x7e000000

    .line 1
    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2
    new-instance p3, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;

    invoke-direct {p3, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;-><init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->setListener(Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V

    return-void
.end method

.method public setStartDelay(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
    .registers 5

    .line 1
    invoke-static {p2, p3, p4}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->setStartDelay(Landroid/view/View;J)V

    return-void
.end method

.method public start(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->start(Landroid/view/View;)V

    return-void
.end method

.method public translationX(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->translationX(Landroid/view/View;F)V

    return-void
.end method

.method public translationXBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->translationXBy(Landroid/view/View;F)V

    return-void
.end method

.method public translationY(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->translationY(Landroid/view/View;F)V

    return-void
.end method

.method public translationYBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->translationYBy(Landroid/view/View;F)V

    return-void
.end method

.method public withEndAction(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;

    invoke-direct {v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;-><init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->setListener(Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V

    .line 2
    invoke-static {p1, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$002(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

.method public withLayer(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {p2}, Lcom/dcloud/android/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$402(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;I)I

    .line 2
    new-instance v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;

    invoke-direct {v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;-><init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->setListener(Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V

    return-void
.end method

.method public withStartAction(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;

    invoke-direct {v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;-><init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->setListener(Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V

    .line 2
    invoke-static {p1, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$102(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

.method public x(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->x(Landroid/view/View;F)V

    return-void
.end method

.method public xBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->xBy(Landroid/view/View;F)V

    return-void
.end method

.method public y(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->y(Landroid/view/View;F)V

    return-void
.end method

.method public yBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->yBy(Landroid/view/View;F)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompat.ICSViewPropertyAnimatorCompatImpl.MyVpaListener (com.dcloud.android.v4.view.ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener)
.class Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyVpaListener"
.end annotation


# instance fields
.field mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 4

    const/high16 v0, 0x7e000000

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    if-eqz v1, :cond_d

    .line 4
    check-cast v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_13

    .line 7
    invoke-interface {v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$400(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_18

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$400(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/dcloud/android/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$402(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;I)I

    .line 5
    :cond_18
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$000(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 6
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$000(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_29
    const/high16 v0, 0x7e000000

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 10
    instance-of v2, v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_36

    .line 11
    move-object v1, v0

    check-cast v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    :cond_36
    if-eqz v1, :cond_3b

    .line 14
    invoke-interface {v1, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :cond_3b
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$400(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_d

    const/4 v0, 0x2

    .line 2
    invoke-static {p1, v0, v1}, Lcom/dcloud/android/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 4
    :cond_d
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$100(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 5
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;->access$100(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1e
    const/high16 v0, 0x7e000000

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v2, v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_2b

    .line 10
    move-object v1, v0

    check-cast v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    :cond_2b
    if-eqz v1, :cond_30

    .line 13
    invoke-interface {v1, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    :cond_30
    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompat.JBMr2ViewPropertyAnimatorCompatImpl (com.dcloud.android.v4.view.ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBMr2ViewPropertyAnimatorCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolator(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)Landroid/view/animation/Interpolator;
    .registers 3

    .line 1
    invoke-static {p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJellybeanMr2;->getInterpolator(Landroid/view/View;)Landroid/view/animation/Interpolator;

    move-result-object p1

    return-object p1
.end method

###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompat.JBViewPropertyAnimatorCompatImpl (com.dcloud.android.v4.view.ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewPropertyAnimatorCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setListener(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB;->setListener(Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V

    return-void
.end method

.method public withEndAction(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB;->withEndAction(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public withLayer(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p2}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB;->withLayer(Landroid/view/View;)V

    return-void
.end method

.method public withStartAction(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB;->withStartAction(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompat.KitKatViewPropertyAnimatorCompatImpl (com.dcloud.android.v4.view.ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatViewPropertyAnimatorCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setUpdateListener(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatKK;->setUpdateListener(Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompat.LollipopViewPropertyAnimatorCompatImpl (com.dcloud.android.v4.view.ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewPropertyAnimatorCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public translationZ(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatLollipop;->translationZ(Landroid/view/View;F)V

    return-void
.end method

.method public translationZBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatLollipop;->translationZBy(Landroid/view/View;F)V

    return-void
.end method

.method public z(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatLollipop;->z(Landroid/view/View;F)V

    return-void
.end method

.method public zBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatLollipop;->zBy(Landroid/view/View;F)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompat.ViewPropertyAnimatorCompatImpl (com.dcloud.android.v4.view.ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl)
.class interface abstract Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ViewPropertyAnimatorCompatImpl"
.end annotation


# virtual methods
.method public abstract alpha(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract alphaBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract cancel(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
.end method

.method public abstract getDuration(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
.end method

.method public abstract getInterpolator(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)Landroid/view/animation/Interpolator;
.end method

.method public abstract getStartDelay(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
.end method

.method public abstract rotation(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract rotationBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract rotationX(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract rotationXBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract rotationY(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract rotationYBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract scaleX(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract scaleXBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract scaleY(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract scaleYBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract setDuration(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
.end method

.method public abstract setInterpolator(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/view/animation/Interpolator;)V
.end method

.method public abstract setListener(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V
.end method

.method public abstract setStartDelay(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
.end method

.method public abstract setUpdateListener(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;)V
.end method

.method public abstract start(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
.end method

.method public abstract translationX(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract translationXBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract translationY(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract translationYBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract translationZ(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract translationZBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract withEndAction(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
.end method

.method public abstract withLayer(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
.end method

.method public abstract withStartAction(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
.end method

.method public abstract x(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract xBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract y(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract yBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract z(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method

.method public abstract zBy(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
.end method
