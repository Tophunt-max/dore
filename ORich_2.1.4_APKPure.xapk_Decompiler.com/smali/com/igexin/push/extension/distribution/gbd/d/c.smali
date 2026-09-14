###### Class com.igexin.push.extension.distribution.gbd.d.c (com.igexin.push.extension.distribution.gbd.d.c)
.class Lcom/igexin/push/extension/distribution/gbd/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/d/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/d/c;->a:Lcom/igexin/push/extension/distribution/gbd/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->c()V

    return-void
.end method
