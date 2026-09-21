###### Class com.igexin.push.extension.distribution.basic.i.a (com.igexin.push.extension.distribution.basic.i.a)
.class public Lcom/igexin/push/extension/distribution/basic/i/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/igexin/push/extension/distribution/basic/i/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/i/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/igexin/push/extension/distribution/basic/i/a;
    .registers 2

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/i/a;->b:Lcom/igexin/push/extension/distribution/basic/i/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/basic/i/a;

    invoke-direct {v0, p0}, Lcom/igexin/push/extension/distribution/basic/i/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/i/a;->b:Lcom/igexin/push/extension/distribution/basic/i/a;

    :cond_b
    sget-object p0, Lcom/igexin/push/extension/distribution/basic/i/a;->b:Lcom/igexin/push/extension/distribution/basic/i/a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/i/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/i/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
