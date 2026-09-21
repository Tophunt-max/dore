###### Class com.igexin.push.extension.distribution.gbd.a.c.m (com.igexin.push.extension.distribution.gbd.a.c.m)
.class public Lcom/igexin/push/extension/distribution/gbd/a/c/m;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/lang/String; = "GBD_WA"


# instance fields
.field protected a:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

.field protected b:I

.field private d:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

.field private e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/igexin/push/extension/distribution/gbd/i/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igexin/push/extension/distribution/gbd/i/ak<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->j:J

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/c/e;->b:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    sget v0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b:I

    iput v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->b:I

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->i:Landroid/content/Context;

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a()V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->b()V

    return-void
.end method

.method private a()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->h:Ljava/util/List;

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/c/n;

    invoke-direct {v0, p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/n;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/m;)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->e:Ljava/util/Comparator;

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/c/o;

    invoke-direct {v0, p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/o;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/m;)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->f:Ljava/util/Comparator;

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/i/ak;

    invoke-direct {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/ak;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->g:Lcom/igexin/push/extension/distribution/gbd/i/ak;

    return-void
.end method

.method private a(II)V
    .registers 5

    :try_start_0
    iput p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->b:I

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->d:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->h:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(Ljava/util/List;II)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_13
    return-void
.end method

.method private a(Ljava/lang/Object;I)V
    .registers 13

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/c/e;->b:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    if-nez p1, :cond_a

    const/4 v0, 0x5

    if-ne p2, v0, :cond_a

    return-void

    :cond_a
    if-nez p1, :cond_15

    const/4 v0, -0x1

    if-ne p2, v0, :cond_15

    sget p1, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->j:I

    :goto_11
    invoke-direct {p0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a(II)V

    return-void

    :cond_15
    const/16 v0, 0xb

    if-nez p1, :cond_1e

    if-ne p2, v0, :cond_1e

    sget p1, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->f:I

    goto :goto_11

    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_cf

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_35

    if-ne p2, v0, :cond_cf

    sget p1, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->g:I

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a(II)V

    return-void

    :cond_35
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->e:Ljava/util/Comparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_83

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v5, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_80

    iget v7, v4, Landroid/net/wifi/ScanResult;->level:I

    sget v8, Lcom/igexin/push/extension/distribution/gbd/c/a;->q:I

    if-le v7, v8, :cond_80

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_80

    sget v7, Lcom/igexin/push/extension/distribution/gbd/c/a;->s:I

    if-ge v3, v7, :cond_83

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_83
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c7

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->f:Ljava/util/Comparator;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_cf

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->g:Lcom/igexin/push/extension/distribution/gbd/i/ak;

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->m:Ljava/util/List;

    invoke-virtual {p1, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/ak;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_cf

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_cf

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v2, p1

    int-to-double v2, v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v4, p1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    double-to-int p1, v2

    sget v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->t:I

    if-ge p1, v2, :cond_cf

    if-ne p2, v0, :cond_cf

    sget p1, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->h:I

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a(II)V

    return-void

    :cond_c7
    if-ne p2, v0, :cond_cf

    sget p1, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->i:I

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a(II)V

    return-void

    :cond_cf
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_dc

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(Ljava/util/List;)V

    :cond_dc
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->d:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->h:Ljava/util/List;

    sget v1, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b:I

    invoke-virtual {p1, v0, v1, p2}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(Ljava/util/List;II)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_e5} :catch_e6

    goto :goto_ea

    :catch_e6
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_ea
    return-void
.end method

.method private b()V
    .registers 3

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->f:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_f
    return-void
.end method

.method private b(I)V
    .registers 12

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->i:Z

    const/4 v1, 0x5

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eqz v0, :cond_5b

    sget-wide v4, Lcom/igexin/push/extension/distribution/gbd/c/c;->j:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/igexin/push/extension/distribution/gbd/c/c;->j:J

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v8, Lcom/igexin/push/extension/distribution/gbd/c/c;->j:J

    sub-long/2addr v4, v8

    sget v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->r:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    cmp-long v0, v4, v8

    if-lez v0, :cond_46

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeout, type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v2, :cond_61

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->c:Ljava/lang/String;

    const-string v1, "timeout report"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :cond_46
    sput-wide v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->j:J

    :try_start_48
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a(Ljava/lang/Object;I)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_52

    goto :goto_64

    :catch_52
    move-exception p1

    const/4 v0, -0x1

    invoke-direct {p0, v3, v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a(Ljava/lang/Object;I)V

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    goto :goto_64

    :cond_5b
    if-ne p1, v2, :cond_61

    :goto_5d
    invoke-direct {p0, v3, p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a(Ljava/lang/Object;I)V

    goto :goto_64

    :cond_61
    invoke-direct {p0, v3, v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a(Ljava/lang/Object;I)V

    :goto_64
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/c/e;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    sget v0, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b:I

    iput v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->b:I

    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->b(I)V

    return-void
.end method

.method public a(Lcom/igexin/push/extension/distribution/gbd/a/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->d:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    return-void
.end method
