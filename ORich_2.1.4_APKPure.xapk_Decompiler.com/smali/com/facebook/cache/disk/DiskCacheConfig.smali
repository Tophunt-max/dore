###### Class com.facebook.cache.disk.DiskCacheConfig (com.facebook.cache.disk.DiskCacheConfig)
.class public Lcom/facebook/cache/disk/DiskCacheConfig;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    }
.end annotation


# instance fields
.field private final mBaseDirectoryName:Ljava/lang/String;

.field private final mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

.field private final mContext:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDefaultSizeLimit:J

.field private final mDiskTrimmableRegistry:Lcom/facebook/common/disk/DiskTrimmableRegistry;

.field private final mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

.field private final mIndexPopulateAtStartupEnabled:Z

.field private final mLowDiskSpaceSizeLimit:J

.field private final mMinimumSizeLimit:J

.field private final mVersion:I


# direct methods
.method protected constructor <init>(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)V
    .registers 5
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
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$000(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$100(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    if-nez v1, :cond_14

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    const-string v2, "Either a non-null context or a base directory path or supplier must be provided."

    .line 45
    invoke-static {v1, v2}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 48
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$100(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    if-nez v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 49
    new-instance v0, Lcom/facebook/cache/disk/DiskCacheConfig$1;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/DiskCacheConfig$1;-><init>(Lcom/facebook/cache/disk/DiskCacheConfig;)V

    invoke-static {p1, v0}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$102(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;Lcom/facebook/common/internal/Supplier;)Lcom/facebook/common/internal/Supplier;

    .line 58
    :cond_2a
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$300(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mVersion:I

    .line 59
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$400(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mBaseDirectoryName:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$100(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/internal/Supplier;

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    .line 61
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$500(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mDefaultSizeLimit:J

    .line 62
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$600(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mLowDiskSpaceSizeLimit:J

    .line 63
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$700(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mMinimumSizeLimit:J

    .line 65
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$800(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    .line 67
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$900(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v0

    if-nez v0, :cond_71

    .line 68
    invoke-static {}, Lcom/facebook/cache/common/NoOpCacheErrorLogger;->getInstance()Lcom/facebook/cache/common/NoOpCacheErrorLogger;

    move-result-object v0

    goto :goto_75

    .line 69
    :cond_71
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$900(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v0

    :goto_75
    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 71
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$1000(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/cache/common/CacheEventListener;

    move-result-object v0

    if-nez v0, :cond_82

    .line 72
    invoke-static {}, Lcom/facebook/cache/common/NoOpCacheEventListener;->getInstance()Lcom/facebook/cache/common/NoOpCacheEventListener;

    move-result-object v0

    goto :goto_86

    .line 73
    :cond_82
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$1000(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/cache/common/CacheEventListener;

    move-result-object v0

    :goto_86
    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    .line 75
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$1100(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/common/disk/DiskTrimmableRegistry;

    move-result-object v0

    if-nez v0, :cond_93

    .line 76
    invoke-static {}, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;->getInstance()Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;

    move-result-object v0

    goto :goto_97

    .line 77
    :cond_93
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$1100(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/common/disk/DiskTrimmableRegistry;

    move-result-object v0

    :goto_97
    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mDiskTrimmableRegistry:Lcom/facebook/common/disk/DiskTrimmableRegistry;

    .line 78
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->access$1200(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mIndexPopulateAtStartupEnabled:Z

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/cache/disk/DiskCacheConfig;)Landroid/content/Context;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;-><init>(Landroid/content/Context;Lcom/facebook/cache/disk/DiskCacheConfig$1;)V

    return-object v0
.end method


# virtual methods
.method public getBaseDirectoryName()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mBaseDirectoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseDirectoryPathSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public getCacheErrorLogger()Lcom/facebook/cache/common/CacheErrorLogger;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object v0
.end method

.method public getCacheEventListener()Lcom/facebook/cache/common/CacheEventListener;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultSizeLimit()J
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mDefaultSizeLimit:J

    return-wide v0
.end method

.method public getDiskTrimmableRegistry()Lcom/facebook/common/disk/DiskTrimmableRegistry;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mDiskTrimmableRegistry:Lcom/facebook/common/disk/DiskTrimmableRegistry;

    return-object v0
.end method

.method public getEntryEvictionComparatorSupplier()Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    return-object v0
.end method

.method public getIndexPopulateAtStartupEnabled()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mIndexPopulateAtStartupEnabled:Z

    return v0
.end method

.method public getLowDiskSpaceSizeLimit()J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mLowDiskSpaceSizeLimit:J

    return-wide v0
.end method

.method public getMinimumSizeLimit()J
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mMinimumSizeLimit:J

    return-wide v0
.end method

.method public getVersion()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->mVersion:I

    return v0
.end method

###### Class com.facebook.cache.disk.DiskCacheConfig.AnonymousClass1 (com.facebook.cache.disk.DiskCacheConfig$1)
.class Lcom/facebook/cache/disk/DiskCacheConfig$1;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/disk/DiskCacheConfig;-><init>(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cache/disk/DiskCacheConfig;


# direct methods
.method constructor <init>(Lcom/facebook/cache/disk/DiskCacheConfig;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$1;->this$0:Lcom/facebook/cache/disk/DiskCacheConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/io/File;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$1;->this$0:Lcom/facebook/cache/disk/DiskCacheConfig;

    invoke-static {v0}, Lcom/facebook/cache/disk/DiskCacheConfig;->access$200(Lcom/facebook/cache/disk/DiskCacheConfig;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$1;->this$0:Lcom/facebook/cache/disk/DiskCacheConfig;

    invoke-static {v0}, Lcom/facebook/cache/disk/DiskCacheConfig;->access$200(Lcom/facebook/cache/disk/DiskCacheConfig;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DiskCacheConfig$1;->get()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.cache.disk.DiskCacheConfig.Builder (com.facebook.cache.disk.DiskCacheConfig$Builder)
.class public Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DiskCacheConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBaseDirectoryName:Ljava/lang/String;

.field private mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDiskTrimmableRegistry:Lcom/facebook/common/disk/DiskTrimmableRegistry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

.field private mIndexPopulateAtStartupEnabled:Z

.field private mMaxCacheSize:J

.field private mMaxCacheSizeOnLowDiskSpace:J

.field private mMaxCacheSizeOnVeryLowDiskSpace:J

.field private mVersion:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 144
    iput v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mVersion:I

    const-string v0, "image_cache"

    .line 145
    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryName:Ljava/lang/String;

    const-wide/32 v0, 0x2800000

    .line 147
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSize:J

    const-wide/32 v0, 0xa00000

    .line 148
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSizeOnLowDiskSpace:J

    const-wide/32 v0, 0x200000

    .line 149
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSizeOnVeryLowDiskSpace:J

    .line 150
    new-instance v0, Lcom/facebook/cache/disk/DefaultEntryEvictionComparatorSupplier;

    invoke-direct {v0}, Lcom/facebook/cache/disk/DefaultEntryEvictionComparatorSupplier;-><init>()V

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    .line 160
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/cache/disk/DiskCacheConfig$1;)V
    .registers 3

    .line 142
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Landroid/content/Context;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/common/internal/Supplier;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/cache/common/CacheEventListener;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;Lcom/facebook/common/internal/Supplier;)Lcom/facebook/common/internal/Supplier;
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/common/disk/DiskTrimmableRegistry;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mDiskTrimmableRegistry:Lcom/facebook/common/disk/DiskTrimmableRegistry;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Z
    .registers 1

    .line 142
    iget-boolean p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mIndexPopulateAtStartupEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)I
    .registers 1

    .line 142
    iget p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mVersion:I

    return p0
.end method

.method static synthetic access$400(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)J
    .registers 3

    .line 142
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSize:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)J
    .registers 3

    .line 142
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSizeOnLowDiskSpace:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)J
    .registers 3

    .line 142
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSizeOnVeryLowDiskSpace:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/cache/common/CacheErrorLogger;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/cache/disk/DiskCacheConfig;
    .registers 2

    .line 255
    new-instance v0, Lcom/facebook/cache/disk/DiskCacheConfig;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/DiskCacheConfig;-><init>(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)V

    return-object v0
.end method

.method public setBaseDirectoryName(Ljava/lang/String;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseDirectoryName"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryName:Ljava/lang/String;

    return-object p0
.end method

.method public setBaseDirectoryPath(Ljava/io/File;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "baseDirectoryPath"
        }
    .end annotation

    .line 186
    invoke-static {p1}, Lcom/facebook/common/internal/Suppliers;->of(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public setBaseDirectoryPathSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseDirectoryPathSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/facebook/cache/disk/DiskCacheConfig$Builder;"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public setCacheErrorLogger(Lcom/facebook/cache/common/CacheErrorLogger;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheErrorLogger"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object p0
.end method

.method public setCacheEventListener(Lcom/facebook/cache/common/CacheEventListener;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheEventListener"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    return-object p0
.end method

.method public setDiskTrimmableRegistry(Lcom/facebook/common/disk/DiskTrimmableRegistry;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diskTrimmableRegistry"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mDiskTrimmableRegistry:Lcom/facebook/common/disk/DiskTrimmableRegistry;

    return-object p0
.end method

.method public setEntryEvictionComparatorSupplier(Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    return-object p0
.end method

.method public setIndexPopulateAtStartupEnabled(Z)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indexEnabled"
        }
    .end annotation

    .line 250
    iput-boolean p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mIndexPopulateAtStartupEnabled:Z

    return-object p0
.end method

.method public setMaxCacheSize(J)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCacheSize"
        }
    .end annotation

    .line 197
    iput-wide p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSize:J

    return-object p0
.end method

.method public setMaxCacheSizeOnLowDiskSpace(J)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCacheSizeOnLowDiskSpace"
        }
    .end annotation

    .line 207
    iput-wide p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSizeOnLowDiskSpace:J

    return-object p0
.end method

.method public setMaxCacheSizeOnVeryLowDiskSpace(J)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCacheSizeOnVeryLowDiskSpace"
        }
    .end annotation

    .line 217
    iput-wide p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSizeOnVeryLowDiskSpace:J

    return-object p0
.end method

.method public setVersion(I)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 169
    iput p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mVersion:I

    return-object p0
.end method
