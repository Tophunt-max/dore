###### Class com.igexin.push.core.c.h (com.igexin.push.core.c.h)
.class public Lcom/igexin/push/core/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/c/a;


# static fields
.field private static final a:Ljava/lang/String; = "com.igexin.push.core.c.h"

.field private static b:Lcom/igexin/push/core/c/h;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/c/h;->c:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/igexin/push/core/c/h;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/c/h;->b:Lcom/igexin/push/core/c/h;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/c/h;

    invoke-direct {v0}, Lcom/igexin/push/core/c/h;-><init>()V

    sput-object v0, Lcom/igexin/push/core/c/h;->b:Lcom/igexin/push/core/c/h;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/c/h;->b:Lcom/igexin/push/core/c/h;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "value"

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "runtime"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I[B)V
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "value"

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p2, "runtime"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/c/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/core/c/h;->h()V

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/c/h;Landroid/database/sqlite/SQLiteDatabase;I[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I)[B
    .registers 13

    const-string v0, "value"

    const/4 v1, 0x0

    :try_start_3
    const-string v3, "runtime"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_4e
    .catchall {:try_start_3 .. :try_end_23} :catchall_47

    if-eqz p1, :cond_44

    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_44

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    sget-object v0, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/igexin/b/a/a/a;->c([BLjava/lang/String;)[B

    move-result-object p2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_39} :catch_42
    .catchall {:try_start_25 .. :try_end_39} :catchall_3f

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3e
    return-object p2

    :catchall_3f
    move-exception p2

    move-object v1, p1

    goto :goto_48

    :catch_42
    nop

    goto :goto_4f

    :cond_44
    if-eqz p1, :cond_54

    goto :goto_51

    :catchall_47
    move-exception p2

    :goto_48
    if-eqz v1, :cond_4d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4d
    throw p2

    :catch_4e
    move-object p1, v1

    :goto_4f
    if-eqz p1, :cond_54

    :goto_51
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_54
    return-object v1
.end method

.method static synthetic a(Lcom/igexin/push/core/c/h;Ljava/lang/String;)[B
    .registers 2

    invoke-direct {p0, p1}, Lcom/igexin/push/core/c/h;->i(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/lang/String;
    .registers 13

    const-string v0, "value"

    const/4 v1, 0x0

    :try_start_3
    const-string v3, "runtime"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_48
    .catchall {:try_start_3 .. :try_end_23} :catchall_41

    if-eqz p1, :cond_3e

    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_33} :catch_3c
    .catchall {:try_start_25 .. :try_end_33} :catchall_39

    if-eqz p1, :cond_38

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_38
    return-object p2

    :catchall_39
    move-exception p2

    move-object v1, p1

    goto :goto_42

    :catch_3c
    nop

    goto :goto_49

    :cond_3e
    if-eqz p1, :cond_4e

    goto :goto_4b

    :catchall_41
    move-exception p2

    :goto_42
    if-eqz v1, :cond_47

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_47
    throw p2

    :catch_48
    move-object p1, v1

    :goto_49
    if-eqz p1, :cond_4e

    :goto_4b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4e
    return-object v1
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 12

    const-string v0, "value"

    const/4 v1, 0x0

    :try_start_3
    const-string v3, "runtime"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "id=?"

    const-string v2, "25"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3e

    new-instance p1, Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/igexin/b/a/a/a;->c([BLjava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    sput-object p1, Lcom/igexin/push/core/f;->B:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3e} :catch_48
    .catchall {:try_start_3 .. :try_end_3e} :catchall_41

    :cond_3e
    if-eqz v1, :cond_4e

    goto :goto_4b

    :catchall_41
    move-exception p1

    if-eqz v1, :cond_47

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_47
    throw p1

    :catch_48
    nop

    if-eqz v1, :cond_4e

    :goto_4b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4e
    sget-object p1, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    if-nez p1, :cond_61

    sget-object p1, Lcom/igexin/push/core/f;->u:Ljava/lang/String;

    if-nez p1, :cond_59

    const-string p1, "cantgetimei"

    goto :goto_5b

    :cond_59
    sget-object p1, Lcom/igexin/push/core/f;->u:Ljava/lang/String;

    :goto_5b
    invoke-static {p1}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    :cond_61
    return-void
.end method

.method private f()V
    .registers 7

    sget-object v0, Lcom/igexin/push/core/f;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "|"

    const/16 v3, 0x8

    if-nez v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_94

    :cond_12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const-string v5, "V"

    if-ge v1, v4, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/igexin/push/util/p;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2d
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_94

    :cond_35
    :try_start_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/igexin/push/core/c/h;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_35 .. :try_end_64} :catchall_65

    goto :goto_94

    :catchall_65
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/igexin/push/core/c/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_94
    :goto_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_e5

    :try_start_bd
    sget-object v0, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/f;->A:Ljava/lang/String;
    :try_end_c8
    .catchall {:try_start_bd .. :try_end_c8} :catchall_c9

    goto :goto_e5

    :catchall_c9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_e5
    :goto_e5
    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/igexin/push/core/c/h;->b(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x0

    :cond_14
    sput-object p1, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    :cond_16
    return-void
.end method

.method private g(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const/16 v0, 0x2e

    invoke-direct {p0, p1, v0}, Lcom/igexin/push/core/c/h;->b(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p1, 0x0

    :cond_15
    sput-object p1, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    :cond_17
    return-void
.end method

.method private g()Z
    .registers 5

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/ad;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/c/ad;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result v0

    return v0
.end method

.method private h()V
    .registers 5

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

    invoke-static {}, Lcom/igexin/push/util/g;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_26

    :cond_23
    invoke-static {}, Lcom/igexin/push/util/g;->e()V

    :cond_26
    return-void
.end method

.method private h(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const/16 v0, 0x30

    invoke-direct {p0, p1, v0}, Lcom/igexin/push/core/c/h;->b(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p1, 0x0

    :cond_15
    sput-object p1, Lcom/igexin/push/core/f;->z:Ljava/lang/String;

    :cond_17
    return-void
.end method

.method private i()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/Random;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const-string v1, ""

    const/4 v2, 0x0

    :goto_15
    const/16 v3, 0xf

    if-ge v2, v3, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_31
    return-object v1
.end method

.method private i(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/igexin/push/core/c/h;->b(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x0

    :cond_14
    sput-object p1, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    :cond_16
    return-void
.end method

.method private i(Ljava/lang/String;)[B
    .registers 2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/push/util/EncryptUtils;->getBytesEncrypted([B)[B

    move-result-object p1

    return-object p1
.end method

.method private j(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I)[B

    move-result-object p1

    if-eqz p1, :cond_38

    :try_start_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-wide/16 v0, 0x0

    goto :goto_1b

    :cond_17
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1b
    sput-wide v0, Lcom/igexin/push/core/f;->r:J
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_1d

    :catch_1d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|db version changed, save session = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/igexin/push/core/f;->r:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method private k(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I)[B

    move-result-object p1

    if-eqz p1, :cond_33

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    :cond_16
    sput-object v0, Lcom/igexin/push/core/f;->t:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|db version changed, save cid = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_33
    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public a(I)Z
    .registers 5

    sput p1, Lcom/igexin/push/core/f;->R:I

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance v0, Lcom/igexin/push/core/c/q;

    invoke-direct {v0, p0}, Lcom/igexin/push/core/c/q;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1
.end method

.method public a(J)Z
    .registers 7

    sget-wide v0, Lcom/igexin/push/core/f;->G:J

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-eqz v3, :cond_18

    sput-wide p1, Lcom/igexin/push/core/f;->G:J

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance p2, Lcom/igexin/push/core/c/t;

    invoke-direct {p2, p0}, Lcom/igexin/push/core/c/t;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v2, v0}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1

    :cond_18
    return v2
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/ac;

    invoke-direct {v1, p0, p1}, Lcom/igexin/push/core/c/ac;-><init>(Lcom/igexin/push/core/c/h;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 5

    sput-wide p3, Lcom/igexin/push/core/f;->r:J

    sget-object p3, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_c

    sput-object p2, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    :cond_c
    sput-object p1, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/igexin/push/core/c/h;->g()Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "null"

    if-eqz p2, :cond_2a

    sget-object p2, Lcom/igexin/push/core/f;->at:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_46

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    goto :goto_1a

    :cond_19
    move-object v2, p1

    :goto_1a
    sput-object v2, Lcom/igexin/push/core/f;->at:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p2

    new-instance v2, Lcom/igexin/push/core/c/r;

    invoke-direct {v2, p0, p1}, Lcom/igexin/push/core/c/r;-><init>(Lcom/igexin/push/core/c/h;Ljava/lang/String;)V

    :goto_25
    invoke-virtual {p2, v2, v0, v1}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1

    :cond_2a
    sget-object p2, Lcom/igexin/push/core/f;->au:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_46

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    goto :goto_3a

    :cond_39
    move-object v2, p1

    :goto_3a
    sput-object v2, Lcom/igexin/push/core/f;->au:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p2

    new-instance v2, Lcom/igexin/push/core/c/s;

    invoke-direct {v2, p0, p1}, Lcom/igexin/push/core/c/s;-><init>(Lcom/igexin/push/core/c/h;Ljava/lang/String;)V

    goto :goto_25

    :cond_46
    return v0
.end method

.method public a(Z)Z
    .registers 5

    sget-boolean v0, Lcom/igexin/push/core/f;->M:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1b

    sput-boolean p1, Lcom/igexin/push/core/f;->M:Z

    if-nez p1, :cond_c

    invoke-static {}, Lcom/igexin/push/g/a;->k()V

    :cond_c
    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance v0, Lcom/igexin/push/core/c/n;

    invoke-direct {v0, p0}, Lcom/igexin/push/core/c/n;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1

    :cond_1b
    return v1
.end method

.method public b()V
    .registers 5

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/i;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/c/i;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    const-string v11, "null"

    invoke-direct/range {p0 .. p1}, Lcom/igexin/push/core/c/h;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v13, 0xe

    const/16 v9, 0x14

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    :try_start_13
    const-string v3, "runtime"

    const-string v0, "id"

    const-string v2, "value"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/16 v19, 0x0

    const-string v20, "id"
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_336
    .catchall {:try_start_13 .. :try_end_24} :catchall_32f

    move-object/from16 v2, p1

    const/4 v15, 0x1

    move-object v7, v0

    const/4 v14, 0x0

    move-object/from16 v8, v19

    const/16 v12, 0x14

    move-object/from16 v9, v20

    :try_start_2f
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_33a
    .catchall {:try_start_2f .. :try_end_33} :catchall_32f

    if-eqz v2, :cond_32c

    :cond_35
    :goto_35
    :try_start_35
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_32c

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3f} :catch_32a
    .catchall {:try_start_35 .. :try_end_3f} :catchall_326

    if-eq v0, v15, :cond_6e

    if-eq v0, v13, :cond_6e

    const/16 v3, 0x13

    if-eq v0, v3, :cond_6e

    if-eq v0, v12, :cond_6e

    const/16 v3, 0x17

    if-eq v0, v3, :cond_6e

    const/16 v3, 0x19

    if-eq v0, v3, :cond_6e

    const/16 v3, 0x16

    if-eq v0, v3, :cond_6e

    const/16 v3, 0x1f

    if-eq v0, v3, :cond_6e

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_6e

    const/16 v3, 0x31

    if-eq v0, v3, :cond_6e

    const/16 v3, 0x32

    if-ne v0, v3, :cond_66

    goto :goto_6e

    :cond_66
    :try_start_66
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object/from16 v3, v18

    goto :goto_7c

    :cond_6e
    :goto_6e
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-eqz v3, :cond_7a

    sget-object v4, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/igexin/b/a/a/a;->c([BLjava/lang/String;)[B

    move-result-object v3
    :try_end_7a
    .catchall {:try_start_66 .. :try_end_7a} :catchall_309

    :cond_7a
    move-object/from16 v4, v18

    :goto_7c
    if-nez v3, :cond_81

    if-nez v4, :cond_81

    goto :goto_35

    :cond_81
    if-eq v0, v15, :cond_2ef

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2e3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2d7

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2c3

    const/4 v5, 0x6

    if-eq v0, v5, :cond_2b2

    const/16 v5, 0x8

    if-eq v0, v5, :cond_2a1

    const/16 v5, 0x28

    if-eq v0, v5, :cond_289

    const/16 v5, 0x34

    if-eq v0, v5, :cond_27d

    packed-switch v0, :pswitch_data_4f6

    packed-switch v0, :pswitch_data_514

    packed-switch v0, :pswitch_data_51e

    goto :goto_35

    :pswitch_a5
    :try_start_a5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    move-object/from16 v0, v18

    :cond_b2
    sput-object v0, Lcom/igexin/push/core/f;->aw:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|read last mobileRedirectCmList = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->aw:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_cc
    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto/16 :goto_35

    :pswitch_d1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    move-object/from16 v0, v18

    :cond_de
    sput-object v0, Lcom/igexin/push/core/f;->av:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|read last wifiRedirectCmList = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->av:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_cc

    :pswitch_f9
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    move-object/from16 v4, v18

    :cond_101
    sput-object v4, Lcom/igexin/push/core/f;->z:Ljava/lang/String;

    goto/16 :goto_35

    :pswitch_105
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    const/4 v8, 0x0

    goto :goto_111

    :cond_10d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :goto_111
    sput v8, Lcom/igexin/push/core/f;->az:I

    goto/16 :goto_35

    :pswitch_115
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    move-object/from16 v4, v18

    :cond_11d
    sput-object v4, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    goto/16 :goto_35

    :pswitch_121
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    move-wide/from16 v3, v16

    goto :goto_12e

    :cond_12a
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_12e
    sput-wide v3, Lcom/igexin/push/core/f;->K:J

    goto/16 :goto_35

    :pswitch_132
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13f

    move-object/from16 v0, v18

    :cond_13f
    sput-object v0, Lcom/igexin/push/core/f;->at:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|DT_ read last domainMobileStatus = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->at:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_cc

    :pswitch_15b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_168

    move-object/from16 v0, v18

    :cond_168
    sput-object v0, Lcom/igexin/push/core/f;->au:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|DT_ read last domainWifiStatus = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->au:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_cc

    :pswitch_184
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_191

    move-object/from16 v0, v18

    :cond_191
    sput-object v0, Lcom/igexin/push/core/f;->ar:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|DT_ read last mobile result = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->ar:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_cc

    :pswitch_1ad
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    move-object/from16 v0, v18

    :cond_1ba
    sput-object v0, Lcom/igexin/push/core/f;->as:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|DT_ read last wifi result = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->as:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_cc

    :pswitch_1d6
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1df

    move-wide/from16 v3, v16

    goto :goto_1e3

    :cond_1df
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_1e3
    sput-wide v3, Lcom/igexin/push/core/f;->aq:J

    goto/16 :goto_35

    :pswitch_1e7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f4

    move-object/from16 v0, v18

    :cond_1f4
    sput-object v0, Lcom/igexin/push/core/f;->t:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    goto/16 :goto_35

    :pswitch_1fa
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_207

    move-object/from16 v0, v18

    :cond_207
    sput-object v0, Lcom/igexin/push/core/f;->w:Ljava/lang/String;

    goto/16 :goto_35

    :pswitch_20b
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_213

    const/4 v8, 0x0

    goto :goto_217

    :cond_213
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :goto_217
    sput v8, Lcom/igexin/push/core/f;->R:I

    goto/16 :goto_35

    :pswitch_21b
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_223

    move-object/from16 v4, v18

    :cond_223
    sput-object v4, Lcom/igexin/push/core/f;->P:Ljava/lang/String;

    goto/16 :goto_35

    :pswitch_227
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_230

    move-wide/from16 v3, v16

    goto :goto_234

    :cond_230
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_234
    sput-wide v3, Lcom/igexin/push/core/f;->N:J

    goto/16 :goto_35

    :pswitch_238
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/f;->M:Z

    goto/16 :goto_35

    :pswitch_246
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/igexin/push/core/f;->ao:Ljava/lang/String;

    goto/16 :goto_35

    :pswitch_24f
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_257

    move-object/from16 v4, v18

    :cond_257
    sput-object v4, Lcom/igexin/push/core/f;->L:Ljava/lang/String;

    goto/16 :goto_35

    :pswitch_25b
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_264

    move-wide/from16 v3, v16

    goto :goto_268

    :cond_264
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_268
    sput-wide v3, Lcom/igexin/push/core/f;->J:J

    goto/16 :goto_35

    :pswitch_26c
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_275

    move-wide/from16 v3, v16

    goto :goto_279

    :cond_275
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_279
    sput-wide v3, Lcom/igexin/push/core/f;->I:J

    goto/16 :goto_35

    :cond_27d
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_285

    move-object/from16 v4, v18

    :cond_285
    sput-object v4, Lcom/igexin/push/core/f;->aC:Ljava/lang/String;

    goto/16 :goto_35

    :cond_289
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_297

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_297

    const/4 v8, 0x1

    goto :goto_298

    :cond_297
    const/4 v8, 0x0

    :goto_298
    invoke-static {}, Lcom/igexin/push/e/b;->a()Lcom/igexin/push/e/b;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/igexin/push/e/b;->a(Z)V

    goto/16 :goto_35

    :cond_2a1
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2aa

    move-wide/from16 v3, v16

    goto :goto_2ae

    :cond_2aa
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_2ae
    sput-wide v3, Lcom/igexin/push/core/f;->G:J

    goto/16 :goto_35

    :cond_2b2
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    move-wide/from16 v3, v16

    goto :goto_2bf

    :cond_2bb
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_2bf
    sput-wide v3, Lcom/igexin/push/core/f;->F:J

    goto/16 :goto_35

    :cond_2c3
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d2

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d0

    goto :goto_2d2

    :cond_2d0
    const/4 v8, 0x0

    goto :goto_2d3

    :cond_2d2
    :goto_2d2
    const/4 v8, 0x1

    :goto_2d3
    sput-boolean v8, Lcom/igexin/push/core/f;->k:Z

    goto/16 :goto_35

    :cond_2d7
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2df

    move-object/from16 v4, v18

    :cond_2df
    sput-object v4, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    goto/16 :goto_35

    :cond_2e3
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2eb

    move-object/from16 v4, v18

    :cond_2eb
    sput-object v4, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    goto/16 :goto_35

    :cond_2ef
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_2f4} :catch_32a
    .catchall {:try_start_a5 .. :try_end_2f4} :catchall_326

    :try_start_2f4
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2fd

    move-wide/from16 v3, v16

    goto :goto_301

    :cond_2fd
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_301
    sput-wide v3, Lcom/igexin/push/core/f;->r:J
    :try_end_303
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_303} :catch_305
    .catchall {:try_start_2f4 .. :try_end_303} :catchall_326

    goto/16 :goto_35

    :catch_305
    :try_start_305
    sput-wide v16, Lcom/igexin/push/core/f;->r:J

    goto/16 :goto_35

    :catchall_309
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_324
    .catch Ljava/lang/Exception; {:try_start_305 .. :try_end_324} :catch_32a
    .catchall {:try_start_305 .. :try_end_324} :catchall_326

    goto/16 :goto_cc

    :catchall_326
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_330

    :catch_32a
    nop

    goto :goto_33c

    :cond_32c
    if-eqz v2, :cond_341

    goto :goto_33e

    :catchall_32f
    move-exception v0

    :goto_330
    if-eqz v18, :cond_335

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_335
    throw v0

    :catch_336
    const/16 v12, 0x14

    const/4 v14, 0x0

    const/4 v15, 0x1

    :catch_33a
    move-object/from16 v2, v18

    :goto_33c
    if-eqz v2, :cond_341

    :goto_33e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_341
    sget-wide v2, Lcom/igexin/push/core/f;->r:J

    cmp-long v0, v2, v16

    if-nez v0, :cond_360

    invoke-static {}, Lcom/igexin/push/util/g;->d()J

    move-result-wide v2

    cmp-long v0, v2, v16

    if-eqz v0, :cond_360

    sput-wide v2, Lcom/igexin/push/core/f;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/util/EncryptUtils;->getBytesEncrypted([B)[B

    move-result-object v0

    invoke-direct {v1, v10, v15, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_360
    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    if-nez v0, :cond_37b

    invoke-static {}, Lcom/igexin/push/util/g;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37b

    sput-object v0, Lcom/igexin/push/core/f;->t:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/util/EncryptUtils;->getBytesEncrypted([B)[B

    move-result-object v0

    invoke-direct {v1, v10, v12, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_37b
    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    if-nez v0, :cond_3a3

    sget-wide v2, Lcom/igexin/push/core/f;->r:J

    cmp-long v0, v2, v16

    if-eqz v0, :cond_3a3

    sget-wide v2, Lcom/igexin/push/core/f;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/f;->t:Ljava/lang/String;

    sget-wide v2, Lcom/igexin/push/core/f;->r:J

    invoke-static {v2, v3}, Lcom/igexin/push/core/f;->a(J)V

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/util/EncryptUtils;->getBytesEncrypted([B)[B

    move-result-object v0

    invoke-direct {v1, v10, v12, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_3a3
    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    const-string v2, "cfcd208495d565ef66e7dff9f98764da"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3bb

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    if-eqz v0, :cond_3d8

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    const-string v2, "([a-f]|[0-9]){32}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d8

    :cond_3bb
    sget-wide v2, Lcom/igexin/push/core/f;->r:J

    cmp-long v0, v2, v16

    if-eqz v0, :cond_3d2

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    sget-wide v2, Lcom/igexin/push/core/f;->r:J

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/core/c/h;->b(J)Z

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/f;->t:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/util/g;->f()V

    goto :goto_3d8

    :cond_3d2
    sput-object v18, Lcom/igexin/push/core/f;->t:Ljava/lang/String;

    sput-object v11, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    sput-wide v16, Lcom/igexin/push/core/f;->r:J

    :cond_3d8
    :goto_3d8
    sget-object v0, Lcom/igexin/push/core/f;->ao:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e8

    sget-object v0, Lcom/igexin/push/core/f;->ao:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fd

    :cond_3e8
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/igexin/b/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/f;->ao:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->ao:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/util/EncryptUtils;->getBytesEncrypted([B)[B

    move-result-object v0

    invoke-direct {v1, v10, v13, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_3fd
    invoke-static {}, Lcom/igexin/push/util/g;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    const/4 v3, 0x5

    if-nez v2, :cond_416

    if-eqz v0, :cond_416

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_416

    sput-object v0, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v1, v10, v2, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    :cond_416
    sget-object v0, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    if-nez v0, :cond_43b

    invoke-direct/range {p0 .. p0}, Lcom/igexin/push/core/c/h;->f()V

    sget-object v0, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v1, v10, v2, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    sget-object v0, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new registerId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43b
    sget-boolean v0, Lcom/igexin/push/config/k;->T:Z

    const/16 v2, 0x2e

    if-eqz v0, :cond_461

    new-instance v0, Lcom/igexin/push/core/c/c;

    sget-object v4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/igexin/push/core/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/push/core/c/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_461

    sget-object v4, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_461

    sput-object v0, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    invoke-direct {v1, v10, v2, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    :cond_461
    iget-boolean v0, v1, Lcom/igexin/push/core/c/h;->d:Z

    if-eqz v0, :cond_4f4

    iput-boolean v14, v1, Lcom/igexin/push/core/c/h;->d:Z

    sget-object v0, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_488

    sget-object v0, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object v0

    const/16 v4, 0x19

    invoke-direct {v1, v10, v4, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_488
    sget-wide v4, Lcom/igexin/push/core/f;->r:J

    cmp-long v0, v4, v16

    if-eqz v0, :cond_49f

    sget-wide v4, Lcom/igexin/push/core/f;->r:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/util/EncryptUtils;->getBytesEncrypted([B)[B

    move-result-object v0

    invoke-direct {v1, v10, v15, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_49f
    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b4

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/util/EncryptUtils;->getBytesEncrypted([B)[B

    move-result-object v0

    invoke-direct {v1, v10, v12, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_4b4
    sget-object v0, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4ca

    sget-object v0, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4ca

    sget-object v0, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v1, v10, v3, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    :cond_4ca
    sget-object v0, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d8

    sget-object v0, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v1, v10, v3, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    :cond_4d8
    sget-object v0, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e5

    sget-object v0, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    invoke-direct {v1, v10, v2, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    :cond_4e5
    sget-object v0, Lcom/igexin/push/core/f;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f4

    const/16 v0, 0x30

    sget-object v2, Lcom/igexin/push/core/f;->z:Ljava/lang/String;

    invoke-direct {v1, v10, v0, v2}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    :cond_4f4
    return-void

    nop

    :pswitch_data_4f6
    .packed-switch 0xb
        :pswitch_26c
        :pswitch_25b
        :pswitch_24f
        :pswitch_246
        :pswitch_238
        :pswitch_227
        :pswitch_21b
        :pswitch_20b
        :pswitch_1fa
        :pswitch_1e7
        :pswitch_1d6
        :pswitch_1ad
        :pswitch_184
    .end packed-switch

    :pswitch_data_514
    .packed-switch 0x1e
        :pswitch_15b
        :pswitch_132
        :pswitch_121
    .end packed-switch

    :pswitch_data_51e
    .packed-switch 0x2e
        :pswitch_115
        :pswitch_105
        :pswitch_f9
        :pswitch_d1
        :pswitch_a5
    .end packed-switch
.end method

.method public b(I)Z
    .registers 5

    sget v0, Lcom/igexin/push/core/f;->az:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_16

    sput p1, Lcom/igexin/push/core/f;->az:I

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance v0, Lcom/igexin/push/core/c/y;

    invoke-direct {v0, p0}, Lcom/igexin/push/core/c/y;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1

    :cond_16
    return v1
.end method

.method public b(J)Z
    .registers 5

    invoke-static {p1, p2}, Lcom/igexin/push/core/f;->a(J)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance p2, Lcom/igexin/push/core/c/af;

    invoke-direct {p2, p0}, Lcom/igexin/push/core/c/af;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sput-object p1, Lcom/igexin/push/core/f;->w:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance v0, Lcom/igexin/push/core/c/ae;

    invoke-direct {v0, p0}, Lcom/igexin/push/core/c/ae;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Z)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "null"

    if-eqz p2, :cond_2a

    sget-object p2, Lcom/igexin/push/core/f;->ar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_46

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    goto :goto_1a

    :cond_19
    move-object v2, p1

    :goto_1a
    sput-object v2, Lcom/igexin/push/core/f;->ar:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p2

    new-instance v2, Lcom/igexin/push/core/c/u;

    invoke-direct {v2, p0, p1}, Lcom/igexin/push/core/c/u;-><init>(Lcom/igexin/push/core/c/h;Ljava/lang/String;)V

    :goto_25
    invoke-virtual {p2, v2, v0, v1}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1

    :cond_2a
    sget-object p2, Lcom/igexin/push/core/f;->as:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_46

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    goto :goto_3a

    :cond_39
    move-object v2, p1

    :goto_3a
    sput-object v2, Lcom/igexin/push/core/f;->as:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p2

    new-instance v2, Lcom/igexin/push/core/c/v;

    invoke-direct {v2, p0, p1}, Lcom/igexin/push/core/c/v;-><init>(Lcom/igexin/push/core/c/h;Ljava/lang/String;)V

    goto :goto_25

    :cond_46
    return v0
.end method

.method public b(Z)Z
    .registers 5

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/z;

    invoke-direct {v1, p0, p1}, Lcom/igexin/push/core/c/z;-><init>(Lcom/igexin/push/core/c/h;Z)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    sget-wide v0, Lcom/igexin/push/core/f;->r:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    sget-boolean v0, Lcom/igexin/push/core/f;->k:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    sget-wide v0, Lcom/igexin/push/core/f;->G:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    sget-wide v0, Lcom/igexin/push/core/f;->K:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-direct {p0, p1, v1, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    sget-object v0, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    sget-wide v0, Lcom/igexin/push/core/f;->I:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, p1, v1, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    sget-wide v0, Lcom/igexin/push/core/f;->J:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-direct {p0, p1, v1, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x14

    invoke-direct {p0, p1, v1, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    sget-object v0, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    sget-object v0, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x19

    invoke-direct {p0, p1, v1, v0}, Lcom/igexin/push/core/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    return-void
.end method

.method public c()Z
    .registers 3

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igexin/push/core/f;->r:J

    const-string v0, "null"

    sput-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/igexin/push/core/c/h;->g()Z

    move-result v0

    return v0
.end method

.method public c(J)Z
    .registers 7

    sget-wide v0, Lcom/igexin/push/core/f;->J:J

    const/4 v2, 0x0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_17

    sput-wide p1, Lcom/igexin/push/core/f;->J:J

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance p2, Lcom/igexin/push/core/c/j;

    invoke-direct {p2, p0}, Lcom/igexin/push/core/c/j;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v2, v0}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    return v0

    :cond_17
    return v2
.end method

.method public c(Ljava/lang/String;)Z
    .registers 5

    sput-object p1, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance v0, Lcom/igexin/push/core/c/ag;

    invoke-direct {v0, p0}, Lcom/igexin/push/core/c/ag;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    move-object v1, p1

    :goto_f
    if-eqz p2, :cond_1c

    sget-object v2, Lcom/igexin/push/core/f;->aw:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    sput-object v1, Lcom/igexin/push/core/f;->aw:Ljava/lang/String;

    goto :goto_28

    :cond_1c
    if-nez p2, :cond_58

    sget-object v2, Lcom/igexin/push/core/f;->av:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    sput-object v1, Lcom/igexin/push/core/f;->av:Ljava/lang/String;

    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|saveLastRedirectCmList isMobile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lastRedirectCmList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v1

    new-instance v2, Lcom/igexin/push/core/c/ab;

    invoke-direct {v2, p0, p2, p1}, Lcom/igexin/push/core/c/ab;-><init>(Lcom/igexin/push/core/c/h;ZLjava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, v0, p1}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1

    :cond_58
    return v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/igexin/push/core/c/h;->c:Ljava/util/Map;

    return-object v0
.end method

.method public d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/core/c/h;->d:Z

    invoke-direct {p0, p1}, Lcom/igexin/push/core/c/h;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/igexin/push/core/c/h;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/igexin/push/core/c/h;->k(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/igexin/push/core/c/h;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/igexin/push/core/c/h;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/igexin/push/core/c/h;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/igexin/push/core/c/h;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public d(J)Z
    .registers 5

    sput-wide p1, Lcom/igexin/push/core/f;->aq:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|save idc config failed time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/igexin/push/core/c/k;-><init>(Lcom/igexin/push/core/c/h;J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .registers 5

    sput-object p1, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance v0, Lcom/igexin/push/core/c/ah;

    invoke-direct {v0, p0}, Lcom/igexin/push/core/c/ah;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1
.end method

.method public e()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "| found a duplicate cid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    invoke-direct {p0}, Lcom/igexin/push/core/c/h;->f()V

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/h;->a(Ljava/lang/String;)Z

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/c/h;->c()Z

    const/4 v0, 0x0

    sput v0, Lcom/igexin/push/core/f;->o:I

    invoke-static {}, Lcom/igexin/push/g/b/g;->i()Lcom/igexin/push/g/b/g;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/g/b/g;->a(J)V

    return-void
.end method

.method public e(J)Z
    .registers 7

    sget-wide v0, Lcom/igexin/push/core/f;->I:J

    const/4 v2, 0x0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_18

    sput-wide p1, Lcom/igexin/push/core/f;->I:J

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance p2, Lcom/igexin/push/core/c/l;

    invoke-direct {p2, p0}, Lcom/igexin/push/core/c/l;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v2, v0}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1

    :cond_18
    return v2
.end method

.method public e(Ljava/lang/String;)Z
    .registers 5

    sput-object p1, Lcom/igexin/push/core/f;->z:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance v0, Lcom/igexin/push/core/c/ai;

    invoke-direct {v0, p0}, Lcom/igexin/push/core/c/ai;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1
.end method

.method public f(J)Z
    .registers 7

    sget-wide v0, Lcom/igexin/push/core/f;->N:J

    const/4 v2, 0x0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_18

    sput-wide p1, Lcom/igexin/push/core/f;->N:J

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance p2, Lcom/igexin/push/core/c/o;

    invoke-direct {p2, p0}, Lcom/igexin/push/core/c/o;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v2, v0}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1

    :cond_18
    return v2
.end method

.method public f(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    sget-object v1, Lcom/igexin/push/core/f;->L:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    sput-object p1, Lcom/igexin/push/core/f;->L:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance v1, Lcom/igexin/push/core/c/m;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/c/m;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    return v2

    :cond_1b
    return v0
.end method

.method public g(J)Z
    .registers 7

    sget-wide v0, Lcom/igexin/push/core/f;->K:J

    const/4 v2, 0x0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_18

    sput-wide p1, Lcom/igexin/push/core/f;->K:J

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance p2, Lcom/igexin/push/core/c/w;

    invoke-direct {p2, p0}, Lcom/igexin/push/core/c/w;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v2, v0}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1

    :cond_18
    return v2
.end method

.method public g(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Lcom/igexin/push/core/f;->P:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    sput-object p1, Lcom/igexin/push/core/f;->P:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance v0, Lcom/igexin/push/core/c/p;

    invoke-direct {v0, p0}, Lcom/igexin/push/core/c/p;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1

    :cond_1a
    return v1
.end method

.method public h(J)Z
    .registers 7

    sget-wide v0, Lcom/igexin/push/core/f;->F:J

    const/4 v2, 0x0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_18

    sput-wide p1, Lcom/igexin/push/core/f;->F:J

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance p2, Lcom/igexin/push/core/c/x;

    invoke-direct {p2, p0}, Lcom/igexin/push/core/c/x;-><init>(Lcom/igexin/push/core/c/h;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v2, v0}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1

    :cond_18
    return v2
.end method

.method public h(Ljava/lang/String;)Z
    .registers 5

    sput-object p1, Lcom/igexin/push/core/f;->aC:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/aa;

    invoke-direct {v1, p0, p1}, Lcom/igexin/push/core/c/aa;-><init>(Lcom/igexin/push/core/c/h;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    return p1
.end method
