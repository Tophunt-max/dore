###### Class com.igexin.push.core.t (com.igexin.push.core.t)
.class Lcom/igexin/push/core/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/util/f;


# instance fields
.field final synthetic a:Landroid/app/Service;

.field final synthetic b:Lcom/igexin/push/core/s;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/s;Landroid/app/Service;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/push/core/t;->b:Lcom/igexin/push/core/s;

    iput-object p2, p0, Lcom/igexin/push/core/t;->a:Landroid/app/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceManager|load so error, report bi result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ###########"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/core/t;->a:Landroid/app/Service;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
