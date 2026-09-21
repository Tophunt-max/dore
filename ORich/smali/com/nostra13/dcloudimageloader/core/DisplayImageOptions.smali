###### Class com.nostra13.dcloudimageloader.core.DisplayImageOptions (com.nostra13.dcloudimageloader.core.DisplayImageOptions)
.class public final Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    }
.end annotation


# instance fields
.field private final cacheInMemory:Z

.field private final cacheOnDisc:Z

.field private final considerExifParams:Z

.field private final decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private final delayBeforeLoading:I

.field private final displayer:Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

.field private final extraForDownloader:Ljava/lang/Object;

.field private final handler:Landroid/os/Handler;

.field private final imageForEmptyUri:Landroid/graphics/drawable/Drawable;

.field private final imageOnFail:Landroid/graphics/drawable/Drawable;

.field private final imageOnLoading:Landroid/graphics/drawable/Drawable;

.field private final imageResForEmptyUri:I

.field private final imageResOnFail:I

.field private final imageResOnLoading:I

.field private final imageScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

.field private final isSyncLoading:Z

.field private final postProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

.field private final preProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

.field private final resetViewBeforeLoading:Z


# direct methods
.method private constructor <init>(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$000(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    .line 4
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$100(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    .line 5
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$200(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageResOnFail:I

    .line 6
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$300(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$400(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$500(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$600(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    .line 10
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$700(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    .line 11
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$800(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->cacheOnDisc:Z

    .line 12
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$900(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    .line 13
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$1000(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 14
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$1100(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    .line 15
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$1200(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->considerExifParams:Z

    .line 16
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$1300(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$1400(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    .line 18
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$1500(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    .line 19
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$1600(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    .line 20
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$1700(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    .line 21
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->access$1800(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    return p0
.end method

.method static synthetic access$2000(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    return p0
.end method

.method static synthetic access$2100(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageResOnFail:I

    return p0
.end method

.method static synthetic access$2200(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->cacheOnDisc:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    return p0
.end method

.method static synthetic access$3100(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->considerExifParams:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return p0
.end method

.method public static createSimple()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;
    .registers 1

    .line 1
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public getDelayBeforeLoading()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    return v0
.end method

.method public getDisplayer()Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->displayer:Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method public getExtraForDownloader()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_6
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;

    if-nez v0, :cond_22

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0

    .line 8
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader.displayImage(...) must be invoked from the main thread or from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    return-object v0
.end method

.method public getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    if-eqz v0, :cond_9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_b

    :cond_9
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    :goto_b
    return-object p1
.end method

.method public getImageOnFail(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageResOnFail:I

    if-eqz v0, :cond_9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_b

    :cond_9
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    :goto_b
    return-object p1
.end method

.method public getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    if-eqz v0, :cond_9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_b

    :cond_9
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    :goto_b
    return-object p1
.end method

.method public getImageScaleType()Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public getPostProcessor()Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public getPreProcessor()Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public isCacheInMemory()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->cacheInMemory:Z

    return v0
.end method

.method public isCacheOnDisc()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->cacheOnDisc:Z

    return v0
.end method

.method public isConsiderExifParams()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->considerExifParams:Z

    return v0
.end method

.method public isResetViewBeforeLoading()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z

    return v0
.end method

.method isSyncLoading()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->isSyncLoading:Z

    return v0
.end method

.method public shouldDelayBeforeLoading()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->delayBeforeLoading:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public shouldPostProcess()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->postProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public shouldPreProcess()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->preProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public shouldShowImageForEmptyUri()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageResForEmptyUri:I

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public shouldShowImageOnFail()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageResOnFail:I

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public shouldShowImageOnLoading()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->imageResOnLoading:I

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

###### Class com.nostra13.dcloudimageloader.core.DisplayImageOptions.AnonymousClass1 (com.nostra13.dcloudimageloader.core.DisplayImageOptions$1)
.class synthetic Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.nostra13.dcloudimageloader.core.DisplayImageOptions.Builder (com.nostra13.dcloudimageloader.core.DisplayImageOptions$Builder)
.class public Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cacheInMemory:Z

.field private cacheOnDisc:Z

.field private considerExifParams:Z

.field private decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private delayBeforeLoading:I

.field private displayer:Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

.field private extraForDownloader:Ljava/lang/Object;

.field private handler:Landroid/os/Handler;

.field private imageForEmptyUri:Landroid/graphics/drawable/Drawable;

.field private imageOnFail:Landroid/graphics/drawable/Drawable;

.field private imageOnLoading:Landroid/graphics/drawable/Drawable;

.field private imageResForEmptyUri:I

.field private imageResOnFail:I

.field private imageResOnLoading:I

.field private imageScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

.field private isSyncLoading:Z

.field private postProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

.field private preProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

.field private resetViewBeforeLoading:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    .line 3
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    .line 4
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    .line 9
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    .line 10
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc:Z

    .line 23
    sget-object v2, Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    iput-object v2, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    .line 24
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 25
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    .line 26
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    .line 27
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    .line 28
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    .line 29
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    .line 30
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createBitmapDisplayer()Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    move-result-object v2

    iput-object v2, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    .line 31
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    .line 32
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    .line 33
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 34
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    return p0
.end method

.method static synthetic access$100(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    return p0
.end method

.method static synthetic access$1000(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    return p0
.end method

.method static synthetic access$1200(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    return p0
.end method

.method static synthetic access$200(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    return p0
.end method

.method static synthetic access$300(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    return p0
.end method

.method static synthetic access$700(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    return p0
.end method

.method static synthetic access$800(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc:Z

    return p0
.end method

.method static synthetic access$900(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    return-object p0
.end method


# virtual methods
.method public bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 2
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitmapConfig can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;
    .registers 3

    .line 1
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$1;)V

    return-object v0
.end method

.method public cacheInMemory()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    return-object p0
.end method

.method public cacheInMemory(Z)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    return-object p0
.end method

.method public cacheOnDisc()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc:Z

    return-object p0
.end method

.method public cacheOnDisc(Z)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc:Z

    return-object p0
.end method

.method public cloneFrom(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$1900(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    .line 2
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$2000(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    .line 3
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$2100(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    .line 4
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$2200(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$2300(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$2400(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$2500(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    .line 8
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$2600(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    .line 9
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$2700(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc:Z

    .line 10
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$2800(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    .line 11
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$2900(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 12
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$3000(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    .line 13
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$3100(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    .line 14
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$3200(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$3300(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    .line 16
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$3400(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    .line 17
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$3500(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    .line 18
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$3600(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    .line 19
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->access$3700(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    return-object p0
.end method

.method public considerExifParams(Z)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    return-object p0
.end method

.method public decodingOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "decodingOptions can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delayBeforeLoading(I)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    return-object p0
.end method

.method public displayer(Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    return-object p0

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "displayer can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extraForDownloader(Ljava/lang/Object;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    return-object p0
.end method

.method public handler(Landroid/os/Handler;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public imageScaleType(Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    return-object p0
.end method

.method public postProcessor(Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public preProcessor(Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public resetViewBeforeLoading()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    return-object p0
.end method

.method public resetViewBeforeLoading(Z)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    return-object p0
.end method

.method public showImageForEmptyUri(I)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    return-object p0
.end method

.method public showImageForEmptyUri(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public showImageOnFail(I)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    return-object p0
.end method

.method public showImageOnFail(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public showImageOnLoading(I)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    return-object p0
.end method

.method public showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public showStubImage(I)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    return-object p0
.end method

.method syncLoading(Z)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    return-object p0
.end method
