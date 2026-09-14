###### Class io.dcloud.feature.uniapp.utils.bitmap.BitmapLoadCallback (io.dcloud.feature.uniapp.utils.bitmap.BitmapLoadCallback)
.class public interface abstract Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;
.super Ljava/lang/Object;
.source "BitmapLoadCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method
