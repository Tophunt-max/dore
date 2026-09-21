###### Class com.nostra13.dcloudimageloader.core.download.SlowNetworkImageDownloader (com.nostra13.dcloudimageloader.core.download.SlowNetworkImageDownloader)
.class public Lcom/nostra13/dcloudimageloader/core/download/SlowNetworkImageDownloader;
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
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/download/SlowNetworkImageDownloader;->wrappedDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    return-void
.end method


# virtual methods
.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/download/SlowNetworkImageDownloader;->wrappedDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    invoke-interface {v0, p1, p2}, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p2

    .line 2
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    return-object p2

    .line 5
    :cond_15
    new-instance p1, Lcom/nostra13/dcloudimageloader/core/assist/FlushedInputStream;

    invoke-direct {p1, p2}, Lcom/nostra13/dcloudimageloader/core/assist/FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method
