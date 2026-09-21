###### Class com.igexin.push.extension.distribution.gbd.i.ag (com.igexin.push.extension.distribution.gbd.i.ag)
.class public Lcom/igexin/push/extension/distribution/gbd/i/ag;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/push/extension/distribution/gbd/i/ag;


# instance fields
.field private b:Landroid/content/Context;

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->c:J

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->d:J

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->e:J

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a()Lcom/igexin/push/extension/distribution/gbd/i/ag;
    .registers 2

    const-class v0, Lcom/igexin/push/extension/distribution/gbd/i/ag;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/i/ag;->a:Lcom/igexin/push/extension/distribution/gbd/i/ag;

    if-nez v1, :cond_e

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/i/ag;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/gbd/i/ag;-><init>()V

    sput-object v1, Lcom/igexin/push/extension/distribution/gbd/i/ag;->a:Lcom/igexin/push/extension/distribution/gbd/i/ag;

    :cond_e
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/i/ag;->a:Lcom/igexin/push/extension/distribution/gbd/i/ag;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/io/File;)V
    .registers 7

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->e:J

    sget v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->an:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_12

    goto :goto_5f

    :cond_12
    iget-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->e:J

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2f

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->c:J

    :cond_2f
    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/i/ai;

    invoke-direct {v0, p0}, Lcom/igexin/push/extension/distribution/gbd/i/ai;-><init>(Lcom/igexin/push/extension/distribution/gbd/i/ag;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5f

    array-length v0, p1

    if-lez v0, :cond_5f

    array-length v0, p1

    const/4 v1, 0x0

    :goto_3f
    if-ge v1, v0, :cond_5f

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/igexin/push/extension/distribution/gbd/i/ag;->a(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_49
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->d:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_5f

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->d:J

    :cond_5f
    :goto_5f
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12

    const-string v0, "error"

    const-string v1, "&"

    const-wide/16 v2, 0x0

    :try_start_6
    iput-wide v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->c:J

    iput-wide v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->d:J

    iput-wide v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->e:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->c:J

    const/4 v2, 0x0

    if-eqz p1, :cond_58

    array-length v3, p1

    if-lez v3, :cond_58

    new-instance v3, Lcom/igexin/push/extension/distribution/gbd/i/ah;

    invoke-direct {v3, p0}, Lcom/igexin/push/extension/distribution/gbd/i/ah;-><init>(Lcom/igexin/push/extension/distribution/gbd/i/ag;)V

    invoke-static {p1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v3, p1

    const/4 v4, 0x0

    :goto_4e
    if-ge v4, v3, :cond_58

    aget-object v5, p1, v4

    invoke-direct {p0, v5}, Lcom/igexin/push/extension/distribution/gbd/i/ag;->a(Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_58
    iget-wide v3, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->c:J

    iget-wide v5, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->d:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sget-wide v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->ao:J

    const-wide/16 v7, 0x3e8

    mul-long v3, v3, v7

    const/4 p1, 0x1

    cmp-long v7, v5, v3

    if-lez v7, :cond_72

    const/4 v3, 0x1

    goto :goto_73

    :cond_72
    const/4 v3, 0x0

    :goto_73
    if-eqz v3, :cond_76

    goto :goto_9e

    :cond_76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/igexin/push/extension/distribution/gbd/i/ag;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_96

    goto :goto_97

    :cond_96
    const/4 v2, 0x1

    :goto_97
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9e
    .catchall {:try_start_6 .. :try_end_9e} :catchall_9f

    :goto_9e
    return-object v0

    :catchall_9f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
