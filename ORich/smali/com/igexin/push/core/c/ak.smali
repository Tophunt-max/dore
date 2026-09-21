###### Class com.igexin.push.core.c.ak (com.igexin.push.core.c.ak)
.class Lcom/igexin/push/core/c/ak;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Lcom/igexin/push/core/c/aj;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/aj;Landroid/content/ContentValues;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/push/core/c/ak;->b:Lcom/igexin/push/core/c/aj;

    iput-object p2, p0, Lcom/igexin/push/core/c/ak;->a:Landroid/content/ContentValues;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/ak;->a:Landroid/content/ContentValues;

    const-string v2, "st"

    invoke-virtual {v0, v2, v1}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    iget-object v0, p0, Lcom/igexin/push/core/c/ak;->b:Lcom/igexin/push/core/c/aj;

    invoke-static {v0}, Lcom/igexin/push/core/c/aj;->a(Lcom/igexin/push/core/c/aj;)I

    return-void
.end method
