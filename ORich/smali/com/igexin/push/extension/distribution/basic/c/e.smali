###### Class com.igexin.push.extension.distribution.basic.c.e (com.igexin.push.extension.distribution.basic.c.e)
.class Lcom/igexin/push/extension/distribution/basic/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field a:J

.field b:J

.field final synthetic c:Lcom/igexin/push/extension/distribution/basic/c/d;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/basic/c/d;)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/c/e;->c:Lcom/igexin/push/extension/distribution/basic/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/basic/c/e;->a:J

    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/basic/c/e;->b:J

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 6

    iget-wide v0, p0, Lcom/igexin/push/extension/distribution/basic/c/e;->a:J

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/igexin/push/extension/distribution/basic/c/e;->b:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method
