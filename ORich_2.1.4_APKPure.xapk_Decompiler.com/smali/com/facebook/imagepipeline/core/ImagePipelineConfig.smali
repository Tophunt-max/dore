###### Class com.facebook.imagepipeline.core.ImagePipelineConfig (com.facebook.imagepipeline.core.ImagePipelineConfig)
.class public Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"

# interfaces
.implements Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;,
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    }
.end annotation


# static fields
.field private static sDefaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;


# instance fields
.field private final mBitmapCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final mBitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mBitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

.field private final mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mCallerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCloseableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

.field private final mContext:Landroid/content/Context;

.field private final mDiskCacheEnabled:Z

.field private final mDownsampleEnabled:Z

.field private final mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

.field private final mFileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

.field private final mHttpNetworkTimeout:I

.field private final mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

.field private final mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImagePipelineExperiments:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

.field private final mImageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageTranscoderType:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

.field private final mMemoryChunkType:I

.field private final mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

.field private final mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

.field private final mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPoolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

.field private final mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

.field private final mRequestListener2s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mResizeAndRotateEnabledForNetwork:Z

.field private final mSerialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 123
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->sDefaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "ImagePipelineConfig()"

    .line 128
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 131
    :cond_e
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImagePipelineExperiments:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    .line 133
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    if-nez v1, :cond_34

    new-instance v1, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;

    .line 137
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 136
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;-><init>(Landroid/app/ActivityManager;)V

    goto :goto_38

    .line 138
    :cond_34
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    :goto_38
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 140
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    move-result-object v1

    if-nez v1, :cond_46

    new-instance v1, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheTrimStrategy;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheTrimStrategy;-><init>()V

    goto :goto_4a

    .line 142
    :cond_46
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    move-result-object v1

    :goto_4a
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 143
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    .line 144
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_5b

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_5f

    :cond_5b
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    :goto_5f
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 146
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    move-result-object v1

    if-nez v1, :cond_6c

    .line 147
    invoke-static {}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->getInstance()Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    move-result-object v1

    goto :goto_70

    .line 148
    :cond_6c
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    move-result-object v1

    :goto_70
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 149
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mContext:Landroid/content/Context;

    .line 151
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/FileCacheFactory;

    move-result-object v1

    if-nez v1, :cond_8f

    new-instance v1, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;

    new-instance v2, Lcom/facebook/imagepipeline/core/DynamicDefaultDiskStorageFactory;

    invoke-direct {v2}, Lcom/facebook/imagepipeline/core/DynamicDefaultDiskStorageFactory;-><init>()V

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;-><init>(Lcom/facebook/imagepipeline/core/DiskStorageFactory;)V

    goto :goto_93

    .line 153
    :cond_8f
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/FileCacheFactory;

    move-result-object v1

    :goto_93
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mFileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    .line 154
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mDownsampleEnabled:Z

    .line 156
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    if-nez v1, :cond_a7

    new-instance v1, Lcom/facebook/imagepipeline/cache/DefaultEncodedMemoryCacheParamsSupplier;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/DefaultEncodedMemoryCacheParamsSupplier;-><init>()V

    goto :goto_ab

    .line 158
    :cond_a7
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    :goto_ab
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 160
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    move-result-object v1

    if-nez v1, :cond_b8

    .line 161
    invoke-static {}, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;->getInstance()Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;

    move-result-object v1

    goto :goto_bc

    .line 162
    :cond_b8
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    move-result-object v1

    :goto_bc
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    .line 163
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 164
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageTranscoderFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 165
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageTranscoderType:Ljava/lang/Integer;

    .line 167
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    if-nez v1, :cond_dc

    new-instance v1, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    goto :goto_e0

    .line 174
    :cond_dc
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    :goto_e0
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    .line 176
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    if-nez v1, :cond_f1

    .line 177
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getDefaultMainDiskCacheConfig(Landroid/content/Context;)Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    goto :goto_f5

    .line 178
    :cond_f1
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    :goto_f5
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    .line 180
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v2

    if-nez v2, :cond_102

    .line 181
    invoke-static {}, Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;->getInstance()Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;

    move-result-object v2

    goto :goto_106

    .line 182
    :cond_102
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v2

    :goto_106
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 183
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getMemoryChunkType(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;)I

    move-result v2

    iput v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMemoryChunkType:I

    .line 185
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)I

    move-result v2

    if-gez v2, :cond_117

    const/16 v2, 0x7530

    goto :goto_11b

    .line 187
    :cond_117
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)I

    move-result v2

    :goto_11b
    iput v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mHttpNetworkTimeout:I

    .line 188
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    if-eqz v3, :cond_128

    const-string v3, "ImagePipelineConfig->mNetworkFetcher"

    .line 189
    invoke-static {v3}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 192
    :cond_128
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    move-result-object v3

    if-nez v3, :cond_134

    new-instance v3, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;

    invoke-direct {v3, v2}, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;-><init>(I)V

    goto :goto_138

    .line 194
    :cond_134
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    move-result-object v3

    :goto_138
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    .line 195
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v2

    if-eqz v2, :cond_143

    .line 196
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 198
    :cond_143
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 200
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v2

    if-nez v2, :cond_15d

    new-instance v2, Lcom/facebook/imagepipeline/memory/PoolFactory;

    .line 201
    invoke-static {}, Lcom/facebook/imagepipeline/memory/PoolConfig;->newBuilder()Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->build()Lcom/facebook/imagepipeline/memory/PoolConfig;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/imagepipeline/memory/PoolFactory;-><init>(Lcom/facebook/imagepipeline/memory/PoolConfig;)V

    goto :goto_161

    .line 202
    :cond_15d
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v2

    :goto_161
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mPoolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    .line 204
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    move-result-object v3

    if-nez v3, :cond_16f

    new-instance v3, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;

    invoke-direct {v3}, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;-><init>()V

    goto :goto_173

    .line 206
    :cond_16f
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    move-result-object v3

    :goto_173
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    .line 208
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_181

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_185

    .line 210
    :cond_181
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;

    move-result-object v3

    :goto_185
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mRequestListeners:Ljava/util/Set;

    .line 212
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_193

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_197

    .line 214
    :cond_193
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;

    move-result-object v3

    :goto_197
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mRequestListener2s:Ljava/util/Set;

    .line 215
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mResizeAndRotateEnabledForNetwork:Z

    .line 217
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v3

    if-nez v3, :cond_1a6

    goto :goto_1aa

    .line 219
    :cond_1a6
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    :goto_1aa
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    .line 220
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    .line 222
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getFlexByteArrayPoolMaxNumThreads()I

    move-result v1

    .line 224
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    move-result-object v2

    if-nez v2, :cond_1c2

    new-instance v2, Lcom/facebook/imagepipeline/core/DefaultExecutorSupplier;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/core/DefaultExecutorSupplier;-><init>(I)V

    goto :goto_1c6

    .line 226
    :cond_1c2
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    move-result-object v2

    :goto_1c6
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 227
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mDiskCacheEnabled:Z

    .line 228
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/callercontext/CallerContextVerifier;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCallerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    .line 229
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCloseableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    .line 230
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/MemoryCache;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 232
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    move-result-object v1

    if-nez v1, :cond_1ec

    new-instance v1, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;-><init>()V

    goto :goto_1f0

    .line 234
    :cond_1ec
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    move-result-object v1

    :goto_1f0
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    .line 235
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/MemoryCache;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 236
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/executors/SerialExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mSerialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

    .line 238
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getWebpBitmapFactory()Lcom/facebook/common/webp/WebpBitmapFactory;

    move-result-object p1

    if-eqz p1, :cond_211

    .line 240
    new-instance v1, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;-><init>(Lcom/facebook/imagepipeline/memory/PoolFactory;)V

    .line 241
    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->setWebpBitmapFactory(Lcom/facebook/common/webp/WebpBitmapFactory;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;Lcom/facebook/common/webp/BitmapCreator;)V

    goto :goto_22d

    .line 244
    :cond_211
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isWebpSupportEnabled()Z

    move-result p1

    if-eqz p1, :cond_22d

    sget-boolean p1, Lcom/facebook/common/webp/WebpSupportStatus;->sIsWebpSupportRequired:Z

    if-eqz p1, :cond_22d

    .line 246
    invoke-static {}, Lcom/facebook/common/webp/WebpSupportStatus;->loadWebpBitmapFactoryIfExists()Lcom/facebook/common/webp/WebpBitmapFactory;

    move-result-object p1

    if-eqz p1, :cond_22d

    .line 248
    new-instance v1, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;-><init>(Lcom/facebook/imagepipeline/memory/PoolFactory;)V

    .line 249
    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->setWebpBitmapFactory(Lcom/facebook/common/webp/WebpBitmapFactory;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;Lcom/facebook/common/webp/BitmapCreator;)V

    .line 253
    :cond_22d
    :goto_22d
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_236

    .line 254
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_236
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    return-void
.end method

