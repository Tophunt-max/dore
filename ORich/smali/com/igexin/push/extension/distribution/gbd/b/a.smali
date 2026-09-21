###### Class com.igexin.push.extension.distribution.gbd.b.a (com.igexin.push.extension.distribution.gbd.b.a)
.class public Lcom/igexin/push/extension/distribution/gbd/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/a;->d:Ljava/lang/String;

    return-void
.end method
