###### Class com.igexin.push.config.e (com.igexin.push.config.e)
.class Lcom/igexin/push/config/e;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/config/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/config/a;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/config/e;->a:Lcom/igexin/push/config/a;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/config/e;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-wide v2, Lcom/igexin/push/config/k;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method