.method public static getDefaultImageRequestConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    .registers 1

    .line 323
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->sDefaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-object v0
.end method

.method private static getDefaultMainDiskCacheConfig(Landroid/content/Context;)Lcom/facebook/cache/disk/DiskCacheConfig;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 275
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "DiskCacheConfig.getDefaultMainDiskCacheConfig"

    .line 276
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 278
    :cond_b
    invoke-static {p0}, Lcom/facebook/cache/disk/DiskCacheConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->build()Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_1d

    .line 280
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 281
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_1c
    return-object p0

    :catchall_1d
    move-exception p0

    .line 280
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 281
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 283
    :cond_27
    throw p0
.end method

.method private static getImageTranscoderFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 471
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_15

    .line 472
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t define a custom ImageTranscoderFactory and provide an ImageTranscoderType"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 475
    :cond_15
    :goto_15
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 476
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    move-result-object p0

    return-object p0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMemoryChunkType(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "imagePipelineExperiments"
        }
    .end annotation

    .line 485
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 486
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$3700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 487
    :cond_f
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getMemoryType()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p0, v0, v2

    if-nez p0, :cond_21

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-lt p0, v0, :cond_21

    const/4 p0, 0x2

    return p0

    .line 490
    :cond_21
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getMemoryType()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_2d

    const/4 p0, 0x1

    return p0

    .line 492
    :cond_2d
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getMemoryType()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p0, v0

    if-nez v3, :cond_38

    :cond_38
    return v2
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 466
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    return-object v0
.end method

