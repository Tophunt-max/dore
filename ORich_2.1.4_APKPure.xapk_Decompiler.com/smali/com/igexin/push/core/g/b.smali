###### Class com.igexin.push.core.g.b (com.igexin.push.core.g.b)
.class public Lcom/igexin/push/core/g/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/igexin/push/core/g/b;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/igexin/push/core/g/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/g/b;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/igexin/push/core/g/b;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/g/b;->b:Lcom/igexin/push/core/g/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/g/b;

    invoke-direct {v0}, Lcom/igexin/push/core/g/b;-><init>()V

    sput-object v0, Lcom/igexin/push/core/g/b;->b:Lcom/igexin/push/core/g/b;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/g/b;->b:Lcom/igexin/push/core/g/b;

    return-object v0
.end method

.method private d(Lcom/igexin/push/core/g/a;)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/igexin/push/core/g/b;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/igexin/push/core/g/a;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/igexin/push/core/g/a;
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/core/g/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/core/g/a;

    return-object p1
.end method

.method public a(Lcom/igexin/push/core/g/a;)V
    .registers 5

    if-eqz p1, :cond_21

    invoke-direct {p0, p1}, Lcom/igexin/push/core/g/b;->d(Lcom/igexin/push/core/g/a;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-class v2, Lcom/igexin/sdk/PushActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/igexin/push/core/g/a;->a()Ljava/lang/Long;

    move-result-object p1

    const-string v1, "activityid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_21
    return-void
.end method

.method public b(Lcom/igexin/push/core/g/a;)V
    .registers 2

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/igexin/push/core/g/a;->i()V

    invoke-virtual {p0, p1}, Lcom/igexin/push/core/g/b;->c(Lcom/igexin/push/core/g/a;)V

    :cond_8
    return-void
.end method

.method public c(Lcom/igexin/push/core/g/a;)V
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/igexin/push/core/g/b;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/igexin/push/core/g/a;->a()Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method
