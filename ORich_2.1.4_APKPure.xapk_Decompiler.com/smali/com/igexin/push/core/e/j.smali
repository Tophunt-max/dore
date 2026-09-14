###### Class com.igexin.push.core.e.j (com.igexin.push.core.e.j)
.class public Lcom/igexin/push/core/e/j;
.super Lcom/igexin/push/core/e/f;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "com.asus.msa.SupplementaryDID"

    const-string v1, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    const-string v2, "com.asus.msa.action.ACCESS_DID"

    const-string v3, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/igexin/push/core/e/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/igexin/push/core/e/f;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected b()I
    .registers 2

    const/4 v0, 0x2

    return v0
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
