###### Class com.igexin.push.a.a.e (com.igexin.push.a.a.e)
.class Lcom/igexin/push/a/a/e;
.super Lcom/igexin/push/g/b;


# instance fields
.field final synthetic a:Lcom/igexin/push/a/a/d;


# direct methods
.method constructor <init>(Lcom/igexin/push/a/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/a/a/e;->a:Lcom/igexin/push/a/a/d;

    invoke-direct {p0}, Lcom/igexin/push/g/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/igexin/push/util/g;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    new-instance v1, Lcom/igexin/push/core/d/g;

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getBiUploadServiceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/igexin/push/core/d/g;-><init>(Ljava/lang/String;[BIZ)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v2, Lcom/igexin/push/g/a/c;

    invoke-direct {v2, v1}, Lcom/igexin/push/g/a/c;-><init>(Lcom/igexin/push/g/a/b;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v4, v1}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    goto :goto_41

    :catchall_28
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadBITask|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method
