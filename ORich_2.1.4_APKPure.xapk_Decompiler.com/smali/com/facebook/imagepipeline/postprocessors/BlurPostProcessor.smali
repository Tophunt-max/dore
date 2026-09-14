###### Class com.facebook.imagepipeline.postprocessors.BlurPostProcessor (com.facebook.imagepipeline.postprocessors.BlurPostProcessor)
.class public Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;
.super Lcom/facebook/imagepipeline/request/BasePostprocessor;
.source "BlurPostProcessor.java"


# static fields
.field private static final DEFAULT_ITERATIONS:I = 0x3

.field private static final canUseRenderScript:Z


# instance fields
.field private final mBlurRadius:I

.field private mCacheKey:Lcom/facebook/cache/common/CacheKey;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIterations:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    invoke-static {}, Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;->canUseRenderScript()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->canUseRenderScript:Z

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "blurRadius",
            "context"
        }
    .end annotation

    const/4 v0, 0x3

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;-><init>(ILandroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "blurRadius",
            "context",
            "iterations"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/BasePostprocessor;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_d

    const/16 v2, 0x19

    if-gt p1, v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 48
    :goto_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 47
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    if-lez p3, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 49
    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 50
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iput p3, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mIterations:I

    .line 52
    iput p1, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mBlurRadius:I

    .line 53
    iput-object p2, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    if-nez v0, :cond_40

    .line 86
    sget-boolean v0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->canUseRenderScript:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1e

    .line 87
    check-cast v3, Ljava/util/Locale;

    new-array v0, v1, [Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mBlurRadius:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "IntrinsicBlur;%d"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 89
    :cond_1e
    check-cast v3, Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mIterations:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget v2, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mBlurRadius:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "IterativeBoxBlur;%d;%d"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_39
    new-instance v1, Lcom/facebook/cache/common/SimpleCacheKey;

    invoke-direct {v1, v0}, Lcom/facebook/cache/common/SimpleCacheKey;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 93
    :cond_40
    iget-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    return-object v0
.end method

.method public process(Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 78
    iget v0, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mIterations:I

    iget v1, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mBlurRadius:I

    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;->boxBlurBitmapInPlace(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "destBitmap",
            "sourceBitmap"
        }
    .end annotation

    .line 69
    sget-boolean v0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->canUseRenderScript:Z

    if-eqz v0, :cond_c

    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/facebook/imagepipeline/postprocessors/BlurPostProcessor;->mBlurRadius:I

    invoke-static {p1, p2, v0, v1}, Lcom/facebook/imagepipeline/filter/RenderScriptBlurFilter;->blurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;I)V

    goto :goto_f

    .line 72
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/request/BasePostprocessor;->process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_f
    return-void
.end method
