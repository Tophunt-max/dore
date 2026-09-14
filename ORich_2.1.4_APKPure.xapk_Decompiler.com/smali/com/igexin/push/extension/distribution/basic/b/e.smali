###### Class com.igexin.push.extension.distribution.basic.b.e (com.igexin.push.extension.distribution.basic.b.e)
.class public Lcom/igexin/push/extension/distribution/basic/b/e;
.super Lcom/igexin/push/core/bean/BaseAction;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/core/bean/BaseAction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->e:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->e:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/e;->c:Ljava/lang/String;

    return-object v0
.end method
