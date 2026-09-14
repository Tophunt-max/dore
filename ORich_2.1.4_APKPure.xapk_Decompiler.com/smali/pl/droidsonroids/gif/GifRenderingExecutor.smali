###### Class pl.droidsonroids.gif.GifRenderingExecutor (pl.droidsonroids.gif.GifRenderingExecutor)
.class final Lpl/droidsonroids/gif/GifRenderingExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "GifRenderingExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/GifRenderingExecutor$InstanceHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 21
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lpl/droidsonroids/gif/GifRenderingExecutor$1;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifRenderingExecutor;-><init>()V

    return-void
.end method

.method static getInstance()Lpl/droidsonroids/gif/GifRenderingExecutor;
    .registers 1

    .line 17
    invoke-static {}, Lpl/droidsonroids/gif/GifRenderingExecutor$InstanceHolder;->access$100()Lpl/droidsonroids/gif/GifRenderingExecutor;

    move-result-object v0

    return-object v0
.end method

###### Class pl.droidsonroids.gif.GifRenderingExecutor.AnonymousClass1 (pl.droidsonroids.gif.GifRenderingExecutor$1)
.class synthetic Lpl/droidsonroids/gif/GifRenderingExecutor$1;
.super Ljava/lang/Object;
.source "GifRenderingExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifRenderingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class pl.droidsonroids.gif.GifRenderingExecutor.InstanceHolder (pl.droidsonroids.gif.GifRenderingExecutor$InstanceHolder)
.class final Lpl/droidsonroids/gif/GifRenderingExecutor$InstanceHolder;
.super Ljava/lang/Object;
.source "GifRenderingExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifRenderingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lpl/droidsonroids/gif/GifRenderingExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Lpl/droidsonroids/gif/GifRenderingExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpl/droidsonroids/gif/GifRenderingExecutor;-><init>(Lpl/droidsonroids/gif/GifRenderingExecutor$1;)V

    sput-object v0, Lpl/droidsonroids/gif/GifRenderingExecutor$InstanceHolder;->INSTANCE:Lpl/droidsonroids/gif/GifRenderingExecutor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lpl/droidsonroids/gif/GifRenderingExecutor;
    .registers 1

    .line 12
    sget-object v0, Lpl/droidsonroids/gif/GifRenderingExecutor$InstanceHolder;->INSTANCE:Lpl/droidsonroids/gif/GifRenderingExecutor;

    return-object v0
.end method
