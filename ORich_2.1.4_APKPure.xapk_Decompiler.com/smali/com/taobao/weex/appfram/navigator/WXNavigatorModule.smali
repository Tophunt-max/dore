###### Class com.taobao.weex.appfram.navigator.WXNavigatorModule (com.taobao.weex.appfram.navigator.WXNavigatorModule)
.class public Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXNavigatorModule.java"


# static fields
.field public static final CALLBACK_MESSAGE:Ljava/lang/String; = "message"

.field public static final CALLBACK_RESULT:Ljava/lang/String; = "result"

.field private static final INSTANCE_ID:Ljava/lang/String; = "instanceId"

.field public static final MSG_FAILED:Ljava/lang/String; = "WX_FAILED"

.field public static final MSG_PARAM_ERR:Ljava/lang/String; = "WX_PARAM_ERR"

.field public static final MSG_SUCCESS:Ljava/lang/String; = "WX_SUCCESS"

.field private static final TAG:Ljava/lang/String; = "Navigator"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final WEEX:Ljava/lang/String; = "com.taobao.android.intent.category.WEEX"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method

.method private changeVisibilityOfActionBar(Landroid/content/Context;I)Z
    .registers 5

    const/4 p1, 0x0

    const/4 v0, 0x1

    :try_start_2
    const-string v1, "androidx.appcompat.app.AppCompatActivity"

    .line 329
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_7} :catch_9

    const/4 v1, 0x1

    goto :goto_e

    :catch_9
    move-exception v1

    .line 332
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_35

    .line 334
    iget-object v1, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_35

    .line 335
    iget-object v1, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_5a

    if-eqz p2, :cond_31

    if-eq p2, v0, :cond_2d

    goto :goto_5a

    .line 339
    :cond_2d
    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->hide()V

    goto :goto_59

    .line 343
    :cond_31
    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->show()V

    goto :goto_59

    .line 348
    :cond_35
    iget-object v1, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_5a

    .line 349
    iget-object v1, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_5a

    if-eqz p2, :cond_56

    if-eq p2, v0, :cond_52

    goto :goto_5a

    .line 353
    :cond_52
    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    goto :goto_59

    .line 357
    :cond_56
    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    :goto_59
    const/4 p1, 0x1

    :cond_5a
    :goto_5a
    return p1
.end method


