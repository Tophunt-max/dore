###### Class com.igexin.push.core.c.ag (com.igexin.push.core.c.ag)
.class Lcom/igexin/push/core/c/ag;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/c/h;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/h;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/c/ag;->a:Lcom/igexin/push/core/c/h;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/ag;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/util/g;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1c

    :cond_19
    invoke-static {}, Lcom/igexin/push/util/g;->e()V

    :cond_1c
    return-void
.end method
