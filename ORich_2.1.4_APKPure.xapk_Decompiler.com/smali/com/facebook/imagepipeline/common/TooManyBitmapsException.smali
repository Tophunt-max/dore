###### Class com.facebook.imagepipeline.common.TooManyBitmapsException (com.facebook.imagepipeline.common.TooManyBitmapsException)
.class public Lcom/facebook/imagepipeline/common/TooManyBitmapsException;
.super Ljava/lang/RuntimeException;
.source "TooManyBitmapsException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detailMessage"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
