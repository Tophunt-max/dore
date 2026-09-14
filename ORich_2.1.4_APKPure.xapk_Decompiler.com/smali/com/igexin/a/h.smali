###### Class com.igexin.a.h (com.igexin.a.h)
.class public Lcom/igexin/a/h;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/igexin/a/e;

.field protected final c:Lcom/igexin/a/d;

.field protected d:Z

.field protected e:Z

.field protected f:Lcom/igexin/a/g;


# direct methods
.method protected constructor <init>()V
    .registers 3

    new-instance v0, Lcom/igexin/a/j;

    invoke-direct {v0}, Lcom/igexin/a/j;-><init>()V

    new-instance v1, Lcom/igexin/a/a;

    invoke-direct {v1}, Lcom/igexin/a/a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/igexin/a/h;-><init>(Lcom/igexin/a/e;Lcom/igexin/a/d;)V

    return-void
.end method

.method protected constructor <init>(Lcom/igexin/a/e;Lcom/igexin/a/d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/h;->a:Ljava/util/Set;

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_13

    iput-object p1, p0, Lcom/igexin/a/h;->b:Lcom/igexin/a/e;

    iput-object p2, p0, Lcom/igexin/a/h;->c:Lcom/igexin/a/d;

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null library installer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null library loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/igexin/a/h;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/igexin/a/h;->d:Z

    if-nez v0, :cond_18

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v1

    const-string p2, "%s already loaded previously!"

    invoke-virtual {p0, p2, p1}, Lcom/igexin/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_18
    const/4 v0, 0x2

    :try_start_19
    iget-object v3, p0, Lcom/igexin/a/h;->b:Lcom/igexin/a/e;

    invoke-interface {v3, p2}, Lcom/igexin/a/e;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/igexin/a/h;->a:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "%s (%s) was loaded normally!"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/igexin/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_19 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "Loading the library normally failed: %s"

    invoke-virtual {p0, v3, v4}, Lcom/igexin/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p3, v3, v2

    const-string v4, "%s (%s) was not loaded normally, re-linking..."

    invoke-virtual {p0, v4, v3}, Lcom/igexin/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_56

    iget-boolean v4, p0, Lcom/igexin/a/h;->d:Z

    if-eqz v4, :cond_7c

    :cond_56
    iget-boolean v4, p0, Lcom/igexin/a/h;->d:Z

    if-eqz v4, :cond_65

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v2

    const-string v5, "Forcing a re-link of %s (%s)..."

    invoke-virtual {p0, v5, v4}, Lcom/igexin/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_65
    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/a/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/igexin/a/h;->c:Lcom/igexin/a/d;

    iget-object v4, p0, Lcom/igexin/a/h;->b:Lcom/igexin/a/e;

    invoke-interface {v4}, Lcom/igexin/a/e;->a()[Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/igexin/a/h;->b:Lcom/igexin/a/e;

    invoke-interface {v4, p2}, Lcom/igexin/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, p1

    move-object v9, v3

    move-object v10, p0

    invoke-interface/range {v5 .. v10}, Lcom/igexin/a/d;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/igexin/a/h;)V

    :cond_7c
    :try_start_7c
    iget-boolean v4, p0, Lcom/igexin/a/h;->e:Z

    if-eqz v4, :cond_a3

    new-instance v4, Lcom/igexin/a/a/j;

    invoke-direct {v4, v3}, Lcom/igexin/a/a/j;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Lcom/igexin/a/a/j;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/igexin/a/h;->b:Lcom/igexin/a/e;

    invoke-interface {v6, v5}, Lcom/igexin/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/igexin/a/h;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_a2} :catch_a3

    goto :goto_8d

    :catch_a3
    :cond_a3
    iget-object p1, p0, Lcom/igexin/a/h;->b:Lcom/igexin/a/e;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/igexin/a/e;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/a/h;->a:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v1

    aput-object p3, p1, v2

    const-string p2, "%s (%s) was re-linked!"

    invoke-virtual {p0, p2, p1}, Lcom/igexin/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/igexin/a/h;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/h;->d:Z

    return-object p0
.end method

.method public a(Lcom/igexin/a/g;)Lcom/igexin/a/h;
    .registers 2

    iput-object p1, p0, Lcom/igexin/a/h;->f:Lcom/igexin/a/g;

    return-object p0
.end method

.method protected a(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const-string v0, "lib"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    iget-object v0, p0, Lcom/igexin/a/h;->b:Lcom/igexin/a/e;

    invoke-interface {v0, p2}, Lcom/igexin/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/igexin/a/k;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance p3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/igexin/a/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3

    :cond_16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/igexin/a/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/igexin/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/f;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/f;)V
    .registers 7

    if-eqz p1, :cond_2d

    invoke-static {p2}, Lcom/igexin/a/k;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "Beginning load of %s..."

    invoke-virtual {p0, v1, v0}, Lcom/igexin/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p4, :cond_19

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/a/h;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_19
    :try_start_19
    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/a/h;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/igexin/a/f;->a()V
    :try_end_1f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_19 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p1

    invoke-interface {p4, p1}, Lcom/igexin/a/f;->a(Ljava/lang/Throwable;)V

    :goto_24
    return-void

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given library is either null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/a/h;->f:Lcom/igexin/a/g;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/igexin/a/g;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/igexin/a/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/igexin/a/h;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/h;->e:Z

    return-object p0
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/igexin/a/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iget-object p3, p0, Lcom/igexin/a/h;->b:Lcom/igexin/a/e;

    invoke-interface {p3, p2}, Lcom/igexin/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/igexin/a/i;

    invoke-direct {p3, p0, p2}, Lcom/igexin/a/i;-><init>(Lcom/igexin/a/h;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_1a

    return-void

    :cond_1a
    array-length p3, p2

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, p3, :cond_38

    aget-object v1, p2, v0

    iget-boolean v2, p0, Lcom/igexin/a/h;->d:Z

    if-nez v2, :cond_32

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    :cond_32
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_38
    return-void
.end method
