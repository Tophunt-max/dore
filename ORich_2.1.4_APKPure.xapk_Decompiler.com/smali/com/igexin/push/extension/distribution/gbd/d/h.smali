###### Class com.igexin.push.extension.distribution.gbd.d.h (com.igexin.push.extension.distribution.gbd.d.h)
.class Lcom/igexin/push/extension/distribution/gbd/d/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/d/g;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/d/g;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/d/h;->a:Lcom/igexin/push/extension/distribution/gbd/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/d;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/d;->b()V

    return-void
.end method
