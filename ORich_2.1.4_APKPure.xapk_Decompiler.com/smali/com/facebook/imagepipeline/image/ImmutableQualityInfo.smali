###### Class com.facebook.imagepipeline.image.ImmutableQualityInfo (com.facebook.imagepipeline.image.ImmutableQualityInfo)
.class public Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;
.super Ljava/lang/Object;
.source "ImmutableQualityInfo.java"

# interfaces
.implements Lcom/facebook/imagepipeline/image/QualityInfo;


# static fields
.field public static final FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;


# instance fields
.field mIsOfFullQuality:Z

.field mIsOfGoodEnoughQuality:Z

.field mQuality:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0x7fffffff

    const/4 v1, 0x1

    .line 17
    invoke-static {v0, v1, v1}, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->of(IZZ)Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    return-void
.end method

.method private constructor <init>(IZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "quality",
            "isOfGoodEnoughQuality",
            "isOfFullQuality"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mQuality:I

    .line 26
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mIsOfGoodEnoughQuality:Z

    .line 27
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mIsOfFullQuality:Z

    return-void
.end method

.method public static of(IZZ)Lcom/facebook/imagepipeline/image/QualityInfo;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "quality",
            "isOfGoodEnoughQuality",
            "isOfFullQuality"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;-><init>(IZZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 55
    :cond_4
    instance-of v1, p1, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 58
    :cond_a
    check-cast p1, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;

    .line 59
    iget v1, p0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mQuality:I

    iget v3, p1, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mQuality:I

    if-ne v1, v3, :cond_1f

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mIsOfGoodEnoughQuality:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mIsOfGoodEnoughQuality:Z

    if-ne v1, v3, :cond_1f

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mIsOfFullQuality:Z

    iget-boolean p1, p1, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mIsOfFullQuality:Z

    if-ne v1, p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public getQuality()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mQuality:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 47
    iget v0, p0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mQuality:I

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mIsOfGoodEnoughQuality:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    const/high16 v1, 0x400000

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mIsOfFullQuality:Z

    if-eqz v1, :cond_12

    const/high16 v2, 0x800000

    :cond_12
    xor-int/2addr v0, v2

    return v0
.end method

.method public isOfFullQuality()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mIsOfFullQuality:Z

    return v0
.end method

.method public isOfGoodEnoughQuality()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->mIsOfGoodEnoughQuality:Z

    return v0
.end method
