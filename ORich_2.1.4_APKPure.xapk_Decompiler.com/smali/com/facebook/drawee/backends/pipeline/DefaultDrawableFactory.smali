###### Class com.facebook.drawee.backends.pipeline.DefaultDrawableFactory (com.facebook.drawee.backends.pipeline.DefaultDrawableFactory)
.class public Lcom/facebook/drawee/backends/pipeline/DefaultDrawableFactory;
.super Ljava/lang/Object;
.source "DefaultDrawableFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/drawable/DrawableFactory;


# instance fields
.field private final mAnimatedDrawableFactory:Lcom/facebook/imagepipeline/drawable/DrawableFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/imagepipeline/drawable/DrawableFactory;)V
    .registers 3
    .param p2    # Lcom/facebook/imagepipeline/drawable/DrawableFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resources",
            "animatedDrawableFactory"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/DefaultDrawableFactory;->mResources:Landroid/content/res/Resources;

    .line 32
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/DefaultDrawableFactory;->mAnimatedDrawableFactory:Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    return-void
.end method

.method private static hasTransformableExifOrientation(Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeableStaticBitmap"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getExifOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 84
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getExifOrientation()I

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private static hasTransformableRotationAngle(Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeableStaticBitmap"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getRotationAngle()I

    move-result v0

    if-eqz v0, :cond_f

    .line 77
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getRotationAngle()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method


# virtual methods
.method public createDrawable(Lcom/facebook/imagepipeline/image/CloseableImage;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeableImage"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 44
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "DefaultDrawableFactory#createDrawable"

    .line 45
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 47
    :cond_b
    instance-of v0, p1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    if-eqz v0, :cond_49

    .line 48
    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 49
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/DefaultDrawableFactory;->mResources:Landroid/content/res/Resources;

    .line 50
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 51
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/DefaultDrawableFactory;->hasTransformableRotationAngle(Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 52
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/DefaultDrawableFactory;->hasTransformableExifOrientation(Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;)Z

    move-result v1
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_6e

    if-nez v1, :cond_32

    .line 67
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 68
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_31
    return-object v0

    .line 56
    :cond_32
    :try_start_32
    new-instance v1, Lcom/facebook/drawee/drawable/OrientedDrawable;

    .line 58
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getRotationAngle()I

    move-result v2

    .line 59
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getExifOrientation()I

    move-result p1

    invoke-direct {v1, v0, v2, p1}, Lcom/facebook/drawee/drawable/OrientedDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_6e

    .line 67
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 68
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_48
    return-object v1

    .line 61
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/DefaultDrawableFactory;->mAnimatedDrawableFactory:Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    if-eqz v0, :cond_63

    .line 62
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/drawable/DrawableFactory;->supportsImageType(Lcom/facebook/imagepipeline/image/CloseableImage;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 63
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/DefaultDrawableFactory;->mAnimatedDrawableFactory:Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/drawable/DrawableFactory;->createDrawable(Lcom/facebook/imagepipeline/image/CloseableImage;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_6e

    .line 67
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 68
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_62
    return-object p1

    :cond_63
    const/4 p1, 0x0

    .line 67
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 68
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_6d
    return-object p1

    :catchall_6e
    move-exception p1

    .line 67
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 68
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 70
    :cond_78
    throw p1
.end method

.method public supportsImageType(Lcom/facebook/imagepipeline/image/CloseableImage;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
