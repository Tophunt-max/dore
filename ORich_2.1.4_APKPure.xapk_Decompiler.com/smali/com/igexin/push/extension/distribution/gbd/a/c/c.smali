###### Class com.igexin.push.extension.distribution.gbd.a.c.c (com.igexin.push.extension.distribution.gbd.a.c.c)
.class public Lcom/igexin/push/extension/distribution/gbd/a/c/c;
.super Ljava/lang/Object;


# static fields
.field protected static a:I = 0x1

.field protected static b:I = 0x0

.field protected static c:I = -0x1

.field protected static d:I = -0x2

.field protected static e:I = -0x3

.field protected static f:I = -0x4

.field protected static g:I = -0x5

.field protected static h:I = -0x6

.field protected static i:I = -0x7

.field protected static j:I = -0x8

.field protected static k:I = -0x9

.field private static l:Lcom/igexin/push/extension/distribution/gbd/a/c/c;


# instance fields
.field private m:Landroid/content/Context;

.field private final n:Ljava/lang/Object;

.field private o:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

.field private p:Lcom/igexin/push/extension/distribution/gbd/a/c/m;

.field private q:J

.field private r:F

.field private volatile s:Z

.field private t:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->n:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->s:Z

    :try_start_d
    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->m:Landroid/content/Context;

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-direct {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->o:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-virtual {v0, p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/c;)V

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;

    invoke-direct {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->p:Lcom/igexin/push/extension/distribution/gbd/a/c/m;

    invoke-virtual {v0, p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/c;)V

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->t:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_3c
    return-void
.end method

.method public static a()Lcom/igexin/push/extension/distribution/gbd/a/c/c;
    .registers 2

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->l:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    if-nez v0, :cond_d

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->l:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    :cond_d
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->l:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/a/c/c;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->n:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .registers 11

    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v2, "|"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v1, v5, :cond_33

    iget-wide v3, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    div-long/2addr v7, v5

    div-long/2addr v7, v5

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->x()J

    move-result-wide v5

    sub-long/2addr v7, v3

    sub-long v3, v5, v7

    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/igexin/push/extension/distribution/gbd/b/c;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "|"

    if-nez p1, :cond_23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    :cond_23
    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/c;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/c;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/c;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/c;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/c;->e()Ljava/util/List;

    move-result-object p1

    :goto_4f
    if-eqz p1, :cond_74

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_74

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_71

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_74
    :goto_74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2b

    const/4 v1, 0x0

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_28

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2b
    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;Landroid/location/Location;Lcom/igexin/push/extension/distribution/gbd/b/c;IILjava/util/concurrent/ConcurrentHashMap;Ljava/util/List;Z)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Landroid/location/Location;",
            "Lcom/igexin/push/extension/distribution/gbd/b/c;",
            "II",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p7, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p7, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->x()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, "|"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(Lcom/igexin/push/extension/distribution/gbd/b/c;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->d()I

    move-result p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->e()I

    move-result p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->q:J

    invoke-virtual {p6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->r:F

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ANDROID"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p8, :cond_af

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :cond_af
    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b2
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveRALData: type = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GBD_RLA"

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/igexin/push/extension/distribution/gbd/a/c/c;)Lcom/igexin/push/extension/distribution/gbd/a/c/m;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->p:Lcom/igexin/push/extension/distribution/gbd/a/c/m;

    return-object p0
.end method

.method private b(Landroid/location/Location;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|"

    if-nez p1, :cond_2d

    const-string p1, "none"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->q:J

    const/4 p1, 0x0

    :goto_2a
    iput p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->r:F

    goto :goto_7b

    :cond_2d
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_6d

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->x()J

    move-result-wide v3

    goto :goto_73

    :cond_6d
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    sget-wide v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->T:J

    :goto_73
    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->q:J

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    goto :goto_2a

    :goto_7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "instantReport: type = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GBD_RLA"

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->m:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_38

    :cond_18
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_39

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3d

    if-eq v1, v3, :cond_36

    if-eq v1, v2, :cond_34

    const/4 v3, 0x4

    if-eq v1, v3, :cond_34

    const/4 v3, 0x5

    if-eq v1, v3, :cond_32

    goto :goto_3d

    :cond_32
    const/4 v0, 0x3

    goto :goto_3d

    :cond_34
    const/4 v0, 0x1

    goto :goto_3d

    :cond_36
    const/4 v0, 0x2

    goto :goto_3d

    :cond_38
    :goto_38
    return v0

    :catch_39
    move-exception v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    return v0
.end method

.method private e()I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->m:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_32

    :cond_18
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "plugged"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_33

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_30

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2c

    goto :goto_37

    :cond_2c
    const/4 v0, 0x3

    goto :goto_37

    :cond_2e
    const/4 v0, 0x2

    goto :goto_37

    :cond_30
    const/4 v0, 0x1

    goto :goto_37

    :cond_32
    :goto_32
    return v0

    :catch_33
    move-exception v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_37
    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 14

    const-string v0, "GBD_RLA"

    :try_start_2
    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b()I

    move-result v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in type black list, return."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    sget-boolean v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->n:Z

    if-nez v1, :cond_34

    const-string p1, "doSample 11 not enable."

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/d/d;->a()Lcom/igexin/push/extension/distribution/gbd/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/d/d;->e()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSample checkSafeStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dyn/sta type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->ah:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_ab

    const-string v2, "none"

    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->ah:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->ah:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->r()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    array-length v7, v2

    const/4 v8, 0x0

    :goto_7c
    if-ge v8, v7, :cond_ab

    aget-object v9, v2, v8

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    if-ne v10, v4, :cond_93

    aget-object v9, v9, v3

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a8

    :goto_91
    const/4 v3, 0x1

    goto :goto_ab

    :cond_93
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a8

    aget-object v10, v9, v4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v9, v9, v3

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a8

    if-lt v6, v10, :cond_a8

    goto :goto_91

    :cond_a8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7c

    :cond_ab
    :goto_ab
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInBrandBlackList: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0xb

    if-ne p1, v4, :cond_dc

    sget-wide v4, Lcom/igexin/push/extension/distribution/gbd/c/c;->aD:J

    sub-long v4, v2, v4

    sget-wide v6, Lcom/igexin/push/extension/distribution/gbd/c/a;->bF:J

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    cmp-long v8, v4, v6

    if-lez v8, :cond_dc

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->b(J)V

    :cond_dc
    if-eqz v1, :cond_eb

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->t:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_10e

    new-instance v2, Lcom/igexin/push/extension/distribution/gbd/a/c/d;

    invoke-direct {v2, p0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/d;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/c;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_10e

    :cond_eb
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->p:Lcom/igexin/push/extension/distribution/gbd/a/c/m;

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/a/c/e;->b:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    iput-object v1, p1, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/e;
    :try_end_f1
    .catchall {:try_start_2 .. :try_end_f1} :catchall_f2

    goto :goto_10e

    :catchall_f2
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type11 exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10e
    :goto_10e
    return-void
.end method

.method protected a(Landroid/location/Location;)V
    .registers 12

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->i:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v2, v0

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->o:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a()Lcom/igexin/push/extension/distribution/gbd/b/c;

    move-result-object v4

    const-string v0, "GBD_RLA"

    const-string v1, "gps location data."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a:I

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(Ljava/util/List;Landroid/location/Location;Lcom/igexin/push/extension/distribution/gbd/b/c;IILjava/util/concurrent/ConcurrentHashMap;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2c

    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method protected a(Ljava/util/List;II)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p2

    move/from16 v11, p3

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/16 v12, 0xb

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v11, v12, :cond_13

    const/4 v8, 0x1

    goto :goto_14

    :cond_13
    const/4 v8, 0x0

    :goto_14
    iget-object v0, v9, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->o:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-virtual {v0, v14}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a(Z)Landroid/location/Location;

    move-result-object v2

    iget-object v0, v9, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->o:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a()Lcom/igexin/push/extension/distribution/gbd/b/c;

    move-result-object v3

    const-string v15, "GBD_RLA"

    if-nez v2, :cond_3c

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Lcom/igexin/push/extension/distribution/gbd/b/c;->d()I

    move-result v0

    if-nez v0, :cond_3c

    :cond_2c
    if-eqz p1, :cond_34

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_34
    if-nez v8, :cond_3c

    const-string v0, "no collect data."

    invoke-static {v15, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3c
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(Ljava/util/List;Landroid/location/Location;Lcom/igexin/push/extension/distribution/gbd/b/c;IILjava/util/concurrent/ConcurrentHashMap;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->x:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6b

    aget-object v2, v1, v14

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    aget-object v1, v1, v13

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_6d

    :cond_6b
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6d
    if-eqz v0, :cond_c8

    sget v3, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b:I

    if-ne v10, v3, :cond_75

    const/4 v3, 0x1

    goto :goto_76

    :cond_75
    const/4 v3, 0x0

    :goto_76
    const/16 v4, 0xc

    if-ne v11, v4, :cond_7e

    if-eqz v3, :cond_7e

    if-nez v2, :cond_84

    :cond_7e
    if-ne v11, v12, :cond_86

    if-eqz v3, :cond_86

    if-eqz v1, :cond_86

    :cond_84
    const/4 v1, 0x1

    goto :goto_87

    :cond_86
    const/4 v1, 0x0

    :goto_87
    if-eqz v1, :cond_94

    invoke-virtual/range {p0 .. p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b()I

    move-result v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->d(I)Z

    move-result v1

    if-eqz v1, :cond_94

    goto :goto_95

    :cond_94
    const/4 v13, 0x0

    :goto_95
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz v13, :cond_b3

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instant r "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b(Ljava/lang/String;)V

    goto :goto_c8

    :cond_b3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not instant r, responseCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(Ljava/lang/String;)V

    :cond_c8
    :goto_c8
    return-void
.end method

.method public b()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "* * * * *"

    return-object v0
.end method
