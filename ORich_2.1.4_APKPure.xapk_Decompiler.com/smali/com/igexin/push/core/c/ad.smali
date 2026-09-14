###### Class com.igexin.push.core.c.ad (com.igexin.push.core.c.ad)
.class Lcom/igexin/push/core/c/ad;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/c/h;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/h;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/c/ad;->a:Lcom/igexin/push/core/c/h;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/ad;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/core/c/ad;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/igexin/push/core/c/ad;->a:Lcom/igexin/push/core/c/h;

    sget-wide v3, Lcom/igexin/push/core/f;->r:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    iget-object v1, p0, Lcom/igexin/push/core/c/ad;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/igexin/push/core/c/ad;->a:Lcom/igexin/push/core/c/h;

    sget-object v3, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    iget-object v0, p0, Lcom/igexin/push/core/c/ad;->a:Lcom/igexin/push/core/c/h;

    invoke-static {v0}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;)V

    return-void
.end method
