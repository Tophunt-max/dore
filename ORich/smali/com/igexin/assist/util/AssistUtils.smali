###### Class com.igexin.assist.util.AssistUtils (com.igexin.assist.util.AssistUtils)
.class public Lcom/igexin/assist/util/AssistUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startGetuiService(Landroid/content/Context;)V
    .registers 4

    if-eqz p0, :cond_1e

    :try_start_2
    const-string v0, "us"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/igexin/push/util/t;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :cond_17
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_1e

    :catchall_1e
    :cond_1e
    return-void
.end method
