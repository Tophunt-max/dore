###### Class com.igexin.push.b.a (com.igexin.push.b.a)
.class public Lcom/igexin/push/b/a;
.super Lcom/igexin/b/a/d/e;


# static fields
.field private static final e:Ljava/lang/String; = "com.igexin.push.b.a"


# instance fields
.field protected a:Landroid/database/sqlite/SQLiteDatabase;

.field protected b:Landroid/database/Cursor;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/igexin/push/core/c/a;",
            ">;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/igexin/b/a/d/e;-><init>(I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/b/a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/push/core/c/a;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/b/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()I
    .registers 2

    const v0, -0x7ffffff7

    return v0
.end method

.method public b_()V
    .registers 4

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->b_()V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    iget-object v0, p0, Lcom/igexin/push/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/core/c/a;

    iget-object v2, p0, Lcom/igexin/push/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v1, v2}, Lcom/igexin/push/core/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1b

    :cond_2d
    iget-object v0, p0, Lcom/igexin/push/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/core/c/a;

    iget-boolean v2, p0, Lcom/igexin/push/b/a;->d:Z

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/igexin/push/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v1, v2}, Lcom/igexin/push/core/c/a;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_33

    :cond_49
    iget-object v2, p0, Lcom/igexin/push/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v1, v2}, Lcom/igexin/push/core/c/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_33

    :cond_4f
    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/b/c;

    const v2, -0xef7d4

    invoke-direct {v1, v2}, Lcom/igexin/push/b/c;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/b/a/b/c;->c()V

    return-void
.end method

.method public c()V
    .registers 2

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->c()V

    iget-object v0, p0, Lcom/igexin/push/b/a;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-void
.end method

.method public d()V
    .registers 2

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/b/a;->n:Z

    iput-boolean v0, p0, Lcom/igexin/push/b/a;->I:Z

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method
