###### Class io.dcloud.feature.oauth.BaseOAuthService (io.dcloud.feature.oauth.BaseOAuthService)
.class public abstract Lio/dcloud/feature/oauth/BaseOAuthService;
.super Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# static fields
.field protected static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field protected static final KEY_APPID:Ljava/lang/String; = "appid"

.field protected static final KEY_APPKEY:Ljava/lang/String; = "appkey"

.field protected static final KEY_APSECRET:Ljava/lang/String; = "appsecret"

.field protected static final KEY_AUTHRESULT:Ljava/lang/String; = "authResult"

.field protected static final KEY_EMAIL:Ljava/lang/String; = "email"

.field protected static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field protected static final KEY_HEADIMGURL:Ljava/lang/String; = "headimgurl"

.field protected static final KEY_NICKNAME:Ljava/lang/String; = "nickname"

.field protected static final KEY_OPENID:Ljava/lang/String; = "openid"

.field protected static final KEY_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field protected static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field protected static final KEY_SCOPE:Ljava/lang/String; = "scope"

.field protected static final KEY_STATE:Ljava/lang/String; = "state"

.field protected static final KEY_UNIONID:Ljava/lang/String; = "unionid"

.field protected static final KEY_UNIVERIFYINFO:Ljava/lang/String; = "univerifyInfo"

.field protected static final KEY_USERINFO:Ljava/lang/String; = "userInfo"

.field protected static final NULL:Ljava/lang/String; = "null"


# instance fields
.field protected authResult:Lorg/json/JSONObject;

.field protected mAddPhoneNumberCallbackId:Ljava/lang/String;

.field protected mAddPhoneNumberWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

.field protected mAuthCallbackId:Ljava/lang/String;

.field protected mAuthOptions:Lorg/json/JSONObject;

.field protected mAuthWebview:Lio/dcloud/common/DHInterface/IWebview;

.field protected mGetUserInfoCallbackId:Ljava/lang/String;

.field protected mGetUserInfoWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

.field protected mLoginCallbackId:Ljava/lang/String;

.field protected mLoginOptions:Lorg/json/JSONObject;

.field protected mLoginWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

.field protected mLogoutCallbackId:Ljava/lang/String;

.field protected mLogoutWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

.field protected mOtherClickCallbackId:Ljava/lang/String;

.field protected mOtherClickWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

.field protected mPreLoginCallbackId:Ljava/lang/String;

.field protected mPreLoginWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

.field protected nativeClient:Z

.field protected univerifyInfo:Lorg/json/JSONObject;

