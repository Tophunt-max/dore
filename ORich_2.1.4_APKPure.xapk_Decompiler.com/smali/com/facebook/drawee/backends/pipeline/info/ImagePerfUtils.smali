###### Class com.facebook.drawee.backends.pipeline.info.ImagePerfUtils (com.facebook.drawee.backends.pipeline.info.ImagePerfUtils)
.class public Lcom/facebook/drawee/backends/pipeline/info/ImagePerfUtils;
.super Ljava/lang/Object;
.source "ImagePerfUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageLoadStatus"
        }
    .end annotation

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17

    const/4 v0, 0x5

    if-eq p0, v0, :cond_14

    const-string p0, "unknown"

    return-object p0

    :cond_14
    const-string p0, "error"

    return-object p0

    :cond_17
    const-string p0, "canceled"

    return-object p0

    :cond_1a
    const-string p0, "success"

    return-object p0

    :cond_1d
    const-string p0, "intermediate_available"

    return-object p0

    :cond_20
    const-string p0, "origin_available"

    return-object p0

    :cond_23
    const-string p0, "requested"

    return-object p0
.end method
