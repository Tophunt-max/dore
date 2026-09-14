###### Class com.igexin.push.core.c.ai (com.igexin.push.core.c.ai)
.class Lcom/igexin/push/core/c/ai;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/c/h;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/h;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/c/ai;->a:Lcom/igexin/push/core/c/h;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/ai;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/core/f;->z:Ljava/lang/String;

    const/16 v3, 0x30

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method
