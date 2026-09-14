###### Class io.dcloud.feature.unipush.GTPushService (io.dcloud.feature.unipush.GTPushService)
.class public Lio/dcloud/feature/unipush/GTPushService;
.super Lio/dcloud/feature/aps/AbsPushService;
.source "GTPushService.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# static fields
.field public static final ID:Ljava/lang/String; = "unipush"


# instance fields
.field isRegisterNewIntent:Z

.field mApp:Lio/dcloud/common/DHInterface/IApp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lio/dcloud/feature/aps/AbsPushService;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lio/dcloud/feature/unipush/GTPushService;->isRegisterNewIntent:Z

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/unipush/GTPushService;Landroid/app/Activity;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lio/dcloud/feature/unipush/GTPushService;->showPermission(Landroid/app/Activity;)V

    return-void
.end method

.method private fireClickEvent(Landroid/content/Intent;)V
    .registers 8

    const-string v0, "payload"

    const-string v1, "content"

    const-string v2, "title"

    const-string v3, "UP-OL-SU"

    .line 157
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    iget-object v4, p0, Lio/dcloud/feature/unipush/GTPushService;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz v4, :cond_69

    .line 158
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 160
    :try_start_17
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 167
    new-instance p1, Lio/dcloud/feature/aps/PushMessage;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/unipush/GTPushService;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p1, v0, v1, v2}, Lio/dcloud/feature/aps/PushMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lio/dcloud/feature/unipush/GTPushService;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "click"

    invoke-virtual {p1}, Lio/dcloud/feature/aps/PushMessage;->toJSON()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/feature/aps/APSFeatureImpl;->execScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 169
    iget-object v0, p0, Lio/dcloud/feature/unipush/GTPushService;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lio/dcloud/feature/aps/APSFeatureImpl;->addNeedExecMessage(Landroid/content/Context;Lio/dcloud/feature/aps/PushMessage;)V
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception p1

    .line 172
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_69
    :goto_69
    return-void
.end method

