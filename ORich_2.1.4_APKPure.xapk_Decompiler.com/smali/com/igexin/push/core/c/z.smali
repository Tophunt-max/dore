###### Class com.igexin.push.core.c.z (com.igexin.push.core.c.z)
.class Lcom/igexin/push/core/c/z;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/igexin/push/core/c/h;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/h;Z)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/push/core/c/z;->b:Lcom/igexin/push/core/c/h;

    iput-boolean p2, p0, Lcom/igexin/push/core/c/z;->a:Z

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/z;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v2, p0, Lcom/igexin/push/core/c/z;->a:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x28

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method
