###### Class com.igexin.push.extension.distribution.gbd.e.a.b (com.igexin.push.extension.distribution.gbd.e.a.b)
.class public Lcom/igexin/push/extension/distribution/gbd/e/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/push/extension/distribution/gbd/e/a/b;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/igexin/push/extension/distribution/gbd/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/igexin/push/extension/distribution/gbd/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/igexin/push/extension/distribution/gbd/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/igexin/push/extension/distribution/gbd/f/c;

.field private h:Lcom/igexin/push/extension/distribution/gbd/f/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->c:Z

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/e/a/c;

    invoke-direct {v0, p0}, Lcom/igexin/push/extension/distribution/gbd/e/a/c;-><init>(Lcom/igexin/push/extension/distribution/gbd/e/a/b;)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->e:Ljava/util/Comparator;

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/e/a/d;

    invoke-direct {v0, p0}, Lcom/igexin/push/extension/distribution/gbd/e/a/d;-><init>(Lcom/igexin/push/extension/distribution/gbd/e/a/b;)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->f:Ljava/util/Comparator;

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/e/a/e;

    invoke-direct {v0, p0}, Lcom/igexin/push/extension/distribution/gbd/e/a/e;-><init>(Lcom/igexin/push/extension/distribution/gbd/e/a/b;)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->g:Lcom/igexin/push/extension/distribution/gbd/f/c;

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/e/a/f;

    invoke-direct {v0, p0}, Lcom/igexin/push/extension/distribution/gbd/e/a/f;-><init>(Lcom/igexin/push/extension/distribution/gbd/e/a/b;)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->h:Lcom/igexin/push/extension/distribution/gbd/f/c;

    return-void
.end method

.method public static declared-synchronized a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;
    .registers 2

    const-class v0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    if-nez v1, :cond_e

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;-><init>()V

    sput-object v1, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    :cond_e
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/util/List;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/igexin/push/extension/distribution/gbd/b/i;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/igexin/push/extension/distribution/gbd/b/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/extension/distribution/gbd/b/i;

    const/16 v3, 0xa

    if-ge v1, v3, :cond_a

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/b/i;->b()I

    move-result v3

    if-ne v3, p2, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_26
    return-object v0
.end method

