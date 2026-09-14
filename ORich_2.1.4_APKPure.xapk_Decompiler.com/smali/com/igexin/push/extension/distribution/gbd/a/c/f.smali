###### Class com.igexin.push.extension.distribution.gbd.a.c.f (com.igexin.push.extension.distribution.gbd.a.c.f)
.class public Lcom/igexin/push/extension/distribution/gbd/a/c/f;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/igexin/push/extension/distribution/gbd/a/c/f;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Ljava/net/DatagramSocket;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/extension/distribution/gbd/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->j:Z

    :try_start_6
    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->g:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->h:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->i:Ljava/util/Map;

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez p1, :cond_42

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-wide/16 v3, 0x4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    sget v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->aw:I

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_42
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez p1, :cond_60

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    sget v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->aw:I

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public static a()Lcom/igexin/push/extension/distribution/gbd/a/c/f;
    .registers 2

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    if-nez v0, :cond_d

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    :cond_d
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c:Ljava/net/DatagramSocket;

    return-object p1
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->x()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getlm type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GBD_SLMA"

    invoke-static {v2, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->b(Landroid/content/Context;)Lcom/igexin/push/extension/distribution/gbd/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/b/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/b/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/b/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/b/j;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/b/j;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ANDROID"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c()I

    move-result p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->d(I)Z

    move-result p1

    if-eqz p1, :cond_f7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "instant r "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(Ljava/lang/String;I)V

    goto :goto_11e

    :cond_f7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not instant r "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(Ljava/lang/String;I)V

    :goto_11e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "save type = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->j:Z

    return p1
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)[B
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/net/DatagramSocket;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic c(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->j:Z

    return p0
.end method

.method static synthetic d(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->d:Ljava/lang/String;

    return-object p0
.end method

.method private d()Ljava/util/ArrayList;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/igexin/push/extension/distribution/gbd/b/g;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->l()I

    move-result v1

    iget-object v2, v0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(JI)J

    move-result-wide v2

    iget-object v4, v0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->b(JI)J

    move-result-wide v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", end "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "GBD_SLMA"

    invoke-static {v6, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v7, v4, v2

    long-to-int v1, v7

    const/4 v7, 0x1

    add-int/2addr v1, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Ljava/lang/String;)J

    move-result-wide v14

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v6, Lcom/igexin/push/extension/distribution/gbd/c/a;->aw:I

    int-to-long v8, v6

    const-wide/16 v16, 0xfe

    cmp-long v6, v8, v16

    if-lez v6, :cond_11b

    invoke-static {v14, v15, v7}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(JI)J

    move-result-wide v6

    const/4 v12, 0x0

    invoke-static {v2, v3, v12}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(JI)J

    move-result-wide v2

    invoke-static {v4, v5, v12}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(JI)J

    move-result-wide v4

    new-instance v13, Lcom/igexin/push/extension/distribution/gbd/b/g;

    invoke-direct {v13}, Lcom/igexin/push/extension/distribution/gbd/b/g;-><init>()V

    move-wide v8, v14

    move-wide v10, v6

    move-object v0, v13

    const/16 v18, 0x0

    move-wide v12, v2

    invoke-static/range {v8 .. v13}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(JJJ)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/igexin/push/extension/distribution/gbd/b/g;->a(J)V

    move-wide v8, v14

    move-wide v12, v4

    invoke-static/range {v8 .. v13}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(JJJ)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/igexin/push/extension/distribution/gbd/b/g;->b(J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->n()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_12d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_12d

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget v6, Lcom/igexin/push/extension/distribution/gbd/c/a;->aw:I

    int-to-long v6, v6

    sub-long v6, v6, v16

    move-wide/from16 v18, v6

    const/4 v6, 0x0

    :goto_ab
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_12d

    new-instance v7, Lcom/igexin/push/extension/distribution/gbd/b/g;

    invoke-direct {v7}, Lcom/igexin/push/extension/distribution/gbd/b/g;-><init>()V

    const-wide/16 v20, 0x0

    cmp-long v8, v18, v16

    if-ltz v8, :cond_e8

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide v8, v14

    move-wide v12, v2

    invoke-static/range {v8 .. v13}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(JJJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/igexin/push/extension/distribution/gbd/b/g;->a(J)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide v8, v14

    move-wide v12, v4

    invoke-static/range {v8 .. v13}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(JJJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/igexin/push/extension/distribution/gbd/b/g;->b(J)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-long v18, v18, v16

    goto :goto_118

    :cond_e8
    cmp-long v8, v18, v20

    if-lez v8, :cond_118

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide v8, v14

    move-wide v12, v2

    invoke-static/range {v8 .. v13}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(JJJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/igexin/push/extension/distribution/gbd/b/g;->a(J)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide v8, v14

    move-wide/from16 v12, v18

    invoke-static/range {v8 .. v13}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(JJJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/igexin/push/extension/distribution/gbd/b/g;->b(J)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v18, v20

    :cond_118
    :goto_118
    add-int/lit8 v6, v6, 0x1

    goto :goto_ab

    :cond_11b
    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/b/g;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/b/g;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/extension/distribution/gbd/b/g;->a(J)V

    sget v4, Lcom/igexin/push/extension/distribution/gbd/c/a;->aw:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/extension/distribution/gbd/b/g;->b(J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12d
    return-object v1
.end method

.method static synthetic e(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->i:Ljava/util/Map;

    return-object p0
.end method

.method private e()[B
    .registers 6

    const/16 v0, 0x32

    new-array v0, v0, [B

    const/16 v1, 0x7e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x28

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v4, 0x20

    aput-byte v4, v0, v1

    const/16 v1, 0xd

    const/16 v4, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    const/16 v4, 0x4b

    aput-byte v4, v0, v1

    const/16 v1, 0xf

    :goto_44
    const/16 v4, 0x2d

    if-ge v1, v4, :cond_4f

    const/16 v4, 0x41

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_4f
    aput-byte v2, v0, v4

    const/16 v1, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v4, 0x21

    aput-byte v4, v0, v1

    const/16 v1, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    aput-byte v3, v0, v1

    return-object v0
.end method

.method static synthetic f(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic g(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic h(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic i(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->h:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public b()V
    .registers 8

    const-string v0, "GBD_SLMA"

    :try_start_2
    const-string v1, "dosample"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c()I

    move-result v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in type black list, return."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->h:Ljava/util/Map;

    if-eqz v1, :cond_36

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_36
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->g:Ljava/util/Map;

    if-eqz v1, :cond_3d

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_3d
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->i:Ljava/util/Map;

    if-eqz v1, :cond_44

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->j:Z

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->D()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSample checkSafeStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_78

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed, watchout as = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_78
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->e()Z

    move-result v1

    if-nez v1, :cond_8b

    goto :goto_ee

    :cond_8b
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_ed

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9e

    goto :goto_ed

    :cond_9e
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c:Ljava/net/DatagramSocket;

    if-nez v1, :cond_a9

    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c:Ljava/net/DatagramSocket;

    :cond_a9
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/igexin/push/extension/distribution/gbd/a/c/k;

    invoke-direct {v2, p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/k;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/extension/distribution/gbd/b/g;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/b/g;->a()J

    move-result-wide v2

    :goto_c7
    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/b/g;->b()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_b7

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/igexin/push/extension/distribution/gbd/a/c/l;

    invoke-static {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/igexin/push/extension/distribution/gbd/a/c/l;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_c7

    :cond_e1
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/a/c/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/h;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Lcom/igexin/push/extension/distribution/gbd/a/c/g;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_f8

    :cond_ed
    :goto_ed
    return-void

    :cond_ee
    :goto_ee
    const-string v1, "wifi = false or port failed"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_2 .. :try_end_f3} :catchall_f4

    return-void

    :catchall_f4
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_f8
    return-void
.end method

.method public c()I
    .registers 2

    const/16 v0, 0x1b

    return v0
.end method