.field protected userInfo:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLoginWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    .line 52
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLoginCallbackId:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLoginOptions:Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->nativeClient:Z

    .line 95
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mAuthWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 96
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mAuthCallbackId:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mAuthOptions:Lorg/json/JSONObject;

    .line 151
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLogoutWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    .line 152
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLogoutCallbackId:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mPreLoginWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    .line 170
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mPreLoginCallbackId:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mOtherClickWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    .line 198
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mOtherClickCallbackId:Ljava/lang/String;

    .line 215
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mGetUserInfoWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    .line 216
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mGetUserInfoCallbackId:Ljava/lang/String;

    .line 232
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mAddPhoneNumberWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    .line 233
    iput-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mAddPhoneNumberCallbackId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addPhoneNumber(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mAddPhoneNumberWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    const/4 p1, 0x1

    .line 3
    :try_start_3
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mAddPhoneNumberCallbackId:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method public authorize(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/oauth/BaseOAuthService;->initMetaData()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mAuthWebview:Lio/dcloud/common/DHInterface/IWebview;

    const/4 p1, 0x1

    const-string v0, ""

    .line 3
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mAuthCallbackId:Ljava/lang/String;

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mAuthOptions:Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p0, p1}, Lio/dcloud/feature/oauth/BaseOAuthService;->initAuthOptions(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected checkToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public closeAuthView(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 3

    return-void
.end method

.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 1
    invoke-static {p1, v0, v1}, Lio/dcloud/common/util/Base64;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 1
    invoke-static {p1, v0, v1}, Lio/dcloud/common/util/Base64;->encodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCheckBoxState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorJsonbject(ILjava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_a

    return-object p2

    :catch_a
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public getErrorJsonbject(ILjava/lang/String;I)Lorg/json/JSONObject;
    .registers 6

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 15
    :try_start_18
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1d} :catch_1e

    return-object p2

    :catch_1e
    move-exception p1

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 18
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public getErrorJsonbject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 7
    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :try_start_4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_a

    return-object p2

    :catch_a
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method protected getToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_c

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 6
    invoke-static {p1}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;)[B

    move-result-object p1

    .line 7
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUserInfo(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mGetUserInfoWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    const/4 p1, 0x1

    .line 3
    :try_start_3
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mGetUserInfoCallbackId:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method protected getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "{}"

    .line 1
    :try_start_2
    invoke-virtual {p0, p1}, Lio/dcloud/feature/oauth/BaseOAuthService;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;->mApplicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oauth_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_22

    return-object v0

    .line 4
    :cond_22
    invoke-virtual {p0, p1}, Lio/dcloud/feature/oauth/BaseOAuthService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_27

    return-object p1

    :catch_27
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public hasFullConfigData()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasGeneralError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z
    .registers 12

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/oauth/BaseOAuthService;->hasFullConfigData()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, -0x7

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lio/dcloud/common/constant/DOMException;->MSG_BUSINESS_PARAMETER_HAS_NOT:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/constant/DOMException;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "{code:%d,message:\'%s\'}"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return v2

    :cond_2a
    return v1
.end method

.method public initAuthOptions(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method public initMetaData()V
    .registers 1

    return-void
.end method

.method public login(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/oauth/BaseOAuthService;->initMetaData()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLoginWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    const/4 p1, 0x1

    .line 4
    :try_start_6
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLoginCallbackId:Ljava/lang/String;

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLoginOptions:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p0, p1}, Lio/dcloud/feature/oauth/BaseOAuthService;->initAuthOptions(Lorg/json/JSONObject;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method public logout(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLogoutWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    const/4 p1, 0x1

    .line 3
    :try_start_3
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLogoutCallbackId:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method public makeResultJSONObject()Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "authResult"

    .line 3
    :try_start_7
    iget-object v2, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->authResult:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_1b

    const-string v1, "userInfo"

    .line 4
    :try_start_e
    iget-object v2, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->userInfo:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_1b

    const-string v1, "univerifyInfo"

    .line 5
    :try_start_15
    iget-object v2, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->univerifyInfo:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v1

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1f
    return-object v0
.end method

.method public makeResultJson()Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "authResult"

    .line 3
    :try_start_7
    iget-object v2, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->authResult:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_1b

    const-string v1, "userInfo"

    .line 4
    :try_start_e
    iget-object v2, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->userInfo:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_1b

    const-string v1, "univerifyInfo"

    .line 5
    :try_start_15
    iget-object v2, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->univerifyInfo:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v1

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1f
    return-object v0
.end method

.method protected onAddPhoneNumberFinished(Lorg/json/JSONObject;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mAddPhoneNumberWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mAddPhoneNumberCallbackId:Ljava/lang/String;

    if-eqz p2, :cond_9

    sget p2, Lio/dcloud/common/util/JSUtil;->OK:I

    goto :goto_b

    :cond_9
    sget p2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    :goto_b
    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method protected onGetUserInfoFinished(Lorg/json/JSONObject;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mGetUserInfoWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mGetUserInfoCallbackId:Ljava/lang/String;

    if-eqz p2, :cond_9

    sget p2, Lio/dcloud/common/util/JSUtil;->OK:I

    goto :goto_b

    :cond_9
    sget p2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    :goto_b
    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method protected onLoginFinished(Lorg/json/JSONObject;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLoginWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLoginCallbackId:Ljava/lang/String;

    if-eqz p2, :cond_9

    sget p2, Lio/dcloud/common/util/JSUtil;->OK:I

    goto :goto_b

    :cond_9
    sget p2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    :goto_b
    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLoginWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    .line 4
    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLoginCallbackId:Ljava/lang/String;

    return-void
.end method

.method protected onLogoutFinished(Lorg/json/JSONObject;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLogoutWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mLogoutCallbackId:Ljava/lang/String;

    if-eqz p2, :cond_9

    sget p2, Lio/dcloud/common/util/JSUtil;->OK:I

    goto :goto_b

    :cond_9
    sget p2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    :goto_b
    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method protected onPreLoginFinished(Lorg/json/JSONObject;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mPreLoginWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mPreLoginCallbackId:Ljava/lang/String;

    if-eqz p2, :cond_9

    sget p2, Lio/dcloud/common/util/JSUtil;->OK:I

    goto :goto_b

    :cond_9
    sget p2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    :goto_b
    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method public otherLoginButtonClick(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mOtherClickWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    const/4 p1, 0x1

    .line 3
    :try_start_3
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mOtherClickCallbackId:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method public preLogin(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/oauth/BaseOAuthService;->initMetaData()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mPreLoginWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    const/4 p1, 0x1

    .line 4
    :try_start_6
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->mPreLoginCallbackId:Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_11
    return-void
.end method

.method protected refreshToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_c

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method protected removeToken()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oauth_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->clearBundle(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected removeValue(Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lio/dcloud/feature/oauth/BaseOAuthService;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oauth_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/dcloud/common/adapter/util/SP;->removeBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    return-void
.end method

.method protected saveValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lio/dcloud/feature/oauth/BaseOAuthService;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2}, Lio/dcloud/feature/oauth/BaseOAuthService;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oauth_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;->id:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;->description:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->nativeClient:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->authResult:Lorg/json/JSONObject;

    const-string v3, "null"

    if-eqz v2, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v2, v3

    :goto_20
    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/4 v2, 0x4

    iget-object v4, p0, Lio/dcloud/feature/oauth/BaseOAuthService;->userInfo:Lorg/json/JSONObject;

    if-eqz v4, :cond_29

    move-object v3, v4

    :cond_29
    aput-object v3, v1, v2

    const-string v2, "{id:\'%s\',description:\'%s\', nativeClient:%b, authResult:%s,userInfo:%s}"

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
