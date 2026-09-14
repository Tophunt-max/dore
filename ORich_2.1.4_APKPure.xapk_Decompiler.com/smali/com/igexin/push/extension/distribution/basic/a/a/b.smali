###### Class com.igexin.push.extension.distribution.basic.a.a.b (com.igexin.push.extension.distribution.basic.a.a.b)
.class Lcom/igexin/push/extension/distribution/basic/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/igexin/push/extension/distribution/basic/a/a/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/basic/a/a/a;Z)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/a/a/b;->b:Lcom/igexin/push/extension/distribution/basic/a/a/a;

    iput-boolean p2, p0, Lcom/igexin/push/extension/distribution/basic/a/a/b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/a/a/c;->a()Lcom/igexin/push/extension/distribution/basic/a/a/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/igexin/push/extension/distribution/basic/a/a/b;->a:Z

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/distribution/basic/a/a/c;->a(Z)V

    return-void
.end method
