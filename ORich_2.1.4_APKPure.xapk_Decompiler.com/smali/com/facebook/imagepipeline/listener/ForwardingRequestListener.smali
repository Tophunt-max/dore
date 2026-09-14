###### Class com.facebook.imagepipeline.listener.ForwardingRequestListener (com.facebook.imagepipeline.listener.ForwardingRequestListener)
.class public Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;
.super Ljava/lang/Object;
.source "ForwardingRequestListener.java"

# interfaces
.implements Lcom/facebook/imagepipeline/listener/RequestListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ForwardingRequestListener"


# instance fields
.field private final mRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    .line 27
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/listener/RequestListener;

    if-eqz v0, :cond_12

    .line 29
    iget-object v1, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestListeners"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    .line 36
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    if-eqz v2, :cond_18

    .line 38
    iget-object v3, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1b
    return-void
.end method

.method private onException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "t"
        }
    .end annotation

    const-string v0, "ForwardingRequestListener"

    .line 204
    invoke-static {v0, p1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public addRequestListener(Lcom/facebook/imagepipeline/listener/RequestListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestListener"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onProducerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "producerName",
            "producerEventName"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 125
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 127
    :try_start_11
    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/imagepipeline/listener/RequestListener;->onProducerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v2

    const-string v3, "InternalListener exception in onIntermediateChunkStart"

    .line 130
    invoke-direct {p0, v3, v2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public onProducerFinishWithCancellation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "producerName",
            "extraMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 111
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 113
    :try_start_11
    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/imagepipeline/listener/RequestListener;->onProducerFinishWithCancellation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v2

    const-string v3, "InternalListener exception in onProducerFinishWithCancellation"

    .line 116
    invoke-direct {p0, v3, v2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .registers 9
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "producerName",
            "t",
            "extraMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 96
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 98
    :try_start_11
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/listener/RequestListener;->onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v2

    const-string v3, "InternalListener exception in onProducerFinishWithFailure"

    .line 101
    invoke-direct {p0, v3, v2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "producerName",
            "extraMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 81
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 83
    :try_start_11
    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/imagepipeline/listener/RequestListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v2

    const-string v3, "InternalListener exception in onProducerFinishWithSuccess"

    .line 86
    invoke-direct {p0, v3, v2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public onProducerStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestId",
            "producerName"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 66
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 68
    :try_start_11
    invoke-interface {v2, p1, p2}, Lcom/facebook/imagepipeline/listener/RequestListener;->onProducerStart(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v2

    const-string v3, "InternalListener exception in onProducerStart"

    .line 71
    invoke-direct {p0, v3, v2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public onRequestCancellation(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestId"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 182
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 184
    :try_start_11
    invoke-interface {v2, p1}, Lcom/facebook/imagepipeline/listener/RequestListener;->onRequestCancellation(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v2

    const-string v3, "InternalListener exception in onRequestCancellation"

    .line 187
    invoke-direct {p0, v3, v2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public onRequestFailure(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "requestId",
            "throwable",
            "isPrefetch"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 168
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 170
    :try_start_11
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/listener/RequestListener;->onRequestFailure(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v2

    const-string v3, "InternalListener exception in onRequestFailure"

    .line 173
    invoke-direct {p0, v3, v2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public onRequestStart(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "callerContext",
            "requestId",
            "isPrefetch"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 52
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 54
    :try_start_11
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/listener/RequestListener;->onRequestStart(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v2

    const-string v3, "InternalListener exception in onRequestStart"

    .line 57
    invoke-direct {p0, v3, v2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public onRequestSuccess(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "requestId",
            "isPrefetch"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 153
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 155
    :try_start_11
    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/imagepipeline/listener/RequestListener;->onRequestSuccess(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v2

    const-string v3, "InternalListener exception in onRequestSuccess"

    .line 158
    invoke-direct {p0, v3, v2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public onUltimateProducerReached(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "producerName",
            "successful"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 139
    iget-object v2, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 141
    :try_start_11
    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/imagepipeline/listener/RequestListener;->onUltimateProducerReached(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v2

    const-string v3, "InternalListener exception in onProducerFinishWithSuccess"

    .line 144
    invoke-direct {p0, v3, v2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public requiresExtraMap(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 196
    iget-object v3, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->mRequestListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/listener/RequestListener;

    invoke-interface {v3, p1}, Lcom/facebook/imagepipeline/listener/RequestListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return v1
.end method
