###### Class com.nostra13.dcloudimageloader.core.DisplayBitmapTask (com.nostra13.dcloudimageloader.core.DisplayBitmapTask)
.class final Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_DISPLAY_IMAGE_IN_IMAGEAWARE:Ljava/lang/String; = "Display image in ImageAware (loaded from %1$s) [%2$s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED:Ljava/lang/String; = "ImageAware was collected by GC. Task is cancelled. [%s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_REUSED:Ljava/lang/String; = "ImageAware is reused for another image. Task is cancelled. [%s]"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final displayer:Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

.field private final engine:Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;

.field private final imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

.field private final imageUri:Ljava/lang/String;

.field private final listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

.field private final loadedFrom:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

.field private loggingEnabled:Z

.field private final memoryCacheKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p2, Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    .line 4
    iget-object p1, p2, Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    .line 5
    iget-object p1, p2, Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    .line 6
    iget-object p1, p2, Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->displayer:Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    .line 7
    iget-object p1, p2, Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;->listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

    .line 8
    iput-object p3, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->engine:Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;

    .line 9
    iput-object p4, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    return-void
.end method

.method private isViewWasReused()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->engine:Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-virtual {v0, v1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    .line 2
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->loggingEnabled:Z

    if-eqz v0, :cond_19

    new-array v0, v2, [Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_19
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_7e

    .line 7
    :cond_27
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->isViewWasReused()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 8
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->loggingEnabled:Z

    if-eqz v0, :cond_3c

    new-array v0, v2, [Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_3c
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_7e

    .line 14
    :cond_4a
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->loggingEnabled:Z

    if-eqz v0, :cond_5e

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    iget-object v3, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_5e
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->displayer:Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    iget-object v3, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-interface {v3}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 20
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->engine:Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-virtual {v0, v1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;)V

    :goto_7e
    return-void
.end method

.method setLoggingEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->loggingEnabled:Z

    return-void
.end method
