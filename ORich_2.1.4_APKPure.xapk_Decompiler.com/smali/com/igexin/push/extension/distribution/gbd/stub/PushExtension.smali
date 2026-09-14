###### Class com.igexin.push.extension.distribution.gbd.stub.PushExtension (com.igexin.push.extension.distribution.gbd.stub.PushExtension)
.class public Lcom/igexin/push/extension/distribution/gbd/stub/PushExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/extension/stub/IPushExtension;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeAction(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "GBD_PushExtension"

    :try_start_2
    const-string v1, "init gbd ..."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/d/d;->a()Lcom/igexin/push/extension/distribution/gbd/d/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/igexin/push/extension/distribution/gbd/d/d;->a(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    const/4 p1, 0x1

    return p1

    :catch_10
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isActionSupported(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .registers 2

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/d/d;->a()Lcom/igexin/push/extension/distribution/gbd/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->d()V

    return-void
.end method

.method public parseAction(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public prepareExecuteAction(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/c;
    .registers 3

    sget-object p1, Lcom/igexin/push/core/c;->c:Lcom/igexin/push/core/c;

    return-object p1
.end method
