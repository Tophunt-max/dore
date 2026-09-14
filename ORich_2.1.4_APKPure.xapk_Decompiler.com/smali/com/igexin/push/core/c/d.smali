###### Class com.igexin.push.core.c.d (com.igexin.push.core.c.d)
.class public Lcom/igexin/push/core/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/c/a;


# static fields
.field private static a:Lcom/igexin/push/core/c/d;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/igexin/push/core/bean/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/c/d;->b:Ljava/util/List;

    return-void
.end method

.method private a(B)I
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/core/c/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/core/bean/i;

    invoke-virtual {v2}, Lcom/igexin/push/core/bean/i;->c()B

    move-result v2

    if-ne v2, p1, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return v1
.end method

.method private a(J)Lcom/igexin/push/core/bean/i;
    .registers 8

    iget-object v0, p0, Lcom/igexin/push/core/c/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/core/bean/i;

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/i;->a()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_6

    return-object v1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a()Lcom/igexin/push/core/c/d;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/c/d;->a:Lcom/igexin/push/core/c/d;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/c/d;

    invoke-direct {v0}, Lcom/igexin/push/core/c/d;-><init>()V

    sput-object v0, Lcom/igexin/push/core/c/d;->a:Lcom/igexin/push/core/c/d;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/c/d;->a:Lcom/igexin/push/core/c/d;

    return-object v0
.end method

.method private static b(Lcom/igexin/push/core/bean/i;)Landroid/content/ContentValues;
    .registers 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/igexin/push/core/bean/i;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/igexin/push/core/bean/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Lcom/igexin/push/core/bean/i;->c()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-virtual {p0}, Lcom/igexin/push/core/bean/i;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "time"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private b(B)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/igexin/push/core/c/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/core/bean/i;

    invoke-virtual {v2}, Lcom/igexin/push/core/bean/i;->c()B

    move-result v3

    if-ne v3, p1, :cond_7

    move-object v0, v2

    :cond_1a
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/i;->a()J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1, p1}, Lcom/igexin/push/core/c/d;->a(JZZ)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_24

    :catchall_24
    :cond_24
    return-void
.end method


# virtual methods
.method public a(JZZ)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/core/c/d;->a(J)Lcom/igexin/push/core/bean/i;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/igexin/push/core/c/d;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b
    if-eqz p3, :cond_1f

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p3

    new-instance v1, Lcom/igexin/push/core/c/f;

    invoke-static {v0}, Lcom/igexin/push/core/c/d;->b(Lcom/igexin/push/core/bean/i;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/igexin/push/core/c/f;-><init>(Lcom/igexin/push/core/c/d;Landroid/content/ContentValues;J)V

    xor-int/lit8 p1, p4, 0x1

    invoke-virtual {p3, v1, p4, p1}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    :cond_1f
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/igexin/push/core/bean/i;)V
    .registers 6

    if-eqz p1, :cond_6f

    iget-object v0, p0, Lcom/igexin/push/core/c/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x13e

    const/4 v2, 0x7

    const/4 v3, 0x2

    if-lt v0, v1, :cond_1b

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/i;->c()B

    move-result v0

    if-eq v0, v3, :cond_1b

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/i;->c()B

    move-result v0

    if-eq v0, v2, :cond_1b

    goto :goto_6f

    :cond_1b
    invoke-virtual {p1}, Lcom/igexin/push/core/bean/i;->c()B

    move-result v0

    if-eq v0, v3, :cond_51

    const/4 v1, 0x3

    if-eq v0, v1, :cond_48

    const/4 v3, 0x5

    if-eq v0, v3, :cond_41

    const/4 v3, 0x6

    if-eq v0, v3, :cond_38

    if-eq v0, v2, :cond_51

    const/16 v2, 0x8

    if-eq v0, v2, :cond_31

    goto :goto_58

    :cond_31
    invoke-direct {p0, v2}, Lcom/igexin/push/core/c/d;->a(B)I

    move-result v0

    if-lt v0, v1, :cond_58

    return-void

    :cond_38
    invoke-direct {p0, v3}, Lcom/igexin/push/core/c/d;->a(B)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_58

    return-void

    :cond_41
    invoke-direct {p0, v3}, Lcom/igexin/push/core/c/d;->a(B)I

    move-result v0

    if-lt v0, v1, :cond_58

    return-void

    :cond_48
    invoke-direct {p0, v1}, Lcom/igexin/push/core/c/d;->a(B)I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_58

    return-void

    :cond_51
    invoke-virtual {p1}, Lcom/igexin/push/core/bean/i;->c()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/igexin/push/core/c/d;->b(B)V

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/igexin/push/core/c/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/e;

    invoke-static {p1}, Lcom/igexin/push/core/c/d;->b(Lcom/igexin/push/core/bean/i;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/igexin/push/core/c/e;-><init>(Lcom/igexin/push/core/c/d;Landroid/content/ContentValues;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    :cond_6f
    :goto_6f
    return-void
.end method

.method public a(JJ)Z
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/core/c/d;->a(J)Lcom/igexin/push/core/bean/i;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p3, p4}, Lcom/igexin/push/core/bean/i;->a(J)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p3

    new-instance p4, Lcom/igexin/push/core/c/g;

    invoke-static {v0}, Lcom/igexin/push/core/c/d;->b(Lcom/igexin/push/core/bean/i;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p4, p0, v0, p1, p2}, Lcom/igexin/push/core/c/g;-><init>(Lcom/igexin/push/core/c/d;Landroid/content/ContentValues;J)V

    const/4 p1, 0x1

    invoke-virtual {p3, p4, p1, p1}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/igexin/push/core/bean/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/igexin/push/core/c/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 16

    const/4 v0, 0x0

    :try_start_1
    const-string v2, "ral"

    const-string v1, "id"

    const-string v3, "data"

    const-string v4, "type"

    const-string v5, "time"

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v0, :cond_5c

    :goto_1f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5c

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 p1, 0x2

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-byte v7, p1

    const/4 p1, 0x3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    sub-long v10, v1, v8

    const-wide/32 v12, 0xf731400

    const/4 p1, 0x1

    cmp-long v3, v10, v12

    if-lez v3, :cond_43

    invoke-virtual {p0, v4, v5, p1, p1}, Lcom/igexin/push/core/c/d;->a(JZZ)V

    goto :goto_1f

    :cond_43
    iget-object v10, p0, Lcom/igexin/push/core/c/d;->b:Ljava/util/List;

    new-instance v11, Lcom/igexin/push/core/bean/i;

    new-instance v6, Ljava/lang/String;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->c([B)[B

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    move-object v3, v11

    invoke-direct/range {v3 .. v9}, Lcom/igexin/push/core/bean/i;-><init>(JLjava/lang/String;BJ)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5b} :catch_66
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5f

    goto :goto_1f

    :cond_5c
    if-eqz v0, :cond_6c

    goto :goto_69

    :catchall_5f
    move-exception p1

    if-eqz v0, :cond_65

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_65
    throw p1

    :catch_66
    nop

    if-eqz v0, :cond_6c

    :goto_69
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6c
    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method
