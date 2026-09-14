###### Class com.igexin.push.core.c.k (com.igexin.push.core.c.k)
.class Lcom/igexin/push/core/c/k;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/igexin/push/core/c/h;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/h;J)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/push/core/c/k;->b:Lcom/igexin/push/core/c/h;

    iput-wide p2, p0, Lcom/igexin/push/core/c/k;->a:J

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/k;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v2, p0, Lcom/igexin/push/core/c/k;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method
