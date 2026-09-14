###### Class com.facebook.imagepipeline.memory.PoolConfig (com.facebook.imagepipeline.memory.PoolConfig)
.class public Lcom/facebook/imagepipeline/memory/PoolConfig;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    }
.end annotation


# static fields
.field public static final BITMAP_POOL_MAX_BITMAP_SIZE_DEFAULT:I = 0x400000


# instance fields
.field private final mBitmapPoolMaxBitmapSize:I

.field private final mBitmapPoolMaxPoolSize:I

.field private final mBitmapPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

.field private final mBitmapPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

.field private final mBitmapPoolType:Ljava/lang/String;

.field private final mFlexByteArrayPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

.field private final mIgnoreBitmapPoolHardCap:Z

.field private final mMemoryChunkPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

.field private final mMemoryChunkPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

.field private final mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

.field private final mRegisterLruBitmapPoolAsMemoryTrimmable:Z

.field private final mSmallByteArrayPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

.field private final mSmallByteArrayPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "PoolConfig()"

    .line 45
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 48
    :cond_e
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$000(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v0

    if-nez v0, :cond_19

    .line 49
    invoke-static {}, Lcom/facebook/imagepipeline/memory/DefaultBitmapPoolParams;->get()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v0

    goto :goto_1d

    .line 50
    :cond_19
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$000(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v0

    :goto_1d
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mBitmapPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 52
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$100(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 53
    invoke-static {}, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->getInstance()Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    move-result-object v0

    goto :goto_2e

    .line 54
    :cond_2a
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$100(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    move-result-object v0

    :goto_2e
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mBitmapPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    .line 56
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$200(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 57
    invoke-static {}, Lcom/facebook/imagepipeline/memory/DefaultFlexByteArrayPoolParams;->get()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v0

    goto :goto_3f

    .line 58
    :cond_3b
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$200(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v0

    :goto_3f
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mFlexByteArrayPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 60
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$300(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 61
    invoke-static {}, Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;->getInstance()Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;

    move-result-object v0

    goto :goto_50

    .line 62
    :cond_4c
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$300(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v0

    :goto_50
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 64
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$400(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v0

    if-nez v0, :cond_5d

    .line 65
    invoke-static {}, Lcom/facebook/imagepipeline/memory/DefaultNativeMemoryChunkPoolParams;->get()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v0

    goto :goto_61

    .line 66
    :cond_5d
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$400(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v0

    :goto_61
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mMemoryChunkPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 68
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$500(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    move-result-object v0

    if-nez v0, :cond_6e

    .line 69
    invoke-static {}, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->getInstance()Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    move-result-object v0

    goto :goto_72

    .line 70
    :cond_6e
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$500(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    move-result-object v0

    :goto_72
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mMemoryChunkPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    .line 72
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$600(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v0

    if-nez v0, :cond_7f

    .line 73
    invoke-static {}, Lcom/facebook/imagepipeline/memory/DefaultByteArrayPoolParams;->get()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v0

    goto :goto_83

    .line 74
    :cond_7f
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$600(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v0

    :goto_83
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mSmallByteArrayPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 76
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$700(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    move-result-object v0

    if-nez v0, :cond_90

    .line 77
    invoke-static {}, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->getInstance()Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    move-result-object v0

    goto :goto_94

    .line 78
    :cond_90
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$700(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    move-result-object v0

    :goto_94
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mSmallByteArrayPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    .line 81
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$800(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9f

    const-string v0, "legacy"

    goto :goto_a3

    :cond_9f
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$800(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    :goto_a3
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mBitmapPoolType:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$900(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mBitmapPoolMaxPoolSize:I

    .line 84
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$1000(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)I

    move-result v0

    if-lez v0, :cond_b6

    .line 85
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$1000(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)I

    move-result v0

    goto :goto_b8

    :cond_b6
    const/high16 v0, 0x400000

    :goto_b8
    iput v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mBitmapPoolMaxBitmapSize:I

    .line 87
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->access$1100(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mRegisterLruBitmapPoolAsMemoryTrimmable:Z

    .line 88
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 89
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 91
    :cond_c9
    iget-boolean p1, p1, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mIgnoreBitmapPoolHardCap:Z

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mIgnoreBitmapPoolHardCap:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;Lcom/facebook/imagepipeline/memory/PoolConfig$1;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/PoolConfig;-><init>(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2

    .line 147
    new-instance v0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;-><init>(Lcom/facebook/imagepipeline/memory/PoolConfig$1;)V

    return-object v0
.end method


# virtual methods
.method public getBitmapPoolMaxBitmapSize()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mBitmapPoolMaxBitmapSize:I

    return v0
.end method

.method public getBitmapPoolMaxPoolSize()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mBitmapPoolMaxPoolSize:I

    return v0
.end method

.method public getBitmapPoolParams()Lcom/facebook/imagepipeline/memory/PoolParams;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mBitmapPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    return-object v0
.end method

.method public getBitmapPoolStatsTracker()Lcom/facebook/imagepipeline/memory/PoolStatsTracker;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mBitmapPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    return-object v0
.end method

.method public getBitmapPoolType()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mBitmapPoolType:Ljava/lang/String;

    return-object v0
.end method

.method public getFlexByteArrayPoolParams()Lcom/facebook/imagepipeline/memory/PoolParams;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mFlexByteArrayPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    return-object v0
.end method

.method public getMemoryChunkPoolParams()Lcom/facebook/imagepipeline/memory/PoolParams;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mMemoryChunkPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    return-object v0
.end method

.method public getMemoryChunkPoolStatsTracker()Lcom/facebook/imagepipeline/memory/PoolStatsTracker;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mMemoryChunkPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    return-object v0
.end method

.method public getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object v0
.end method

.method public getSmallByteArrayPoolParams()Lcom/facebook/imagepipeline/memory/PoolParams;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mSmallByteArrayPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    return-object v0
.end method

.method public getSmallByteArrayPoolStatsTracker()Lcom/facebook/imagepipeline/memory/PoolStatsTracker;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mSmallByteArrayPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    return-object v0
.end method

.method public isIgnoreBitmapPoolHardCap()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mIgnoreBitmapPoolHardCap:Z

    return v0
.end method

.method public isRegisterLruBitmapPoolAsMemoryTrimmable()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig;->mRegisterLruBitmapPoolAsMemoryTrimmable:Z

    return v0
.end method

###### Class com.facebook.imagepipeline.memory.PoolConfig.AnonymousClass1 (com.facebook.imagepipeline.memory.PoolConfig$1)
.class synthetic Lcom/facebook/imagepipeline/memory/PoolConfig$1;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/PoolConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.imagepipeline.memory.PoolConfig.Builder (com.facebook.imagepipeline.memory.PoolConfig$Builder)
.class public Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/PoolConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitmapPoolMaxBitmapSize:I

.field private mBitmapPoolMaxPoolSize:I

.field private mBitmapPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBitmapPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBitmapPoolType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFlexByteArrayPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public mIgnoreBitmapPoolHardCap:Z

.field private mMemoryChunkPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMemoryChunkPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRegisterLruBitmapPoolAsMemoryTrimmable:Z

.field private mSmallByteArrayPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSmallByteArrayPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/memory/PoolConfig$1;)V
    .registers 2

    .line 150
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolParams;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mBitmapPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolStatsTracker;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mBitmapPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)I
    .registers 1

    .line 150
    iget p0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mBitmapPoolMaxBitmapSize:I

    return p0
.end method

.method static synthetic access$1100(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Z
    .registers 1

    .line 150
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mRegisterLruBitmapPoolAsMemoryTrimmable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolParams;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mFlexByteArrayPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolParams;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mMemoryChunkPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolStatsTracker;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mMemoryChunkPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolParams;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mSmallByteArrayPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolStatsTracker;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mSmallByteArrayPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mBitmapPoolType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;)I
    .registers 1

    .line 150
    iget p0, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mBitmapPoolMaxPoolSize:I

    return p0
.end method


# virtual methods
.method public build()Lcom/facebook/imagepipeline/memory/PoolConfig;
    .registers 3

    .line 211
    new-instance v0, Lcom/facebook/imagepipeline/memory/PoolConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/memory/PoolConfig;-><init>(Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;Lcom/facebook/imagepipeline/memory/PoolConfig$1;)V

    return-object v0
.end method

.method public setBitmapPoolMaxBitmapSize(I)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapPoolMaxBitmapSize"
        }
    .end annotation

    .line 225
    iput p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mBitmapPoolMaxBitmapSize:I

    return-object p0
.end method

.method public setBitmapPoolMaxPoolSize(I)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapPoolMaxPoolSize"
        }
    .end annotation

    .line 220
    iput p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mBitmapPoolMaxPoolSize:I

    return-object p0
.end method

.method public setBitmapPoolParams(Lcom/facebook/imagepipeline/memory/PoolParams;)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapPoolParams"
        }
    .end annotation

    .line 169
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/PoolParams;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mBitmapPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    return-object p0
.end method

.method public setBitmapPoolStatsTracker(Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapPoolStatsTracker"
        }
    .end annotation

    .line 174
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mBitmapPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    return-object p0
.end method

.method public setBitmapPoolType(Ljava/lang/String;)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapPoolType"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mBitmapPoolType:Ljava/lang/String;

    return-object p0
.end method

.method public setFlexByteArrayPoolParams(Lcom/facebook/imagepipeline/memory/PoolParams;)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flexByteArrayPoolParams"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mFlexByteArrayPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    return-object p0
.end method

.method public setIgnoreBitmapPoolHardCap(Z)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreBitmapPoolHardCap"
        }
    .end annotation

    .line 236
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mIgnoreBitmapPoolHardCap:Z

    return-object p0
.end method

.method public setMemoryTrimmableRegistry(Lcom/facebook/common/memory/MemoryTrimmableRegistry;)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryTrimmableRegistry"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object p0
.end method

.method public setNativeMemoryChunkPoolParams(Lcom/facebook/imagepipeline/memory/PoolParams;)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryChunkPoolParams"
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/PoolParams;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mMemoryChunkPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    return-object p0
.end method

.method public setNativeMemoryChunkPoolStatsTracker(Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryChunkPoolStatsTracker"
        }
    .end annotation

    .line 195
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mMemoryChunkPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    return-object p0
.end method

.method public setRegisterLruBitmapPoolAsMemoryTrimmable(Z)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registerLruBitmapPoolAsMemoryTrimmable"
        }
    .end annotation

    .line 231
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mRegisterLruBitmapPoolAsMemoryTrimmable:Z

    return-object p0
.end method

.method public setSmallByteArrayPoolParams(Lcom/facebook/imagepipeline/memory/PoolParams;)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commonByteArrayPoolParams"
        }
    .end annotation

    .line 200
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/PoolParams;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mSmallByteArrayPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    return-object p0
.end method

.method public setSmallByteArrayPoolStatsTracker(Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "smallByteArrayPoolStatsTracker"
        }
    .end annotation

    .line 206
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->mSmallByteArrayPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    return-object p0
.end method
