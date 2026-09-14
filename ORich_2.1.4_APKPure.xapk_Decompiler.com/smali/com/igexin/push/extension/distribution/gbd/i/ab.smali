###### Class com.igexin.push.extension.distribution.gbd.i.ab (com.igexin.push.extension.distribution.gbd.i.ab)
.class public Lcom/igexin/push/extension/distribution/gbd/i/ab;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static b:Lcom/igexin/push/extension/distribution/gbd/i/ab;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.sina.weibo.sdkProvider/query/deviceId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/i/ab;->a:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/ab;->c:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/igexin/push/extension/distribution/gbd/i/ab;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/i/ab;->b:Lcom/igexin/push/extension/distribution/gbd/i/ab;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/i/ab;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/i/ab;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/i/ab;->b:Lcom/igexin/push/extension/distribution/gbd/i/ab;

    :cond_b
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/i/ab;->b:Lcom/igexin/push/extension/distribution/gbd/i/ab;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 13

    const-string v0, "device_id"

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/ab;->c:Landroid/content/Context;

    const-string v2, "weibo divecid = "

    const-string v3, "GBD_weibo"

    const-string v4, "none"

    if-nez v1, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "context = null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_24
    const/4 v5, 0x0

    :try_start_25
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/igexin/push/extension/distribution/gbd/i/ab;->a:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    :goto_36
    if-eqz v5, :cond_47

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_46
    .catchall {:try_start_25 .. :try_end_46} :catchall_4d

    goto :goto_36

    :cond_47
    if-eqz v5, :cond_58

    :goto_49
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_58

    :catchall_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_64

    if-eqz v5, :cond_58

    goto :goto_49

    :cond_58
    :goto_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :catchall_64
    move-exception v0

    if-eqz v5, :cond_6a

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6a
    throw v0
.end method