.method private initDialogView(Landroid/app/Activity;)Landroid/view/View;
    .registers 8

    .line 212
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 213
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 214
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 216
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lio/dcloud/feature/unipush/R$layout;->pri_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 217
    sget v2, Lio/dcloud/feature/unipush/R$id;->scrollView:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v0, v4

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 221
    sget v0, Lio/dcloud/feature/unipush/R$string;->getui_privacy_desc_user:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u300a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lio/dcloud/feature/unipush/R$string;->getui_privacy_name:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u300b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v4, Lio/dcloud/feature/unipush/GTPushService$4;

    const-string v5, ""

    invoke-direct {v4, p0, v5, p1}, Lio/dcloud/feature/unipush/GTPushService$4;-><init>(Lio/dcloud/feature/unipush/GTPushService;Ljava/lang/String;Landroid/app/Activity;)V

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x11

    invoke-virtual {v3, v4, p1, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 234
    sget p1, Lio/dcloud/feature/unipush/R$id;->agreeTv:I

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 235
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x19

    const/16 v2, 0xf

    const/16 v3, 0xa

    .line 236
    invoke-virtual {p1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 237
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-object v1
.end method

.method private registerOnNewIntent(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 3

    .line 137
    iget-boolean v0, p0, Lio/dcloud/feature/unipush/GTPushService;->isRegisterNewIntent:Z

    if-nez v0, :cond_e

    .line 138
    iput-object p1, p0, Lio/dcloud/feature/unipush/GTPushService;->mApp:Lio/dcloud/common/DHInterface/IApp;

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lio/dcloud/feature/unipush/GTPushService;->isRegisterNewIntent:Z

    .line 140
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onNewIntent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p1, p0, v0}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    :cond_e
    return-void
.end method

.method private showPermission(Landroid/app/Activity;)V
    .registers 4

    .line 91
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/igexin/sdk/PushManager;->setPrivacyPolicyStrategy(Landroid/content/Context;Z)V

    return-void
.end method

.method private showPriDialog(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .registers 6

    .line 178
    invoke-direct {p0, p1}, Lio/dcloud/feature/unipush/GTPushService;->initDialogView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 179
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 180
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lio/dcloud/feature/unipush/R$string;->getui_privacy_alert_title:I

    .line 181
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 182
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/dcloud/feature/unipush/R$string;->getui_privacy_alert_agree:I

    .line 183
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/unipush/GTPushService$2;

    invoke-direct {v2, p0, p1, p2}, Lio/dcloud/feature/unipush/GTPushService$2;-><init>(Lio/dcloud/feature/unipush/GTPushService;Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/dcloud/feature/unipush/R$string;->getui_privacy_alert_refuse:I

    .line 191
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/unipush/GTPushService$1;

    invoke-direct {v2, p0, p2, p1}, Lio/dcloud/feature/unipush/GTPushService$1;-><init>(Lio/dcloud/feature/unipush/GTPushService;Landroid/content/SharedPreferences;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 201
    new-instance p2, Lio/dcloud/feature/unipush/GTPushService$3;

    invoke-direct {p2, p0, p1}, Lio/dcloud/feature/unipush/GTPushService$3;-><init>(Lio/dcloud/feature/unipush/GTPushService;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 208
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 128
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/feature/aps/AbsPushService;->addEventListener(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    .line 129
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 130
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/dcloud/feature/unipush/GTPushService;->registerOnNewIntent(Lio/dcloud/common/DHInterface/IApp;)V

    .line 132
    invoke-direct {p0, p1}, Lio/dcloud/feature/unipush/GTPushService;->fireClickEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public getClientInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 108
    iget-object v0, p0, Lio/dcloud/feature/unipush/GTPushService;->clientid:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 109
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/sdk/PushManager;->getClientid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/unipush/GTPushService;->clientid:Ljava/lang/String;

    .line 110
    invoke-virtual {p0, p1}, Lio/dcloud/feature/unipush/GTPushService;->saveClientId(Landroid/content/Context;)V

    .line 112
    :cond_11
    invoke-super {p0, p1}, Lio/dcloud/feature/aps/AbsPushService;->getClientInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 4

    .line 147
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onNewIntent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p1, p2}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lio/dcloud/feature/unipush/GTPushService;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p2, :cond_18

    .line 148
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 149
    invoke-direct {p0, p1}, Lio/dcloud/feature/unipush/GTPushService;->fireClickEvent(Landroid/content/Intent;)V

    goto :goto_36

    .line 150
    :cond_18
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p1, p2}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lio/dcloud/feature/unipush/GTPushService;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_36

    .line 151
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/unipush/GTPushService;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_36
    :goto_36
    const/4 p1, 0x0

    return p1
.end method

.method public onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V
    .registers 8

    const-string p2, "unipush"

    .line 52
    iput-object p2, p0, Lio/dcloud/feature/unipush/GTPushService;->id:Ljava/lang/String;

    const-string p2, "unipush_gp_per"

    const/4 p3, 0x0

    .line 53
    invoke-static {p2, p3}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "DCLOUD_PUSH_PRIVACY"

    .line 54
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 67
    :goto_20
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/dcloud/feature/unipush/GTNormalIntentService;

    invoke-virtual {v1, v2, v3}, Lcom/igexin/sdk/PushManager;->registerPushIntentService(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/dcloud/feature/unipush/GTPushDevService;

    invoke-virtual {v1, v2, v3}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_4b

    const-string v0, "pri_alert"

    .line 72
    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_51

    .line 75
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0, p2}, Lio/dcloud/feature/unipush/GTPushService;->showPriDialog(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    goto :goto_51

    .line 79
    :cond_4b
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2}, Lio/dcloud/feature/unipush/GTPushService;->showPermission(Landroid/app/Activity;)V

    :cond_51
    :goto_51
    const-string p2, "clientid_unipush"

    .line 82
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 83
    sget-object p2, Lio/dcloud/feature/aps/AbsPushService;->PUSH_CLIENT_ID_NAME:Ljava/lang/String;

    iget-object p3, p0, Lio/dcloud/feature/unipush/GTPushService;->clientid:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/unipush/GTPushService;->clientid:Ljava/lang/String;

    const-string p1, "PUSH_APPID"

    .line 84
    invoke-static {p1}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/unipush/GTPushService;->appid:Ljava/lang/String;

    const-string p1, "PUSH_APPKEY"

    .line 85
    invoke-static {p1}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/unipush/GTPushService;->appkey:Ljava/lang/String;

    const-string p1, "PUSH_APPSECRET"

    .line 86
    invoke-static {p1}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/unipush/GTPushService;->appsecret:Ljava/lang/String;

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 117
    invoke-super {p0}, Lio/dcloud/feature/aps/AbsPushService;->onStop()V

    .line 118
    iget-boolean v0, p0, Lio/dcloud/feature/unipush/GTPushService;->isRegisterNewIntent:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lio/dcloud/feature/unipush/GTPushService;->isRegisterNewIntent:Z

    .line 120
    iget-object v0, p0, Lio/dcloud/feature/unipush/GTPushService;->mApp:Lio/dcloud/common/DHInterface/IApp;

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onNewIntent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v0, p0, v1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lio/dcloud/feature/unipush/GTPushService;->mApp:Lio/dcloud/common/DHInterface/IApp;

    :cond_14
    return-void
.end method

###### Class io.dcloud.feature.unipush.GTPushService.AnonymousClass1 (io.dcloud.feature.unipush.GTPushService$1)
.class Lio/dcloud/feature/unipush/GTPushService$1;
.super Ljava/lang/Object;
.source "GTPushService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/unipush/GTPushService;->showPriDialog(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/unipush/GTPushService;

.field final synthetic val$_bundleData:Landroid/content/SharedPreferences;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lio/dcloud/feature/unipush/GTPushService;Landroid/content/SharedPreferences;Landroid/app/Activity;)V
    .registers 4

    .line 191
    iput-object p1, p0, Lio/dcloud/feature/unipush/GTPushService$1;->this$0:Lio/dcloud/feature/unipush/GTPushService;

    iput-object p2, p0, Lio/dcloud/feature/unipush/GTPushService$1;->val$_bundleData:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lio/dcloud/feature/unipush/GTPushService$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 194
    iget-object p1, p0, Lio/dcloud/feature/unipush/GTPushService$1;->val$_bundleData:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "pri_alert"

    const/4 v0, 0x0

    .line 195
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/unipush/GTPushService$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/igexin/sdk/PushManager;->setPrivacyPolicyStrategy(Landroid/content/Context;Z)V

    return-void
.end method

###### Class io.dcloud.feature.unipush.GTPushService.AnonymousClass2 (io.dcloud.feature.unipush.GTPushService$2)
.class Lio/dcloud/feature/unipush/GTPushService$2;
.super Ljava/lang/Object;
.source "GTPushService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/unipush/GTPushService;->showPriDialog(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/unipush/GTPushService;

.field final synthetic val$_bundleData:Landroid/content/SharedPreferences;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lio/dcloud/feature/unipush/GTPushService;Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .registers 4

    .line 183
    iput-object p1, p0, Lio/dcloud/feature/unipush/GTPushService$2;->this$0:Lio/dcloud/feature/unipush/GTPushService;

    iput-object p2, p0, Lio/dcloud/feature/unipush/GTPushService$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lio/dcloud/feature/unipush/GTPushService$2;->val$_bundleData:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 186
    iget-object p1, p0, Lio/dcloud/feature/unipush/GTPushService$2;->this$0:Lio/dcloud/feature/unipush/GTPushService;

    iget-object p2, p0, Lio/dcloud/feature/unipush/GTPushService$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lio/dcloud/feature/unipush/GTPushService;->access$000(Lio/dcloud/feature/unipush/GTPushService;Landroid/app/Activity;)V

    .line 187
    iget-object p1, p0, Lio/dcloud/feature/unipush/GTPushService$2;->val$_bundleData:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "pri_alert"

    const/4 v0, 0x1

    .line 188
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

###### Class io.dcloud.feature.unipush.GTPushService.AnonymousClass3 (io.dcloud.feature.unipush.GTPushService$3)
.class Lio/dcloud/feature/unipush/GTPushService$3;
.super Ljava/lang/Object;
.source "GTPushService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/unipush/GTPushService;->showPriDialog(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/unipush/GTPushService;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lio/dcloud/feature/unipush/GTPushService;Landroid/app/AlertDialog;)V
    .registers 3

    .line 201
    iput-object p1, p0, Lio/dcloud/feature/unipush/GTPushService$3;->this$0:Lio/dcloud/feature/unipush/GTPushService;

    iput-object p2, p0, Lio/dcloud/feature/unipush/GTPushService$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    .line 204
    iget-object p1, p0, Lio/dcloud/feature/unipush/GTPushService$3;->val$dialog:Landroid/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

###### Class io.dcloud.feature.unipush.GTPushService.AnonymousClass4 (io.dcloud.feature.unipush.GTPushService$4)
.class Lio/dcloud/feature/unipush/GTPushService$4;
.super Landroid/text/style/URLSpan;
.source "GTPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/unipush/GTPushService;->initDialogView(Landroid/app/Activity;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/unipush/GTPushService;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lio/dcloud/feature/unipush/GTPushService;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4

    .line 224
    iput-object p1, p0, Lio/dcloud/feature/unipush/GTPushService$4;->this$0:Lio/dcloud/feature/unipush/GTPushService;

    iput-object p3, p0, Lio/dcloud/feature/unipush/GTPushService$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 228
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lio/dcloud/feature/unipush/GTPushService$4;->val$activity:Landroid/app/Activity;

    const-class v1, Lio/dcloud/feature/unipush/PrivacyActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    iget-object v0, p0, Lio/dcloud/feature/unipush/GTPushService$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
