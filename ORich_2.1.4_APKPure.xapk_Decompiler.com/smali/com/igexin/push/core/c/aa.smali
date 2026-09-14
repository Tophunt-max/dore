###### Class com.igexin.push.core.c.aa (com.igexin.push.core.c.aa)
.class Lcom/igexin/push/core/c/aa;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/igexin/push/core/c/h;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/h;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/push/core/c/aa;->b:Lcom/igexin/push/core/c/h;

    iput-object p2, p0, Lcom/igexin/push/core/c/aa;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/aa;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/igexin/push/core/c/aa;->a:Ljava/lang/String;

    const/16 v3, 0x34

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method
