###### Class com.igexin.push.core.c.ab (com.igexin.push.core.c.ab)
.class Lcom/igexin/push/core/c/ab;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/igexin/push/core/c/h;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/h;ZLjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/push/core/c/ab;->c:Lcom/igexin/push/core/c/h;

    iput-boolean p2, p0, Lcom/igexin/push/core/c/ab;->a:Z

    iput-object p3, p0, Lcom/igexin/push/core/c/ab;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/ab;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v2, p0, Lcom/igexin/push/core/c/ab;->a:Z

    if-eqz v2, :cond_d

    const/16 v2, 0x32

    goto :goto_f

    :cond_d
    const/16 v2, 0x31

    :goto_f
    iget-object v3, p0, Lcom/igexin/push/core/c/ab;->c:Lcom/igexin/push/core/c/h;

    iget-object v4, p0, Lcom/igexin/push/core/c/ab;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    return-void
.end method
