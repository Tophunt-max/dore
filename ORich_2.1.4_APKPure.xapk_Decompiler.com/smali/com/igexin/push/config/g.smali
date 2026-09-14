###### Class com.igexin.push.config.g (com.igexin.push.config.g)
.class Lcom/igexin/push/config/g;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/igexin/push/config/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/config/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/push/config/g;->b:Lcom/igexin/push/config/a;

    iput-object p2, p0, Lcom/igexin/push/config/g;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/config/g;->b:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/g;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/igexin/push/config/g;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x1a

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    return-void
.end method
