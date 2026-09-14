###### Class com.nostra13.dcloudimageloader.core.download.NetworkDeniedImageDownloader (com.nostra13.dcloudimageloader.core.download.NetworkDeniedImageDownloader)
.class public Lcom/nostra13/dcloudimageloader/core/download/NetworkDeniedImageDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;


# instance fields
.field private final wrappedDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;


# direct methods
.method public constructor <init>(Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/download/NetworkDeniedImageDownloader;->wrappedDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    return-void
.end method


# virtual methods
.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    .line 6
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/download/NetworkDeniedImageDownloader;->wrappedDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    invoke-interface {v0, p1, p2}, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 7
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
