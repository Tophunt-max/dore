###### Class com.igexin.push.core.bean.a (com.igexin.push.core.bean.a)
.class public Lcom/igexin/push/core/bean/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "open"

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->f:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->f:Ljava/lang/String;

    :cond_25
    const-string v0, "4.3.9.0"

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->e:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->b:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->d:Ljava/lang/String;

    const-string v0, "ANDROID"

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->h:Ljava/lang/String;

    const-string v0, "MDP"

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->j:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/core/bean/a;->m:J

    sget-object v0, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->k:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/util/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/util/p;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->i:Ljava/lang/String;

    :cond_72
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/assist/sdk/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_97

    sget-boolean v0, Lcom/igexin/push/config/k;->T:Z

    if-eqz v0, :cond_97

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FCM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->l:Ljava/lang/String;

    if-nez v1, :cond_8e

    const-string v1, ""

    :cond_8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/bean/a;->l:Ljava/lang/String;

    :cond_97
    return-void
.end method

.method public static a(Lcom/igexin/push/core/bean/a;)Ljava/lang/String;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->a:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_c

    move-object v1, v2

    :cond_c
    const-string v3, "model"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->b:Ljava/lang/String;

    if-nez v1, :cond_16

    move-object v1, v2

    :cond_16
    const-string v3, "sim"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->c:Ljava/lang/String;

    if-nez v1, :cond_20

    move-object v1, v2

    :cond_20
    const-string v3, "imei"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->d:Ljava/lang/String;

    if-nez v1, :cond_2a

    move-object v1, v2

    :cond_2a
    const-string v3, "mac"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->e:Ljava/lang/String;

    if-nez v1, :cond_34

    move-object v1, v2

    :cond_34
    const-string v3, "version"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->f:Ljava/lang/String;

    if-nez v1, :cond_3e

    move-object v1, v2

    :cond_3e
    const-string v3, "channelid"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v3, "ANDROID"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->j:Ljava/lang/String;

    if-nez v1, :cond_4f

    move-object v1, v2

    :cond_4f
    const-string v3, "app"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/igexin/push/core/bean/a;->g:Ljava/lang/String;

    if-nez v3, :cond_63

    move-object v3, v2

    :cond_63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "deviceid"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->k:Ljava/lang/String;

    if-nez v1, :cond_74

    move-object v1, v2

    :cond_74
    const-string v3, "device_token"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->l:Ljava/lang/String;

    if-nez v1, :cond_7e

    move-object v1, v2

    :cond_7e
    const-string v3, "brand"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igexin/push/core/bean/a;->i:Ljava/lang/String;

    if-nez v1, :cond_88

    move-object v1, v2

    :cond_88
    const-string v3, "system_version"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cell"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/igexin/push/util/p;->f()Ljava/lang/String;

    move-result-object v1

    const-string v3, "aid"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/igexin/push/util/p;->g()Ljava/lang/String;

    move-result-object v1

    const-string v3, "adid"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v1

    sget-object v3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/igexin/push/core/s;->c(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/igexin/push/core/b;->s:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bf

    const-string v3, "us"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_bf
    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v1

    sget-object v3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/igexin/push/core/s;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ua"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/igexin/push/core/f;->aC:Ljava/lang/String;

    if-nez v1, :cond_d3

    goto :goto_d5

    :cond_d3
    sget-object v2, Lcom/igexin/push/core/f;->aC:Ljava/lang/String;

    :goto_d5
    const-string v1, "oaid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/igexin/push/util/a;->c(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "notification_enabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "action"

    const-string v3, "addphoneinfo"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/igexin/push/core/bean/a;->m:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "info"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addphoneinfo|"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
