###### Class com.igexin.push.core.c.af (com.igexin.push.core.c.af)
.class Lcom/igexin/push/core/c/af;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/c/h;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/h;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/c/af;->a:Lcom/igexin/push/core/c/h;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/af;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-wide v2, Lcom/igexin/push/core/f;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/push/util/EncryptUtils;->getBytesEncrypted([B)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/af;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/igexin/push/core/c/af;->a:Lcom/igexin/push/core/c/h;

    sget-object v3, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/core/c/h;->a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    invoke-static {}, Lcom/igexin/push/core/f/d;->a()Lcom/igexin/push/core/f/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    sget-object v2, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/core/f/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/f/d;->a()Lcom/igexin/push/core/f/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    sget-wide v2, Lcom/igexin/push/core/f;->r:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/core/f/d;->a(Landroid/content/Context;J)V

    return-void
.end method