# virtual methods
.method public clearNavBarLeftItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 244
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 245
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->clearNavBarLeftItem(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    if-eqz p2, :cond_17

    const-string p1, "WX_SUCCESS"

    .line 247
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_17
    return-void

    :cond_18
    if-eqz p2, :cond_1f

    const-string p1, "WX_FAILED"

    .line 254
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public clearNavBarMoreItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 278
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 279
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->clearNavBarMoreItem(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    if-eqz p2, :cond_17

    const-string p1, "WX_SUCCESS"

    .line 281
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_17
    return-void

    :cond_18
    if-eqz p2, :cond_1f

    const-string p1, "WX_FAILED"

    .line 288
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public clearNavBarRightItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 210
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 211
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->clearNavBarRightItem(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    if-eqz p2, :cond_17

    const-string p1, "WX_SUCCESS"

    .line 213
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_17
    return-void

    :cond_18
    if-eqz p2, :cond_1f

    const-string p1, "WX_FAILED"

    .line 219
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public close(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 91
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 93
    iget-object v0, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1b

    .line 95
    iget-object p3, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    goto :goto_2a

    :cond_1b
    const-string p2, "result"

    const-string v0, "WX_FAILED"

    .line 97
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "message"

    const-string v0, "Close page failed."

    .line 98
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p3

    :goto_2a
    if-eqz p2, :cond_2f

    .line 102
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_2f
    return-void
.end method

.method public open(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 10
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    if-eqz p1, :cond_74

    const-string v0, "url"

    .line 57
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "message"

    const-string v4, "result"

    if-nez v2, :cond_65

    .line 61
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5c

    const-string v5, "http"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5c

    const-string v5, "https"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_5c

    .line 67
    :cond_36
    :try_start_36
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    iget-object v0, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "WX_SUCCESS"

    .line 69
    invoke-virtual {v1, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_4c

    goto :goto_63

    :catchall_4c
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "WX_FAILED"

    .line 72
    invoke-virtual {v1, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Open page failed."

    .line 73
    invoke-virtual {v1, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p3

    goto :goto_63

    .line 64
    :cond_5c
    :goto_5c
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->push(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V

    :goto_63
    move-object p3, p2

    goto :goto_6f

    :cond_65
    const-string p1, "WX_PARAM_ERR"

    .line 78
    invoke-virtual {v1, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "The URL parameter is empty."

    .line 79
    invoke-virtual {v1, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6f
    if-eqz p3, :cond_74

    .line 84
    invoke-interface {p3, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_74
    return-void
.end method

.method public pop(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 163
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    const-string v1, "WX_SUCCESS"

    if-eqz v0, :cond_18

    .line 164
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->pop(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p2, :cond_17

    .line 166
    invoke-interface {p2, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_17
    return-void

    .line 172
    :cond_18
    iget-object v0, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_50

    .line 173
    iget-object v0, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 174
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getNavigator()Lcom/taobao/weex/appfram/navigator/INavigator;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 175
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getNavigator()Lcom/taobao/weex/appfram/navigator/INavigator;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/taobao/weex/appfram/navigator/INavigator;->pop(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    if-eqz p2, :cond_3f

    .line 177
    invoke-interface {p2, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_3f
    return-void

    :cond_40
    if-eqz p2, :cond_45

    .line 184
    invoke-interface {p2, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 186
    :cond_45
    iget-object p1, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_50
    return-void
.end method

.method public push(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WX_FAILED"

    if-nez v0, :cond_a5

    .line 110
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    const-string v2, "WX_SUCCESS"

    if-eqz v0, :cond_20

    .line 111
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->push(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p2, :cond_1f

    .line 113
    invoke-interface {p2, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_1f
    return-void

    .line 119
    :cond_20
    iget-object v0, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_48

    .line 120
    iget-object v0, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 122
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getNavigator()Lcom/taobao/weex/appfram/navigator/INavigator;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 123
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getNavigator()Lcom/taobao/weex/appfram/navigator/INavigator;

    move-result-object v3

    invoke-interface {v3, v0, p1}, Lcom/taobao/weex/appfram/navigator/INavigator;->push(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    if-eqz p2, :cond_47

    .line 125
    invoke-interface {p2, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_47
    return-void

    .line 132
    :cond_48
    :try_start_48
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "url"

    .line 133
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 135
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v0, "http"

    .line 139
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 141
    :cond_6f
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.taobao.android.intent.category.WEEX"

    .line 142
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "instanceId"

    .line 143
    iget-object v3, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object p1, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p2, :cond_aa

    .line 146
    invoke-interface {p2, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_98} :catch_99

    goto :goto_aa

    :catch_99
    move-exception p1

    const-string v0, "Navigator"

    .line 150
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->eTag(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_aa

    .line 152
    invoke-interface {p2, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_aa

    :cond_a5
    if-eqz p2, :cond_aa

    .line 156
    invoke-interface {p2, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_aa
    :goto_aa
    return-void
.end method

.method public setNavBarHidden(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    const-string v0, "WX_FAILED"

    .line 313
    :try_start_2
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v1, "hidden"

    .line 314
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 315
    iget-object v1, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->changeVisibilityOfActionBar(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2a

    const-string p1, "WX_SUCCESS"
    :try_end_1e
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_1e} :catch_20

    move-object v0, p1

    goto :goto_2a

    :catch_20
    move-exception p1

    .line 320
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Navigator"

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_2a
    :goto_2a
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    iget-object v1, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNavBarLeftItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 226
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 227
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->setNavBarLeftItem(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1d

    const-string p1, "WX_SUCCESS"

    .line 229
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_1d
    return-void

    :cond_1e
    if-eqz p2, :cond_25

    const-string p1, "WX_FAILED"

    .line 237
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method public setNavBarMoreItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 261
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 262
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->setNavBarMoreItem(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1d

    const-string p1, "WX_SUCCESS"

    .line 264
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_1d
    return-void

    :cond_1e
    if-eqz p2, :cond_25

    const-string p1, "WX_FAILED"

    .line 272
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method public setNavBarRightItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 193
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 194
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->setNavBarRightItem(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1d

    const-string p1, "WX_SUCCESS"

    .line 196
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_1d
    return-void

    :cond_1e
    if-eqz p2, :cond_25

    const-string p1, "WX_FAILED"

    .line 204
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method public setNavBarTitle(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 295
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 296
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->setNavBarTitle(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1d

    const-string p1, "WX_SUCCESS"

    .line 298
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_1d
    return-void

    :cond_1e
    if-eqz p2, :cond_25

    const-string p1, "WX_FAILED"

    .line 305
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_25
    return-void
.end method
