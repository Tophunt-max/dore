###### Class com.facebook.imagepipeline.cache.NativeMemoryCacheTrimStrategy (com.facebook.imagepipeline.cache.NativeMemoryCacheTrimStrategy)
.class public Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy;
.super Ljava/lang/Object;
.source "NativeMemoryCacheTrimStrategy.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeMemoryCacheTrimStrategy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrimRatio(Lcom/facebook/common/memory/MemoryTrimType;)D
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimType"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy$1;->$SwitchMap$com$facebook$common$memory$MemoryTrimType:[I

    invoke-virtual {p1}, Lcom/facebook/common/memory/MemoryTrimType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_29

    const/4 v4, 0x2

    if-eq v0, v4, :cond_26

    const/4 v4, 0x3

    if-eq v0, v4, :cond_26

    const/4 v4, 0x4

    if-eq v0, v4, :cond_26

    const/4 v4, 0x5

    if-eq v0, v4, :cond_26

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const-string p1, "NativeMemoryCacheTrimStrategy"

    const-string v3, "unknown trim type: %s"

    .line 39
    invoke-static {p1, v3, v0}, Lcom/facebook/common/logging/FLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v1

    :cond_26
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_29
    return-wide v1
.end method

###### Class com.facebook.imagepipeline.cache.NativeMemoryCacheTrimStrategy.AnonymousClass1 (com.facebook.imagepipeline.cache.NativeMemoryCacheTrimStrategy$1)
.class synthetic Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy$1;
.super Ljava/lang/Object;
.source "NativeMemoryCacheTrimStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$common$memory$MemoryTrimType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    invoke-static {}, Lcom/facebook/common/memory/MemoryTrimType;->values()[Lcom/facebook/common/memory/MemoryTrimType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy$1;->$SwitchMap$com$facebook$common$memory$MemoryTrimType:[I

    :try_start_9
    sget-object v1, Lcom/facebook/common/memory/MemoryTrimType;->OnCloseToDalvikHeapLimit:Lcom/facebook/common/memory/MemoryTrimType;

    invoke-virtual {v1}, Lcom/facebook/common/memory/MemoryTrimType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy$1;->$SwitchMap$com$facebook$common$memory$MemoryTrimType:[I

    sget-object v1, Lcom/facebook/common/memory/MemoryTrimType;->OnAppBackgrounded:Lcom/facebook/common/memory/MemoryTrimType;

    invoke-virtual {v1}, Lcom/facebook/common/memory/MemoryTrimType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy$1;->$SwitchMap$com$facebook$common$memory$MemoryTrimType:[I

    sget-object v1, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemMemoryCriticallyLowWhileAppInForeground:Lcom/facebook/common/memory/MemoryTrimType;

    invoke-virtual {v1}, Lcom/facebook/common/memory/MemoryTrimType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy$1;->$SwitchMap$com$facebook$common$memory$MemoryTrimType:[I

    sget-object v1, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInForeground:Lcom/facebook/common/memory/MemoryTrimType;

    invoke-virtual {v1}, Lcom/facebook/common/memory/MemoryTrimType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy$1;->$SwitchMap$com$facebook$common$memory$MemoryTrimType:[I

    sget-object v1, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInBackground:Lcom/facebook/common/memory/MemoryTrimType;

    invoke-virtual {v1}, Lcom/facebook/common/memory/MemoryTrimType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method
