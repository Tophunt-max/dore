###### Class com.igexin.push.core.e.l (com.igexin.push.core.e.l)
.class public Lcom/igexin/push/core/e/l;
.super Lcom/igexin/push/core/e/g;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "com.meizu.flyme.openidsdk"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/core/e/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 10

    invoke-super {p0, p1}, Lcom/igexin/push/core/e/g;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_47

    const-string v0, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string p1, "support"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_22

    return v0

    :cond_22
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "value"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_41

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    return v0

    :cond_38
    const-string v2, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/igexin/push/core/e/l;->a:Z

    goto :goto_49

    :cond_41
    sput-boolean v0, Lcom/igexin/push/core/e/l;->a:Z
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_44

    goto :goto_49

    :catchall_44
    sput-boolean v0, Lcom/igexin/push/core/e/l;->a:Z

    return v0

    :cond_47
    sput-boolean v1, Lcom/igexin/push/core/e/l;->a:Z

    :goto_49
    iput-boolean v1, p0, Lcom/igexin/push/core/e/l;->b:Z

    sget-boolean p1, Lcom/igexin/push/core/e/l;->a:Z

    return p1
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "oaid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/e/l;->a([Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/igexin/push/core/e/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
