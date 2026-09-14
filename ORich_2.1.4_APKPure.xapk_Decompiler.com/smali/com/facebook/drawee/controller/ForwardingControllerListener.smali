###### Class com.facebook.drawee.controller.ForwardingControllerListener (com.facebook.drawee.controller.ForwardingControllerListener)
.class public Lcom/facebook/drawee/controller/ForwardingControllerListener;
.super Ljava/lang/Object;
.source "ForwardingControllerListener.java"

# interfaces
.implements Lcom/facebook/drawee/controller/ControllerListener;
.implements Lcom/facebook/fresco/ui/common/OnDrawControllerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/controller/ControllerListener<",
        "TINFO;>;",
        "Lcom/facebook/fresco/ui/common/OnDrawControllerListener<",
        "TINFO;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FdingControllerListener"


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    return-void
.end method

.method public static create()Lcom/facebook/drawee/controller/ForwardingControllerListener;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/drawee/controller/ForwardingControllerListener<",
            "TINFO;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/facebook/drawee/controller/ForwardingControllerListener;

    invoke-direct {v0}, Lcom/facebook/drawee/controller/ForwardingControllerListener;-><init>()V

    return-object v0
.end method

.method public static of(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/ForwardingControllerListener;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;)",
            "Lcom/facebook/drawee/controller/ForwardingControllerListener<",
            "TINFO;>;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->create()Lcom/facebook/drawee/controller/ForwardingControllerListener;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->addListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    return-object v0
.end method

.method public static of(Lcom/facebook/drawee/controller/ControllerListener;Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/ForwardingControllerListener;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener1",
            "listener2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;)",
            "Lcom/facebook/drawee/controller/ForwardingControllerListener<",
            "TINFO;>;"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->create()Lcom/facebook/drawee/controller/ForwardingControllerListener;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->addListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->addListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    return-object v0
.end method

.method private declared-synchronized onException(Ljava/lang/String;Ljava/lang/Throwable;)V
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

    monitor-enter p0

    :try_start_1
    const-string v0, "FdingControllerListener"

    .line 65
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 66
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/facebook/drawee/controller/ControllerListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 51
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearListeners()V
    .registers 2

    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 62
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "throwable"
        }
    .end annotation

    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_21

    .line 138
    :try_start_a
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v2, :cond_1e

    .line 140
    invoke-interface {v2, p1, p2}, Lcom/facebook/drawee/controller/ControllerListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_18
    .catchall {:try_start_a .. :try_end_17} :catchall_23

    goto :goto_1e

    :catch_18
    move-exception v2

    :try_start_19
    const-string v3, "InternalListener exception in onFailure"

    .line 144
    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_23

    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 147
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .registers 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
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
            "id",
            "imageInfo",
            "animatable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;",
            "Landroid/graphics/drawable/Animatable;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_21

    .line 90
    :try_start_a
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v2, :cond_1e

    .line 92
    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/drawee/controller/ControllerListener;->onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_18
    .catchall {:try_start_a .. :try_end_17} :catchall_23

    goto :goto_1e

    :catch_18
    move-exception v2

    :try_start_19
    const-string v3, "InternalListener exception in onFinalImageSet"

    .line 96
    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_23

    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 99
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onImageDrawn(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/DimensionsInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "imageInfo",
            "dimensionsInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;",
            "Lcom/facebook/fresco/ui/common/DimensionsInfo;",
            ")V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_24

    .line 170
    :try_start_9
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    .line 171
    instance-of v3, v2, Lcom/facebook/fresco/ui/common/OnDrawControllerListener;

    if-eqz v3, :cond_21

    .line 172
    check-cast v2, Lcom/facebook/fresco/ui/common/OnDrawControllerListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/fresco/ui/common/OnDrawControllerListener;->onImageDrawn(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/DimensionsInfo;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception v2

    const-string v3, "InternalListener exception in onImageDrawn"

    .line 176
    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_24
    return-void
.end method

.method public onIntermediateImageFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "throwable"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 122
    :try_start_9
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v2, :cond_1d

    .line 124
    invoke-interface {v2, p1, p2}, Lcom/facebook/drawee/controller/ControllerListener;->onIntermediateImageFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v2

    const-string v3, "InternalListener exception in onIntermediateImageFailed"

    .line 128
    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    return-void
.end method

.method public onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "imageInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 106
    :try_start_9
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v2, :cond_1d

    .line 108
    invoke-interface {v2, p1, p2}, Lcom/facebook/drawee/controller/ControllerListener;->onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v2

    const-string v3, "InternalListener exception in onIntermediateImageSet"

    .line 112
    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    return-void
.end method

.method public declared-synchronized onRelease(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_21

    .line 154
    :try_start_a
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v2, :cond_1e

    .line 156
    invoke-interface {v2, p1}, Lcom/facebook/drawee/controller/ControllerListener;->onRelease(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_18
    .catchall {:try_start_a .. :try_end_17} :catchall_23

    goto :goto_1e

    :catch_18
    move-exception v2

    :try_start_19
    const-string v3, "InternalListener exception in onRelease"

    .line 160
    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_23

    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 163
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "callerContext"
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_21

    .line 73
    :try_start_a
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v2, :cond_1e

    .line 75
    invoke-interface {v2, p1, p2}, Lcom/facebook/drawee/controller/ControllerListener;->onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_18
    .catchall {:try_start_a .. :try_end_17} :catchall_23

    goto :goto_1e

    :catch_18
    move-exception v2

    :try_start_19
    const-string v3, "InternalListener exception in onSubmit"

    .line 79
    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_23

    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 82
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeListener(Lcom/facebook/drawee/controller/ControllerListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_10

    .line 56
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 58
    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method
