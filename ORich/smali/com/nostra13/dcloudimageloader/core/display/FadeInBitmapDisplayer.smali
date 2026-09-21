###### Class com.nostra13.dcloudimageloader.core.display.FadeInBitmapDisplayer (com.nostra13.dcloudimageloader.core.display.FadeInBitmapDisplayer)
.class public Lcom/nostra13/dcloudimageloader/core/display/FadeInBitmapDisplayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;


# instance fields
.field private final animateFromDisc:Z

.field private final animateFromMemory:Z

.field private final animateFromNetwork:Z

.field private final durationMillis:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/nostra13/dcloudimageloader/core/display/FadeInBitmapDisplayer;-><init>(IZZZ)V

    return-void
.end method

.method public constructor <init>(IZZZ)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/display/FadeInBitmapDisplayer;->durationMillis:I

    .line 4
    iput-boolean p2, p0, Lcom/nostra13/dcloudimageloader/core/display/FadeInBitmapDisplayer;->animateFromNetwork:Z

    .line 5
    iput-boolean p3, p0, Lcom/nostra13/dcloudimageloader/core/display/FadeInBitmapDisplayer;->animateFromDisc:Z

    .line 6
    iput-boolean p4, p0, Lcom/nostra13/dcloudimageloader/core/display/FadeInBitmapDisplayer;->animateFromMemory:Z

    return-void
.end method

.method public static animate(Landroid/view/View;I)V
    .registers 5

    if-eqz p0, :cond_19

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    invoke-interface {p2, p1}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->setImageBitmap(Landroid/graphics/Bitmap;)Z

    .line 2
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/display/FadeInBitmapDisplayer;->animateFromNetwork:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    if-eq p3, v0, :cond_1b

    :cond_b
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/display/FadeInBitmapDisplayer;->animateFromDisc:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    if-eq p3, v0, :cond_1b

    :cond_13
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/display/FadeInBitmapDisplayer;->animateFromMemory:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    if-ne p3, v0, :cond_24

    .line 3
    :cond_1b
    invoke-interface {p2}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p2

    iget p3, p0, Lcom/nostra13/dcloudimageloader/core/display/FadeInBitmapDisplayer;->durationMillis:I

    invoke-static {p2, p3}, Lcom/nostra13/dcloudimageloader/core/display/FadeInBitmapDisplayer;->animate(Landroid/view/View;I)V

    :cond_24
    return-object p1
.end method