.method static resetDefaultRequestConfig()V
    .registers 2

    .line 288
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->sDefaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-void
.end method

.method private static setWebpBitmapFactory(Lcom/facebook/common/webp/WebpBitmapFactory;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;Lcom/facebook/common/webp/BitmapCreator;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "webpBitmapFactory",
            "imagePipelineExperiments",
            "bitmapCreator"
        }
    .end annotation

    .line 262
    sput-object p0, Lcom/facebook/common/webp/WebpSupportStatus;->sWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    .line 264
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getWebpErrorLogger()Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 266
    invoke-interface {p0, p1}, Lcom/facebook/common/webp/WebpBitmapFactory;->setWebpErrorLogger(Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;)V

    :cond_b
    if-eqz p2, :cond_10

    .line 269
    invoke-interface {p0, p2}, Lcom/facebook/common/webp/WebpBitmapFactory;->setBitmapCreator(Lcom/facebook/common/webp/BitmapCreator;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public getBitmapCacheOverride()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object v0
.end method

.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getBitmapMemoryCacheEntryStateObserver()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    return-object v0
.end method

.method public getBitmapMemoryCacheFactory()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    return-object v0
.end method

.method public getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object v0
.end method

.method public getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object v0
.end method

.method public getCallerContextVerifier()Lcom/facebook/callercontext/CallerContextVerifier;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCallerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    return-object v0
.end method

.method public getCloseableReferenceLeakTracker()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;
    .registers 2

    .line 462
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCloseableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEncodedMemoryCacheOverride()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object v0
.end method

.method public getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public getExecutorServiceForAnimatedImages()Lcom/facebook/common/executors/SerialExecutorService;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mSerialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

    return-object v0
.end method

.method public getExecutorSupplier()Lcom/facebook/imagepipeline/core/ExecutorSupplier;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    return-object v0
.end method

.method public getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImagePipelineExperiments:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    return-object v0
.end method

.method public getFileCacheFactory()Lcom/facebook/imagepipeline/core/FileCacheFactory;
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mFileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    return-object v0
.end method

.method public getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    return-object v0
.end method

.method public getImageDecoder()Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    return-object v0
.end method

.method public getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    return-object v0
.end method

.method public getImageTranscoderFactory()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    return-object v0
.end method

.method public getImageTranscoderType()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageTranscoderType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsPrefetchEnabledSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public getMainDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object v0
.end method

.method public getMemoryChunkType()I
    .registers 2

    .line 399
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMemoryChunkType:I

    return v0
.end method

.method public getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object v0
.end method

.method public getNetworkFetcher()Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .registers 2

    .line 404
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-object v0
.end method

.method public getPlatformBitmapFactory()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object v0
.end method

.method public getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mPoolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    return-object v0
.end method

.method public getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;
    .registers 2

    .line 420
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    return-object v0
.end method

.method public getRequestListener2s()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mRequestListener2s:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequestListeners()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mRequestListeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;
    .registers 2

    .line 440
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object v0
.end method

.method public isDiskCacheEnabled()Z
    .registers 2

    .line 338
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mDiskCacheEnabled:Z

    return v0
.end method

.method public isDownsampleEnabled()Z
    .registers 2

    .line 333
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mDownsampleEnabled:Z

    return v0
.end method

.method public isResizeAndRotateEnabledForNetwork()Z
    .registers 2

    .line 435
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mResizeAndRotateEnabledForNetwork:Z

    return v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineConfig.AnonymousClass1 (com.facebook.imagepipeline.core.ImagePipelineConfig$1)
.class Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;->this$0:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    const/4 v0, 0x1

    .line 171
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 168
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineConfig.Builder (com.facebook.imagepipeline.core.ImagePipelineConfig$Builder)
.class public Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitmapConfig:Landroid/graphics/Bitmap$Config;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCallerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCloseableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

.field private final mContext:Landroid/content/Context;

.field private mDiskCacheEnabled:Z

.field private mDownsampleEnabled:Z

.field private mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mExperimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field private mFileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mHttpConnectionTimeout:I

.field private mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImageTranscoderType:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMemoryChunkType:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPoolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRequestListener2s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRequestListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mResizeAndRotateEnabledForNetwork:Z

.field private mSerialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 543
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDownsampleEnabled:Z

    const/4 v0, 0x0

    .line 549
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageTranscoderType:Ljava/lang/Integer;

    .line 553
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryChunkType:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mResizeAndRotateEnabledForNetwork:Z

    const/4 v1, -0x1

    .line 564
    iput v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mHttpConnectionTimeout:I

    .line 565
    new-instance v1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExperimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 567
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDiskCacheEnabled:Z

    .line 569
    new-instance v0, Lcom/facebook/imagepipeline/debug/NoOpCloseableReferenceLeakTracker;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/debug/NoOpCloseableReferenceLeakTracker;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mCloseableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    .line 578
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V
    .registers 3

    .line 532
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExperimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/Supplier;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageTranscoderType:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/Supplier;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/DiskCacheConfig;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)I
    .registers 1

    .line 532
    iget p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mHttpConnectionTimeout:I

    return p0
