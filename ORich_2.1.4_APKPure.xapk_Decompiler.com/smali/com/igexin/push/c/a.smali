###### Class com.igexin.push.c.a (com.igexin.push.c.a)
.class public Lcom/igexin/push/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field public volatile a:Lcom/igexin/push/c/d;

.field public b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected c:I

.field protected volatile d:J

.field protected volatile e:J

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/igexin/push/c/j;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/igexin/push/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/igexin/push/c/j;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/lang/Object;

.field private o:I

.field private p:Z

.field private final q:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/igexin/push/c/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/igexin/push/c/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/c/a;->l:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/c/a;->m:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/c/a;->n:Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/c/d;->a:Lcom/igexin/push/c/d;

    iput-object v0, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/push/c/a;->o:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/igexin/push/c/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/igexin/push/c/b;

    invoke-direct {v0, p0}, Lcom/igexin/push/c/b;-><init>(Lcom/igexin/push/c/a;)V

    iput-object v0, p0, Lcom/igexin/push/c/a;->q:Ljava/util/Comparator;

    return-void
.end method

.method private declared-synchronized a(Lcom/igexin/push/c/d;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|set domain type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/igexin/push/config/k;->f:Z

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    if-eq v0, p1, :cond_26

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/igexin/push/c/a;->a(Ljava/util/List;)V

    :cond_26
    sget-object v0, Lcom/igexin/push/c/c;->a:[I

    invoke-virtual {p1}, Lcom/igexin/push/c/d;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_72

    const/4 v4, 0x2

    if-eq v0, v4, :cond_40

    const/4 v4, 0x3

    if-eq v0, v4, :cond_39

    goto :goto_9d

    :cond_39
    iget-object v0, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    if-eq v0, p1, :cond_72

    iput v3, p0, Lcom/igexin/push/c/a;->o:I

    goto :goto_72

    :cond_40
    iget-object v0, p0, Lcom/igexin/push/c/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    if-eq v0, p1, :cond_4f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igexin/push/c/a;->d:J

    :cond_4f
    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_BAK:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/igexin/push/config/SDKUrlConfig;->setCmAddress(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|set domain type backup cm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getCmAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6e
    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_9d

    :cond_72
    :goto_72
    iput v3, p0, Lcom/igexin/push/c/a;->g:I

    invoke-direct {p0, v2}, Lcom/igexin/push/c/a;->c(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/config/SDKUrlConfig;->setCmAddress(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/c/d;->a:Lcom/igexin/push/c/d;

    if-ne p1, v0, :cond_84

    iget-object v0, p0, Lcom/igexin/push/c/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|set domain type normal cm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getCmAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    :goto_9d
    iput-object p1, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    invoke-static {}, Lcom/igexin/push/c/i;->a()Lcom/igexin/push/c/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/c/i;->f()Lcom/igexin/push/c/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/c/m;->n()V
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_ac

    :cond_aa
    monitor-exit p0

    return-void

    :catchall_ac
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    iget-object v2, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    new-instance v3, Lcom/igexin/push/c/e;

    invoke-direct {v3}, Lcom/igexin/push/c/e;-><init>()V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/igexin/push/c/e;->a(Lorg/json/JSONObject;)Lcom/igexin/push/c/e;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|get cm from cache, isWifi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/igexin/push/c/a;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastCmList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_45

    goto :goto_63

    :catchall_45
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_63
    return-void
.end method

.method private b(Z)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/igexin/push/c/a;->n:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_10d

    :try_start_4
    iget-boolean v2, p0, Lcom/igexin/push/c/a;->p:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/igexin/push/core/f;->av:Ljava/lang/String;

    goto :goto_d

    :cond_b
    sget-object v2, Lcom/igexin/push/core/f;->aw:Ljava/lang/String;

    :goto_d
    iget-object v3, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_38

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cm list size = 0"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iput v4, p0, Lcom/igexin/push/c/a;->i:I

    iput v4, p0, Lcom/igexin/push/c/a;->h:I

    monitor-exit v1

    return-object v0

    :cond_38
    iget-object v3, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    invoke-direct {p0, v2}, Lcom/igexin/push/c/a;->a(Ljava/lang/String;)V

    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "cm try = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/igexin/push/c/a;->i:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " times"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v5, p0, Lcom/igexin/push/c/a;->i:I

    mul-int/lit8 v2, v2, 0x3

    if-lt v5, v2, :cond_94

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cm invalid"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iput v4, p0, Lcom/igexin/push/c/a;->i:I

    iput v4, p0, Lcom/igexin/push/c/a;->h:I

    iget-object p1, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-object v0

    :cond_94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9e
    :goto_9e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/igexin/push/c/e;

    iget-wide v7, v6, Lcom/igexin/push/c/e;->b:J

    cmp-long v9, v7, v2

    if-gez v9, :cond_9e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|add["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/igexin/push/c/e;->a:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] outDate"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_9e

    :cond_d4
    invoke-virtual {p0}, Lcom/igexin/push/c/a;->d()V

    iget-object v2, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e1

    monitor-exit v1

    return-object v0

    :cond_e1
    if-eqz p1, :cond_e9

    iget p1, p0, Lcom/igexin/push/c/a;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/igexin/push/c/a;->i:I

    :cond_e9
    iget p1, p0, Lcom/igexin/push/c/a;->h:I

    iget-object v2, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_f4

    goto :goto_f6

    :cond_f4
    iget v4, p0, Lcom/igexin/push/c/a;->h:I

    :goto_f6
    iput v4, p0, Lcom/igexin/push/c/a;->h:I

    iget-object p1, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/c/e;

    iget-object p1, p1, Lcom/igexin/push/c/e;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/push/c/a;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/igexin/push/c/a;->h:I

    monitor-exit v1

    return-object p1

    :catchall_10a
    move-exception p1

    monitor-exit v1
    :try_end_10c
    .catchall {:try_start_4 .. :try_end_10c} :catchall_10a

    :try_start_10c
    throw p1
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10d} :catch_10d

    :catch_10d
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private c(Z)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/c/a;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/igexin/push/c/a;->g:I

    iget-object v2, p0, Lcom/igexin/push/c/a;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_f

    const/4 v1, 0x0

    goto :goto_11

    :cond_f
    iget v1, p0, Lcom/igexin/push/c/a;->g:I

    :goto_11
    iput v1, p0, Lcom/igexin/push/c/a;->g:I

    iget-object v2, p0, Lcom/igexin/push/c/a;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/c/j;

    iput-object v1, p0, Lcom/igexin/push/c/a;->j:Lcom/igexin/push/c/j;

    invoke-virtual {v1, p1}, Lcom/igexin/push/c/j;->b(Z)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method private j()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|before disconnect, type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/c/c;->a:[I

    iget-object v1, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    invoke-virtual {v1}, Lcom/igexin/push/c/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    goto :goto_56

    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/c/a;->d:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/igexin/push/config/k;->x:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_56

    sget-object v0, Lcom/igexin/push/c/d;->c:Lcom/igexin/push/c/d;

    :goto_3b
    invoke-direct {p0, v0}, Lcom/igexin/push/c/a;->a(Lcom/igexin/push/c/d;)V

    goto :goto_56

    :cond_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/c/a;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_56

    iget v0, p0, Lcom/igexin/push/c/a;->c:I

    sget v1, Lcom/igexin/push/config/k;->z:I

    if-le v0, v1, :cond_56

    sget-object v0, Lcom/igexin/push/c/d;->b:Lcom/igexin/push/c/d;

    goto :goto_3b

    :cond_56
    :goto_56
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/igexin/push/c/e;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/igexin/push/c/a;->n:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput v1, p0, Lcom/igexin/push/c/a;->h:I

    iput v1, p0, Lcom/igexin/push/c/a;->i:I

    iget-object v1, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_31

    iget-object v1, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|set cm list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_31
    invoke-virtual {p0}, Lcom/igexin/push/c/a;->d()V

    monitor-exit v0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/c/a;->p:Z

    return-void
.end method

.method public a()Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/f/a;->h()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-direct {p0, v1}, Lcom/igexin/push/c/a;->b(Z)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|get from cm = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    if-nez v3, :cond_68

    sget-boolean v3, Lcom/igexin/push/config/k;->f:Z

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    sget-object v4, Lcom/igexin/push/c/d;->b:Lcom/igexin/push/c/d;

    if-ne v3, v4, :cond_54

    iget v1, p0, Lcom/igexin/push/c/a;->g:I

    sget-object v3, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_BAK:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_45

    const/4 v1, 0x0

    goto :goto_47

    :cond_45
    iget v1, p0, Lcom/igexin/push/c/a;->g:I

    :goto_47
    iput v1, p0, Lcom/igexin/push/c/a;->g:I

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_BAK:[Ljava/lang/String;

    iget v3, p0, Lcom/igexin/push/c/a;->g:I

    aget-object v1, v1, v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/igexin/push/c/a;->g:I

    move-object v3, v1

    goto :goto_69

    :cond_54
    iget-object v3, p0, Lcom/igexin/push/c/a;->j:Lcom/igexin/push/c/j;

    if-eqz v3, :cond_63

    invoke-virtual {v3}, Lcom/igexin/push/c/j;->f()Z

    move-result v3

    if-nez v3, :cond_63

    iget v3, p0, Lcom/igexin/push/c/a;->g:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/igexin/push/c/a;->g:I

    :cond_63
    invoke-direct {p0, v1}, Lcom/igexin/push/c/a;->c(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_69

    :cond_68
    const/4 v0, 0x1

    :goto_69
    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getCmAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|address changed : form ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getCmAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_9b
    invoke-static {v3}, Lcom/igexin/push/config/SDKUrlConfig;->setCmAddress(Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9e} :catch_9f

    goto :goto_c0

    :catch_9f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|switch address|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_c0
    return v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/igexin/push/c/a;->i:I

    iget-object v0, p0, Lcom/igexin/push/c/a;->j:Lcom/igexin/push/c/j;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/igexin/push/c/j;->g()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/igexin/push/c/j;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/igexin/push/c/a;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/igexin/push/c/a;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/igexin/push/c/a;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/igexin/push/c/a;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/igexin/push/c/a;->q:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/igexin/push/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/push/c/a;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|loginFailedlCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/igexin/push/c/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .registers 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/igexin/push/c/a;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/c/e;

    invoke-virtual {v2}, Lcom/igexin/push/c/e;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    :cond_1f
    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2c

    const-string v0, "null"

    goto :goto_30

    :cond_2c
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_30
    iget-boolean v2, p0, Lcom/igexin/push/c/a;->p:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/c/h;->c(Ljava/lang/String;Z)Z

    return-void
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/c/a;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput v1, p0, Lcom/igexin/push/c/a;->g:I

    iget-object v1, p0, Lcom/igexin/push/c/a;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/igexin/push/c/a;->q:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public f()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|detect success, current type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    sget-object v1, Lcom/igexin/push/c/d;->b:Lcom/igexin/push/c/d;

    if-ne v0, v1, :cond_32

    sget-object v0, Lcom/igexin/push/c/d;->c:Lcom/igexin/push/c/d;

    invoke-direct {p0, v0}, Lcom/igexin/push/c/a;->a(Lcom/igexin/push/c/d;)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igexin/push/f/a;->a(Z)V

    :cond_32
    return-void
.end method

.method public g()V
    .registers 6

    sget-object v0, Lcom/igexin/push/c/c;->a:[I

    iget-object v1, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    invoke-virtual {v1}, Lcom/igexin/push/c/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    goto :goto_20

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/c/a;->d:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/igexin/push/config/k;->x:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_20

    sget-object v0, Lcom/igexin/push/c/d;->c:Lcom/igexin/push/c/d;

    invoke-direct {p0, v0}, Lcom/igexin/push/c/a;->a(Lcom/igexin/push/c/d;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public h()V
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    sget-object v1, Lcom/igexin/push/c/d;->b:Lcom/igexin/push/c/d;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    iput v2, p0, Lcom/igexin/push/c/a;->c:I

    :cond_9
    sget-object v0, Lcom/igexin/push/c/c;->a:[I

    iget-object v1, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    invoke-virtual {v1}, Lcom/igexin/push/c/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    goto :goto_36

    :cond_1a
    sget-object v0, Lcom/igexin/push/c/d;->a:Lcom/igexin/push/c/d;

    invoke-direct {p0, v0}, Lcom/igexin/push/c/a;->a(Lcom/igexin/push/c/d;)V

    goto :goto_31

    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/c/a;->e:J

    invoke-static {}, Lcom/igexin/push/c/i;->a()Lcom/igexin/push/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/i;->f()Lcom/igexin/push/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/m;->n()V

    :goto_31
    iget-object v0, p0, Lcom/igexin/push/c/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_36
    return-void
.end method

.method public i()V
    .registers 3

    invoke-direct {p0}, Lcom/igexin/push/c/a;->j()V

    sget-boolean v0, Lcom/igexin/push/core/f;->l:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    sget-object v1, Lcom/igexin/push/c/d;->b:Lcom/igexin/push/c/d;

    if-eq v0, v1, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/c/a;->e:J

    invoke-static {}, Lcom/igexin/push/c/i;->a()Lcom/igexin/push/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/i;->f()Lcom/igexin/push/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/m;->n()V

    :cond_1e
    sget-object v0, Lcom/igexin/push/c/c;->a:[I

    iget-object v1, p0, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    invoke-virtual {v1}, Lcom/igexin/push/c/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    goto :goto_44

    :cond_2c
    iget v0, p0, Lcom/igexin/push/c/a;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/push/c/a;->o:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_44

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/push/c/a;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/c/a;->d:J

    sget-object v0, Lcom/igexin/push/c/d;->b:Lcom/igexin/push/c/d;

    invoke-direct {p0, v0}, Lcom/igexin/push/c/a;->a(Lcom/igexin/push/c/d;)V

    :cond_44
    :goto_44
    return-void
.end method
