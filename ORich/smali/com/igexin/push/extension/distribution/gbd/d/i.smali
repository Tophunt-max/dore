###### Class com.igexin.push.extension.distribution.gbd.d.i (com.igexin.push.extension.distribution.gbd.d.i)
.class Lcom/igexin/push/extension/distribution/gbd/d/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/d/g;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/d/g;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/d/i;->a:Lcom/igexin/push/extension/distribution/gbd/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b()V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/s;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/s;->b()V

    return-void
.end method
