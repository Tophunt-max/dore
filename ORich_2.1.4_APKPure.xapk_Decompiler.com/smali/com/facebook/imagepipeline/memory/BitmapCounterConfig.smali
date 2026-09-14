###### Class com.facebook.imagepipeline.memory.BitmapCounterConfig (com.facebook.imagepipeline.memory.BitmapCounterConfig)
.class public Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;
.super Ljava/lang/Object;
.source "BitmapCounterConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_BITMAP_COUNT:I = 0x180


# instance fields
.field private mMaxBitmapCount:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x180

    .line 17
    iput v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;->mMaxBitmapCount:I

    .line 20
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;->getMaxBitmapCount()I

    move-result p1

    iput p1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;->mMaxBitmapCount:I

    return-void
.end method

.method public static newBuilder()Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;
    .registers 2

    .line 32
    new-instance v0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;-><init>(Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$1;)V

    return-object v0
.end method


# virtual methods
.method public getMaxBitmapCount()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;->mMaxBitmapCount:I

    return v0
.end method

.method public setMaxBitmapCount(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxBitmapCount"
        }
    .end annotation

    .line 28
    iput p1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;->mMaxBitmapCount:I

    return-void
.end method

###### Class com.facebook.imagepipeline.memory.BitmapCounterConfig.AnonymousClass1 (com.facebook.imagepipeline.memory.BitmapCounterConfig$1)
.class synthetic Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$1;
.super Ljava/lang/Object;
.source "BitmapCounterConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.imagepipeline.memory.BitmapCounterConfig.Builder (com.facebook.imagepipeline.memory.BitmapCounterConfig$Builder)
.class public Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;
.super Ljava/lang/Object;
.source "BitmapCounterConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mMaxBitmapCount:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x180

    .line 39
    iput v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;->mMaxBitmapCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$1;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;
    .registers 2

    .line 51
    new-instance v0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig;-><init>(Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;)V

    return-object v0
.end method

.method public getMaxBitmapCount()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;->mMaxBitmapCount:I

    return v0
.end method

.method public setMaxBitmapCount(I)Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxBitmapCount"
        }
    .end annotation

    .line 42
    iput p1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounterConfig$Builder;->mMaxBitmapCount:I

    return-object p0
.end method
