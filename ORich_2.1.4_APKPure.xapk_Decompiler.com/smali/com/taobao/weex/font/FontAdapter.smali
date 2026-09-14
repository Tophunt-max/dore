###### Class com.taobao.weex.font.FontAdapter (com.taobao.weex.font.FontAdapter)
.class public Lcom/taobao/weex/font/FontAdapter;
.super Ljava/lang/Object;
.source "FontAdapter.java"


# instance fields
.field private mFontListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/font/FontListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/font/FontAdapter;->mFontListener:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFontListener(Lcom/taobao/weex/font/FontListener;)V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/taobao/weex/font/FontAdapter;->mFontListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAddFontRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 42
    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/font/FontAdapter;->mFontListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/font/FontListener;

    .line 44
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/font/FontListener;->onAddFontRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 46
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public onFontLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 50
    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/font/FontAdapter;->mFontListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/font/FontListener;

    .line 52
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/font/FontListener;->onFontLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 54
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public removeFontListener(Lcom/taobao/weex/font/FontListener;)V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/taobao/weex/font/FontAdapter;->mFontListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
