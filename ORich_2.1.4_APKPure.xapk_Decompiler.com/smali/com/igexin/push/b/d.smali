###### Class com.igexin.push.b.d (com.igexin.push.b.d)
.class public abstract Lcom/igexin/push/b/d;
.super Lcom/igexin/b/a/d/e;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field protected d:Landroid/database/sqlite/SQLiteDatabase;

.field protected e:Landroid/database/Cursor;

.field protected f:Landroid/content/ContentValues;

.field public g:Lcom/igexin/push/b/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/igexin/push/config/j;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/igexin/b/a/d/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/igexin/b/a/d/e;-><init>(I)V

    iput-object p1, p0, Lcom/igexin/push/b/d;->f:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()I
    .registers 2

    const v0, -0x7ffffff8

    return v0
.end method

.method public b_()V
    .registers 3

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->b_()V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/b/d;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/igexin/push/b/d;->a()V

    iget-object v0, p0, Lcom/igexin/push/b/d;->g:Lcom/igexin/push/b/c;

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/b/d;->g:Lcom/igexin/push/b/c;

    invoke-virtual {v0, v1}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/b/a/b/c;->c()V

    :cond_28
    return-void
.end method

.method public c()V
    .registers 2

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->c()V

    iget-object v0, p0, Lcom/igexin/push/b/d;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    :try_start_d
    iget-object v0, p0, Lcom/igexin/push/b/d;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17
    :goto_17
    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/b/d;->n:Z

    iput-boolean v0, p0, Lcom/igexin/push/b/d;->I:Z

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method
