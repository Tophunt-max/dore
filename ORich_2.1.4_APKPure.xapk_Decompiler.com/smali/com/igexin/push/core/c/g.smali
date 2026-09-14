###### Class com.igexin.push.core.c.g (com.igexin.push.core.c.g)
.class Lcom/igexin/push/core/c/g;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/igexin/push/core/c/d;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/d;Landroid/content/ContentValues;J)V
    .registers 5

    iput-object p1, p0, Lcom/igexin/push/core/c/g;->b:Lcom/igexin/push/core/c/d;

    iput-wide p3, p0, Lcom/igexin/push/core/c/g;->a:J

    invoke-direct {p0, p2}, Lcom/igexin/push/b/d;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, Lcom/igexin/push/core/c/g;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/igexin/push/core/c/g;->f:Landroid/content/ContentValues;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-wide v3, p0, Lcom/igexin/push/core/c/g;->a:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ral"

    const-string v4, "id=?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
