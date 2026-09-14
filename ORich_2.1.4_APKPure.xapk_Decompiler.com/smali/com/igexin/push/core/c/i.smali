###### Class com.igexin.push.core.c.i (com.igexin.push.core.c.i)
.class Lcom/igexin/push/core/c/i;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/c/h;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/h;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/c/i;->a:Lcom/igexin/push/core/c/h;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/core/c/i;->a:Lcom/igexin/push/core/c/h;

    iget-object v1, p0, Lcom/igexin/push/core/c/i;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/h;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lcom/igexin/push/core/f/d;->a()Lcom/igexin/push/core/f/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    sget-object v2, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/core/f/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/f/d;->a()Lcom/igexin/push/core/f/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    sget-wide v2, Lcom/igexin/push/core/f;->r:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/core/f/d;->a(Landroid/content/Context;J)V

    return-void
.end method
