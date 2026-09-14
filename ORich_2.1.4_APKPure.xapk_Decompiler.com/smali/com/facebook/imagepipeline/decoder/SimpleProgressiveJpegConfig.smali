###### Class com.facebook.imagepipeline.decoder.SimpleProgressiveJpegConfig (com.facebook.imagepipeline.decoder.SimpleProgressiveJpegConfig)
.class public Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;
.super Ljava/lang/Object;
.source "SimpleProgressiveJpegConfig.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DefaultDynamicValueConfig;,
        Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DynamicValueConfig;
    }
.end annotation


# instance fields
.field private final mDynamicValueConfig:Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DynamicValueConfig;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    new-instance v0, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DefaultDynamicValueConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DefaultDynamicValueConfig;-><init>(Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$1;)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;-><init>(Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DynamicValueConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DynamicValueConfig;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dynamicValueConfig"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DynamicValueConfig;

    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;->mDynamicValueConfig:Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DynamicValueConfig;

    return-void
.end method


# virtual methods
.method public getNextScanNumberToDecode(I)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scanNumber"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;->mDynamicValueConfig:Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DynamicValueConfig;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DynamicValueConfig;->getScansToDecode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 53
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_34

    :cond_f
    const/4 v1, 0x0

    .line 57
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p1, :cond_2d

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_30
    const p1, 0x7fffffff

    return p1

    :cond_34
    :goto_34
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getQualityInfo(I)Lcom/facebook/imagepipeline/image/QualityInfo;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scanNumber"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;->mDynamicValueConfig:Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DynamicValueConfig;

    .line 69
    invoke-interface {v0}, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DynamicValueConfig;->getGoodEnoughScanNumber()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 67
    :goto_c
    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->of(IZZ)Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.imagepipeline.decoder.SimpleProgressiveJpegConfig.AnonymousClass1 (com.facebook.imagepipeline.decoder.SimpleProgressiveJpegConfig$1)
.class synthetic Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$1;
.super Ljava/lang/Object;
.source "SimpleProgressiveJpegConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.imagepipeline.decoder.SimpleProgressiveJpegConfig.DefaultDynamicValueConfig (com.facebook.imagepipeline.decoder.SimpleProgressiveJpegConfig$DefaultDynamicValueConfig)
.class Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DefaultDynamicValueConfig;
.super Ljava/lang/Object;
.source "SimpleProgressiveJpegConfig.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DynamicValueConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultDynamicValueConfig"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$1;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DefaultDynamicValueConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoodEnoughScanNumber()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getScansToDecode()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

###### Class com.facebook.imagepipeline.decoder.SimpleProgressiveJpegConfig.DynamicValueConfig (com.facebook.imagepipeline.decoder.SimpleProgressiveJpegConfig$DynamicValueConfig)
.class public interface abstract Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig$DynamicValueConfig;
.super Ljava/lang/Object;
.source "SimpleProgressiveJpegConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DynamicValueConfig"
.end annotation


# virtual methods
.method public abstract getGoodEnoughScanNumber()I
.end method

.method public abstract getScansToDecode()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
