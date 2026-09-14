###### Class com.igexin.push.extension.distribution.gbd.h.a.d (com.igexin.push.extension.distribution.gbd.h.a.d)
.class public Lcom/igexin/push/extension/distribution/gbd/h/a/d;
.super Lcom/igexin/push/extension/distribution/gbd/h/b;


# static fields
.field private static c:Lcom/igexin/push/extension/distribution/gbd/h/a/d;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/h/b;-><init>()V

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->E:J

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/d;->a:J

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/h/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/d;->b:J

    return-void
.end method

.method private a(II)V
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    if-eqz p1, :cond_11

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    invoke-virtual {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/d/a;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "mm HH dd MM yy"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_20
    array-length v3, v0

    if-ge v2, v3, :cond_65

    aget-object v3, p1, v2

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_62

    :cond_2e
    aget-object v3, p1, v2

    const-string v4, "*/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    aget-object v3, p1, v2

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_62

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/2addr v4, v3

    if-eqz v4, :cond_62

    return v1

    :cond_57
    aget-object v3, v0, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    return v1

    :cond_62
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_65
    const/4 p1, 0x1

    return p1
.end method

.method public static e()Lcom/igexin/push/extension/distribution/gbd/h/a/d;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/d;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/d;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/h/a/d;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/h/a/d;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/d;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/d;

    :cond_b
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/d;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/d;

    return-object v0
.end method

.method private f()J
    .registers 7

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/igexin/push/extension/distribution/gbd/c/c;->l:J

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "mm"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3c

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0xe10

    rsub-int v2, v2, 0xe10

    mul-int/lit16 v2, v2, 0x3e8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calcDelay nowMinute:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|nowSecond:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|delaySeconds:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBD_CT"

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "GBD_CT"

    const-string v1, "doTask..."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "type 11 in type black list, return."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a()Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/gbd/h/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/h/a/d;->a(II)V

    :cond_29
    return-void
.end method

.method public a(J)V
    .registers 5

    iput-wide p1, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/d;->a:J

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/h/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/d;->b:J

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->k(J)V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method
