###### Class com.dcloud.android.widget.DCWebViewProgressBar (com.dcloud.android.widget.DCWebViewProgressBar)
.class public Lcom/dcloud/android/widget/DCWebViewProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# instance fields
.field alpha:I

.field public isFinish:Z

.field mCurrentAnmiator:Lio/dcloud/nineoldandroids/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x1010078

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar;->isFinish:Z

    const/16 p1, 0xff

    .line 7
    iput p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar;->alpha:I

    const/16 p1, 0x2710

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/dcloud/android/widget/DCWebViewProgressBar;IILandroid/view/animation/Interpolator;Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->getProgressAnimation(IILandroid/view/animation/Interpolator;Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/dcloud/android/widget/DCWebViewProgressBar;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->startDismissAnimation()V

    return-void
.end method

.method private getProgressAnimation(IILandroid/view/animation/Interpolator;Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
    .registers 8

    mul-int/lit8 p1, p1, 0x64

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "progress"

    invoke-static {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    int-to-long v0, p2

    .line 2
    invoke-virtual {p1, v0, v1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    .line 3
    invoke-virtual {p1, p3}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p4, :cond_21

    .line 5
    invoke-virtual {p1, p4}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    :cond_21
    return-object p1
.end method

.method private startDismissAnimation()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_26

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 2
    invoke-virtual {v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4
    new-instance v1, Lcom/dcloud/android/widget/DCWebViewProgressBar$3;

    invoke-direct {v1, p0}, Lcom/dcloud/android/widget/DCWebViewProgressBar$3;-><init>(Lcom/dcloud/android/widget/DCWebViewProgressBar;)V

    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 11
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public finishProgress()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar;->isFinish:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar;->isFinish:Z

    .line 5
    iget-object v0, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar;->mCurrentAnmiator:Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    .line 6
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->cancel()V

    .line 8
    :cond_f
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    new-instance v1, Lcom/dcloud/android/widget/DCWebViewProgressBar$2;

    invoke-direct {v1, p0}, Lcom/dcloud/android/widget/DCWebViewProgressBar$2;-><init>(Lcom/dcloud/android/widget/DCWebViewProgressBar;)V

    const/16 v2, 0x64

    const/16 v3, 0x190

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->getProgressAnimation(IILandroid/view/animation/Interpolator;Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar;->mCurrentAnmiator:Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    .line 17
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setAlphaInt(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar;->alpha:I

    return-void
.end method

.method public setColorInt(I)V
    .registers 8

    .line 1
    iget v0, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar;->alpha:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 4
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/16 v1, 0x2710

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 7
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v5, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-array p1, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, p1, v2

    aput-object v1, p1, v4

    const/4 v0, 0x2

    aput-object v1, p1, v0

    .line 10
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x1020000

    .line 11
    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000f

    .line 12
    invoke-virtual {v1, v4, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000d

    .line 13
    invoke-virtual {v1, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public startProgress()V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 3
    iput-boolean v0, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar;->isFinish:Z

    .line 4
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 5
    new-instance v1, Lcom/dcloud/android/widget/DCWebViewProgressBar$1;

    invoke-direct {v1, p0, v0}, Lcom/dcloud/android/widget/DCWebViewProgressBar$1;-><init>(Lcom/dcloud/android/widget/DCWebViewProgressBar;Landroid/view/animation/Interpolator;)V

    const/16 v2, 0x1e

    const/16 v3, 0x7d0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->getProgressAnimation(IILandroid/view/animation/Interpolator;Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar;->mCurrentAnmiator:Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    .line 24
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

###### Class com.dcloud.android.widget.DCWebViewProgressBar.AnonymousClass1 (com.dcloud.android.widget.DCWebViewProgressBar$1)
.class Lcom/dcloud/android/widget/DCWebViewProgressBar$1;
.super Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/DCWebViewProgressBar;->startProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/DCWebViewProgressBar;

.field final synthetic val$interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/DCWebViewProgressBar;Landroid/view/animation/Interpolator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar$1;->this$0:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    iput-object p2, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar$1;->val$interpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar$1;->this$0:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    iget-boolean v0, p1, Lcom/dcloud/android/widget/DCWebViewProgressBar;->isFinish:Z

    if-nez v0, :cond_21

    .line 3
    iget-object v0, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar$1;->val$interpolator:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/dcloud/android/widget/DCWebViewProgressBar$1$1;

    invoke-direct {v1, p0}, Lcom/dcloud/android/widget/DCWebViewProgressBar$1$1;-><init>(Lcom/dcloud/android/widget/DCWebViewProgressBar$1;)V

    const/16 v2, 0x46

    const/16 v3, 0x7d0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->access$000(Lcom/dcloud/android/widget/DCWebViewProgressBar;IILandroid/view/animation/Interpolator;Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p1, Lcom/dcloud/android/widget/DCWebViewProgressBar;->mCurrentAnmiator:Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    .line 13
    iget-object p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar$1;->this$0:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    iget-object p1, p1, Lcom/dcloud/android/widget/DCWebViewProgressBar;->mCurrentAnmiator:Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->start()V

    :cond_21
    return-void
.end method

###### Class com.dcloud.android.widget.DCWebViewProgressBar.AnonymousClass1.C00141 (com.dcloud.android.widget.DCWebViewProgressBar$1$1)
.class Lcom/dcloud/android/widget/DCWebViewProgressBar$1$1;
.super Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/DCWebViewProgressBar$1;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dcloud/android/widget/DCWebViewProgressBar$1;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/DCWebViewProgressBar$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar$1$1;->this$1:Lcom/dcloud/android/widget/DCWebViewProgressBar$1;

    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar$1$1;->this$1:Lcom/dcloud/android/widget/DCWebViewProgressBar$1;

    iget-object v0, p1, Lcom/dcloud/android/widget/DCWebViewProgressBar$1;->this$0:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    iget-boolean v1, v0, Lcom/dcloud/android/widget/DCWebViewProgressBar;->isFinish:Z

    if-nez v1, :cond_22

    .line 3
    iget-object p1, p1, Lcom/dcloud/android/widget/DCWebViewProgressBar$1;->val$interpolator:Landroid/view/animation/Interpolator;

    const/16 v1, 0x5f

    const v2, 0xc350

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->access$000(Lcom/dcloud/android/widget/DCWebViewProgressBar;IILandroid/view/animation/Interpolator;Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, v0, Lcom/dcloud/android/widget/DCWebViewProgressBar;->mCurrentAnmiator:Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    .line 4
    iget-object p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar$1$1;->this$1:Lcom/dcloud/android/widget/DCWebViewProgressBar$1;

    iget-object p1, p1, Lcom/dcloud/android/widget/DCWebViewProgressBar$1;->this$0:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    iget-object p1, p1, Lcom/dcloud/android/widget/DCWebViewProgressBar;->mCurrentAnmiator:Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->start()V

    :cond_22
    return-void
.end method

###### Class com.dcloud.android.widget.DCWebViewProgressBar.AnonymousClass2 (com.dcloud.android.widget.DCWebViewProgressBar$2)
.class Lcom/dcloud/android/widget/DCWebViewProgressBar$2;
.super Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/DCWebViewProgressBar;->finishProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/DCWebViewProgressBar;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/DCWebViewProgressBar;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar$2;->this$0:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar$2;->this$0:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    iget-boolean v0, p1, Lcom/dcloud/android/widget/DCWebViewProgressBar;->isFinish:Z

    if-eqz v0, :cond_c

    .line 3
    invoke-static {p1}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->access$100(Lcom/dcloud/android/widget/DCWebViewProgressBar;)V

    :cond_c
    return-void
.end method

###### Class com.dcloud.android.widget.DCWebViewProgressBar.AnonymousClass3 (com.dcloud.android.widget.DCWebViewProgressBar$3)
.class Lcom/dcloud/android/widget/DCWebViewProgressBar$3;
.super Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/DCWebViewProgressBar;->startDismissAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/DCWebViewProgressBar;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/DCWebViewProgressBar;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar$3;->this$0:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/widget/DCWebViewProgressBar$3;->this$0:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
