###### Class com.igexin.push.extension.distribution.gbd.h.a.c (com.igexin.push.extension.distribution.gbd.h.a.c)
.class public Lcom/igexin/push/extension/distribution/gbd/h/a/c;
.super Lcom/igexin/push/g/b/h;


# static fields
.field private static a:Lcom/igexin/push/extension/distribution/gbd/h/a/c;


# instance fields
.field private b:I


# direct methods
.method private constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/g/b/h;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/c;->o:Z

    return-void
.end method

.method private i()V
    .registers 5

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->aJ:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget v2, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/c;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/c;->b:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_11

    const-wide/16 v0, 0x7530

    :cond_11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/h/a/c;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method public static declared-synchronized i_()Lcom/igexin/push/extension/distribution/gbd/h/a/c;
    .registers 2

    const-class v0, Lcom/igexin/push/extension/distribution/gbd/h/a/c;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/h/a/c;->a:Lcom/igexin/push/extension/distribution/gbd/h/a/c;

    if-nez v1, :cond_e

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/h/a/c;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/gbd/h/a/c;-><init>()V

    sput-object v1, Lcom/igexin/push/extension/distribution/gbd/h/a/c;->a:Lcom/igexin/push/extension/distribution/gbd/h/a/c;

    :cond_e
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/h/a/c;->a:Lcom/igexin/push/extension/distribution/gbd/h/a/c;
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
.method protected a()V
    .registers 7

    :try_start_0
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_91

    const/16 v1, 0xc8

    const-string v2, "CATT"

    if-lt v0, v1, :cond_21

    :try_start_f
    const-string v0, " CAD length > 200, clean. "

    invoke-static {v2, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->e(Ljava/lang/String;)V

    :cond_21
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->x()J

    move-result-wide v0

    sget-wide v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    sub-long/2addr v0, v3

    sput-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_3a

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->x()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    sput-wide v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    :cond_3a
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-wide v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    invoke-virtual {v0, v3, v4}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->o(J)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-wide v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    invoke-virtual {v0, v3, v4}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->p(J)V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/h/a/c;->i()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAD  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SLST  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAT  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_f .. :try_end_91} :catchall_91

    :catchall_91
    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public c()V
    .registers 1

    invoke-super {p0}, Lcom/igexin/push/g/b/h;->c()V

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method