.method private a(ILjava/lang/StringBuilder;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/igexin/push/extension/distribution/gbd/b/i;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/f/a/f;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v1, p2, p1, p3}, Lcom/igexin/push/extension/distribution/gbd/f/a/f;-><init>([BILjava/util/List;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->h:Lcom/igexin/push/extension/distribution/gbd/f/c;

    invoke-virtual {v1, p1}, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->a(Lcom/igexin/push/extension/distribution/gbd/f/c;)V

    new-instance p1, Lcom/igexin/push/extension/distribution/gbd/f/a;

    invoke-direct {p1, v1}, Lcom/igexin/push/extension/distribution/gbd/f/a;-><init>(Lcom/igexin/push/extension/distribution/gbd/f/d;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, v0, p3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    if-nez p1, :cond_2e

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->c:Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    goto :goto_2e

    :catch_28
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->c:Z

    :cond_2e
    :goto_2e
    return-void
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/e/a/b;Ljava/util/List;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private a(Ljava/util/HashMap;III)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/extension/distribution/gbd/b/d;",
            ">;III)V"
        }
    .end annotation

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "GBD_RALDataManager"

    const-string v1, ""

    if-eqz p1, :cond_f1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ef

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/igexin/push/extension/distribution/gbd/b/d;

    sget-object v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->s:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3d

    const-string v7, "package name is empty"

    invoke-static {v0, v7}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_3d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_93

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_93

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_93

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_93

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/igexin/push/extension/distribution/gbd/b/d;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/igexin/push/extension/distribution/gbd/b/d;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/igexin/push/extension/distribution/gbd/b/d;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_17

    :cond_93
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/igexin/push/extension/distribution/gbd/b/d;->b()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/igexin/push/extension/distribution/gbd/b/d;->a()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/igexin/push/extension/distribution/gbd/b/d;->c()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v7

    goto/16 :goto_17

    :cond_ef
    move-object v1, v3

    goto :goto_f4

    :cond_f1
    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    :goto_f4
    if-nez p2, :cond_111

    if-nez p3, :cond_111

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_111

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_111

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_111

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_111

    return-void

    :cond_111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_214

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x4

    if-gt p1, v2, :cond_120

    goto/16 :goto_214

    :cond_120
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->x()J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq p4, v3, :cond_1ab

    const/4 v3, 0x3

    if-eq p4, v3, :cond_1ab

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "com.sina.weibo"

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1ce

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/ab;->a()Lcom/igexin/push/extension/distribution/gbd/i/ab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/gbd/i/ab;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ce

    :cond_1ab
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ce
    :goto_1ce
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->r()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x13

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->d(I)Z

    move-result p2

    if-eqz p2, :cond_207

    const-string p2, "instant r 19."

    invoke-static {v0, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(Ljava/lang/String;I)V

    goto :goto_213

    :cond_207
    const-string p2, "not instant r 19."

    invoke-static {v0, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(Ljava/lang/String;I)V

    :goto_213
    return-void

    :cond_214
    :goto_214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "convoyName is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", short and return."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/igexin/push/extension/distribution/gbd/b/i;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->d:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_46

    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_46

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-virtual {v4}, Lcom/igexin/push/extension/distribution/gbd/b/i;->a()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_18

    :cond_37
    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    const-string v3, "ral"

    const-string v4, "id"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    monitor-exit v0

    return-void

    :cond_46
    :goto_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method private a(Ljava/util/List;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/igexin/push/extension/distribution/gbd/b/i;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_c2

    :try_start_7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-virtual {v3}, Lcom/igexin/push/extension/distribution/gbd/b/i;->b()I

    move-result v3

    const/4 v4, 0x6

    const/16 v5, 0x2b

    const/16 v6, 0x26

    const/16 v7, 0x22

    const/16 v8, 0x20

    const/16 v9, 0x1f

    const/16 v10, 0x1c

    const/16 v11, 0x1b

    const/16 v12, 0x18

    const/16 v13, 0x13

    const/16 v14, 0xe

    const/16 v15, 0xb

    if-eqz p2, :cond_9c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct/range {p0 .. p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(Ljava/util/List;)V

    const/16 v0, 0xa

    if-ge v2, v0, :cond_3c

    if-ne v3, v4, :cond_3c

    :goto_37
    invoke-direct {v1, v15}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto/16 :goto_ca

    :cond_3c
    if-ge v2, v0, :cond_45

    if-ne v3, v15, :cond_45

    :goto_40
    invoke-direct {v1, v14}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto/16 :goto_ca

    :cond_45
    if-ge v2, v0, :cond_4e

    if-ne v3, v14, :cond_4e

    :goto_49
    invoke-direct {v1, v13}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto/16 :goto_ca

    :cond_4e
    if-ge v2, v0, :cond_57

    if-ne v3, v13, :cond_57

    :goto_52
    invoke-direct {v1, v12}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto/16 :goto_ca

    :cond_57
    if-ge v2, v0, :cond_60

    if-ne v3, v12, :cond_60

    :goto_5b
    invoke-direct {v1, v11}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto/16 :goto_ca

    :cond_60
    if-ge v2, v0, :cond_69

    if-ne v3, v11, :cond_69

    :goto_64
    invoke-direct {v1, v10}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto/16 :goto_ca

    :cond_69
    if-ge v2, v0, :cond_72

    if-ne v3, v10, :cond_72

    :goto_6d
    invoke-direct {v1, v9}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto/16 :goto_ca

    :cond_72
    if-ge v2, v0, :cond_7b

    if-ne v3, v9, :cond_7b

    :goto_76
    invoke-direct {v1, v8}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto/16 :goto_ca

    :cond_7b
    if-ge v2, v0, :cond_83

    if-ne v3, v8, :cond_83

    :goto_7f
    invoke-direct {v1, v7}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto :goto_ca

    :cond_83
    if-ge v2, v0, :cond_8b

    if-ne v3, v7, :cond_8b

    :goto_87
    invoke-direct {v1, v6}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto :goto_ca

    :cond_8b
    if-ge v2, v0, :cond_93

    if-ne v3, v6, :cond_93

    :goto_8f
    invoke-direct {v1, v5}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto :goto_ca

    :cond_93
    if-ge v2, v0, :cond_98

    if-ne v3, v5, :cond_98

    goto :goto_c2

    :cond_98
    invoke-direct {v1, v3}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto :goto_ca

    :cond_9c
    invoke-direct/range {p0 .. p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(Ljava/util/List;)V

    if-ne v3, v4, :cond_a2

    goto :goto_37

    :cond_a2
    if-ne v3, v15, :cond_a5

    goto :goto_40

    :cond_a5
    if-ne v3, v14, :cond_a8

    goto :goto_49

    :cond_a8
    if-ne v3, v13, :cond_ab

    goto :goto_52

    :cond_ab
    if-ne v3, v12, :cond_ae

    goto :goto_5b

    :cond_ae
    if-ne v3, v11, :cond_b1

    goto :goto_64

    :cond_b1
    if-ne v3, v10, :cond_b4

    goto :goto_6d

    :cond_b4
    if-ne v3, v9, :cond_b7

    goto :goto_76

    :cond_b7
    if-ne v3, v8, :cond_ba

    goto :goto_7f

    :cond_ba
    if-ne v3, v7, :cond_bd

    goto :goto_87

    :cond_bd
    if-ne v3, v6, :cond_c0

    goto :goto_8f

    :cond_c0
    if-ne v3, v5, :cond_ca

    :cond_c2
    :goto_c2
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->c:Z
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c5} :catch_c6

    goto :goto_ca

    :catch_c6
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method private b(I)V
    .registers 8

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b:Ljava/util/List;

    invoke-direct {p0, v2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_47

    :goto_17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_43

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_38

    invoke-virtual {v3}, Lcom/igexin/push/extension/distribution/gbd/b/i;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    :goto_34
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_38
    invoke-virtual {v3}, Lcom/igexin/push/extension/distribution/gbd/b/i;->c()Ljava/lang/String;

    move-result-object v5

    goto :goto_34

    :goto_3d
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_43
    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(ILjava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_8e

    :cond_47
    const/4 v0, 0x6

    const/16 v1, 0xb

    if-ne p1, v0, :cond_50

    :goto_4c
    invoke-direct {p0, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto :goto_8e

    :cond_50
    const/16 v0, 0xe

    if-ne p1, v1, :cond_58

    :goto_54
    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    goto :goto_8e

    :cond_58
    const/16 v1, 0x13

    if-ne p1, v0, :cond_5d

    goto :goto_4c

    :cond_5d
    const/16 v0, 0x18

    if-ne p1, v1, :cond_62

    goto :goto_54

    :cond_62
    const/16 v1, 0x1b

    if-ne p1, v0, :cond_67

    goto :goto_4c

    :cond_67
    const/16 v0, 0x1c

    if-ne p1, v1, :cond_6c

    goto :goto_54

    :cond_6c
    const/16 v1, 0x1f

    if-ne p1, v0, :cond_71

    goto :goto_4c

    :cond_71
    const/16 v0, 0x20

    if-ne p1, v1, :cond_76

    goto :goto_54

    :cond_76
    const/16 v1, 0x22

    if-ne p1, v0, :cond_7b

    goto :goto_4c

    :cond_7b
    const/16 v0, 0x26

    if-ne p1, v1, :cond_80

    goto :goto_54

    :cond_80
    const/16 v1, 0x2b

    if-ne p1, v0, :cond_85

    goto :goto_4c

    :cond_85
    if-ne p1, v1, :cond_8e

    iput-boolean v4, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->c:Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/igexin/push/extension/distribution/gbd/b/i;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_70

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_70

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/b/i;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/b/i;->c(I)V

    const-string v4, "GBD_RALDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/b/i;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v4, Lcom/igexin/push/extension/distribution/gbd/c/a;->bA:I

    if-lt v3, v4, :cond_17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_59
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_62

    invoke-direct {p0, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->c(Ljava/util/List;)V

    :cond_62
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_70

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(Ljava/util/List;)V
    :try_end_6b
    .catchall {:try_start_2 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_70
    :goto_70
    return-void
.end method

.method private c(Ljava/lang/String;I)I
    .registers 8

    const-string v0, " = "

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select count(value) c from look where t < \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "status"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "type"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    invoke-virtual {p2, p1, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_4e

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4e} :catch_56
    .catchall {:try_start_4 .. :try_end_4e} :catchall_54

    :cond_4e
    if-eqz v1, :cond_53

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_53
    return v2

    :catchall_54
    move-exception p1

    goto :goto_60

    :catch_56
    move-exception p1

    :try_start_57
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_54

    if-eqz v1, :cond_5f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5f
    return v2

    :goto_60
    if-eqz v1, :cond_65

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_65
    throw p1
.end method

.method private c(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/igexin/push/extension/distribution/gbd/b/i;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->d:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_7f

    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_7f

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-virtual {v6}, Lcom/igexin/push/extension/distribution/gbd/b/i;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    invoke-virtual {v6}, Lcom/igexin/push/extension/distribution/gbd/b/i;->e()I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "GBD_RALDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update ral id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_53
    const/4 p1, 0x0

    :goto_54
    if-ge p1, v1, :cond_7d

    aget-object v5, v2, p1

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "num"

    aget v8, v3, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    const-string v8, "ral"

    const-string v9, "id"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    aput-object v5, v10, v4

    invoke-virtual {v7, v8, v6, v9, v10}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_54

    :cond_7d
    monitor-exit v0

    return-void

    :cond_7f
    :goto_7f
    monitor-exit v0

    return-void

    :catchall_81
    move-exception p1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_5 .. :try_end_83} :catchall_81

    throw p1
.end method

.method private d(Ljava/lang/String;I)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select count(value) c from look where  t < \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "status"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and type = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    invoke-virtual {p2, p1, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_42

    :cond_41
    const/4 p1, 0x0

    :goto_42
    const-string p2, "GBD_RALDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen notes count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_60
    .catchall {:try_start_2 .. :try_end_58} :catchall_5e

    if-eqz v0, :cond_5d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5d
    return p1

    :catchall_5e
    move-exception p1

    goto :goto_6a

    :catch_60
    move-exception p1

    :try_start_61
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    if-eqz v0, :cond_69

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_69
    return v1

    :goto_6a
    if-eqz v0, :cond_6f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6f
    throw p1
.end method

.method private d()V
    .registers 10

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->z:I

    sub-int/2addr v2, v3

    const-string v3, "GBD_RALDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "list size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->z:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v2, :cond_79

    sget v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->z:I

    if-gez v3, :cond_3c

    goto :goto_79

    :cond_3c
    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->f:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-virtual {v3}, Lcom/igexin/push/extension/distribution/gbd/b/i;->d()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4f
    if-ge v6, v2, :cond_62

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-virtual {v7}, Lcom/igexin/push/extension/distribution/gbd/b/i;->a()I

    iget-object v8, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    :cond_62
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    const-string v2, "ral"

    const-string v6, "t"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v5

    invoke-virtual {v1, v2, v6, v8, v7}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_86

    :cond_79
    :goto_79
    const-string v1, "GBD_RALDataManager"

    const-string v2, "ral list less than the max."

    invoke-static {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_82

    :try_start_80
    monitor-exit v0

    return-void

    :catchall_82
    move-exception v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_86
    monitor-exit v0

    return-void

    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_80 .. :try_end_8a} :catchall_88

    throw v1
.end method

.method private e(Ljava/lang/String;I)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/extension/distribution/gbd/b/d;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    const-string v1, "status"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select count(value) c, value, t, type, status from look where t < \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "type"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " group by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    invoke-virtual {v3, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_64} :catch_c0
    .catchall {:try_start_5 .. :try_end_64} :catchall_be

    if-eqz v1, :cond_bb

    :try_start_66
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_bb

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_71
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igexin/push/extension/distribution/gbd/b/d;

    goto :goto_90

    :cond_87
    new-instance v6, Lcom/igexin/push/extension/distribution/gbd/b/d;

    invoke-direct {v6}, Lcom/igexin/push/extension/distribution/gbd/b/d;-><init>()V

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v6

    :goto_90
    if-nez v5, :cond_9a

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/igexin/push/extension/distribution/gbd/b/d;->a(I)V

    goto :goto_ad

    :cond_9a
    if-ne v5, p2, :cond_a4

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/igexin/push/extension/distribution/gbd/b/d;->c(I)V

    goto :goto_ad

    :cond_a4
    if-ne v5, v0, :cond_ad

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/igexin/push/extension/distribution/gbd/b/d;->b(I)V

    :cond_ad
    :goto_ad
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_b1} :catch_b9
    .catchall {:try_start_66 .. :try_end_b1} :catchall_cb

    if-nez v4, :cond_71

    if-eqz v1, :cond_b8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b8
    return-object v3

    :catch_b9
    move-exception p1

    goto :goto_c2

    :cond_bb
    if-eqz v1, :cond_ca

    goto :goto_c7

    :catchall_be
    move-exception p1

    goto :goto_cd

    :catch_c0
    move-exception p1

    move-object v1, v2

    :goto_c2
    :try_start_c2
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_cb

    if-eqz v1, :cond_ca

    :goto_c7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ca
    return-object v2

    :catchall_cb
    move-exception p1

    move-object v2, v1

    :goto_cd
    if-eqz v2, :cond_d2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d2
    throw p1
.end method


# virtual methods
.method public a(I)V
    .registers 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :try_start_14
    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->e(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->c(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->d(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(Ljava/util/HashMap;III)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_28
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t<\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "type"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "look"

    invoke-virtual {v1, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "GBD_RALDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instant r data, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/k;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "GBD_RALDataManager"

    const-string v1, "ral instant r no network."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(Ljava/lang/String;I)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_69

    monitor-exit p0

    return-void

    :cond_2b
    :try_start_2b
    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/b/i;-><init>()V

    invoke-virtual {v0, p2}, Lcom/igexin/push/extension/distribution/gbd/b/i;->b(I)V

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/b/i;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2, p2, v1}, Lcom/igexin/push/extension/distribution/gbd/f/a/f;-><init>([BILjava/util/List;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->g:Lcom/igexin/push/extension/distribution/gbd/f/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->a(Lcom/igexin/push/extension/distribution/gbd/f/c;)V

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/f/a;

    invoke-direct {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/f/a;-><init>(Lcom/igexin/push/extension/distribution/gbd/f/d;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-virtual {p0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(Ljava/lang/String;I)V

    const-string p1, "GBD_RALDataManager"

    const-string p2, "instant bir requestService false."

    invoke-static {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_2b .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception p1

    :try_start_6a
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6f

    :cond_6d
    :goto_6d
    monitor-exit p0

    return-void

    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "select id, key, value, t, num from ral order by id"

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    invoke-virtual {v2, v1, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4d

    :goto_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/b/b/a;->c([B)[B

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v7, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-direct {v7}, Lcom/igexin/push/extension/distribution/gbd/b/i;-><init>()V

    invoke-virtual {v7, v1}, Lcom/igexin/push/extension/distribution/gbd/b/i;->a(I)V

    invoke-virtual {v7, v2}, Lcom/igexin/push/extension/distribution/gbd/b/i;->b(I)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v1}, Lcom/igexin/push/extension/distribution/gbd/b/i;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Lcom/igexin/push/extension/distribution/gbd/b/i;->a(J)V

    invoke-virtual {v7, v6}, Lcom/igexin/push/extension/distribution/gbd/b/i;->c(I)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_52
    .catchall {:try_start_1 .. :try_end_4c} :catchall_50

    goto :goto_b

    :cond_4d
    if-eqz v0, :cond_5b

    goto :goto_58

    :catchall_50
    move-exception v1

    goto :goto_5c

    :catch_52
    move-exception v1

    :try_start_53
    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_50

    if-eqz v0, :cond_5b

    :goto_58
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5b
    return-void

    :goto_5c
    if-eqz v0, :cond_61

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_61
    throw v1
.end method

.method public b(Ljava/lang/String;I)V
    .registers 12

    const-string v0, "GBD_RALDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GBD_RALDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_37
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->z:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_5a

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->e:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(Ljava/util/List;)V

    :cond_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "key"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "value"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v5, "t"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "num"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    const-string v6, "ral"

    invoke-virtual {v5, v6, v4}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4
    :try_end_93
    .catchall {:try_start_37 .. :try_end_93} :catchall_e6

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_e4

    const/4 v4, 0x0

    :try_start_9a
    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    const-string v6, "select last_insert_rowid() from ral"

    invoke-virtual {v5, v6, v4}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_c7

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_c7

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-direct {v6}, Lcom/igexin/push/extension/distribution/gbd/b/i;-><init>()V

    invoke-virtual {v6, v5}, Lcom/igexin/push/extension/distribution/gbd/b/i;->a(I)V

    invoke-virtual {v6, p2}, Lcom/igexin/push/extension/distribution/gbd/b/i;->b(I)V

    invoke-virtual {v6, p1}, Lcom/igexin/push/extension/distribution/gbd/b/i;->a(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/b/i;->a(J)V

    invoke-virtual {v6, v3}, Lcom/igexin/push/extension/distribution/gbd/b/i;->c(I)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c7
    .catchall {:try_start_9a .. :try_end_c7} :catchall_cd

    :cond_c7
    if-eqz v4, :cond_e4

    :goto_c9
    :try_start_c9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_e6

    goto :goto_e4

    :catchall_cd
    move-exception p1

    :try_start_ce
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    const-string p2, "GBD_RALDataManager"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_ce .. :try_end_da} :catchall_dd

    if-eqz v4, :cond_e4

    goto :goto_c9

    :catchall_dd
    move-exception p1

    if-eqz v4, :cond_e3

    :try_start_e0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_e3
    throw p1

    :cond_e4
    :goto_e4
    monitor-exit v0

    return-void

    :catchall_e6
    move-exception p1

    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_e0 .. :try_end_e8} :catchall_e6

    throw p1
.end method

.method public c()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init doReport isReporting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBD_RALDataManager"

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->d()V

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/k;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "ral r no network."

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->c:Z

    if-nez v0, :cond_34

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->c:Z

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(I)V

    :cond_34
    return-void
.end method
