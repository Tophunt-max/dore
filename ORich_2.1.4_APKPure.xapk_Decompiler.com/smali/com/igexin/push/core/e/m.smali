###### Class com.igexin.push.core.e.m (com.igexin.push.core.e.m)
.class public Lcom/igexin/push/core/e/m;
.super Lcom/igexin/push/core/e/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "com.heytap.openid"

    const-string v1, "com.heytap.openid.IdentifyService"

    const-string v2, "action.com.heytap.openid.OPEN_ID_SERVICE"

    const-string v3, "com.heytap.openid.IOpenID"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/igexin/push/core/e/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    const-string v0, "OUID"

    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Context;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/igexin/push/core/e/f;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-super {p0, p1}, Lcom/igexin/push/core/e/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Landroid/content/Context;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/igexin/push/core/e/f;->c(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/core/e/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/core/e/m;->b:Ljava/lang/String;

    :cond_e
    iget-object p1, p0, Lcom/igexin/push/core/e/m;->b:Ljava/lang/String;

    return-object p1
.end method

.method protected e(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/igexin/push/core/e/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    :try_start_8
    invoke-virtual {p0, p1}, Lcom/igexin/push/core/e/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/e/m;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/igexin/push/core/e/m;->b:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_56

    array-length v0, p1

    if-lez v0, :cond_56

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    :goto_38
    if-ge v0, v2, :cond_50

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/core/e/m;->a:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_56

    :catchall_56
    :cond_56
    iget-object p1, p0, Lcom/igexin/push/core/e/m;->a:Ljava/lang/String;

    return-object p1
.end method
