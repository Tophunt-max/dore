###### Class com.appsflyer.internal.ai (com.appsflyer.internal.ai)
.class final Lcom/appsflyer/internal/ai;
.super Lcom/appsflyer/internal/at;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/at<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "E3F9E1E0CF99D0E56A055BA65E241B3399F7CEA524326B0CDD6EC1327ED0FDC1"

    .line 12
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.katana.provider.AttributionIdProvider"

    invoke-direct {p0, p1, v1, v0}, Lcom/appsflyer/internal/at;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private AFKeystoreWrapper()Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "aid"

    .line 29
    iget-object v2, p0, Lcom/appsflyer/internal/at;->valueOf:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/appsflyer/internal/at;->AFInAppEventType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 29
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_46

    if-eqz v2, :cond_40

    .line 35
    :try_start_2a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 36
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_3e

    if-eqz v2, :cond_3d

    .line 38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3d
    return-object v0

    :catchall_3e
    move-exception v0

    goto :goto_49

    :cond_40
    if-eqz v2, :cond_45

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_45
    return-object v0

    :catchall_46
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_49
    if-eqz v2, :cond_4e

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 39
    :cond_4e
    throw v0
.end method


# virtual methods
.method public final synthetic AFInAppEventParameterName()Ljava/lang/Object;
    .registers 3

    .line 2038
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/appsflyer/internal/at;->AFKeystoreWrapper:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2021
    invoke-super {p0}, Lcom/appsflyer/internal/at;->AFInAppEventParameterName()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic valueOf()Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/appsflyer/internal/ai;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/lang/String;
    .registers 3

    .line 1038
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/appsflyer/internal/at;->AFKeystoreWrapper:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    invoke-super {p0}, Lcom/appsflyer/internal/at;->AFInAppEventParameterName()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
