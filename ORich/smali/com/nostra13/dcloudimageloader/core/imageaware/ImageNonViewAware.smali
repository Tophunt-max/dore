###### Class com.nostra13.dcloudimageloader.core.imageaware.ImageNonViewAware (com.nostra13.dcloudimageloader.core.imageaware.ImageNonViewAware)
.class public Lcom/nostra13/dcloudimageloader/core/imageaware/ImageNonViewAware;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;


# instance fields
.field protected final imageSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

.field protected final scaleType:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;


# direct methods
.method public constructor <init>(Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageNonViewAware;->imageSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    .line 3
    iput-object p2, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageNonViewAware;->scaleType:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageNonViewAware;->imageSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    return v0
.end method

.method public getId()I
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getScaleType()Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageNonViewAware;->scaleType:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageNonViewAware;->imageSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    return v0
.end method

.method public getWrappedView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCollected()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