.end method

.method static synthetic access$1800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/Supplier;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolFactory;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mPoolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mRequestListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mRequestListener2s:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z
    .registers 1

    .line 532
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mResizeAndRotateEnabledForNetwork:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/DiskCacheConfig;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/ExecutorSupplier;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z
    .registers 1

    .line 532
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDiskCacheEnabled:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/callercontext/CallerContextVerifier;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mCallerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/content/Context;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mCloseableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/MemoryCache;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/MemoryCache;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/executors/SerialExecutorService;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mSerialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryChunkType:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/graphics/Bitmap$Config;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/FileCacheFactory;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mFileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z
    .registers 1

    .line 532
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDownsampleEnabled:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .registers 3

    .line 791
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    return-object v0
.end method

.method public experiment()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 2

    .line 787
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExperimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    return-object v0
.end method

.method public getBitmapMemoryCacheFactory()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    return-object v0
.end method

.method public getImageTranscoderType()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageTranscoderType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMemoryChunkType()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryChunkType:Ljava/lang/Integer;

    return-object v0
.end method

.method public isDiskCacheEnabled()Z
    .registers 2

    .line 629
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDiskCacheEnabled:Z

    return v0
.end method

.method public isDownsampleEnabled()Z
    .registers 2

    .line 620
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDownsampleEnabled:Z

    return v0
