###### Class com.igexin.push.core.c.s (com.igexin.push.core.c.s)
.class Lcom/igexin/push/core/c/s;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/igexin/push/core/c/h;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/h;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/push/core/c/s;->b:Lcom/igexin/push/core/c/h;

    iput-object p2, p0, Lcom/igexin/push/core/c/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/s;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/igexin/push/core/c/s;->b:Lcom/igexin/push/core/c/h;

    iget-object v3, p0, Lcom/igexin/push/core/c/s;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x1e

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    return-void
.end method
