###### Class com.igexin.push.config.b (com.igexin.push.config.b)
.class Lcom/igexin/push/config/b;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/config/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/config/a;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/config/b;->a:Lcom/igexin/push/config/a;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/config/b;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget v2, Lcom/igexin/push/config/k;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/b;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget v2, Lcom/igexin/push/config/k;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method
