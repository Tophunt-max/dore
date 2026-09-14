###### Class com.igexin.push.extension.distribution.basic.d.a (com.igexin.push.extension.distribution.basic.d.a)
.class public Lcom/igexin/push/extension/distribution/basic/d/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/igexin/push/extension/distribution/basic/d/a;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->a:Landroid/content/Context;

    const-string v1, "gx_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/basic/d/a;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a()Lcom/igexin/push/extension/distribution/basic/d/a;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/d/a;->a:Lcom/igexin/push/extension/distribution/basic/d/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/basic/d/a;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/basic/d/a;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/d/a;->a:Lcom/igexin/push/extension/distribution/basic/d/a;

    :cond_b
    sget-object v0, Lcom/igexin/push/extension/distribution/basic/d/a;->a:Lcom/igexin/push/extension/distribution/basic/d/a;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->a:Landroid/content/Context;

    const-string v1, "getui_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "us"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->a:Landroid/content/Context;

    const-string v1, "getui_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "uis"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/basic/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_26

    const/4 v0, 0x0

    aget-object p1, p1, v0
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-object p1

    :catchall_26
    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/d/a;->b:Landroid/content/SharedPreferences;

    const-string v2, "sp_guard_services"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/igexin/push/extension/distribution/basic/j/b;->a([CI)[B

    move-result-object v1

    const-string v2, "dj1om0z0za9kwzxrphkqxsu9oc21tez1"

    invoke-static {v1, v2}, Lcom/igexin/b/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_21

    return-object v2

    :catchall_21
    return-object v0
.end method
