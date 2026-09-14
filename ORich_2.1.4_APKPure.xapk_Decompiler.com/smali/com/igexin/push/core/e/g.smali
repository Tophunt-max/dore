###### Class com.igexin.push.core.e.g (com.igexin.push.core.e.g)
.class public Lcom/igexin/push/core/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/e/c;


# static fields
.field protected static a:Z = false

.field private static c:Ljava/lang/String;


# instance fields
.field protected b:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/core/e/g;->b:Z

    iput-object p1, p0, Lcom/igexin/push/core/e/g;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/igexin/push/core/e/g;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/e/g;->f:[Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/igexin/push/core/e/g;->b:Z

    if-eqz v0, :cond_7

    sget-boolean p1, Lcom/igexin/push/core/e/g;->a:Z

    return p1

    :cond_7
    const/4 v0, 0x0

    if-nez p1, :cond_b

    return v0

    :cond_b
    const/4 v1, 0x1

    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object v2, p0, Lcom/igexin/push/core/e/g;->d:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    sput-boolean p1, Lcom/igexin/push/core/e/g;->a:Z
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_20

    goto :goto_22

    :catchall_20
    sput-boolean v0, Lcom/igexin/push/core/e/g;->a:Z

    :goto_22
    iput-boolean v1, p0, Lcom/igexin/push/core/e/g;->b:Z

    sget-boolean p1, Lcom/igexin/push/core/e/g;->a:Z

    return p1
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    sget-object v0, Lcom/igexin/push/core/e/g;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/push/core/e/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/push/core/e/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :try_start_29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/igexin/push/core/e/g;->f:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4b

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/igexin/push/core/e/g;->c:Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_48

    goto :goto_4b

    :catchall_48
    const/4 p1, 0x0

    sput-object p1, Lcom/igexin/push/core/e/g;->c:Ljava/lang/String;

    :cond_4b
    :goto_4b
    sget-object p1, Lcom/igexin/push/core/e/g;->c:Ljava/lang/String;

    return-object p1
.end method

.method public c(Landroid/content/Context;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
