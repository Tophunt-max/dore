###### Class com.igexin.push.core.a.g (com.igexin.push.core.a.g)
.class Lcom/igexin/push/core/a/g;
.super Lcom/igexin/push/g/b;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/a/f;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/igexin/push/core/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/a/g;->a:Lcom/igexin/push/core/a/f;

    invoke-direct {p0}, Lcom/igexin/push/g/b;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/igexin/push/core/a/g;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/a/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/core/a/g;->b:Z

    return p1
.end method


# virtual methods
.method protected a()V
    .registers 13

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/igexin/push/core/e/a;->a()Lcom/igexin/push/core/e/a;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    new-instance v3, Lcom/igexin/push/core/a/h;

    invoke-direct {v3, p0, v0}, Lcom/igexin/push/core/a/h;-><init>(Lcom/igexin/push/core/a/g;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/igexin/push/core/e/a;->a(Landroid/content/Context;Lcom/igexin/push/core/e/e;)V

    monitor-enter v0

    :try_start_14
    iget-boolean v1, p0, Lcom/igexin/push/core/a/g;->b:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_95

    if-eqz v1, :cond_1d

    const-wide/16 v1, 0x320

    :try_start_1a
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_95

    :catch_1d
    :cond_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_95

    :try_start_1e
    new-instance v0, Lcom/igexin/push/core/bean/a;

    invoke-direct {v0}, Lcom/igexin/push/core/bean/a;-><init>()V

    iget-wide v8, v0, Lcom/igexin/push/core/bean/a;->m:J

    invoke-static {v0}, Lcom/igexin/push/core/bean/a;->a(Lcom/igexin/push/core/bean/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addphoneinfo| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/c/d;->a()Lcom/igexin/push/core/c/d;

    move-result-object v10

    new-instance v11, Lcom/igexin/push/core/bean/i;

    const/4 v5, 0x5

    move-object v1, v11

    move-wide v2, v8

    move-object v4, v0

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/igexin/push/core/bean/i;-><init>(JLjava/lang/String;BJ)V

    invoke-virtual {v10, v11}, Lcom/igexin/push/core/c/d;->a(Lcom/igexin/push/core/bean/i;)V

    new-instance v1, Lcom/igexin/push/e/c/d;

    invoke-direct {v1}, Lcom/igexin/push/e/c/d;-><init>()V

    invoke-virtual {v1}, Lcom/igexin/push/e/c/d;->a()V

    long-to-int v2, v8

    iput v2, v1, Lcom/igexin/push/e/c/d;->a:I

    const-string v2, "17258000"

    iput-object v2, v1, Lcom/igexin/push/e/c/d;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/igexin/push/e/c/d;->e:Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    iput-object v0, v1, Lcom/igexin/push/e/c/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;)I

    sget-object v0, Lcom/igexin/push/core/f;->z:Ljava/lang/String;

    sget-object v1, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/h;->e(Ljava/lang/String;)Z
    :try_end_94
    .catchall {:try_start_1e .. :try_end_94} :catchall_94

    :catchall_94
    :cond_94
    return-void

    :catchall_95
    move-exception v1

    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v1
.end method
