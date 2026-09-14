###### Class io.dcloud.g.b.e (io.dcloud.g.b.e)
.class public Lio/dcloud/g/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lio/dcloud/g/b/e;


# instance fields
.field private volatile a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/IPdrModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/g/b/e;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static a()Lio/dcloud/g/b/e;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/g/b/e;->b:Lio/dcloud/g/b/e;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/g/b/e;

    invoke-direct {v0}, Lio/dcloud/g/b/e;-><init>()V

    sput-object v0, Lio/dcloud/g/b/e;->b:Lio/dcloud/g/b/e;

    .line 4
    :cond_b
    sget-object v0, Lio/dcloud/g/b/e;->b:Lio/dcloud/g/b/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/dcloud/common/DHInterface/IPdrModule;
    .registers 3

    .line 8
    iget-object v0, p0, Lio/dcloud/g/b/e;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lio/dcloud/g/b/e;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/IPdrModule;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lio/dcloud/common/DHInterface/IPdrModule;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_b

    .line 7
    :try_start_2
    iget-object v0, p0, Lio/dcloud/g/b/e;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_b} :catch_b
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lio/dcloud/common/DHInterface/IPdrModule;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_20

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lio/dcloud/g/b/e;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_a

    :cond_20
    return-void
.end method

.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/g/b/e;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lio/dcloud/g/b/e;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IPdrModule;

    if-eqz v1, :cond_a

    .line 4
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IPdrModule;->onDestroy()V

    goto :goto_a

    :cond_24
    return-void
.end method
