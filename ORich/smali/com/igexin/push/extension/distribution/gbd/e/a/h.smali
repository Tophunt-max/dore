###### Class com.igexin.push.extension.distribution.gbd.e.a.h (com.igexin.push.extension.distribution.gbd.e.a.h)
.class public Lcom/igexin/push/extension/distribution/gbd/e/a/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/igexin/push/extension/distribution/gbd/e/a/h;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    const-string v1, "gx_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/h;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a()Lcom/igexin/push/extension/distribution/gbd/e/a/h;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/e/a/h;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/h;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/e/a/h;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/h;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/e/a/h;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/h;

    :cond_b
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/e/a/h;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/h;

    return-object v0
.end method


# virtual methods
.method public a([B)V
    .registers 6

    const-string v0, "services"

    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "GBD_SPM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseServiceConfig : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/h;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/b;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/igexin/push/extension/distribution/gbd/i/ac;->b([BLjava/lang/String;)[B

    move-result-object p1

    const-string v1, "sp_guard_services"

    const/4 v2, 0x0

    const v3, 0x19000

    invoke-static {p1, v2, v3}, Lcom/igexin/push/extension/distribution/gbd/i/c;->a([BII)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5c
    .catchall {:try_start_2 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_61
    :goto_61
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/h;->b:Landroid/content/SharedPreferences;

    const-string v2, "sp_guard_services"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/c;->a([CI)[B

    move-result-object v1

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/ac;->a([BLjava/lang/String;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "GBD_SPM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readServiceConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_3e

    move-object v1, v2

    :cond_3d
    return-object v1

    :catchall_3e
    move-exception v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method
