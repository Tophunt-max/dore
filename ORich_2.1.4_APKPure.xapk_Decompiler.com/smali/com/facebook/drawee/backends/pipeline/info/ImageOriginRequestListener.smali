###### Class com.facebook.drawee.backends.pipeline.info.ImageOriginRequestListener (com.facebook.drawee.backends.pipeline.info.ImageOriginRequestListener)
.class public Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;
.super Lcom/facebook/imagepipeline/listener/BaseRequestListener;
.source "ImageOriginRequestListener.java"


# instance fields
.field private mControllerId:Ljava/lang/String;

.field private final mImageOriginLister:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V
    .registers 3
    .param p2    # Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controllerId",
            "imageOriginLister"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/facebook/imagepipeline/listener/BaseRequestListener;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;->mImageOriginLister:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    .line 25
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;->init(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerId"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;->mControllerId:Ljava/lang/String;

    return-void
.end method

.method public onUltimateProducerReached(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "ultimateProducerName",
            "successful"
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;->mImageOriginLister:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    if-eqz p1, :cond_d

    .line 41
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;->mControllerId:Ljava/lang/String;

    .line 43
    invoke-static {p2}, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginUtils;->mapProducerNameToImageOrigin(Ljava/lang/String;)I

    move-result v1

    .line 41
    invoke-interface {p1, v0, v1, p3, p2}, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;->onImageLoaded(Ljava/lang/String;IZLjava/lang/String;)V

    :cond_d
    return-void
.end method
