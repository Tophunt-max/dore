###### Class com.bumptech.glide.provider.EncoderRegistry (com.bumptech.glide.provider.EncoderRegistry)
.class public Lcom/bumptech/glide/provider/EncoderRegistry;
.super Ljava/lang/Object;
.source "EncoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/provider/EncoderRegistry$Entry;
    }
.end annotation


# instance fields
.field private final encoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/provider/EncoderRegistry$Entry<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry;->encoders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Encoder<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry;->encoders:Ljava/util/List;

    new-instance v1, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 30
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEncoder(Ljava/lang/Class;)Lcom/bumptech/glide/load/Encoder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/Encoder<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry;->encoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;

    .line 21
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->handles(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 22
    iget-object p1, v1, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->encoder:Lcom/bumptech/glide/load/Encoder;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_20

    monitor-exit p0

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    .line 25
    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Encoder<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry;->encoders:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 34
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.bumptech.glide.provider.EncoderRegistry.Entry (com.bumptech.glide.provider.EncoderRegistry$Entry)
.class final Lcom/bumptech/glide/provider/EncoderRegistry$Entry;
.super Ljava/lang/Object;
.source "EncoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/provider/EncoderRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final encoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Encoder<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->dataClass:Ljava/lang/Class;

    .line 42
    iput-object p2, p0, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->encoder:Lcom/bumptech/glide/load/Encoder;

    return-void
.end method


# virtual methods
.method handles(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
