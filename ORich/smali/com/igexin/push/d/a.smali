###### Class com.igexin.push.d.a (com.igexin.push.d.a)
.class public Lcom/igexin/push/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/d/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/igexin/push/d/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/push/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/d/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/d/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/igexin/push/d/a;)Lcom/igexin/push/d/d;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/d/a;->b:Lcom/igexin/push/d/d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/d/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    sget-boolean v0, Lcom/igexin/push/config/k;->E:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/igexin/push/d/a;->a:Ljava/lang/String;

    const-string v1, "com.igexin.sdk.GActivity"

    invoke-static {v0, v1}, Lcom/igexin/push/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_57

    :cond_17
    :try_start_17
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x3e8

    new-instance v1, Lcom/igexin/push/d/b;

    int-to-long v2, v0

    invoke-direct {v1, p0, v2, v3}, Lcom/igexin/push/d/b;-><init>(Lcom/igexin/push/d/a;J)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/e;->a(Lcom/igexin/push/g/b/h;)Z
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_33

    goto :goto_56

    :catchall_33
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityGuardTask|startActivity pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/igexin/push/d/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_56
    return-void

    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/igexin/push/d/a;->b:Lcom/igexin/push/d/d;

    if-eqz v0, :cond_5e

    invoke-interface {v0}, Lcom/igexin/push/d/d;->a()V

    :cond_5e
    return-void
.end method

.method public a(Lcom/igexin/push/d/d;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/d/a;->b:Lcom/igexin/push/d/d;

    return-void
.end method
