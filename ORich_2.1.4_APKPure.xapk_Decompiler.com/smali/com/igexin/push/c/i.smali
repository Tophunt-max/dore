###### Class com.igexin.push.c.i (com.igexin.push.c.i)
.class public Lcom/igexin/push/c/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/igexin/push/c/i;

.field private static c:Lcom/igexin/push/c/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/igexin/push/c/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/c/i;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/igexin/push/util/a;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/igexin/push/c/h;->a:Lcom/igexin/push/c/h;

    goto :goto_e

    :cond_c
    sget-object v0, Lcom/igexin/push/c/h;->b:Lcom/igexin/push/c/h;

    :goto_e
    sput-object v0, Lcom/igexin/push/c/i;->c:Lcom/igexin/push/c/h;

    return-void
.end method

.method public static declared-synchronized a()Lcom/igexin/push/c/i;
    .registers 2

    const-class v0, Lcom/igexin/push/c/i;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/c/i;->b:Lcom/igexin/push/c/i;

    if-nez v1, :cond_e

    new-instance v1, Lcom/igexin/push/c/i;

    invoke-direct {v1}, Lcom/igexin/push/c/i;-><init>()V

    sput-object v1, Lcom/igexin/push/c/i;->b:Lcom/igexin/push/c/i;

    :cond_e
    sget-object v1, Lcom/igexin/push/c/i;->b:Lcom/igexin/push/c/i;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b()V
    .registers 5

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->hasMultipleXfr()Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|xfr len = 1, detect = false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_2a

    :cond_1d
    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/c/k;->c_()Lcom/igexin/push/c/k;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    :goto_2a
    return-void
.end method

.method public c()V
    .registers 4

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->hasMultipleXfr()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/igexin/push/c/i;->f()Lcom/igexin/push/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/m;->d()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_2d

    :catchall_f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/c/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_2d
    return-void
.end method

.method public d()Lcom/igexin/push/c/a;
    .registers 2

    invoke-virtual {p0}, Lcom/igexin/push/c/i;->f()Lcom/igexin/push/c/m;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    return-object v0
.end method

.method public e()V
    .registers 5

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->hasMultipleXfr()Z

    move-result v0

    const-string v1, "|"

    if-nez v0, :cond_42

    invoke-static {}, Lcom/igexin/push/c/q;->e_()V

    invoke-static {}, Lcom/igexin/push/c/k;->c_()Lcom/igexin/push/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/k;->d_()V

    :try_start_12
    invoke-static {}, Lcom/igexin/push/c/l;->a()Lcom/igexin/push/c/l;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/push/c/l;->d:Lcom/igexin/push/c/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/igexin/push/c/a;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/igexin/push/c/s;->a()Lcom/igexin/push/c/s;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/push/c/s;->d:Lcom/igexin/push/c/a;

    invoke-virtual {v0, v2}, Lcom/igexin/push/c/a;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/igexin/push/c/s;->a()Lcom/igexin/push/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/s;->g()V

    invoke-static {}, Lcom/igexin/push/c/l;->a()Lcom/igexin/push/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/l;->g()V

    invoke-static {}, Lcom/igexin/push/c/s;->a()Lcom/igexin/push/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/s;->j()V
    :try_end_3a
    .catchall {:try_start_12 .. :try_end_3a} :catchall_3b

    goto :goto_7d

    :catchall_3b
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_67

    :cond_42
    :try_start_42
    invoke-static {}, Lcom/igexin/push/c/s;->a()Lcom/igexin/push/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/s;->j()V

    invoke-static {}, Lcom/igexin/push/c/s;->a()Lcom/igexin/push/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/s;->f()V

    invoke-static {}, Lcom/igexin/push/c/l;->a()Lcom/igexin/push/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/l;->f()V

    invoke-virtual {p0}, Lcom/igexin/push/c/i;->f()Lcom/igexin/push/c/m;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lcom/igexin/push/c/m;->h()V
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_61

    goto :goto_7d

    :catchall_61
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_67
    sget-object v3, Lcom/igexin/push/c/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public declared-synchronized f()Lcom/igexin/push/c/m;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/igexin/push/util/a;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/igexin/push/c/s;->a()Lcom/igexin/push/c/s;

    move-result-object v0

    goto :goto_10

    :cond_c
    invoke-static {}, Lcom/igexin/push/c/l;->a()Lcom/igexin/push/c/l;

    move-result-object v0

    :goto_10
    invoke-virtual {v0}, Lcom/igexin/push/c/m;->b()Lcom/igexin/push/c/h;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/c/i;->c:Lcom/igexin/push/c/h;

    if-eq v1, v2, :cond_2f

    sget-object v2, Lcom/igexin/push/c/h;->a:Lcom/igexin/push/c/h;

    if-ne v1, v2, :cond_24

    invoke-static {}, Lcom/igexin/push/c/l;->a()Lcom/igexin/push/c/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/c/l;->e()V

    goto :goto_2f

    :cond_24
    sget-object v2, Lcom/igexin/push/c/h;->b:Lcom/igexin/push/c/h;

    if-ne v1, v2, :cond_2f

    invoke-static {}, Lcom/igexin/push/c/s;->a()Lcom/igexin/push/c/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/c/s;->e()V

    :cond_2f
    :goto_2f
    sput-object v1, Lcom/igexin/push/c/i;->c:Lcom/igexin/push/c/h;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    monitor-exit p0

    return-object v0

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
