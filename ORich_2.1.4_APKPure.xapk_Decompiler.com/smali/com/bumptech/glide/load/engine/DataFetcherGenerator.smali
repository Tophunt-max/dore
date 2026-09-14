###### Class com.bumptech.glide.load.engine.DataFetcherGenerator (com.bumptech.glide.load.engine.DataFetcherGenerator)
.class interface abstract Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
.super Ljava/lang/Object;
.source "DataFetcherGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract startNext()Z
.end method

###### Class com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback (com.bumptech.glide.load.engine.DataFetcherGenerator$FetcherReadyCallback)
.class public interface abstract Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;
.super Ljava/lang/Object;
.source "DataFetcherGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FetcherReadyCallback"
.end annotation


# virtual methods
.method public abstract onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/Key;",
            ")V"
        }
    .end annotation
.end method

.method public abstract reschedule()V
.end method
