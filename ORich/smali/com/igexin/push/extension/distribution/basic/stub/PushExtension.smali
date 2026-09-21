###### Class com.igexin.push.extension.distribution.basic.stub.PushExtension (com.igexin.push.extension.distribution.basic.stub.PushExtension)
.class public Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/extension/stub/IPushExtension;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/core/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/igexin/push/extension/distribution/basic/a/a/a;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;->a:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/extension/distribution/basic/a/a;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/basic/a/a;-><init>()V

    const-string v2, "notification"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;->a:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/extension/distribution/basic/a/e;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/basic/a/e;-><init>()V

    const-string v2, "terminatetask"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;->a:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/extension/distribution/basic/a/c;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/basic/a/c;-><init>()V

    const-string v2, "startintent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;->a:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/extension/distribution/basic/a/d;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/basic/a/d;-><init>()V

    const-string v2, "startmyactivity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;->a:Ljava/util/Map;

    new-instance v1, Lcom/igexin/push/extension/distribution/basic/a/f;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/basic/a/f;-><init>()V

    const-string v2, "wakeupsdk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public executeAction(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
    .registers 5

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;->a:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/a/a/a;

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->isStop()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-interface {v0, p1, p2}, Lcom/igexin/push/core/a/a/a;->b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z

    move-result p1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "EXT-PushExtension|ext init ###"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const-string p1, "EXT-PushExtension|context = null"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_e
    sput-object p1, Lcom/igexin/push/extension/distribution/basic/c/g;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/j/i;->a()Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/ImgCache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->s:Ljava/lang/String;

    :cond_2d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_40

    sput v0, Lcom/igexin/push/extension/distribution/basic/c/g;->b:I

    sput v1, Lcom/igexin/push/extension/distribution/basic/c/g;->c:I

    goto :goto_44

    :cond_40
    sput v1, Lcom/igexin/push/extension/distribution/basic/c/g;->b:I

    sput v0, Lcom/igexin/push/extension/distribution/basic/c/g;->c:I

    :goto_44
    :try_start_44
    new-instance v0, Lcom/igexin/push/extension/distribution/basic/e/b;

    invoke-direct {v0, p1}, Lcom/igexin/push/extension/distribution/basic/e/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->t:Lcom/igexin/push/extension/distribution/basic/e/b;

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/d;->a()Lcom/igexin/push/extension/distribution/basic/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/c/d;->e()V
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_53

    goto :goto_54

    :catchall_53
    nop

    :goto_54
    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/d;->a()Lcom/igexin/push/extension/distribution/basic/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/c/d;->c()V

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/d;->a()Lcom/igexin/push/extension/distribution/basic/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/c/d;->d()V

    new-instance v0, Lcom/igexin/push/extension/distribution/basic/e/a;

    invoke-direct {v0, p1}, Lcom/igexin/push/extension/distribution/basic/e/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->f:Lcom/igexin/push/extension/distribution/basic/e/a;

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/d/b;->a()Lcom/igexin/push/extension/distribution/basic/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/d/b;->b()V

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->d:Ljava/lang/String;

    if-nez v0, :cond_9d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->d:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/d/b;->a()Lcom/igexin/push/extension/distribution/basic/d/b;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/igexin/push/extension/distribution/basic/c/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(ILjava/lang/String;)V

    :cond_9d
    sget-boolean v0, Lcom/igexin/push/core/f;->l:Z

    if-eqz v0, :cond_aa

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/a/a/c;->a()Lcom/igexin/push/extension/distribution/basic/a/a/c;

    move-result-object v0

    sget-boolean v1, Lcom/igexin/push/core/f;->l:Z

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/distribution/basic/a/a/c;->a(Z)V

    :cond_aa
    new-instance v0, Lcom/igexin/push/extension/distribution/basic/a/a/a;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/basic/a/a/a;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;->b:Lcom/igexin/push/extension/distribution/basic/a/a/a;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.igexin.sdk.action."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/extension/distribution/basic/c/g;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long p1, v0, v2

    if-lez p1, :cond_fd

    new-instance p1, Lcom/igexin/push/extension/distribution/basic/stub/a;

    const-wide/16 v0, 0x4e20

    invoke-direct {p1, p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/stub/a;-><init>(Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;J)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/e;->a(Lcom/igexin/push/g/b/h;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXT-PushExtension|init addTimerTask getConfigTask result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_fd
    const-wide/32 v0, 0x2bf20

    new-instance p1, Lcom/igexin/push/extension/distribution/basic/stub/b;

    invoke-direct {p1, p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/stub/b;-><init>(Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;J)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/e;->a(Lcom/igexin/push/g/b/h;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXT-PushExtension|init addTimerTask result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public isActionSupported(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public onDestroy()V
    .registers 3

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/d;->a()Lcom/igexin/push/extension/distribution/basic/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/c/d;->f()V

    :try_start_7
    sget-object v0, Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;->b:Lcom/igexin/push/extension/distribution/basic/a/a/a;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;->b:Lcom/igexin/push/extension/distribution/basic/a/a/a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    return-void
.end method

.method public parseAction(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
    .registers 4

    if-eqz p1, :cond_1d

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :try_start_a
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/a/a/a;

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1}, Lcom/igexin/push/core/a/a/a;->a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;

    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public prepareExecuteAction(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/c;
    .registers 5

    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/stub/PushExtension;->a:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/a/a/a;

    if-eqz v0, :cond_17

    invoke-interface {v0, p1, p2}, Lcom/igexin/push/core/a/a/a;->a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/c;

    move-result-object p1

    return-object p1

    :cond_17
    sget-object p1, Lcom/igexin/push/core/c;->c:Lcom/igexin/push/core/c;

    return-object p1
.end method
