###### Class com.igexin.push.extension.distribution.basic.f.d (com.igexin.push.extension.distribution.basic.f.d)
.class public Lcom/igexin/push/extension/distribution/basic/f/d;
.super Lcom/igexin/push/extension/distribution/basic/f/f;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Lcom/igexin/push/core/bean/BaseAction;

.field private i:I

.field private j:Lcom/igexin/push/extension/distribution/basic/f/g;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/core/bean/BaseAction;ILcom/igexin/push/extension/distribution/basic/f/g;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/basic/f/f;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->h:Lcom/igexin/push/core/bean/BaseAction;

    iput-object p3, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->g:Ljava/lang/String;

    iput p5, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->i:I

    iput-object p6, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->j:Lcom/igexin/push/extension/distribution/basic/f/g;

    iput-object p2, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->k:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/c/g;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/extension/distribution/basic/c/g;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_34
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    goto :goto_24

    :cond_d
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->h:Lcom/igexin/push/core/bean/BaseAction;

    check-cast v0, Lcom/igexin/push/extension/distribution/basic/b/a;

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->e(Ljava/lang/String;)V

    goto :goto_24

    :cond_15
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->h:Lcom/igexin/push/core/bean/BaseAction;

    check-cast v0, Lcom/igexin/push/extension/distribution/basic/b/a;

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->m(Ljava/lang/String;)V

    goto :goto_24

    :cond_1d
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->h:Lcom/igexin/push/core/bean/BaseAction;

    check-cast v0, Lcom/igexin/push/extension/distribution/basic/b/a;

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->l(Ljava/lang/String;)V

    :goto_24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->j:Lcom/igexin/push/extension/distribution/basic/f/g;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/igexin/push/extension/distribution/basic/f/g;->a(Ljava/lang/Exception;)V

    :cond_7
    return-void
.end method

.method public a([B)V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->f:Z

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->h:Lcom/igexin/push/core/bean/BaseAction;

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/BaseAction;->getActionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->g:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/igexin/push/extension/distribution/basic/f/d;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/extension/distribution/basic/c/g;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->i:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".bin"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    array-length v4, p1

    invoke-static {p1, v0, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_8e

    const/16 v0, 0x64

    invoke-virtual {p1, v3, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-direct {p0, v1}, Lcom/igexin/push/extension/distribution/basic/f/d;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->f:Z

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->k:Ljava/lang/String;

    const-string v2, "imageurl"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imagesrc"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->g:Ljava/lang/String;

    const-string v1, "taskid"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "createtime"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/d;->a()Lcom/igexin/push/extension/distribution/basic/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/c/d;->b()Lcom/igexin/push/extension/distribution/basic/e/a;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/igexin/push/extension/distribution/basic/e/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_93

    :cond_8e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->f:Z

    :goto_93
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->j:Lcom/igexin/push/extension/distribution/basic/f/g;

    if-eqz p1, :cond_af

    iget-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->f:Z

    if-eqz p1, :cond_a3

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->j:Lcom/igexin/push/extension/distribution/basic/f/g;

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->h:Lcom/igexin/push/core/bean/BaseAction;

    invoke-interface {p1, v0}, Lcom/igexin/push/extension/distribution/basic/f/g;->a(Lcom/igexin/push/core/bean/BaseAction;)V

    goto :goto_af

    :cond_a3
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/d;->j:Lcom/igexin/push/extension/distribution/basic/f/g;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no target existed or downloading bitmap failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/igexin/push/extension/distribution/basic/f/g;->a(Ljava/lang/Exception;)V

    :cond_af
    :goto_af
    return-void
.end method

.method public final b()I
    .registers 2

    const v0, 0x10015

    return v0
.end method
