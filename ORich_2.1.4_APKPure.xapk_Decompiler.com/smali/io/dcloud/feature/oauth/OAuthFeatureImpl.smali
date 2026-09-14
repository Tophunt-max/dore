###### Class io.dcloud.feature.oauth.OAuthFeatureImpl (io.dcloud.feature.oauth.OAuthFeatureImpl)
.class public Lio/dcloud/feature/oauth/OAuthFeatureImpl;
.super Lio/dcloud/common/DHInterface/StandardFeature;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/DHInterface/StandardFeature;-><init>()V

    return-void
.end method


# virtual methods
.method public addPhoneNumber(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1}, Lio/dcloud/common/DHInterface/BaseFeature;->getBaseModuleById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/oauth/BaseOAuthService;

    if-eqz v1, :cond_11

    .line 4
    invoke-virtual {v1, p1, p2}, Lio/dcloud/feature/oauth/BaseOAuthService;->addPhoneNumber(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto :goto_30

    :cond_11
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x13

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_OAUTH_LOGIN:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "{code:%d,message:\'%s\'}"

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    invoke-static {p1, p2, v1, v2, v0}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_30
    return-void
.end method

.method public authorize(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1}, Lio/dcloud/common/DHInterface/BaseFeature;->getBaseModuleById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/oauth/BaseOAuthService;

    if-eqz v1, :cond_22

    .line 4
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 5
    instance-of v2, v0, Lio/dcloud/application/DCloudApplication;

    if-eqz v2, :cond_1e

    .line 6
    check-cast v0, Lio/dcloud/application/DCloudApplication;

    invoke-virtual {v0}, Lio/dcloud/application/DCloudApplication;->stopB2FOnce()V

    .line 8
    :cond_1e
    invoke-virtual {v1, p1, p2}, Lio/dcloud/feature/oauth/BaseOAuthService;->authorize(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto :goto_41

    :cond_22
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x13

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_OAUTH_LOGIN:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "{code:%d,message:\'%s\'}"

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    invoke-static {p1, p2, v1, v2, v0}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_41
    return-void
.end method

.method public closeAuthView(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lio/dcloud/common/DHInterface/BaseFeature;->getBaseModuleById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/oauth/BaseOAuthService;

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/oauth/BaseOAuthService;->closeAuthView(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    :cond_10
    return-void
.end method

.method public getCheckBoxState(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p2}, Lio/dcloud/common/DHInterface/BaseFeature;->getBaseModuleById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;

    move-result-object p2

    check-cast p2, Lio/dcloud/feature/oauth/BaseOAuthService;

    if-eqz p2, :cond_11

    .line 4
    invoke-virtual {p2}, Lio/dcloud/feature/oauth/BaseOAuthService;->getCheckBoxState()Z

    move-result p1

    :cond_11
    return p1
.end method

.method public getServices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/DHInterface/BaseFeature;->loadModules()Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/DHInterface/BaseFeature;->toModuleJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, p2, v1, v2, v0}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;IZ)V

    return-void
.end method

.method public getUserInfo(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1}, Lio/dcloud/common/DHInterface/BaseFeature;->getBaseModuleById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/oauth/BaseOAuthService;

    if-eqz v1, :cond_11

    .line 4
    invoke-virtual {v1, p1, p2}, Lio/dcloud/feature/oauth/BaseOAuthService;->getUserInfo(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto :goto_30

    :cond_11
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x15

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_OAUTH_GET_USERINFO:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "{code:%d,message:\'%s\'}"

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    invoke-static {p1, p2, v1, v2, v0}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_30
    return-void
.end method

.method public login(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1}, Lio/dcloud/common/DHInterface/BaseFeature;->getBaseModuleById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/oauth/BaseOAuthService;

    if-eqz v1, :cond_22

    .line 4
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 5
    instance-of v2, v0, Lio/dcloud/application/DCloudApplication;

    if-eqz v2, :cond_1e

    .line 6
    check-cast v0, Lio/dcloud/application/DCloudApplication;

    invoke-virtual {v0}, Lio/dcloud/application/DCloudApplication;->stopB2FOnce()V

    .line 8
    :cond_1e
    invoke-virtual {v1, p1, p2}, Lio/dcloud/feature/oauth/BaseOAuthService;->login(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto :goto_41

    :cond_22
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x13

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_OAUTH_LOGIN:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "{code:%d,message:\'%s\'}"

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    invoke-static {p1, p2, v1, v2, v0}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_41
    return-void
.end method

.method public logout(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1}, Lio/dcloud/common/DHInterface/BaseFeature;->getBaseModuleById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/oauth/BaseOAuthService;

    if-eqz v1, :cond_11

    .line 4
    invoke-virtual {v1, p1, p2}, Lio/dcloud/feature/oauth/BaseOAuthService;->logout(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto :goto_30

    :cond_11
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x14

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_OAUTH_LOGOUT:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "{code:%d,message:\'%s\'}"

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    invoke-static {p1, p2, v1, v2, v0}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_30
    return-void
.end method

.method public otherLoginButtonClick(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lio/dcloud/common/DHInterface/BaseFeature;->getBaseModuleById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/oauth/BaseOAuthService;

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/oauth/BaseOAuthService;->otherLoginButtonClick(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    :cond_10
    return-void
.end method

.method public preLogin(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1}, Lio/dcloud/common/DHInterface/BaseFeature;->getBaseModuleById(Ljava/lang/String;)Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/oauth/BaseOAuthService;

    if-eqz v1, :cond_11

    .line 4
    invoke-virtual {v1, p1, p2}, Lio/dcloud/feature/oauth/BaseOAuthService;->preLogin(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto :goto_2f

    :cond_11
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x3

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_OAUTH_LOGOUT:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "{code:%d,message:\'%s\'}"

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    invoke-static {p1, p2, v1, v2, v0}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_2f
    return-void
.end method
