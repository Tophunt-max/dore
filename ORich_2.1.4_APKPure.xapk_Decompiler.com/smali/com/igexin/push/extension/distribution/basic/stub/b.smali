###### Class com.igexin.push.extension.distribution.basic.stub.b (com.igexin.push.extension.distribution.basic.stub.b)
.class Lcom/igexin/push/extension/distribution/basic/stub/b;
.super Lcom/igexin/push/g/b/h;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;J)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/stub/b;->a:Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;

    invoke-direct {p0, p2, p3}, Lcom/igexin/push/g/b/h;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/stub/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|start extensionThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/igexin/push/extension/distribution/basic/c/c;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/basic/c/c;-><init>()V

    new-instance v1, Lcom/igexin/push/extension/distribution/basic/h/a;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/basic/h/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/distribution/basic/c/c;->a(Lcom/igexin/push/extension/distribution/basic/h/b;)Z

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/a/b;)Z
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2a

    :catchall_2a
    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
