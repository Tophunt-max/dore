###### Class com.nostra13.dcloudimageloader.core.display.SimpleBitmapDisplayer (com.nostra13.dcloudimageloader.core.display.SimpleBitmapDisplayer)
.class public final Lcom/nostra13/dcloudimageloader/core/display/SimpleBitmapDisplayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;
    .registers 4

    .line 1
    invoke-interface {p2, p1}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->setImageBitmap(Landroid/graphics/Bitmap;)Z

    return-object p1
.end method
