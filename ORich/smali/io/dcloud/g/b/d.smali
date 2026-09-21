###### Class io.dcloud.g.b.d (io.dcloud.g.b.d)
.class public Lio/dcloud/g/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Lio/dcloud/g/b/c;

.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/g/b/d;->a:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    const-wide/16 v0, 0x0

    .line 104
    iput-wide v0, p0, Lio/dcloud/g/b/d;->c:J

    .line 105
    iput-object p1, p0, Lio/dcloud/g/b/d;->a:Landroid/content/Context;

    .line 106
    invoke-static {p1, p2}, Lio/dcloud/g/b/c;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)Lio/dcloud/g/b/c;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/content/Intent;Lio/dcloud/common/DHInterface/IOnCreateSplashView;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IApp;
    .registers 7

    .line 36
    invoke-static {p2, p4}, Lio/dcloud/common/constant/IntentConst;->obtainArgs(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";intentArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    if-nez p3, :cond_29

    .line 40
    iget-object p3, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    invoke-virtual {p3, p1, p4, p2}, Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_2f

    .line 42
    :cond_29
    iget-object v0, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    invoke-virtual {v0, p1, p4, p2, p3}, Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    :goto_2f
    return-object p1
.end method

.method public a()Lio/dcloud/common/DHInterface/ICore;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    iget-object v0, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "onPause"

    .line 47
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    invoke-virtual {v0, p1}, Lio/dcloud/g/b/c;->a(Landroid/app/Activity;)V

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lio/dcloud/g/b/d;->c:J

    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .registers 5

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged pConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Layout_Path"

    invoke-static {v0, p2}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onConfigurationChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lio/dcloud/g/b/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_11

    const-string v2, "appid"

    .line 51
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_12

    :cond_11
    move-object v4, v0

    .line 53
    :goto_12
    invoke-static {p2, v4}, Lio/dcloud/common/constant/IntentConst;->obtainArgs(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 55
    iget-object v2, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    instance-of v1, p1, Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    if-eqz v1, :cond_25

    move-object v0, p1

    check-cast v0, Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    :cond_25
    move-object v6, v0

    const/4 v0, 0x1

    const-string v1, "exec_new_intent"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IOnCreateSplashView;Z)Lio/dcloud/common/DHInterface/IApp;

    goto :goto_39

    .line 57
    :cond_32
    iget-object p2, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onNewIntent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p2, p1, v0, v5}, Lio/dcloud/g/b/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    :goto_39
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p4, :cond_e

    .line 1
    sget-object v1, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->WEBAPP:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-eq p3, v1, :cond_e

    sget-object v1, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->WEBVIEW:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-eq p3, v1, :cond_e

    .line 3
    invoke-interface {p4, v0}, Lio/dcloud/common/DHInterface/IOnCreateSplashView;->onCreateSplash(Landroid/content/Context;)Ljava/lang/Object;

    .line 6
    :cond_e
    iget-object p4, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    invoke-virtual {p4, p1, p2, p3}, Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Landroid/os/Bundle;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;)V

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_26

    const-string p4, "appid"

    .line 13
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_27

    :cond_26
    move-object p3, v0

    .line 15
    :goto_27
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2f

    .line 16
    sget-object p3, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    .line 18
    :cond_2f
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result p4

    if-eqz p4, :cond_39

    .line 19
    invoke-virtual {p0, p1, v0, v0, p3}, Lio/dcloud/g/b/d;->a(Landroid/app/Activity;Landroid/content/Intent;Lio/dcloud/common/DHInterface/IOnCreateSplashView;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IApp;

    goto :goto_4a

    .line 20
    :cond_39
    invoke-virtual {p0, p2, p3}, Lio/dcloud/g/b/d;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4a

    sget-object p2, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-nez p2, :cond_4a

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/dcloud/g/b/d;->a(Landroid/app/Activity;Landroid/content/Intent;Lio/dcloud/common/DHInterface/IOnCreateSplashView;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IApp;

    :cond_4a
    :goto_4a
    return-void
.end method

.method public a(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 12

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/dcloud/g/b/d;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sSplashExitCondition:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    return v1

    .line 44
    :cond_18
    :goto_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/dcloud/g/b/d;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v0, v2, v6

    if-lez v0, :cond_2c

    .line 45
    iget-object v0, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/g/b/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2c
    const-wide/16 v2, 0x0

    cmp-long p1, v4, v2

    if-lez p1, :cond_38

    .line 46
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p2, p1, :cond_38

    const/4 p1, 0x1

    return p1

    :cond_38
    return v1
.end method

.method a(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 10

    const-string v0, "has_stream_splash"

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6d

    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string p2, "appid"

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/www/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 30
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/manifest.json"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_5e

    return v1

    :cond_5e
    const-string v2, "direct_page"

    .line 35
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6d

    invoke-static {p2}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6d

    return v1

    :cond_6d
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public b()Landroid/content/Context;
    .registers 2

    .line 4
    iget-object v0, p0, Lio/dcloud/g/b/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b(Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/g/b/d;->c:J

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume resumeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dcloud/g/b/d;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    invoke-virtual {v0, p1}, Lio/dcloud/g/b/c;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public c(Landroid/app/Activity;)Z
    .registers 3

    const-string v0, "onStop"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    invoke-virtual {v0, p1}, Lio/dcloud/g/b/c;->c(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/dcloud/g/b/d;->b:Lio/dcloud/g/b/c;

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method