.end method

.method public setBitmapMemoryCache(Lcom/facebook/imagepipeline/cache/MemoryCache;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .param p1    # Lcom/facebook/imagepipeline/cache/MemoryCache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapMemoryCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 759
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object p0
.end method

.method public setBitmapMemoryCacheEntryStateObserver(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapMemoryCacheEntryStateObserver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    return-object p0
.end method

.method public setBitmapMemoryCacheFactory(Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .param p1    # Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapMemoryCacheFactory"
        }
    .end annotation

    .line 777
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    return-object p0
.end method

.method public setBitmapMemoryCacheParamsSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapMemoryCacheParamsSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 589
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/internal/Supplier;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public setBitmapMemoryCacheTrimStrategy(Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimStrategy"
        }
    .end annotation

    .line 600
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object p0
.end method

.method public setBitmapsConfig(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 582
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public setCacheKeyFactory(Lcom/facebook/imagepipeline/cache/CacheKeyFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKeyFactory"
        }
    .end annotation

    .line 605
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object p0
.end method

.method public setCallerContextVerifier(Lcom/facebook/callercontext/CallerContextVerifier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callerContextVerifier"
        }
    .end annotation

    .line 747
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mCallerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    return-object p0
.end method

.method public setCloseableReferenceLeakTracker(Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeableReferenceLeakTracker"
        }
    .end annotation

    .line 753
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mCloseableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    return-object p0
.end method

.method public setDiskCacheEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diskCacheEnabled"
        }
    .end annotation

    .line 633
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDiskCacheEnabled:Z

    return-object p0
.end method

.method public setDownsampleEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downsampleEnabled"
        }
    .end annotation

    .line 624
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDownsampleEnabled:Z

    return-object p0
.end method

.method public setEncodedMemoryCache(Lcom/facebook/imagepipeline/cache/MemoryCache;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .param p1    # Lcom/facebook/imagepipeline/cache/MemoryCache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedMemoryCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 765
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object p0
.end method

.method public setEncodedMemoryCacheParamsSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedMemoryCacheParamsSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 640
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/internal/Supplier;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public setExecutorServiceForAnimatedImages(Lcom/facebook/common/executors/SerialExecutorService;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .param p1    # Lcom/facebook/common/executors/SerialExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialExecutorService"
        }
    .end annotation

    .line 771
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mSerialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

    return-object p0
.end method

.method public setExecutorSupplier(Lcom/facebook/imagepipeline/core/ExecutorSupplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executorSupplier"
        }
    .end annotation

    .line 645
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    return-object p0
.end method

.method public setFileCacheFactory(Lcom/facebook/imagepipeline/core/FileCacheFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileCacheFactory"
        }
    .end annotation

    .line 615
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mFileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    return-object p0
.end method

.method public setHttpConnectionTimeout(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "httpConnectionTimeoutMs"
        }
    .end annotation

    .line 610
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mHttpConnectionTimeout:I

    return-object p0
.end method

.method public setImageCacheStatsTracker(Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageCacheStatsTracker"
        }
    .end annotation

    .line 650
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    return-object p0
.end method

.method public setImageDecoder(Lcom/facebook/imagepipeline/decoder/ImageDecoder;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageDecoder"
        }
    .end annotation

    .line 655
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    return-object p0
.end method

.method public setImageDecoderConfig(Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageDecoderConfig"
        }
    .end annotation

    .line 742
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    return-object p0
.end method

.method public setImageTranscoderFactory(Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageTranscoderFactory"
        }
    .end annotation

    .line 671
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    return-object p0
.end method

.method public setImageTranscoderType(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageTranscoderType"
        }
    .end annotation

    .line 666
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageTranscoderType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setIsPrefetchEnabledSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPrefetchEnabledSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 676
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public setMainDiskCacheConfig(Lcom/facebook/cache/disk/DiskCacheConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainDiskCacheConfig"
        }
    .end annotation

    .line 681
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object p0
.end method

.method public setMemoryChunkType(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryChunkType"
        }
    .end annotation

    .line 697
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryChunkType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMemoryTrimmableRegistry(Lcom/facebook/common/memory/MemoryTrimmableRegistry;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryTrimmableRegistry"
        }
    .end annotation

    .line 686
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object p0
.end method

.method public setNetworkFetcher(Lcom/facebook/imagepipeline/producers/NetworkFetcher;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkFetcher"
        }
    .end annotation

    .line 702
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-object p0
.end method

.method public setPlatformBitmapFactory(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "platformBitmapFactory"
        }
    .end annotation

    .line 707
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object p0
.end method

.method public setPoolFactory(Lcom/facebook/imagepipeline/memory/PoolFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poolFactory"
        }
    .end annotation

    .line 712
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mPoolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    return-object p0
.end method

.method public setProgressiveJpegConfig(Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressiveJpegConfig"
        }
    .end annotation

    .line 717
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    return-object p0
.end method

.method public setRequestListener2s(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 727
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mRequestListener2s:Ljava/util/Set;

    return-object p0
.end method

.method public setRequestListeners(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 722
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mRequestListeners:Ljava/util/Set;

    return-object p0
.end method

.method public setResizeAndRotateEnabledForNetwork(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resizeAndRotateEnabledForNetwork"
        }
    .end annotation

    .line 732
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mResizeAndRotateEnabledForNetwork:Z

    return-object p0
.end method

.method public setSmallImageDiskCacheConfig(Lcom/facebook/cache/disk/DiskCacheConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "smallImageDiskCacheConfig"
        }
    .end annotation

    .line 737
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object p0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineConfig.DefaultImageRequestConfig (com.facebook.imagepipeline.core.ImagePipelineConfig$DefaultImageRequestConfig)
.class public Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImageRequestConfig"
.end annotation


# instance fields
.field private mProgressiveRenderingEnabled:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 519
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;->mProgressiveRenderingEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V
    .registers 2

    .line 517
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public isProgressiveRenderingEnabled()Z
    .registers 2

    .line 528
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;->mProgressiveRenderingEnabled:Z

    return v0
.end method

.method public setProgressiveRenderingEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressiveRenderingEnabled"
        }
    .end annotation

    .line 524
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;->mProgressiveRenderingEnabled:Z

    return-void
.end method
