###### Class com.facebook.imagepipeline.transcoder.ImageTranscodeResult (com.facebook.imagepipeline.transcoder.ImageTranscodeResult)
.class public Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;
.super Ljava/lang/Object;
.source "ImageTranscodeResult.java"


# instance fields
.field private final mTranscodeStatus:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transcodeStatus"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;->mTranscodeStatus:I

    return-void
.end method


# virtual methods
.method public getTranscodeStatus()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;->mTranscodeStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 30
    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;->mTranscodeStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Status: %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
