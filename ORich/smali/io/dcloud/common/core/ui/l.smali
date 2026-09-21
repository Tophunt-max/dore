###### Class io.dcloud.common.core.ui.l (io.dcloud.common.core.ui.l)
.class public Lio/dcloud/common/core/ui/l;
.super Lio/dcloud/common/DHInterface/AbsMgr;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IMgr$WindowEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/core/ui/l$m;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/core/ui/a;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/common/core/ui/l$m;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field d:Ljava/lang/Runnable;

.field e:Ljava/lang/Runnable;

.field f:Z


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/ICore;)V
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const-string v1, "windowmgr"

    invoke-direct {p0, p1, v1, v0}, Lio/dcloud/common/DHInterface/AbsMgr;-><init>(Lio/dcloud/common/DHInterface/ICore;Ljava/lang/String;Lio/dcloud/common/DHInterface/IMgr$MgrType;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    const/4 p1, 0x0

    .line 1154
    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    .line 1583
    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    .line 1698
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/l;->f:Z

    return-void
.end method

.method private a()Lio/dcloud/common/core/ui/b;
    .registers 2

    .line 923
    invoke-direct {p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 924
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private a(ILio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V
    .registers 7

    .line 405
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 406
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 408
    :cond_d
    new-instance v0, Lio/dcloud/common/core/ui/l$j;

    invoke-direct {v0, p0, p2, p3, p4}, Lio/dcloud/common/core/ui/l$j;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V

    iput-object v0, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    .line 418
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    int-to-long v0, p1

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(ILio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 28

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move-object/from16 v4, p5

    move-object/from16 v11, p7

    .line 298
    invoke-interface/range {p5 .. p5}, Lio/dcloud/common/DHInterface/IApp;->obtainLaunchPageStateListener()Lio/dcloud/common/DHInterface/IWebviewStateListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    const/4 v3, -0x1

    .line 300
    invoke-interface {v0, v3, v11}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0, v2, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 302
    invoke-interface/range {p5 .. p5}, Lio/dcloud/common/DHInterface/IApp;->obtainLaunchPageStateListener()Lio/dcloud/common/DHInterface/IWebviewStateListener;

    move-result-object v3

    invoke-interface {v11, v3}, Lio/dcloud/common/DHInterface/IWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    move/from16 v16, v0

    goto :goto_2b

    :cond_29
    const/16 v16, 0x1

    :goto_2b
    const-string v0, "delay"

    .line 304
    invoke-interface {v4, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "autoclose"

    .line 306
    invoke-interface {v4, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 312
    invoke-static/range {p3 .. p3}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    const-string v5, "w2a_autoclose"

    invoke-interface {v4, v5}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    const/4 v5, 0x1

    goto :goto_58

    :cond_57
    const/4 v5, 0x0

    .line 313
    :goto_58
    invoke-interface/range {p5 .. p5}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "target"

    .line 314
    invoke-interface {v4, v7}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 315
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6a

    const-string v7, "default"

    :cond_6a
    const/16 v8, 0x1770

    if-nez v3, :cond_70

    if-eqz v5, :cond_71

    :cond_70
    const/4 v1, 0x1

    :cond_71
    const-string v2, "__from_stream_open_timeout__"

    .line 320
    invoke-virtual {v6, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v8, "__from_stream_open_autoclose__"

    .line 321
    invoke-virtual {v6, v8, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    const-string v1, "id:"

    .line 322
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    if-eqz v19, :cond_8c

    const/16 v2, 0x2710

    const/16 v12, 0x2710

    goto :goto_8d

    :cond_8c
    move v12, v2

    :goto_8d
    const-string v1, "w2a_delay"

    .line 326
    invoke-interface {v4, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v5, :cond_9b

    move v10, v1

    goto :goto_9c

    :cond_9b
    move v10, v0

    .line 330
    :goto_9c
    invoke-static/range {p3 .. p3}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-static/range {p6 .. p6}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    const-string v1, "rendering"

    .line 331
    iput-object v1, v13, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    goto :goto_b1

    :cond_ad
    const-string v1, "loaded"

    .line 333
    iput-object v1, v13, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    :goto_b1
    const-string v1, "event"

    .line 336
    invoke-interface {v4, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bf

    .line 338
    iput-object v1, v13, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    .line 340
    :cond_bf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_need_auto_close_splash = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";_delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";appid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";f_event="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Main_Path"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v9, Lio/dcloud/common/core/ui/l$i;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, v19

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p1

    move-object v13, v9

    move-object/from16 v9, p4

    move/from16 p1, v10

    move-object v14, v11

    move v15, v12

    move-wide/from16 v11, v17

    invoke-direct/range {v0 .. v12}, Lio/dcloud/common/core/ui/l$i;-><init>(Lio/dcloud/common/core/ui/l;Ljava/lang/String;ZLio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;ILio/dcloud/common/core/ui/b;IJ)V

    invoke-interface {v14, v13}, Lio/dcloud/common/DHInterface/IWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    move-object/from16 v0, p0

    if-eqz v19, :cond_121

    move/from16 v3, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move v4, v15

    .line 399
    invoke-direct {v0, v4, v1, v2, v3}, Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V

    goto :goto_125

    :cond_121
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    :goto_125
    if-eqz v16, :cond_12e

    .line 403
    iget-boolean v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v3, :cond_12e

    .line 404
    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    :cond_12e
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .registers 27

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    const-string v1, "StreamSDK"

    const-string v2, "come into activeAppRootView"

    .line 34
    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_405

    .line 40
    move-object v10, v0

    check-cast v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 41
    aget-object v0, v10, v11

    move-object v12, v0

    check-cast v12, Lio/dcloud/common/DHInterface/IApp;

    const/4 v7, 0x0

    .line 43
    invoke-static {v7}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lio/dcloud/g/b/g;->a()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    .line 46
    :cond_26
    array-length v0, v10

    const/4 v8, 0x2

    const/4 v13, 0x3

    if-lt v0, v13, :cond_35

    aget-object v0, v10, v8

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v14, v0

    goto :goto_36

    :cond_35
    const/4 v14, 0x0

    .line 47
    :goto_36
    array-length v0, v10

    const/4 v15, 0x4

    if-lt v0, v15, :cond_3f

    aget-object v0, v10, v13

    check-cast v0, Ljava/lang/String;

    goto :goto_41

    :cond_3f
    const-string v0, "default"

    :goto_41
    move-object v6, v0

    const/4 v5, 0x1

    .line 48
    aget-object v0, v10, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 49
    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v4

    .line 50
    iget-object v0, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/dcloud/common/core/ui/a;

    const/16 v2, 0xa

    move/from16 v1, p1

    if-ne v2, v1, :cond_6f

    const-string v0, "winmgr"

    const-string v2, "RESTART_APP_ROOT_VIEW"

    .line 53
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->b()V

    .line 56
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->k()V

    .line 57
    invoke-virtual {v3, v12}, Lio/dcloud/common/core/ui/a;->onAppStart(Lio/dcloud/common/DHInterface/IApp;)V

    .line 58
    invoke-direct {v9, v3}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/a;)V

    .line 60
    :cond_6f
    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "__from_stream_open_style__"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :try_start_79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8c

    .line 64
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_84} :catch_ab

    .line 65
    :try_start_84
    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_8b} :catch_a9

    goto :goto_b0

    .line 67
    :cond_8c
    :try_start_8c
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v12, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_92
    .catch Lorg/json/JSONException; {:try_start_8c .. :try_end_92} :catch_ab

    if-nez v5, :cond_b0

    .line 69
    :try_start_94
    invoke-direct {v9, v12}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 70
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v12, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_a0
    move-object v5, v0

    goto :goto_b0

    :cond_a2
    const-string v0, "{}"

    .line 72
    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_a8
    .catch Lorg/json/JSONException; {:try_start_94 .. :try_end_a8} :catch_a9

    goto :goto_a0

    :catch_a9
    move-exception v0

    goto :goto_ad

    :catch_ab
    move-exception v0

    move-object v5, v7

    .line 77
    :goto_ad
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b0
    :goto_b0
    move-object/from16 v18, v5

    .line 80
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 81
    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getDefWebViewUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    .line 84
    :cond_c4
    invoke-static {v12}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    const-string v5, "path"

    if-eqz v0, :cond_109

    invoke-static {v12}, Lio/dcloud/common/util/BaseInfo;->isWeexUniJs(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_109

    const-string v0, "uniapp_weex_js_service"

    invoke-interface {v12, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_109

    .line 85
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_e7
    const-string v0, "_www/app-service.js"

    .line 87
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ec
    .catch Lorg/json/JSONException; {:try_start_e7 .. :try_end_ec} :catch_ed

    goto :goto_f1

    :catch_ed
    move-exception v0

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_f1
    const-string v0, "__uniapp__service"

    const-string v19, "__uniapp__service"

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    move-object v2, v12

    move-object/from16 p2, v3

    move-object v7, v4

    move-object v4, v0

    move-object v13, v5

    move-object/from16 v5, v19

    move-object/from16 v21, v6

    move-object/from16 v6, v20

    .line 92
    invoke-virtual/range {v1 .. v6}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_10f

    :cond_109
    move-object/from16 p2, v3

    move-object v7, v4

    move-object v13, v5

    move-object/from16 v21, v6

    .line 94
    :goto_10f
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v9, v12, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;)V

    move-object/from16 v6, p2

    .line 95
    invoke-direct {v9, v12, v6}, Lio/dcloud/common/core/ui/l;->b(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)Lio/dcloud/common/core/ui/c;

    move-result-object v1

    .line 96
    iget-object v2, v6, Lio/dcloud/common/core/ui/a;->f:Lio/dcloud/common/core/ui/b;

    const-string v0, "uni_restart_to_direct"

    .line 98
    invoke-interface {v12, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v0, "debugRefresh"

    .line 99
    invoke-interface {v12, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "arguments"

    if-nez v4, :cond_156

    .line 104
    :try_start_13c
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_141
    .catch Lorg/json/JSONException; {:try_start_13c .. :try_end_141} :catch_14e

    .line 105
    :try_start_141
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_149
    .catch Lorg/json/JSONException; {:try_start_141 .. :try_end_149} :catch_14c

    move-object v11, v4

    move-object v4, v0

    goto :goto_158

    :catch_14c
    move-exception v0

    goto :goto_150

    :catch_14e
    move-exception v0

    const/4 v4, 0x0

    .line 107
    :goto_150
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v11, v4

    const/4 v4, 0x0

    goto :goto_158

    :cond_156
    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_158
    const-string v8, ""

    if-eqz v2, :cond_170

    .line 111
    invoke-direct {v9, v12}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 113
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    move/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v18, v11

    const/4 v5, 0x0

    move-object v11, v2

    goto/16 :goto_35f

    :cond_170
    const-string v2, "id"

    if-eqz v3, :cond_207

    .line 117
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    :try_start_179
    const-string v0, "1"

    .line 119
    invoke-virtual {v15, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "render"
    :try_end_180
    .catch Lorg/json/JSONException; {:try_start_179 .. :try_end_180} :catch_1fe

    move/from16 v22, v3

    :try_start_182
    const-string v3, "always"

    .line 120
    invoke-virtual {v15, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f9

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".js"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f9

    .line 125
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 126
    invoke-virtual {v3, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v11, :cond_1ef

    .line 128
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1c9
    .catch Lorg/json/JSONException; {:try_start_182 .. :try_end_1c9} :catch_1fc

    move-object/from16 v23, v4

    :try_start_1cb
    const-string v4, "query"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f1

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1f1

    :cond_1ef
    move-object/from16 v23, v4

    :cond_1f1
    :goto_1f1
    const-string v0, "uniNView"

    .line 133
    invoke-virtual {v15, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f6
    .catch Lorg/json/JSONException; {:try_start_1cb .. :try_end_1f6} :catch_1f7

    goto :goto_20d

    :catch_1f7
    move-exception v0

    goto :goto_203

    :cond_1f9
    move-object/from16 v23, v4

    goto :goto_20d

    :catch_1fc
    move-exception v0

    goto :goto_201

    :catch_1fe
    move-exception v0

    move/from16 v22, v3

    :goto_201
    move-object/from16 v23, v4

    .line 137
    :goto_203
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_20d

    :cond_207
    move/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v15, v18

    .line 140
    :goto_20d
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x2

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v13, 0x0

    aput-object v5, v4, v13

    const/4 v5, 0x1

    aput-object v12, v4, v5

    move-object/from16 v18, v11

    new-array v11, v3, [Ljava/lang/Object;

    aget-object v17, v10, v5

    aput-object v17, v11, v13

    aput-object v15, v11, v5

    aput-object v11, v4, v3

    const/4 v3, 0x3

    aput-object v6, v4, v3

    .line 145
    invoke-virtual {v9, v0, v3, v4}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 155
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->isUniWebView()Z

    move-result v3

    if-eqz v3, :cond_258

    .line 156
    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const-string v5, "UI"

    const/4 v11, 0x1

    aput-object v5, v4, v11

    const/4 v5, 0x2

    aput-object v8, v4, v5

    const/4 v5, 0x3

    const/4 v13, 0x0

    aput-object v13, v4, v5

    invoke-virtual {v9, v3, v11, v4}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_25a

    :cond_258
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 159
    :goto_25a
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    .line 161
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_276

    if-nez v14, :cond_26e

    .line 163
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v11, v13}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_276

    .line 165
    :cond_26e
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v13}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 168
    :cond_276
    :goto_276
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_284

    .line 169
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->setFrameId(Ljava/lang/String;)V

    goto :goto_287

    .line 171
    :cond_284
    invoke-interface {v3, v7}, Lio/dcloud/common/DHInterface/IWebview;->setFrameId(Ljava/lang/String;)V

    :goto_287
    move-object/from16 v2, v21

    .line 173
    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewCacheMode(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iput-object v7, v2, Lio/dcloud/common/adapter/util/ViewOptions;->name:Ljava/lang/String;

    .line 175
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iput-boolean v14, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mUseHardwave:Z

    .line 176
    invoke-static {v7}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35c

    const-string v2, "plusrequire"

    .line 177
    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "none"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c0

    const-string v2, "_www/__wap2app.js"

    const/4 v13, 0x0

    .line 178
    invoke-interface {v12, v13, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    const-string v2, "_www/__wap2appconfig.js"

    .line 179
    invoke-interface {v12, v13, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    goto :goto_2c1

    :cond_2c0
    const/4 v13, 0x0

    :goto_2c1
    const-string v2, "_www/server_index_append.js"

    .line 182
    invoke-interface {v12, v13, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lio/dcloud/common/DHInterface/IWebview;->setPreloadJsFile(Ljava/lang/String;Z)V

    const-string v2, "_www/server_index_append.css"

    .line 184
    invoke-interface {v12, v13, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2e0

    .line 188
    invoke-interface {v3, v2, v13}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_304

    .line 189
    :cond_2e0
    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result v5

    if-ne v5, v4, :cond_2f0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2f0

    .line 190
    invoke-interface {v3, v2, v13}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_304

    :cond_2f0
    const-string v2, "_www/__wap2app.css"

    .line 192
    invoke-interface {v12, v13, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_304

    .line 195
    invoke-interface {v3, v2, v13}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_304
    :goto_304
    const-string v2, "appendCss"

    .line 199
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_315

    .line 200
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v13, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_327

    :cond_315
    const-string v2, "preloadcss"

    .line 202
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_326

    .line 203
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v13, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_327

    :cond_326
    move-object v2, v13

    .line 205
    :goto_327
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_330

    .line 206
    invoke-interface {v3, v13, v2}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_330
    const-string v2, "appendJs"

    .line 210
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_341

    .line 211
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v13, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_353

    :cond_341
    const-string v2, "preloadjs"

    .line 213
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_352

    .line 214
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v13, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_353

    :cond_352
    move-object v2, v13

    .line 216
    :goto_353
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35c

    .line 217
    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    :cond_35c
    move-object v11, v0

    move-object v0, v3

    const/4 v5, 0x1

    :goto_35f
    if-eqz v1, :cond_388

    if-eqz v22, :cond_385

    if-eqz v18, :cond_385

    const-string v2, "isTab"

    move-object/from16 v4, v18

    .line 223
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_373

    .line 224
    invoke-virtual {v1, v11}, Lio/dcloud/common/core/ui/c;->c(Lio/dcloud/common/core/ui/b;)V

    goto :goto_388

    .line 226
    :cond_373
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_388

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/c;->checkPagePathIsTab(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_388

    .line 227
    invoke-virtual {v1, v11}, Lio/dcloud/common/core/ui/c;->c(Lio/dcloud/common/core/ui/b;)V

    goto :goto_388

    .line 231
    :cond_385
    invoke-virtual {v1, v11}, Lio/dcloud/common/core/ui/c;->c(Lio/dcloud/common/core/ui/b;)V

    .line 235
    :cond_388
    :goto_388
    invoke-direct {v9, v12}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v1

    if-eqz v1, :cond_391

    if-eqz v5, :cond_3f9

    goto :goto_397

    :cond_391
    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IApp;->manifestBeParsed()Z

    move-result v1

    if-eqz v1, :cond_3f9

    :goto_397
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v6

    move-object v4, v7

    move-object v5, v11

    move-object v13, v6

    move-object v6, v12

    move-object v14, v7

    move-object/from16 v7, v16

    move-object v15, v8

    move-object v8, v0

    .line 236
    invoke-direct/range {v1 .. v8}, Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " launchPage ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v3, v10, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Main_Path"

    invoke-static {v3, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    aget-object v1, v10, v2

    const-string v3, "about:blank"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3dd

    const-string v1, "<html><head><meta charset=\"utf-8\"></head><body></body><html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    .line 239
    invoke-interface {v0, v15, v1, v3, v4}, Lio/dcloud/common/DHInterface/IWebview;->loadContentData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e6

    .line 241
    :cond_3dd
    aget-object v1, v10, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    :goto_3e6
    const-string v1, "splashscreen"

    .line 243
    invoke-interface {v12, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f5

    .line 245
    iput-byte v2, v11, Lio/dcloud/common/core/ui/b;->n:B

    goto :goto_3fa

    :cond_3f5
    const/4 v1, 0x0

    .line 247
    iput-byte v1, v11, Lio/dcloud/common/core/ui/b;->n:B

    goto :goto_3fa

    :cond_3f9
    move-object v13, v6

    .line 250
    :goto_3fa
    invoke-virtual {v9, v12, v0}, Lio/dcloud/common/core/ui/l;->b(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 251
    iget-object v1, v13, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    if-nez v1, :cond_407

    .line 252
    invoke-virtual {v9, v12, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_407

    .line 254
    :cond_405
    instance-of v0, v0, Ljava/lang/String;

    :cond_407
    :goto_407
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;)V
    .registers 9

    .line 285
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->isUniNViewBackgroud()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isWeexUniJs(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 286
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "template"

    .line 290
    :try_start_1c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_23} :catch_3e

    const-string v0, "path"

    .line 291
    :try_start_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "nvue_service.js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception v0

    .line 293
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_42
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v1, 0x2

    aput-object p2, v2, v1

    const/4 p2, 0x3

    const-string v5, "__uniapp__nvue"

    aput-object v5, v2, p2

    .line 296
    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "weex,io.dcloud.feature.weex.WeexFeature"

    aput-object p1, v0, v4

    const-string p1, "createServiceUniNView"

    aput-object p1, v0, v1

    aput-object v2, v0, p2

    const/16 p1, 0xa

    invoke-virtual {p0, v5, p1, v0}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_68
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V
    .registers 5

    if-eqz p2, :cond_22

    .line 438
    iget-boolean v0, p2, Lio/dcloud/common/core/ui/a;->o:Z

    if-eqz v0, :cond_7

    goto :goto_22

    .line 441
    :cond_7
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 445
    :cond_e
    new-instance v1, Lio/dcloud/common/core/ui/l$k;

    invoke-direct {v1, p0, v0, p2, p1}, Lio/dcloud/common/core/ui/l$k;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/DHInterface/IApp;)V

    .line 470
    iget-object p1, p0, Lio/dcloud/common/core/ui/l;->e:Ljava/lang/Runnable;

    if-eqz p1, :cond_1d

    const/4 p2, 0x1

    .line 471
    iput-boolean p2, p0, Lio/dcloud/common/core/ui/l;->f:Z

    .line 472
    invoke-static {p1}, Lio/dcloud/common/adapter/util/MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1d
    const-wide/16 p1, 0x64

    .line 474
    invoke-static {v1, p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_22
    :goto_22
    return-void
.end method

.method private a(Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 9

    .line 869
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 870
    iget-boolean v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v1, :cond_9

    return-void

    .line 873
    :cond_9
    iget-object v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 874
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    iget-boolean v1, v1, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-nez v1, :cond_1a

    return-void

    .line 878
    :cond_1a
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/DeviceInfo;->getStatusHeight(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_c0

    .line 880
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 881
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/common/util/AppStatusBarManager;->getStatusBarDefaultColor()I

    move-result p2

    .line 882
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 885
    :try_start_39
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3f} :catch_40

    goto :goto_46

    .line 887
    :catch_40
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v3

    .line 889
    :goto_46
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->checkStatusbarColor(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    move p2, v3

    .line 893
    :cond_4d
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 894
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5a

    return-void

    .line 897
    :cond_5a
    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-nez v4, :cond_5f

    return-void

    .line 900
    :cond_5f
    new-instance v4, Lcom/dcloud/android/widget/StatusBarView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/dcloud/android/widget/StatusBarView;-><init>(Landroid/content/Context;)V

    .line 901
    invoke-virtual {v4, v1}, Lcom/dcloud/android/widget/StatusBarView;->setStatusBarHeight(I)V

    .line 903
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v1, :cond_84

    .line 904
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    const-string v5, "type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "transparent"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 908
    :cond_84
    invoke-virtual {v4, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 909
    invoke-virtual {v4, v2}, Landroid/view/View;->setId(I)V

    .line 911
    move-object p2, p1

    check-cast p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 912
    iget-boolean v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbarDodifyHeight:Z

    if-eqz v1, :cond_aa

    .line 913
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    sget v5, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 915
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_ad

    .line 917
    :cond_aa
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 919
    :goto_ad
    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v0, :cond_b8

    invoke-static {v0}, Lio/dcloud/common/util/TitleNViewUtil;->isTitleTypeForDef(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_b8

    return-void

    .line 922
    :cond_b8
    new-instance v0, Lio/dcloud/common/core/ui/l$c;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/core/ui/l$c;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_c0
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/a;)V
    .registers 3

    .line 419
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 420
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 421
    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    :cond_12
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V
    .registers 35

    move-object/from16 v15, p1

    const-string v1, "titlesize"

    const-string v2, "titlecolor"

    const-string v3, "titleSize"

    const-string v4, "titleColor"

    const-string v5, "titleText"

    const-string v6, "titletext"

    .line 1046
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v0, :cond_2a5

    .line 1047
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v14, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    .line 1048
    invoke-static/range {p1 .. p1}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v13, "type"

    const/16 v16, 0x0

    const-string v0, ""

    if-eqz v14, :cond_162

    .line 1050
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_162

    .line 1052
    :try_start_30
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_b2

    const-string v9, "undefined"

    if-eqz v0, :cond_48

    :try_start_38
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1053
    :cond_48
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1054
    :cond_5e
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1057
    :cond_61
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1058
    :cond_71
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1059
    :cond_81
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "#000000"

    .line 1060
    invoke-virtual {v14, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1062
    :cond_89
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1063
    :cond_99
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1064
    :cond_a9
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "17px"

    .line 1065
    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_b1} :catch_b2

    goto :goto_b6

    :catch_b2
    move-exception v0

    .line 1068
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1072
    :cond_b6
    :goto_b6
    :try_start_b6
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1073
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e2

    .line 1074
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_e2

    .line 1075
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ca
    move-object v8, v0

    goto :goto_e2

    .line 1077
    :cond_cc
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 1078
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e2

    .line 1079
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_e2

    .line 1080
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_e0} :catch_e1

    goto :goto_ca

    :catch_e1
    nop

    .line 1084
    :cond_e2
    :goto_e2
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1085
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 1086
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_f0
    move-object v2, v0

    .line 1088
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 1090
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_ff
    move-object v1, v0

    .line 1092
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "transparent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 1093
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11d

    const/4 v0, 0x0

    .line 1095
    :try_start_113
    invoke-static {v2, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_117} :catch_118

    goto :goto_11d

    :catch_118
    move-exception v0

    move-object v3, v0

    .line 1097
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11d
    :goto_11d
    const-string v0, "titleOverflow"

    .line 1101
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "titleAlign"

    .line 1102
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "titleIcon"

    .line 1103
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "titleIconRadius"

    .line 1104
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "subtitleText"

    .line 1105
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "subtitleColor"

    .line 1106
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "subtitleSize"

    .line 1107
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "subtitleOverflow"

    .line 1108
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "titleIconWidth"

    .line 1109
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object v11, v9

    move-object v12, v10

    move-object v9, v5

    move-object v10, v6

    move-object v6, v0

    move-object v5, v1

    move-object v0, v3

    move-object v3, v8

    move-object v8, v4

    move-object v4, v2

    goto :goto_171

    :cond_162
    move-object v9, v0

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v17

    move-object v3, v8

    move-object/from16 v4, v16

    move-object v5, v4

    move-object v6, v5

    move-object/from16 v8, v18

    .line 1112
    :goto_171
    iget-object v1, v15, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    move-object/from16 v19, v13

    const/4 v13, 0x4

    move-object/from16 v20, v14

    new-array v14, v13, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v14, v22

    const/4 v13, 0x1

    const-string v23, "nativeobj"

    aput-object v23, v14, v13

    const-string v24, "show"

    const/4 v13, 0x2

    aput-object v24, v14, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v12

    const-string v12, "[\'"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\',\'"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\']"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1113
    invoke-static {v12}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v14, v13

    const/4 v12, 0x1

    .line 1114
    invoke-virtual {v1, v2, v12, v14}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1117
    iget-object v1, v15, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    .line 1118
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v21

    aput-object v21, v14, v22

    aput-object v23, v14, v12

    const-string v21, "addNativeView"

    const/4 v13, 0x2

    aput-object v21, v14, v13

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v15, v13, v22

    aput-object v7, v13, v12

    const/4 v12, 0x3

    aput-object v13, v14, v12

    const/16 v12, 0xa

    .line 1119
    invoke-virtual {v1, v2, v12, v14}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1122
    iget-object v1, v15, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-static {v1, v2, v15, v7}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1123
    instance-of v2, v1, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v2, :cond_2a5

    .line 1124
    move-object v14, v1

    check-cast v14, Lio/dcloud/common/DHInterface/ITitleNView;

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v7, v0

    move-object/from16 v12, v25

    move-object/from16 v15, v19

    move-object/from16 v13, v17

    move-object v0, v14

    move-object/from16 v15, v20

    move-object/from16 v14, v18

    .line 1128
    invoke-static/range {v1 .. v14}, Lio/dcloud/common/util/TitleNViewUtil;->drawTitle(Lio/dcloud/common/DHInterface/IFrameView;Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleNViewPadding(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    .line 1134
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz p2, :cond_216

    invoke-virtual/range {p2 .. p2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    goto :goto_218

    :cond_216
    move-object/from16 v2, v16

    :goto_218
    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setButtons(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 1137
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setBackButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V

    const-string v1, "splitLine"

    .line 1140
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_247

    .line 1141
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v27

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    move-object/from16 v1, v19

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v28, 0x0

    const/16 v30, 0x1

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v31}, Lio/dcloud/common/util/TitleNViewUtil;->setSplitLine(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 1145
    :cond_247
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->setProgress(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    .line 1148
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setHomeButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V

    .line 1151
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->setCapsuleButtonStyle(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    const-string v1, "searchInput"

    .line 1153
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_27f

    .line 1154
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz p2, :cond_27a

    invoke-virtual/range {p2 .. p2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v16

    :cond_27a
    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setSearchInput(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    :cond_27f
    const-string v1, "backgroundRepeat"

    .line 1157
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_294

    if-eqz v0, :cond_294

    .line 1159
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/ITitleNView;->setBackgroundRepeat(Ljava/lang/String;)V

    :cond_294
    const-string v1, "shadow"

    .line 1162
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2a5

    .line 1163
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->setShadow(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    :cond_2a5
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;Z)V
    .registers 24

    move-object/from16 v0, p1

    .line 813
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    .line 814
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v3

    .line 815
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v5

    .line 816
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v12

    .line 817
    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    .line 818
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lio/dcloud/common/core/ui/a;

    .line 819
    invoke-virtual {v13}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    .line 820
    invoke-virtual {v6, v7}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 821
    invoke-virtual {v6, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 822
    iput v2, v12, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 823
    iput v2, v12, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 824
    iput v2, v12, Lio/dcloud/common/adapter/util/ViewRect;->anim_top:I

    .line 825
    iput v2, v12, Lio/dcloud/common/adapter/util/ViewRect;->anim_left:I

    .line 826
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 827
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v9}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 828
    iput v1, v12, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 829
    iput v3, v12, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 830
    iget v15, v6, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 831
    iget v14, v6, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 832
    iget v11, v6, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 833
    iget v10, v6, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 834
    invoke-static {v6, v7, v6}, Lio/dcloud/common/adapter/util/ViewOptions;->createViewOptionsData(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/util/ViewRect;Lio/dcloud/common/adapter/util/ViewRect;)Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setFrameOptions_Birth(Lio/dcloud/common/adapter/util/ViewOptions;)V

    .line 835
    iput-boolean v2, v6, Lio/dcloud/common/adapter/util/ViewRect;->allowUpdate:Z

    .line 836
    iget v2, v12, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    iput v2, v6, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    .line 837
    iput-boolean v4, v5, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNeedOrientationUpdate:Z

    const-string v7, "left"

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    move-object v6, v12

    move v5, v10

    move v10, v2

    move v2, v11

    move v11, v4

    .line 838
    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    const-string v7, "top"

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 839
    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    const-string v7, "width"

    .line 840
    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    const-string v7, "height"

    .line 841
    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 844
    invoke-virtual {v13}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iget v4, v4, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 845
    invoke-virtual {v13}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    iget v6, v6, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move v7, v14

    move-object/from16 v14, p0

    move v8, v15

    move/from16 v16, v7

    move/from16 v17, v2

    move/from16 v18, v5

    move/from16 v19, v4

    move/from16 v20, v6

    .line 846
    invoke-direct/range {v14 .. v20}, Lio/dcloud/common/core/ui/l;->a(IIIIII)Z

    move-result v4

    const-string v6, "winmgr"

    if-eqz v4, :cond_b6

    const-string v1, "createWindow use LayoutParams.MATCH_PARENT !"

    .line 849
    invoke-static {v6, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 851
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_108

    .line 853
    :cond_b6
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v4

    invoke-static {v8, v7, v2, v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_c7

    .line 856
    invoke-virtual {v0, v1, v3}, Lio/dcloud/common/core/ui/b;->a(II)V

    goto :goto_108

    :cond_c7
    add-int v15, v8, v2

    if-gt v15, v1, :cond_cf

    add-int v14, v7, v5

    if-le v14, v3, :cond_108

    .line 858
    :cond_cf
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLayoutParams allW="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";pdrW="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";pdrH="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";allH="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v14, v7, v5

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/core/ui/b;->a(II)V

    :cond_108
    :goto_108
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "backgroundColor"

    const-string v4, "backgroundcolor"

    if-eqz v2, :cond_1b4

    .line 987
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b4

    .line 989
    :try_start_10
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 990
    :cond_20
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 991
    :cond_30
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "#F7F7F7"

    .line 992
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception v0

    .line 995
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 997
    :cond_3d
    :goto_3d
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 998
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 999
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4b
    move-object v3, v0

    const-string v0, "type"

    .line 1003
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "transparent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "absolute"

    if-eqz v4, :cond_6e

    .line 1005
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    const/4 v0, 0x0

    .line 1007
    :try_start_63
    invoke-static {v3, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_67} :catch_68

    goto :goto_84

    :catch_68
    move-exception v0

    move-object v4, v0

    .line 1009
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7a

    .line 1012
    :cond_6e
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "float"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    :cond_7a
    :goto_7a
    move-object v0, v3

    goto :goto_84

    :cond_7c
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1016
    invoke-static {v3, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const-string v5, "dock"

    .line 1020
    :goto_84
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/DeviceInfo;->getStatusHeight(Landroid/content/Context;)I

    move-result v4

    .line 1021
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    iget-boolean v6, v6, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    const/4 v7, 0x0

    if-eqz p2, :cond_a6

    if-nez v6, :cond_a6

    const/4 v6, -0x1

    if-eq v6, v4, :cond_a6

    int-to-float v4, v4

    .line 1024
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    goto :goto_a7

    :cond_a6
    const/4 v4, 0x0

    .line 1027
    :goto_a7
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    sget-object v8, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v6, v8}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1028
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v9, v8, :cond_c9

    if-eqz v6, :cond_c9

    const-string v8, "mode"

    .line 1029
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "parent"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    const/4 v4, 0x0

    :cond_c9
    const/4 v6, 0x0

    const-string v8, "tags"

    .line 1034
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d6

    .line 1035
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1040
    :cond_d6
    iget-object v8, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v10, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v11, 0xa

    const/4 v12, 0x4

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "nativeobj"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string v14, "View"

    aput-object v14, v13, v9

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v1, v14, v7

    .line 1041
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    aput-object v1, v14, v15

    aput-object p4, v14, v9

    const/4 v1, 0x3

    aput-object p4, v14, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "{\'top\':\'0px\',\'left\':\'0px\',\'height\':\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "px\',\'width\':\'100%\',"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ""

    if-lez v4, :cond_135

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\'statusbar\':{\'background\':\'"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\',\'backgroundnoalpha\':\'"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'},"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_136

    :cond_135
    move-object v3, v9

    :goto_136
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'backgroundColor\':\'"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\'position\':\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\'dock\':\'top\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "backgroundImage"

    .line 1043
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "\'"

    if-eqz v3, :cond_171

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",\'backgroundImage\':\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_172

    :cond_171
    move-object v0, v9

    :goto_172
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "redDotColor"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_195

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",\'redDotColor\':\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_195
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1044
    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    aput-object v0, v14, v12

    const/4 v0, 0x5

    aput-object v6, v14, v0

    const/4 v0, 0x6

    const-string v2, "TitleNView"

    aput-object v2, v14, v0

    aput-object v14, v13, v1

    .line 1045
    invoke-virtual {v8, v10, v11, v13}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1b4
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;[Ljava/lang/Object;)V
    .registers 11

    .line 936
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v0

    iget-boolean v0, v0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    .line 940
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2e

    .line 941
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->TitleNViewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p2, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v2

    .line 942
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_d1

    .line 945
    :cond_2e
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v4, 0x4

    const-string v5, "navigationbar"

    const-string v6, "titleNView"

    if-ne v1, v4, :cond_6d

    .line 946
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 947
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    sget-object v3, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_d1

    .line 949
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 950
    invoke-static {v1, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_d1

    .line 951
    :cond_61
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 952
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_d1

    .line 957
    :cond_6d
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v4, 0x5

    const/4 v7, 0x1

    if-ne v1, v4, :cond_a5

    .line 958
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 959
    array-length v3, p2

    if-le v3, v7, :cond_a3

    .line 960
    aget-object p2, p2, v7

    check-cast p2, Lorg/json/JSONObject;

    if-eqz p2, :cond_a3

    .line 962
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 963
    invoke-static {p2, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_a3

    .line 964
    :cond_99
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 965
    invoke-static {p2, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :cond_a3
    :goto_a3
    move-object p2, v1

    goto :goto_d1

    .line 972
    :cond_a5
    array-length v1, p2

    if-le v1, v7, :cond_d0

    .line 973
    aget-object v1, p2, v7

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_c4

    .line 975
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 976
    invoke-static {v1, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_c5

    .line 977
    :cond_b9
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 978
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_c5

    :cond_c4
    move-object v1, v2

    .line 981
    :goto_c5
    array-length v4, p2

    if-le v4, v3, :cond_cd

    .line 982
    aget-object p2, p2, v3

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    :cond_cd
    move-object p2, v2

    move-object v2, v1

    goto :goto_d1

    :cond_d0
    move-object p2, v2

    .line 986
    :cond_d1
    :goto_d1
    invoke-direct {p0, p1, v0, v2, p2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V

    return-void
.end method

.method private a(IIIIII)Z
    .registers 7

    if-nez p1, :cond_a

    if-nez p2, :cond_a

    if-ne p3, p5, :cond_a

    if-ne p4, p6, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    .line 862
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_21

    const-string v0, "id:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 p1, 0x3

    .line 863
    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 864
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    return v1

    :cond_21
    const/4 p2, 0x4

    if-ne p1, p2, :cond_33

    .line 868
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_39

    const-string p1, "second"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    return v1

    :cond_33
    const/4 p2, 0x5

    if-ne p1, p2, :cond_39

    if-eqz p4, :cond_39

    return v1

    :cond_39
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;)Z
    .registers 3

    .line 297
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getOriginalDirectPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "direct_page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;)Z
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result p0

    return p0
.end method

.method private b()Lio/dcloud/common/core/ui/a;
    .registers 4

    .line 57
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    return-object v0
.end method

.method private b(Lio/dcloud/common/DHInterface/IApp;)Lio/dcloud/common/core/ui/b;
    .registers 2

    .line 55
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/core/ui/a;

    if-eqz p1, :cond_d

    .line 56
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method private b(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)Lio/dcloud/common/core/ui/c;
    .registers 12

    .line 68
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->Tabbar:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v7, :cond_74

    .line 70
    new-instance v8, Lio/dcloud/common/core/ui/c;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v6, 0x8

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lio/dcloud/common/core/ui/c;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;ILorg/json/JSONObject;)V

    const/4 v1, 0x0

    .line 71
    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    .line 72
    invoke-interface {p1, v3}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v4

    .line 73
    invoke-virtual {v8}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    .line 74
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    .line 75
    iget v7, v6, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-le v7, v4, :cond_33

    .line 76
    iget-object v7, v6, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v6, v7, v2, v4}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    .line 78
    :cond_33
    invoke-virtual {v5, v6}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 79
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getPopGesture()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lio/dcloud/common/adapter/util/ViewOptions;->popGesture:Ljava/lang/String;

    .line 80
    invoke-virtual {v8}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    const/4 v2, -0x1

    .line 81
    iput v2, v5, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 82
    iput v2, v5, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 83
    iget v4, v5, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    invoke-static {p1, v4, v5, v2, v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 84
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 86
    invoke-virtual {p2, v8, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object p1, v8, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1, v8}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 88
    sget-object p1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v8}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    aput-object v2, p2, v1

    const-string v1, "UI"

    aput-object v1, p2, v3

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, p2, v1

    const/4 v1, 0x3

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, v3, p2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-object v8

    :cond_74
    return-object v0
.end method

.method private b(ILjava/lang/Object;)V
    .registers 16

    .line 1
    instance-of p1, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_c7

    .line 2
    check-cast p2, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    aget-object v0, p2, p1

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    .line 4
    array-length v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-lt v1, v3, :cond_19

    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 5
    :goto_1a
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/common/core/ui/a;

    .line 7
    iget-object v6, v5, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    const/4 v7, 0x1

    if-nez v6, :cond_2d

    const/4 v8, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v8, 0x0

    :goto_2e
    const/4 v9, 0x0

    if-nez v6, :cond_7e

    .line 10
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v10, "__from_stream_open_style__"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    :try_start_3b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_50

    .line 14
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_46} :catch_57

    .line 15
    :try_start_46
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_4d} :catch_4e

    goto :goto_5c

    :catch_4e
    move-exception v6

    goto :goto_59

    :cond_50
    :try_start_50
    const-string v6, "{}"

    .line 17
    invoke-static {v6}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_56} :catch_57

    goto :goto_5c

    :catch_57
    move-exception v6

    move-object v11, v9

    .line 20
    :goto_59
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 22
    :goto_5c
    sget-object v6, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, p1

    aput-object v0, v10, v7

    new-array v0, v2, [Ljava/lang/Object;

    aget-object v12, p2, v7

    aput-object v12, v0, p1

    aput-object v11, v0, v7

    aput-object v0, v10, v2

    aput-object v5, v10, v3

    .line 27
    invoke-virtual {p0, v6, v3, v10}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/dcloud/common/core/ui/b;

    .line 36
    iput-object v6, v5, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    .line 38
    :cond_7e
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_99

    if-nez v1, :cond_92

    .line 42
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v7, v9}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_99

    .line 44
    :cond_92
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1, v9}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 47
    :cond_99
    :goto_99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " launchPage ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v7

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Main_Path"

    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    aget-object p1, p2, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    if-eqz v8, :cond_c7

    .line 51
    invoke-virtual {v5, v6}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    :cond_c7
    return-void
.end method


# virtual methods
.method a(ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IEventCallback;[Ljava/lang/Object;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/core/ui/b;
    .registers 37

    move-object/from16 v10, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    const-string v13, "createFrameView"

    .line 500
    invoke-static {v13, v13}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 502
    aget-object v0, v11, v14

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v0, "Layout_Path"

    const-string v1, "WindowMgr createWindow"

    .line 505
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-interface {v8, v14}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v6

    const/4 v5, 0x1

    .line 507
    invoke-interface {v8, v5}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v4

    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ne v7, v0, :cond_31

    .line 512
    iget-object v0, v9, Lio/dcloud/common/core/ui/a;->f:Lio/dcloud/common/core/ui/b;

    goto :goto_3c

    :cond_31
    if-ne v7, v2, :cond_36

    .line 514
    iget-object v0, v9, Lio/dcloud/common/core/ui/a;->g:Lio/dcloud/common/core/ui/b;

    goto :goto_3c

    :cond_36
    if-ne v7, v3, :cond_3b

    .line 516
    iget-object v0, v9, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    goto :goto_3c

    :cond_3b
    move-object v0, v1

    :goto_3c
    if-nez v0, :cond_80

    .line 519
    new-instance v0, Lio/dcloud/common/core/ui/b;

    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v18, v0

    const/4 v14, 0x2

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v20, v4

    move-object/from16 v4, p3

    move/from16 v5, p1

    move/from16 v21, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lio/dcloud/common/core/ui/b;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;ILjava/lang/Object;)V

    if-ne v7, v14, :cond_65

    move-object/from16 v0, v18

    .line 521
    iput-object v0, v9, Lio/dcloud/common/core/ui/a;->f:Lio/dcloud/common/core/ui/b;

    const/4 v1, 0x4

    :cond_63
    :goto_63
    const/4 v2, 0x5

    goto :goto_90

    :cond_65
    move-object/from16 v0, v18

    const/4 v1, 0x4

    if-ne v7, v1, :cond_78

    .line 523
    iput-object v0, v9, Lio/dcloud/common/core/ui/a;->g:Lio/dcloud/common/core/ui/b;

    .line 524
    iget-object v2, v9, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    if-eqz v2, :cond_63

    .line 525
    iget-wide v3, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    goto :goto_63

    :cond_78
    const/4 v2, 0x5

    if-ne v7, v2, :cond_90

    .line 529
    iput-object v0, v9, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    move-object v6, v0

    const/4 v5, 0x1

    goto :goto_92

    :cond_80
    move/from16 v20, v4

    move/from16 v21, v6

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v14, 0x2

    if-ne v7, v14, :cond_90

    .line 532
    invoke-direct {v10, v8}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v3

    if-eqz v3, :cond_90

    return-object v0

    :cond_90
    :goto_90
    move-object v6, v0

    const/4 v5, 0x0

    .line 538
    :goto_92
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 539
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    .line 540
    invoke-virtual/range {p3 .. p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    .line 541
    iget v4, v3, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move/from16 v1, v20

    if-le v4, v1, :cond_b8

    .line 542
    iget-object v4, v3, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    move/from16 v2, v21

    invoke-virtual {v3, v4, v2, v1}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    goto :goto_ba

    :cond_b8
    move/from16 v2, v21

    .line 544
    :goto_ba
    invoke-virtual {v0, v3}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 545
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IApp;->getPopGesture()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lio/dcloud/common/adapter/util/ViewOptions;->popGesture:Ljava/lang/String;

    .line 547
    array-length v3, v11

    const-string v4, ""

    const/4 v14, 0x1

    if-le v3, v14, :cond_122

    .line 548
    aget-object v3, v11, v14

    check-cast v3, Lorg/json/JSONObject;

    .line 549
    invoke-virtual {v0, v3}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    if-eqz v3, :cond_10a

    const-string v14, "render"

    .line 551
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_ee

    move-object/from16 v17, v4

    const-string v4, "onscreen"

    .line 553
    invoke-virtual {v3, v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "always"

    .line 555
    invoke-static {v4, v14}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v6, :cond_f0

    .line 557
    invoke-virtual {v6, v4}, Lio/dcloud/common/core/ui/b;->setNeedRender(Z)V

    goto :goto_f0

    :cond_ee
    move-object/from16 v17, v4

    :cond_f0
    :goto_f0
    const-string v4, "name"

    .line 560
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_fd

    .line 561
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_10e

    :cond_fd
    const-string v4, "id"

    .line 562
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10c

    .line 563
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_10e

    :cond_10a
    move-object/from16 v17, v4

    :cond_10c
    move-object/from16 v4, v17

    .line 566
    :goto_10e
    array-length v14, v11

    move-object/from16 v18, v3

    const/4 v3, 0x2

    if-le v14, v3, :cond_11c

    .line 567
    aget-object v14, v11, v3

    move-object v3, v14

    check-cast v3, Ljava/lang/String;

    move-object v14, v4

    move-object v4, v3

    goto :goto_11f

    :cond_11c
    move-object v14, v4

    move-object/from16 v4, v17

    :goto_11f
    move-object/from16 v3, v18

    goto :goto_12a

    :cond_122
    move-object/from16 v17, v4

    .line 570
    iput v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 571
    iput v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move-object v14, v4

    const/4 v3, 0x0

    .line 575
    :goto_12a
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v17

    if-eqz v17, :cond_139

    .line 576
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v12

    check-cast v12, Lio/dcloud/common/adapter/ui/AdaWebview;

    move/from16 v17, v5

    goto :goto_1a0

    .line 578
    :cond_139
    iget-object v9, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mUniNViewJson:Lorg/json/JSONObject;

    move/from16 v17, v5

    if-eqz v9, :cond_18a

    const-string v5, "path"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18a

    .line 580
    iget-object v9, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mUniNViewJson:Lorg/json/JSONObject;

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 581
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_172

    const-string v9, ".js"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_172

    const-string v12, ".js?"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_172

    .line 582
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_172
    move-object/from16 v25, v5

    .line 584
    new-instance v12, Lio/dcloud/common/core/ui/d;

    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v23

    iget-object v5, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mUniNViewJson:Lorg/json/JSONObject;

    const/16 v28, 0x0

    move-object/from16 v22, v12

    move-object/from16 v24, v6

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    invoke-direct/range {v22 .. v28}, Lio/dcloud/common/core/ui/d;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    goto :goto_1a0

    :cond_18a
    if-eqz v12, :cond_197

    .line 586
    new-instance v5, Lio/dcloud/common/core/ui/e;

    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9, v10, v6, v12}, Lio/dcloud/common/core/ui/e;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)V

    move-object v12, v5

    goto :goto_1a0

    .line 588
    :cond_197
    new-instance v12, Lio/dcloud/common/core/ui/e;

    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v12, v5, v10, v6}, Lio/dcloud/common/core/ui/e;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/core/ui/b;)V

    .line 591
    :goto_1a0
    invoke-virtual {v12, v15}, Lio/dcloud/common/adapter/ui/AdaWebview;->setOriginalUrl(Ljava/lang/String;)V

    .line 592
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1ac

    .line 593
    invoke-virtual {v12, v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->initWebviewUUID(Ljava/lang/String;)V

    .line 595
    :cond_1ac
    invoke-static/range {p2 .. p2}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v4

    if-eqz v4, :cond_1b6

    const/4 v4, 0x0

    .line 596
    invoke-virtual {v12, v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->setIWebViewFocusable(Z)V

    .line 598
    :cond_1b6
    iget-object v4, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mPullToRefresh:Lorg/json/JSONObject;

    if-eqz v4, :cond_1bf

    const-string v5, "pull_down_refresh"

    .line 599
    invoke-virtual {v12, v5, v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebViewEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 601
    :cond_1bf
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createWindow before _url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    .line 602
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IApp;->manifestBeParsed()Z

    move-result v4

    if-nez v4, :cond_1ec

    const/4 v4, 0x2

    if-ne v7, v4, :cond_1e3

    .line 603
    invoke-direct {v10, v8}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v4

    if-eqz v4, :cond_1e3

    goto :goto_1ec

    :cond_1e3
    const/4 v4, 0x5

    if-eq v7, v4, :cond_1ec

    const-string v0, "createWindow not manifestBeParsed"

    .line 606
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    return-object v6

    .line 610
    :cond_1ec
    :goto_1ec
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createWindow after _url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_220

    const-string v4, "launch_is_statusbar"

    .line 614
    invoke-interface {v8, v4}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    const-string v4, "launch_statusbar_color"

    .line 615
    invoke-interface {v8, v4}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    goto :goto_23f

    .line 616
    :cond_220
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_23f

    const-string v4, "second_is_statusbar"

    .line 617
    invoke-interface {v8, v4}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    const-string v4, "second_statusbar_color"

    .line 618
    invoke-interface {v8, v4}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    .line 621
    :cond_23f
    :goto_23f
    invoke-direct {v10, v6, v11}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;[Ljava/lang/Object;)V

    .line 623
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_260

    .line 624
    iget-boolean v4, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mUseHardwave:Z

    if-nez v4, :cond_256

    .line 625
    invoke-virtual {v12}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v9, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_261

    :cond_256
    const/4 v5, 0x0

    .line 627
    invoke-virtual {v12}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_261

    :cond_260
    const/4 v5, 0x0

    .line 630
    :goto_261
    iget-object v4, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mCacheMode:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebViewCacheMode(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v12}, Lio/dcloud/common/adapter/ui/AdaWebview;->init()V

    move-object/from16 v4, p5

    .line 632
    invoke-virtual {v6, v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 634
    invoke-virtual/range {p3 .. p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    invoke-static {v0, v4}, Lio/dcloud/common/adapter/util/ViewOptions;->createViewOptionsData(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/util/ViewRect;)Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    invoke-virtual {v6, v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setFrameOptions_Birth(Lio/dcloud/common/adapter/util/ViewOptions;)V

    .line 636
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v4

    const-string v9, "blockNetworkImage"

    .line 638
    invoke-static {v3, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 639
    invoke-virtual {v12, v9, v11}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "shareable"

    .line 641
    invoke-static {v3, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "shareable"

    .line 642
    invoke-virtual {v12, v11, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_2a7

    const-string v9, "visible"

    const/4 v11, 0x1

    .line 644
    invoke-virtual {v3, v9, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 645
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v11

    if-eqz v9, :cond_2a2

    const/4 v9, 0x0

    goto :goto_2a4

    :cond_2a2
    const/16 v9, 0x8

    :goto_2a4
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_2a7
    const-string v9, "injection"

    .line 648
    invoke-static {v3, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "injection"

    .line 649
    invoke-virtual {v12, v11, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "videoFullscreen"

    .line 652
    invoke-static {v3, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "videoFullscreen"

    .line 653
    invoke-virtual {v12, v11, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v9

    const-string v11, "all"

    const-string v5, "horizontal"

    const-string v7, "vertical"

    move-object/from16 v18, v14

    const-string v14, "bounce"

    move-object/from16 v19, v13

    const-string v13, "additionalHttpHeaders"

    const/4 v8, 0x2

    if-ne v9, v8, :cond_32f

    .line 660
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    sget-object v8, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->TitleNViewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v3, v8}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 662
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    sget-object v8, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v3, v8}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_329

    .line 665
    invoke-virtual {v0, v3}, Lio/dcloud/common/adapter/util/ViewOptions;->setBackButtonAutoControl(Lorg/json/JSONObject;)V

    .line 666
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2f9

    .line 667
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_2fa

    :cond_2f9
    const/4 v8, 0x0

    .line 670
    :goto_2fa
    invoke-static {v3, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 671
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_315

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_315

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_311

    goto :goto_315

    :cond_311
    const/4 v5, 0x0

    .line 674
    iput-boolean v5, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    goto :goto_318

    :cond_315
    :goto_315
    const/4 v5, 0x1

    .line 675
    iput-boolean v5, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    .line 679
    :goto_318
    iget-object v5, v0, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    const-string v7, "historyBack"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    move/from16 v20, v1

    move/from16 v21, v2

    move-object v1, v8

    goto/16 :goto_3a0

    :cond_329
    move/from16 v20, v1

    move/from16 v21, v2

    goto/16 :goto_39d

    .line 683
    :cond_32f
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v8

    const-string v9, "navigationbar"

    move/from16 v20, v1

    const-string v1, "titleNView"

    move/from16 v21, v2

    const/4 v2, 0x4

    if-ne v8, v2, :cond_3a2

    .line 684
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    sget-object v3, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_39d

    .line 687
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_358

    .line 688
    invoke-static {v2, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_365

    .line 690
    :cond_358
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_365

    .line 691
    invoke-static {v2, v9}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 694
    :cond_365
    :goto_365
    invoke-virtual {v0, v2}, Lio/dcloud/common/adapter/util/ViewOptions;->setBackButtonAutoControl(Lorg/json/JSONObject;)V

    .line 695
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_373

    .line 696
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_374

    :cond_373
    const/4 v1, 0x0

    .line 699
    :goto_374
    invoke-static {v2, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 700
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38f

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38f

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38b

    goto :goto_38f

    :cond_38b
    const/4 v3, 0x0

    .line 703
    iput-boolean v3, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    goto :goto_392

    :cond_38f
    :goto_38f
    const/4 v3, 0x1

    .line 704
    iput-boolean v3, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    .line 708
    :goto_392
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    const-string v5, "historyBack"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    goto :goto_3a0

    :cond_39d
    :goto_39d
    const-string v9, "none"

    const/4 v1, 0x0

    :goto_3a0
    const/4 v2, 0x1

    goto :goto_3ea

    .line 714
    :cond_3a2
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b0

    .line 715
    invoke-static {v3, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_3bd

    .line 716
    :cond_3b0
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3bd

    .line 717
    invoke-static {v3, v9}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 719
    :cond_3bd
    :goto_3bd
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c8

    .line 720
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_3c9

    :cond_3c8
    const/4 v1, 0x0

    .line 723
    :goto_3c9
    invoke-virtual {v0, v3}, Lio/dcloud/common/adapter/util/ViewOptions;->setBackButtonAutoControl(Lorg/json/JSONObject;)V

    .line 725
    invoke-static {v3, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 726
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e7

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e7

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e3

    goto :goto_3e7

    :cond_3e3
    const/4 v2, 0x0

    .line 729
    iput-boolean v2, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    goto :goto_3a0

    :cond_3e7
    :goto_3e7
    const/4 v2, 0x1

    .line 730
    iput-boolean v2, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    :goto_3ea
    if-eqz v1, :cond_416

    .line 735
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_416

    .line 736
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 737
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 738
    :goto_3ff
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_413

    .line 739
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 740
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3ff

    .line 742
    :cond_413
    invoke-virtual {v12, v15, v5}, Lio/dcloud/common/adapter/ui/AdaWebview;->setLoadURLHeads(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 745
    :cond_416
    invoke-virtual {v12, v14, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-virtual {v6, v0, v6, v4, v12}, Lio/dcloud/common/core/ui/b;->a(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 748
    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v1

    if-eqz v1, :cond_429

    const/4 v1, 0x0

    .line 749
    invoke-direct {v10, v6, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;Z)V

    :goto_426
    move-object/from16 v3, p2

    goto :goto_451

    :cond_429
    const/4 v1, 0x0

    .line 751
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    .line 752
    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v5, -0x1

    move/from16 v7, v21

    if-ne v4, v7, :cond_436

    const/4 v4, -0x1

    .line 753
    :cond_436
    iget v7, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move/from16 v8, v20

    if-ne v7, v8, :cond_43d

    const/4 v7, -0x1

    .line 754
    :cond_43d
    iget v8, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    invoke-static {v3, v8, v0, v4, v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 755
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 761
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v3

    invoke-virtual {v6, v3, v0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_426

    .line 763
    :goto_451
    invoke-direct {v10, v6, v3}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/DHInterface/IApp;)V

    move-object/from16 v0, p4

    .line 766
    invoke-direct {v10, v6, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V

    .line 768
    invoke-static {v6}, Lio/dcloud/common/util/SubNViewsUtil;->initFrameSubNViews(Lio/dcloud/common/adapter/ui/AdaFrameView;)V

    const-string v0, "winmgr"

    const-string v4, "createWindow end !"

    .line 771
    invoke-static {v0, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "createFrameView\u8017\u65f6\uff1a"

    move-object/from16 v4, v19

    .line 772
    invoke-static {v4, v0}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "target"

    .line 773
    invoke-interface {v3, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move/from16 v4, p1

    move/from16 v7, v17

    move-object/from16 v5, v18

    .line 774
    invoke-direct {v10, v4, v5, v0, v7}, Lio/dcloud/common/core/ui/l;->a(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_516

    .line 776
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v4

    .line 777
    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_491

    invoke-static {v15}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_491

    const-string v5, "rendering"

    .line 778
    iput-object v5, v10, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    goto :goto_495

    :cond_491
    const-string v5, "loaded"

    .line 780
    iput-object v5, v10, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    :goto_495
    const-string v5, "event"

    .line 782
    invoke-interface {v3, v5}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 783
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4a3

    .line 784
    iput-object v5, v10, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    :cond_4a3
    const-string v5, "autoclose"

    .line 786
    invoke-interface {v3, v5}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 787
    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4bd

    const-string v4, "w2a_autoclose"

    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4bd

    const/4 v4, 0x1

    goto :goto_4be

    :cond_4bd
    const/4 v4, 0x0

    .line 789
    :goto_4be
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c9

    if-eqz v4, :cond_4c7

    goto :goto_4c9

    :cond_4c7
    const/4 v5, 0x0

    goto :goto_4ca

    :cond_4c9
    :goto_4c9
    const/4 v5, 0x1

    :goto_4ca
    const-string v1, "delay"

    .line 792
    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 793
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "w2a_delay"

    .line 794
    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v4, :cond_4e2

    move v9, v2

    goto :goto_4e3

    :cond_4e2
    move v9, v1

    :goto_4e3
    const-string v1, "id:"

    .line 797
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4fe

    const-string v1, "id:*"

    .line 798
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4fe

    .line 800
    new-instance v0, Lio/dcloud/common/core/ui/l$a;

    move-object/from16 v8, p3

    invoke-direct {v0, v10, v6, v3, v8}, Lio/dcloud/common/core/ui/l$a;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V

    invoke-virtual {v6, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    goto :goto_500

    :cond_4fe
    move-object/from16 v8, p3

    .line 812
    :goto_500
    new-instance v11, Lio/dcloud/common/core/ui/l$b;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v6

    move v4, v5

    move v5, v7

    move-object v13, v6

    move-object v6, v15

    move-object v7, v12

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lio/dcloud/common/core/ui/l$b;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/b;ZZLjava/lang/String;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/core/ui/a;I)V

    invoke-virtual {v12, v11}, Lio/dcloud/common/adapter/ui/AdaWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    goto :goto_517

    :cond_516
    move-object v13, v6

    :goto_517
    return-object v13
.end method

.method a(Landroid/view/ViewGroup;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .line 5
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    .line 6
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/core/ui/a;

    .line 7
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p3

    check-cast p3, Lio/dcloud/common/core/ui/b;

    .line 8
    iput-object p2, p3, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    .line 10
    invoke-virtual {p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_2e

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    :cond_2e
    invoke-virtual {p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 6

    .line 436
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "direct_page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 437
    sget-object p1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "UI"

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    const-string v2, "n_createDirectWebview"

    aput-object v2, v0, p2

    const/4 p2, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, p2

    invoke-virtual {p0, p1, v1, v0}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V
    .registers 10

    .line 422
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 424
    :try_start_a
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 425
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 426
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 428
    invoke-virtual {v5, v4, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 430
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 431
    invoke-virtual {p1, v0, p3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p3

    .line 433
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 435
    :goto_23
    sget-object p3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    const-string p2, "UI"

    aput-object p2, v3, v2

    const-string p2, "n_createHDWebview"

    aput-object p2, v3, v1

    aput-object p1, v3, v0

    invoke-virtual {p0, p3, v2, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 23

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    const/4 v9, 0x0

    if-eqz v8, :cond_15

    const-string v0, "path"

    .line 255
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 256
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_16

    :cond_15
    move-object v10, v9

    .line 258
    :goto_16
    invoke-static {v10}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    const/4 v11, 0x1

    .line 261
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uniapp_weex_js_service"

    invoke-interface {v7, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 262
    invoke-interface {v7, v12}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v13

    .line 263
    invoke-interface {v7, v11}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v14

    .line 264
    new-instance v15, Lio/dcloud/common/core/ui/b;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lio/dcloud/common/core/ui/b;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;ILjava/lang/Object;)V

    .line 265
    new-instance v6, Lio/dcloud/common/core/ui/d;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v16, 0x1

    move-object v0, v6

    move-object v2, v15

    move-object v3, v10

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object v8, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lio/dcloud/common/core/ui/d;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    move-object/from16 v0, p3

    .line 266
    invoke-virtual {v8, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->initWebviewUUID(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v15}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 268
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    .line 269
    iget v2, v1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-le v2, v14, :cond_6d

    .line 270
    iget-object v2, v1, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v13, v14}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    .line 272
    :cond_6d
    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 273
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IApp;->getPopGesture()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/common/adapter/util/ViewOptions;->popGesture:Ljava/lang/String;

    .line 274
    invoke-virtual {v15}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    .line 275
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v3, -0x1

    if-ne v2, v13, :cond_80

    const/4 v2, -0x1

    .line 276
    :cond_80
    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne v4, v14, :cond_85

    const/4 v4, -0x1

    .line 277
    :cond_85
    iget v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    invoke-static {v1, v5, v0, v2, v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 278
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 279
    invoke-virtual {v15}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v15, v1, v0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-virtual {v15, v12, v12}, Lio/dcloud/common/core/ui/b;->setVisible(ZZ)V

    move-object/from16 v1, p2

    .line 281
    invoke-virtual {v1, v15, v0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p4

    .line 282
    invoke-virtual {v8, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->setFrameId(Ljava/lang/String;)V

    .line 283
    iget-object v0, v15, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, v15}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 284
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v12

    const-string v2, "UI"

    aput-object v2, v1, v11

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v9, v1, v2

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v11, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;ZLio/dcloud/common/core/ui/a;ILio/dcloud/common/core/ui/b;II)V
    .registers 20

    .line 475
    new-instance v10, Lio/dcloud/common/core/ui/l$l;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p4

    move v3, p3

    move-object/from16 v4, p6

    move-object v5, p1

    move-object v6, p2

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lio/dcloud/common/core/ui/l$l;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/a;ZLio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;III)V

    move-object v0, p0

    iput-object v10, v0, Lio/dcloud/common/core/ui/l;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    .line 499
    invoke-static {v10, v1, v2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Lio/dcloud/common/core/ui/b;)V
    .registers 5

    .line 925
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->p()V

    .line 926
    iget-object v0, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 927
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 928
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p1, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v2, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 929
    iput-object v0, p1, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    .line 931
    :cond_1a
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->r()V

    .line 932
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->i()V

    const/4 v0, 0x0

    .line 933
    iput-boolean v0, p1, Lio/dcloud/common/core/ui/b;->i:Z

    .line 934
    iput-boolean v0, p1, Lio/dcloud/common/core/ui/b;->h:Z

    .line 935
    iput-boolean v0, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    return-void
.end method

.method public declared-synchronized a(Lio/dcloud/common/core/ui/l$m;)V
    .registers 3

    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 4
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    .line 15
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "come into createAppRootView pAppid==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "streamsdk"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    .line 18
    iget-boolean v3, v0, Lio/dcloud/common/core/ui/a;->h:Z

    if-nez v3, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v1, 0x0

    goto :goto_9b

    :cond_2a
    :goto_2a
    if-eqz v0, :cond_35

    .line 19
    iget-boolean v0, v0, Lio/dcloud/common/core/ui/a;->h:Z

    if-nez v0, :cond_35

    .line 20
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "come into createAppRootView and new le rootview  pAppid==="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "streamsdk"

    invoke-static {v3, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AppRootView"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Main_Path"

    invoke-static {v3, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lio/dcloud/common/core/ui/a;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, p1, v4}, Lio/dcloud/common/core/ui/a;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/b;)V

    .line 26
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/a;->onAppStart(Lio/dcloud/common/DHInterface/IApp;)V

    .line 27
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getAppViewRect()Lio/dcloud/common/adapter/util/ViewRect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 28
    invoke-interface {p1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v2

    .line 29
    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v3

    .line 30
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    const-string v5, "{}"

    invoke-static {v5}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    .line 32
    iget-object v2, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;
    :try_end_9b
    .catchall {:try_start_1 .. :try_end_9b} :catchall_9d

    :goto_9b
    monitor-exit p0

    return v1

    :catchall_9d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 6

    .line 52
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 53
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getOriginalDirectPage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_35

    .line 54
    :cond_1c
    sget-object p1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "UI"

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    const-string v2, "n_createSecondWebview"

    aput-object v2, v0, p2

    const/4 p2, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, p2

    invoke-virtual {p0, p1, v1, v0}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_35
    return-void
.end method

.method public b(Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 59
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const/4 v0, 0x0

    .line 65
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->setMaskLayer(Z)V

    .line 67
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected declared-synchronized c()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 5
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/l$m;

    .line 7
    invoke-interface {v2}, Lio/dcloud/common/core/ui/l$m;->onAnimationEnd()V

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 10
    :cond_25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_30

    .line 11
    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 13
    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_35

    :catch_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lio/dcloud/common/core/ui/b;)V
    .registers 5

    .line 14
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->p()V

    .line 15
    iget-object v0, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 16
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 17
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p1, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v2, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p1, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    .line 20
    :cond_1a
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 21
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->l()V

    .line 23
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->k()V

    return-void
.end method

.method public d(Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->setMaskLayer(Z)V

    .line 10
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public dispose()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :cond_7
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 7
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->dispose()V

    goto :goto_11

    .line 9
    :cond_29
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-eqz v0, :cond_3a

    .line 11
    invoke-static {}, Lio/dcloud/common/core/ui/f;->b()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v9, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "quitModel"

    const-string v4, "auto_pop "

    const-string v5, "query"

    const-string v6, "auto_push "

    const/4 v10, 0x0

    .line 1
    :try_start_f
    invoke-virtual/range {p0 .. p1}, Lio/dcloud/common/DHInterface/AbsMgr;->checkMgrId(Lio/dcloud/common/DHInterface/IMgr$MgrType;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 2
    iget-object v3, v9, Lio/dcloud/common/DHInterface/AbsMgr;->mCore:Lio/dcloud/common/DHInterface/ICore;

    move-object/from16 v4, p1

    invoke-interface {v3, v4, v1, v2}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_a1e

    goto/16 :goto_1d3

    :cond_1f
    const/4 v7, -0x1

    if-eq v1, v7, :cond_a12

    const/16 v8, 0x34

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v1, v8, :cond_9f9

    const-string v8, "View_Visible_Path"

    const-string v14, "Animation_Path"

    const/4 v15, 0x4

    const/4 v7, 0x2

    const/4 v13, 0x3

    packed-switch v1, :pswitch_data_a26

    packed-switch v1, :pswitch_data_a46

    const-string v13, "shutao"

    const-string v15, "Auto_Pop_Push_Path"

    const-string v7, "appid"

    packed-switch v1, :pswitch_data_a50

    packed-switch v1, :pswitch_data_a6e

    packed-switch v1, :pswitch_data_a86

    goto/16 :goto_a25

    .line 4557
    :pswitch_46
    :try_start_46
    invoke-direct/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/a;->reload(Ljava/lang/String;)V

    goto/16 :goto_a25

    .line 4558
    :pswitch_53
    invoke-direct/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v1

    invoke-virtual {v1, v11}, Lio/dcloud/common/core/ui/a;->reload(Z)V

    goto/16 :goto_a25

    .line 4562
    :pswitch_5c
    invoke-direct/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v1

    invoke-virtual {v1, v12}, Lio/dcloud/common/core/ui/a;->reload(Z)V

    goto/16 :goto_a25

    .line 4563
    :pswitch_65
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 4564
    iget-object v1, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1, v1, v13}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;I)V

    goto/16 :goto_a25

    .line 5058
    :pswitch_6f
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5059
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_a25

    .line 5061
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a25

    .line 5062
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1d3

    .line 5063
    :pswitch_91
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    if-eqz v1, :cond_c7

    .line 5064
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    .line 5065
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 5066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5067
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->h()V

    .line 5068
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2, v1}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 5069
    iget-boolean v2, v1, Lio/dcloud/common/core/ui/b;->g:Z

    if-eqz v2, :cond_c7

    .line 5070
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    .line 5071
    iput-boolean v12, v1, Lio/dcloud/common/core/ui/b;->g:Z

    .line 5074
    :cond_c7
    iput-boolean v11, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    .line 5075
    iput-boolean v12, v1, Lio/dcloud/common/core/ui/b;->i:Z

    goto/16 :goto_a25

    .line 5104
    :pswitch_cd
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 5105
    aget-object v2, v1, v12

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 5106
    aget-object v3, v1, v11

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 5107
    aget-object v4, v1, v7

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 5108
    aget-object v1, v1, v13

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 5109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setStyle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_f9
    .catchall {:try_start_46 .. :try_end_f9} :catchall_a1e

    if-eqz v3, :cond_fe

    const-string v6, "\u53d1\u751f\u4f4d\u7f6e\u533a\u57df\u53d8\u5316"

    goto :goto_10a

    :cond_fe
    if-eqz v4, :cond_103

    const-string v6, "zindex\u53d1\u751f\u4e86\u53d8\u5316"

    goto :goto_10a

    :cond_103
    if-eqz v1, :cond_108

    const-string v6, "\u8bbe\u7f6e\u900f\u660e\u5ea6\u53d8\u5316"

    goto :goto_10a

    :cond_108
    const-string v6, ""

    :goto_10a
    :try_start_10a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5110
    iput-boolean v1, v2, Lio/dcloud/common/core/ui/b;->d:Z

    .line 5111
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->p()V

    .line 5112
    iget-object v5, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v5}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v11

    iput-boolean v5, v2, Lio/dcloud/common/core/ui/b;->g:Z

    .line 5113
    iget-boolean v5, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    const/16 v6, 0x14

    const/16 v7, 0x1c

    if-eqz v5, :cond_177

    if-eqz v3, :cond_177

    .line 5115
    iget-boolean v1, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v1, :cond_150

    .line 5116
    iget-object v1, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 5117
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->e()Z

    move-result v1

    if-eqz v1, :cond_148

    .line 5118
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v1, v7, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5119
    iput-object v10, v2, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    .line 5121
    :cond_148
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->s()V

    .line 5122
    invoke-virtual {v2, v12}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto/16 :goto_a25

    .line 5124
    :cond_150
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 5125
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->o()V

    if-eqz v3, :cond_a25

    .line 5127
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    sget-object v3, Lio/dcloud/common/adapter/util/AndroidResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v6, :cond_170

    .line 5129
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 5131
    :cond_170
    iget-object v1, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    goto/16 :goto_a25

    :cond_177
    if-nez v4, :cond_17f

    if-nez v1, :cond_17f

    if-eqz v3, :cond_17e

    goto :goto_17f

    :cond_17e
    const/4 v11, 0x0

    .line 5135
    :cond_17f
    :goto_17f
    iput-boolean v11, v2, Lio/dcloud/common/core/ui/b;->r:Z

    .line 5136
    iget-boolean v1, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v1, :cond_195

    if-eqz v11, :cond_195

    .line 5138
    iget-object v1, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 5139
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v4, v2, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v1, v7, v4}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5140
    iput-object v10, v2, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    .line 5143
    :cond_195
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 5144
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->o()V

    if-eqz v3, :cond_a25

    .line 5146
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    sget-object v3, Lio/dcloud/common/adapter/util/AndroidResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5147
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v6, :cond_a25

    .line 5148
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_a25

    .line 5149
    :pswitch_1b7
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_1cb

    .line 5150
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 5151
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1d3

    .line 5153
    :cond_1cb
    invoke-direct/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/ArrayList;

    move-result-object v1

    :goto_1d3
    move-object v10, v1

    goto/16 :goto_a25

    .line 5154
    :pswitch_1d6
    invoke-direct {v9, v1, v2}, Lio/dcloud/common/core/ui/l;->a(ILjava/lang/Object;)V

    goto/16 :goto_a25

    .line 5163
    :pswitch_1db
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 5164
    aget-object v2, v1, v12

    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    aget-object v1, v1, v11

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1d3

    .line 5189
    :pswitch_1f1
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 5190
    aget-object v2, v1, v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5191
    aget-object v3, v1, v11

    check-cast v3, Lio/dcloud/common/DHInterface/IApp;

    .line 5192
    aget-object v4, v1, v7

    move-object v7, v4

    check-cast v7, [Ljava/lang/Object;

    .line 5194
    array-length v4, v1

    if-le v4, v15, :cond_21e

    .line 5195
    aget-object v4, v1, v15

    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21e

    aget-object v4, v1, v15

    instance-of v4, v4, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    if-eqz v4, :cond_21e

    .line 5196
    aget-object v4, v1, v15

    check-cast v4, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    move-object v8, v4

    goto :goto_21f

    :cond_21e
    move-object v8, v10

    .line 5201
    :goto_21f
    array-length v4, v1

    if-lt v4, v15, :cond_23b

    .line 5202
    aget-object v4, v1, v13

    instance-of v4, v4, Lio/dcloud/common/core/ui/a;

    if-eqz v4, :cond_22e

    .line 5203
    aget-object v4, v1, v13

    check-cast v4, Lio/dcloud/common/core/ui/a;

    move-object v5, v10

    goto :goto_23d

    .line 5204
    :cond_22e
    aget-object v4, v1, v13

    instance-of v4, v4, Lio/dcloud/common/core/ui/b;

    if-eqz v4, :cond_23b

    .line 5205
    aget-object v4, v1, v13

    check-cast v4, Lio/dcloud/common/core/ui/b;

    move-object v5, v4

    move-object v4, v10

    goto :goto_23d

    :cond_23b
    move-object v4, v10

    move-object v5, v4

    .line 5209
    :goto_23d
    array-length v6, v1

    const/4 v12, 0x5

    if-lt v6, v12, :cond_24c

    .line 5210
    aget-object v6, v1, v15

    instance-of v6, v6, Lio/dcloud/common/DHInterface/IEventCallback;

    if-eqz v6, :cond_24c

    .line 5211
    aget-object v6, v1, v15

    check-cast v6, Lio/dcloud/common/DHInterface/IEventCallback;

    goto :goto_24d

    :cond_24c
    move-object v6, v10

    :goto_24d
    if-nez v4, :cond_255

    .line 5214
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/core/ui/a;

    :cond_255
    if-nez v5, :cond_25f

    if-nez v4, :cond_25b

    move-object v5, v10

    goto :goto_25f

    .line 5217
    :cond_25b
    invoke-virtual {v4}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v5

    .line 5221
    :cond_25f
    :goto_25f
    array-length v12, v1

    const/4 v13, 0x6

    if-ne v12, v13, :cond_266

    const/4 v12, 0x5

    .line 5222
    aget-object v1, v1, v12
    :try_end_266
    .catchall {:try_start_10a .. :try_end_266} :catchall_a1e

    :cond_266
    if-ne v2, v11, :cond_26a

    goto/16 :goto_a25

    :cond_26a
    move-object/from16 v1, p0

    .line 5229
    :try_start_26c
    invoke-virtual/range {v1 .. v8}, Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IEventCallback;[Ljava/lang/Object;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/core/ui/b;

    move-result-object v1
    :try_end_270
    .catch Ljava/lang/Exception; {:try_start_26c .. :try_end_270} :catch_272
    .catchall {:try_start_26c .. :try_end_270} :catchall_a1e

    goto/16 :goto_1d3

    :catch_272
    move-exception v0

    move-object v1, v0

    .line 5233
    :try_start_274
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_277
    .catchall {:try_start_274 .. :try_end_277} :catchall_a1e

    const-string v2, "winmgr"

    .line 5234
    :try_start_279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a25

    .line 5462
    :pswitch_28f
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 5463
    aget-object v2, v1, v12

    instance-of v2, v2, Lio/dcloud/common/core/ui/b;

    if-eqz v2, :cond_a25

    .line 5464
    aget-object v2, v1, v12

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 5465
    array-length v3, v1

    if-ge v3, v13, :cond_2a0

    goto :goto_2a8

    :cond_2a0
    aget-object v3, v1, v7

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    :goto_2a8
    if-eqz v11, :cond_2b0

    .line 5467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    .line 5472
    :cond_2b0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showWindow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5473
    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lio/dcloud/common/core/ui/l$d;

    invoke-direct {v5, v9, v2, v1}, Lio/dcloud/common/core/ui/l$d;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    goto/16 :goto_a25

    .line 3876
    :pswitch_2d8
    invoke-direct/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->a()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    goto/16 :goto_1d3

    .line 3877
    :pswitch_2de
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 3878
    aget-object v2, v1, v12

    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    .line 3879
    aget-object v3, v1, v11

    check-cast v3, Ljava/lang/String;

    .line 3880
    aget-object v4, v1, v7

    check-cast v4, Lio/dcloud/common/DHInterface/IWebviewStateListener;

    .line 3882
    array-length v5, v1

    if-le v5, v13, :cond_2fd

    .line 3883
    aget-object v5, v1, v13

    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2fd

    .line 3884
    aget-object v1, v1, v13

    check-cast v1, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    goto :goto_2fe

    :cond_2fd
    move-object v1, v10

    .line 3888
    :goto_2fe
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    .line 3889
    iget-object v5, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    .line 3890
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v6

    .line 3891
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/common/core/ui/a;

    .line 3893
    sget-object v6, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 3895
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v12

    aput-object v2, v8, v11

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v3, v2, v12

    aput-object v2, v8, v7

    aput-object v5, v8, v13

    aput-object v1, v8, v15

    .line 3896
    invoke-virtual {v9, v6, v13, v8}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 3900
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v4, :cond_33b

    .line 3902
    invoke-interface {v2, v4}, Lio/dcloud/common/DHInterface/IWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    const/4 v5, -0x1

    .line 3903
    invoke-interface {v4, v5, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3905
    :cond_33b
    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1d3

    .line 3910
    :pswitch_340
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 3911
    aget-object v2, v1, v12

    check-cast v2, Landroid/view/ViewGroup;

    .line 3912
    aget-object v3, v1, v11

    check-cast v3, Lio/dcloud/common/DHInterface/IApp;

    .line 3913
    aget-object v4, v1, v7

    check-cast v4, Lio/dcloud/common/DHInterface/IWebview;

    .line 3914
    aget-object v1, v1, v13

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 3915
    invoke-virtual {v9, v2, v3, v4, v1}, Lio/dcloud/common/core/ui/l;->a(Landroid/view/ViewGroup;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a25

    .line 2509
    :pswitch_358
    instance-of v1, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v1, :cond_368

    .line 2510
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 2511
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 2512
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_37a

    .line 2513
    :cond_368
    instance-of v1, v2, [Ljava/lang/Object;

    if-eqz v1, :cond_378

    .line 2514
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 2515
    aget-object v2, v1, v12

    check-cast v2, Landroid/app/Activity;

    .line 2516
    aget-object v1, v1, v11

    check-cast v1, Ljava/lang/String;

    goto :goto_37a

    :cond_378
    move-object v1, v10

    move-object v2, v1

    .line 2518
    :goto_37a
    iget-object v3, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2519
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2520
    :cond_386
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a25

    .line 2521
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2522
    invoke-static {v4, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_386

    .line 2523
    iget-object v5, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/core/ui/a;

    .line 2524
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-ne v2, v4, :cond_386

    .line 2525
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_a25

    .line 3035
    :pswitch_3aa
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 3036
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    .line 3038
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v1

    if-eqz v1, :cond_a25

    .line 3040
    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IActivityHandler;->setWebViewIntoPreloadView(Landroid/view/View;)V

    goto/16 :goto_a25

    .line 3154
    :pswitch_3c4
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 3155
    invoke-virtual {v9, v1}, Lio/dcloud/common/core/ui/l;->b(Lio/dcloud/common/core/ui/b;)V

    goto/16 :goto_a25

    .line 3156
    :pswitch_3cc
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 3157
    invoke-virtual {v9, v1}, Lio/dcloud/common/core/ui/l;->d(Lio/dcloud/common/core/ui/b;)V

    goto/16 :goto_a25

    :pswitch_3d4
    if-eqz v2, :cond_a25

    .line 3158
    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_a25

    .line 3159
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a25

    .line 3161
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v11

    const/4 v3, 0x0

    :goto_3e7
    if-ltz v2, :cond_44b

    .line 3162
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/core/ui/b;

    if-eqz v4, :cond_448

    .line 3164
    iget-object v5, v4, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v5}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v5

    .line 3165
    invoke-virtual {v5, v4}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42e

    .line 3166
    invoke-virtual {v4, v11}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onPushToStack(Z)V

    .line 3167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    iget-boolean v5, v4, Lio/dcloud/common/core/ui/b;->g:Z

    or-int/2addr v3, v5

    .line 3170
    iput-boolean v12, v4, Lio/dcloud/common/core/ui/b;->g:Z

    .line 3171
    iget-object v5, v4, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v5, v4}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 3173
    :cond_42e
    iput-boolean v11, v4, Lio/dcloud/common/core/ui/b;->i:Z

    .line 3174
    iput-boolean v12, v4, Lio/dcloud/common/core/ui/b;->h:Z

    .line 3175
    iput-boolean v11, v4, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    .line 3176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUTO_PUSH:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_448
    add-int/lit8 v2, v2, -0x1

    goto :goto_3e7

    :cond_44b
    if-eqz v3, :cond_a25

    .line 3180
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/b;

    iget-object v1, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    goto/16 :goto_a25

    .line 3187
    :pswitch_45a
    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_a25

    .line 3189
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v11

    :goto_464
    if-ltz v2, :cond_a25

    .line 3190
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/b;

    if-eqz v3, :cond_4e2

    .line 3191
    iget-object v5, v3, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    .line 3192
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e2

    .line 3193
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->checkITypeofAble()Z

    move-result v5

    if-nez v5, :cond_484

    iget-boolean v5, v3, Lio/dcloud/common/core/ui/b;->a:Z

    if-nez v5, :cond_4e2

    .line 3194
    :cond_484
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->isUniService()Z

    move-result v5

    if-eqz v5, :cond_48f

    goto :goto_4e2

    .line 3197
    :cond_48f
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->g()Z

    move-result v5

    invoke-virtual {v3, v5}, Lio/dcloud/common/core/ui/b;->onPopFromStack(Z)V

    .line 3198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3200
    iget-object v5, v3, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v5, v3}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 3201
    iget-object v5, v3, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v5}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 3202
    iput-boolean v12, v3, Lio/dcloud/common/core/ui/b;->i:Z

    .line 3203
    iput-boolean v11, v3, Lio/dcloud/common/core/ui/b;->h:Z

    .line 3204
    iput-boolean v12, v3, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    .line 3205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AUTO_POP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e2
    :goto_4e2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_464

    .line 3206
    :pswitch_4e6
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_a25

    .line 3208
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->l()V

    .line 3209
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->m()V

    goto/16 :goto_a25

    .line 3210
    :pswitch_4f3
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 3211
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 3212
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->dispose()V

    .line 3213
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    iget-object v1, v1, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a25

    .line 3421
    :pswitch_508
    instance-of v1, v2, Lio/dcloud/common/core/ui/b;

    if-eqz v1, :cond_510

    .line 3422
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    goto :goto_511

    :cond_510
    move-object v1, v10

    :goto_511
    if-nez v1, :cond_514

    return-object v10

    .line 3426
    :cond_514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideShowWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3430
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lio/dcloud/common/core/ui/l$e;

    invoke-direct {v4, v9, v1}, Lio/dcloud/common/core/ui/l$e;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v2, v3, v4}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    goto/16 :goto_a25

    .line 3496
    :pswitch_53c
    instance-of v1, v2, Lio/dcloud/common/core/ui/b;

    if-eqz v1, :cond_544

    .line 3497
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    goto :goto_545

    :cond_544
    move-object v1, v10

    :goto_545
    if-nez v1, :cond_548

    return-object v10

    .line 3500
    :cond_548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3502
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lio/dcloud/common/core/ui/l$f;

    invoke-direct {v4, v9, v1}, Lio/dcloud/common/core/ui/l$f;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v2, v3, v4}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    goto/16 :goto_a25

    :pswitch_570
    if-eqz v2, :cond_a25

    .line 3698
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    if-eqz v1, :cond_5b6

    .line 3699
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    .line 3700
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b6

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->isUniService()Z

    move-result v2

    if-nez v2, :cond_5b6

    .line 3701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUnParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3702
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/b;->onPopFromStack(Z)V

    .line 3703
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2, v1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 3704
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 3706
    :cond_5b6
    iput-boolean v12, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    .line 3707
    iput-boolean v12, v1, Lio/dcloud/common/core/ui/b;->h:Z

    goto/16 :goto_a25

    .line 5453
    :pswitch_5bc
    instance-of v3, v2, Lio/dcloud/common/core/ui/b;

    if-eqz v3, :cond_5c3

    .line 5454
    check-cast v2, Lio/dcloud/common/core/ui/b;

    goto :goto_5c4

    :cond_5c3
    move-object v2, v10

    :goto_5c4
    if-nez v2, :cond_5c7

    return-object v10

    .line 5460
    :cond_5c7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeWindow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5461
    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lio/dcloud/common/core/ui/l$g;

    invoke-direct {v5, v9, v2, v1}, Lio/dcloud/common/core/ui/l$g;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;I)V

    invoke-virtual {v3, v4, v5}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1d3

    .line 3708
    :pswitch_5f0
    sget-boolean v1, Lio/dcloud/feature/internal/sdk/SDK;->isEnableBackground:Z

    xor-int/2addr v1, v11

    .line 3709
    instance-of v4, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v4, :cond_601

    .line 3710
    move-object v3, v2

    check-cast v3, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/a;

    goto :goto_653

    .line 3711
    :cond_601
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_611

    .line 3712
    iget-object v3, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/a;

    goto :goto_653

    .line 3713
    :cond_611
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_652

    .line 3714
    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    .line 3715
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3716
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_625

    return-object v10

    .line 3719
    :cond_625
    iget-object v5, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/core/ui/a;

    const-string v5, "isStopApp"

    .line 3720
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3721
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_650

    if-eqz v5, :cond_650

    .line 3722
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3723
    iget-object v3, v4, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->setQuitModel(I)V

    :cond_650
    move v1, v5

    goto :goto_654

    :cond_652
    move-object v3, v10

    :goto_653
    move-object v4, v3

    .line 3728
    :goto_654
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v3

    if-eqz v3, :cond_666

    if-nez v1, :cond_666

    if-eqz v4, :cond_665

    .line 3730
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_665
    return-object v10

    :cond_666
    if-eqz v4, :cond_670

    .line 3736
    iget-object v1, v4, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IApp;->setStatus(B)V

    .line 3737
    iput-boolean v12, v4, Lio/dcloud/common/core/ui/a;->h:Z

    .line 3740
    :cond_670
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xa

    invoke-virtual {v9, v1, v3, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a25

    .line 1655
    :pswitch_679
    instance-of v1, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v1, :cond_a25

    .line 1656
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_a25

    .line 1659
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->f()Lio/dcloud/common/core/ui/b;

    move-result-object v3

    if-eqz v3, :cond_6a5

    .line 1660
    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {v9, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v2

    if-eqz v2, :cond_6a5

    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_6a5

    .line 1661
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkPreLoadJsContent()V

    :cond_6a5
    const/4 v2, 0x5

    .line 1665
    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/a;->a(I)Lio/dcloud/common/core/ui/b;

    move-result-object v1

    if-eqz v1, :cond_a25

    .line 1666
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_a25

    .line 1667
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkPreLoadJsContent()V

    goto/16 :goto_a25

    .line 1677
    :pswitch_6bd
    instance-of v1, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v1, :cond_a25

    .line 1678
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 1680
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->f()Lio/dcloud/common/core/ui/b;

    move-result-object v2

    if-eqz v2, :cond_6df

    .line 1681
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    if-eqz v3, :cond_6df

    .line 1682
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkInjectSitemap()V

    .line 1686
    :cond_6df
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->g()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    if-eqz v1, :cond_a25

    .line 1687
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_a25

    .line 1688
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkInjectSitemap()V

    goto/16 :goto_a25

    .line 1697
    :pswitch_6f6
    instance-of v1, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v1, :cond_a25

    .line 1698
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 1699
    move-object v3, v2

    check-cast v3, Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {v9, v3}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v3

    if-eqz v3, :cond_711

    .line 1700
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->f()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    goto :goto_716

    :cond_711
    const/4 v3, 0x5

    .line 1702
    invoke-virtual {v1, v3}, Lio/dcloud/common/core/ui/a;->a(I)Lio/dcloud/common/core/ui/b;

    move-result-object v1

    .line 1704
    :goto_716
    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    sget-object v3, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1705
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "NWindow"

    .line 1707
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v4, "setStyle"

    .line 1708
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1710
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1711
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1713
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1714
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1715
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1717
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1720
    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    aput-object v1, v4, v12

    const-string v1, "UI"

    aput-object v1, v4, v11

    const-string v1, "execMethod"

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    aput-object v3, v4, v1

    invoke-virtual {v9, v2, v11, v4}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a25

    .line 2371
    :pswitch_763
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2372
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_a25

    .line 2374
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->g()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    goto/16 :goto_1d3

    .line 2375
    :pswitch_777
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2376
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_a25

    .line 2378
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->f()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    goto/16 :goto_1d3

    .line 2477
    :pswitch_78b
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 2478
    aget-object v2, v1, v12

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 2479
    aget-object v1, v1, v11

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 2480
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v3

    if-eqz v3, :cond_7ae

    .line 2481
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v11}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    .line 2482
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v11}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    .line 2484
    :cond_7ae
    iget-wide v3, v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    .line 2485
    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v3

    .line 2486
    iget-object v4, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v4}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/ArrayList;

    move-result-object v4

    .line 2487
    invoke-virtual {v3, v2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 2488
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2489
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2490
    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2491
    iget-object v1, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lio/dcloud/common/core/ui/l$h;

    invoke-direct {v4, v9, v2}, Lio/dcloud/common/core/ui/l$h;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v1, v3, v4}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    goto/16 :goto_a25

    .line 2492
    :pswitch_7e2
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 2493
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 2494
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    goto/16 :goto_1d3

    .line 2495
    :pswitch_7f7
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 2496
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    iget-object v1, v1, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    goto/16 :goto_1d3

    .line 2500
    :pswitch_804
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 2501
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    iget-object v3, v2, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    if-ne v1, v3, :cond_a25

    .line 2502
    iput-object v10, v2, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    goto/16 :goto_a25

    .line 2508
    :pswitch_811
    invoke-direct {v9, v1, v2}, Lio/dcloud/common/core/ui/l;->b(ILjava/lang/Object;)V

    goto/16 :goto_a25

    .line 899
    :pswitch_816
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 900
    aget-object v2, v1, v12

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    .line 901
    aget-object v1, v1, v11

    check-cast v1, Landroid/os/Bundle;

    .line 902
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v3, :cond_a25

    .line 903
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/IActivityHandler;

    const-string v3, "unimp_capsule_button_click"

    invoke-interface {v2, v3, v1}, Lio/dcloud/common/DHInterface/IActivityHandler;->callBack(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_a25

    :pswitch_836
    if-eqz v2, :cond_a25

    .line 934
    move-object v1, v2

    check-cast v1, Landroid/os/Bundle;

    .line 936
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 937
    iget-object v3, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/a;

    if-eqz v3, :cond_a25

    .line 939
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v3

    if-eqz v3, :cond_a25

    .line 942
    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 943
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    aput-object v3, v5, v12

    const-string v3, "ui"

    aput-object v3, v5, v11

    const-string v3, "findWebview"

    const/4 v6, 0x2

    aput-object v3, v5, v6

    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v12

    const-string v2, "__uniapp__service"

    aput-object v2, v3, v11

    const/4 v2, 0x3

    aput-object v3, v5, v2

    const/16 v2, 0xa

    .line 944
    invoke-virtual {v9, v4, v2, v5}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a25

    .line 946
    instance-of v3, v2, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v3, :cond_a25

    .line 947
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "dataType"

    .line 948
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "JSON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_88b
    .catchall {:try_start_279 .. :try_end_88b} :catchall_a1e

    const-string v5, "data"

    if-eqz v4, :cond_89b

    .line 949
    :try_start_88f
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 950
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a2

    .line 952
    :cond_89b
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a2
    .catchall {:try_start_88f .. :try_end_8a2} :catchall_a1e

    :goto_8a2
    const-string v4, "event"

    :try_start_8a4
    const-string v5, "event"

    .line 954
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    new-instance v1, Lio/dcloud/common/adapter/util/EventActionInfo;

    const-string v4, "uniMPNativeEvent"

    invoke-direct {v1, v4, v3}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 956
    check-cast v2, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v2, v1}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->fireEvent(Lio/dcloud/common/adapter/util/EventActionInfo;)V

    goto/16 :goto_a25

    :pswitch_8bb
    if-eqz v2, :cond_a25

    .line 957
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 958
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 959
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    if-eqz v1, :cond_8d8

    .line 960
    instance-of v2, v1, Lio/dcloud/common/core/ui/c;

    if-eqz v2, :cond_8d8

    .line 961
    check-cast v1, Lio/dcloud/common/core/ui/c;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/c;->u()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    :cond_8d8
    if-eqz v1, :cond_a25

    .line 964
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mUniPageUrl:Lorg/json/JSONObject;

    if-eqz v2, :cond_a25

    .line 965
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->mUniPageUrl:Lorg/json/JSONObject;

    if-eqz v1, :cond_a25

    const-string v2, "path"

    .line 967
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 968
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a25

    .line 969
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 970
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a25

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_a25

    :pswitch_916
    if-eqz v2, :cond_a25

    .line 972
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 973
    aget-object v2, v1, v12

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    .line 974
    aget-object v1, v1, v11

    check-cast v1, Landroid/os/Bundle;

    .line 975
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v3, :cond_a25

    .line 976
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/IActivityHandler;

    const-string v3, "TITLE_BAR_MENU_CLICK"

    invoke-interface {v2, v3, v1}, Lio/dcloud/common/DHInterface/IActivityHandler;->callBack(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_a25

    .line 977
    :pswitch_938
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 978
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/a;

    .line 979
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v2

    if-eqz v2, :cond_957

    .line 980
    instance-of v3, v2, Lio/dcloud/common/core/ui/c;

    if-eqz v3, :cond_957

    .line 981
    check-cast v2, Lio/dcloud/common/core/ui/c;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/c;->u()Lio/dcloud/common/core/ui/b;

    move-result-object v2
    :try_end_957
    .catchall {:try_start_8a4 .. :try_end_957} :catchall_a1e

    :cond_957
    const-string v3, "uni_restart_to_direct"

    if-eqz v2, :cond_97b

    .line 983
    :try_start_95b
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iget-object v4, v4, Lio/dcloud/common/adapter/util/ViewOptions;->mDebugRefresh:Lorg/json/JSONObject;
    :try_end_961
    .catchall {:try_start_95b .. :try_end_961} :catchall_a1e

    if-eqz v4, :cond_97b

    const-string v4, "debugRefresh"

    .line 984
    :try_start_965
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mDebugRefresh:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a25

    .line 987
    :cond_97b
    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a25

    .line 1633
    :pswitch_984
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 1634
    aget-object v1, v1, v12

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 1635
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 1636
    invoke-virtual {v2}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v3

    if-eqz v3, :cond_9a3

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/common/adapter/util/ViewOptions;->isTabHasBg()Z

    move-result v3

    if-eqz v3, :cond_9a7

    .line 1637
    :cond_9a3
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 1639
    :cond_9a7
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v3

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v1, v2, v1, v3, v4}, Lio/dcloud/common/core/ui/b;->b(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    goto/16 :goto_a25

    .line 1640
    :pswitch_9b6
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 1641
    aget-object v1, v1, v12

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 1642
    invoke-direct {v9, v1, v11}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;Z)V

    goto :goto_a25

    .line 1643
    :pswitch_9c1
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 1644
    aget-object v2, v1, v12

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 1645
    aget-object v1, v1, v11

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 1646
    invoke-direct {v9, v2, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V

    goto :goto_a25

    .line 1647
    :pswitch_9d0
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 1648
    aget-object v2, v1, v12

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 1649
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v3

    iget-boolean v3, v3, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    .line 1650
    aget-object v4, v1, v11

    check-cast v4, Lorg/json/JSONObject;

    const/4 v5, 0x2

    .line 1651
    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/String;

    .line 1652
    invoke-direct {v9, v2, v3, v4, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;ZLorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_a25

    .line 1653
    :pswitch_9ee
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/l$m;

    invoke-virtual {v9, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/l$m;)V

    goto :goto_a25

    .line 1654
    :pswitch_9f5
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->c()V

    goto :goto_a25

    .line 5474
    :cond_9f9
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 5475
    aget-object v2, v1, v12

    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    aget-object v3, v1, v12

    check-cast v3, Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {v9, v3}, Lio/dcloud/common/core/ui/l;->b(Lio/dcloud/common/DHInterface/IApp;)Lio/dcloud/common/core/ui/b;

    move-result-object v3

    iget-object v3, v3, Lio/dcloud/common/core/ui/b;->l:Lio/dcloud/common/adapter/ui/AdaWebview;

    aget-object v1, v1, v11

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v9, v2, v3, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    goto :goto_a25

    .line 6287
    :cond_a12
    invoke-direct/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->obtainMainViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/TestUtil;->debug(Landroid/view/ViewGroup;)V
    :try_end_a1d
    .catchall {:try_start_965 .. :try_end_a1d} :catchall_a1e

    goto :goto_a25

    :catchall_a1e
    move-exception v0

    move-object v1, v0

    const-string v2, "WindowMgr.processEvent"

    .line 6435
    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a25
    :goto_a25
    return-object v10

    :pswitch_data_a26
    .packed-switch 0x1
        :pswitch_28f
        :pswitch_5bc
        :pswitch_1f1
        :pswitch_1db
        :pswitch_1d6
        :pswitch_1b7
        :pswitch_cd
        :pswitch_91
        :pswitch_6f
        :pswitch_1d6
        :pswitch_65
        :pswitch_5c
        :pswitch_53
        :pswitch_46
    .end packed-switch

    :pswitch_data_a46
    .packed-switch 0x10
        :pswitch_340
        :pswitch_2de
        :pswitch_2d8
    .end packed-switch

    :pswitch_data_a50
    .packed-switch 0x14
        :pswitch_5f0
        :pswitch_5bc
        :pswitch_570
        :pswitch_53c
        :pswitch_508
        :pswitch_4f3
        :pswitch_4e6
        :pswitch_45a
        :pswitch_3d4
        :pswitch_3cc
        :pswitch_3c4
        :pswitch_3aa
        :pswitch_358
    .end packed-switch

    :pswitch_data_a6e
    .packed-switch 0x29
        :pswitch_811
        :pswitch_804
        :pswitch_7f7
        :pswitch_7e2
        :pswitch_78b
        :pswitch_777
        :pswitch_763
        :pswitch_6f6
        :pswitch_6bd
        :pswitch_679
    .end packed-switch

    :pswitch_data_a86
    .packed-switch 0x46
        :pswitch_9f5
        :pswitch_9ee
        :pswitch_9d0
        :pswitch_9c1
        :pswitch_9b6
        :pswitch_984
        :pswitch_938
        :pswitch_916
        :pswitch_8bb
        :pswitch_836
        :pswitch_816
    .end packed-switch
.end method

###### Class io.dcloud.common.core.ui.l.a (io.dcloud.common.core.ui.l$a)
.class Lio/dcloud/common/core/ui/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IEventCallback;[Ljava/lang/Object;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/core/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Lio/dcloud/common/core/ui/a;

.field final synthetic d:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$a;->d:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$a;->a:Lio/dcloud/common/core/ui/b;

    iput-object p3, p0, Lio/dcloud/common/core/ui/l$a;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p4, p0, Lio/dcloud/common/core/ui/l$a;->c:Lio/dcloud/common/core/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string p2, "close"

    .line 1
    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 3
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$a;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$a;->d:Lio/dcloud/common/core/ui/l;

    iget-object p2, p0, Lio/dcloud/common/core/ui/l$a;->b:Lio/dcloud/common/DHInterface/IApp;

    iget-object v0, p0, Lio/dcloud/common/core/ui/l$a;->c:Lio/dcloud/common/core/ui/a;

    invoke-static {p1, p2, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.common.core.ui.l.b (io.dcloud.common.core.ui.l$b)
.class Lio/dcloud/common/core/ui/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IWebviewStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IEventCallback;[Ljava/lang/Object;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/core/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Lio/dcloud/common/core/ui/b;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lio/dcloud/common/adapter/ui/AdaWebview;

.field final synthetic h:Lio/dcloud/common/core/ui/a;

.field final synthetic i:I

.field final synthetic j:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/b;ZZLjava/lang/String;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/core/ui/a;I)V
    .registers 10

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$b;->j:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/common/core/ui/l$b;->c:Lio/dcloud/common/core/ui/b;

    iput-boolean p4, p0, Lio/dcloud/common/core/ui/l$b;->d:Z

    iput-boolean p5, p0, Lio/dcloud/common/core/ui/l$b;->e:Z

    iput-object p6, p0, Lio/dcloud/common/core/ui/l$b;->f:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/core/ui/l$b;->g:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-object p8, p0, Lio/dcloud/common/core/ui/l$b;->h:Lio/dcloud/common/core/ui/a;

    iput p9, p0, Lio/dcloud/common/core/ui/l$b;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/l$b;->a:Z

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$b;->j:Lio/dcloud/common/core/ui/l;

    iget-object v2, v2, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    const-string v3, "titleUpdate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-eqz v2, :cond_15

    const/4 v2, 0x4

    goto :goto_24

    .line 3
    :cond_15
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$b;->j:Lio/dcloud/common/core/ui/l;

    iget-object v2, v2, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    const-string v6, "rendering"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x6

    goto :goto_24

    :cond_23
    const/4 v2, 0x1

    :goto_24
    const/4 v6, 0x3

    if-ne v1, v6, :cond_89

    .line 7
    iget-boolean v6, v0, Lio/dcloud/common/core/ui/l$b;->a:Z

    if-nez v6, :cond_89

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x32

    if-lt v7, v8, :cond_89

    .line 8
    iput-boolean v4, v0, Lio/dcloud/common/core/ui/l$b;->a:Z

    .line 9
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".streamdownload.downloadfinish."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v8, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "appid"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v8, "progress"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "flag"

    const-string v8, "direct_page_progressed"

    .line 13
    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object v6, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_89
    const/4 v6, 0x0

    if-ne v1, v4, :cond_ad

    .line 19
    iget-object v4, v0, Lio/dcloud/common/core/ui/l$b;->c:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_9b

    .line 20
    iget-object v4, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->checkOrLoadlaunchWebview()V

    goto :goto_ad

    .line 21
    :cond_9b
    iget-object v4, v0, Lio/dcloud/common/core/ui/l$b;->c:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v4

    if-ne v4, v5, :cond_ad

    .line 22
    new-instance v4, Lio/dcloud/common/core/ui/l$b$a;

    invoke-direct {v4, v0}, Lio/dcloud/common/core/ui/l$b$a;-><init>(Lio/dcloud/common/core/ui/l$b;)V

    const-wide/16 v7, 0xbb8

    invoke-static {v4, v7, v8, v6}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V

    :cond_ad
    :goto_ad
    if-ne v1, v2, :cond_10b

    .line 36
    iget-boolean v2, v0, Lio/dcloud/common/core/ui/l$b;->d:Z

    if-eqz v2, :cond_10b

    const/16 v12, 0x44c

    .line 38
    iget-boolean v2, v0, Lio/dcloud/common/core/ui/l$b;->e:Z

    if-nez v2, :cond_db

    iget-object v2, v0, Lio/dcloud/common/core/ui/l$b;->f:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    if-eq v1, v5, :cond_db

    if-ne v1, v3, :cond_c6

    goto :goto_db

    .line 45
    :cond_c6
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    const-string v2, "timeout"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v8, v0, Lio/dcloud/common/core/ui/l$b;->h:Lio/dcloud/common/core/ui/a;

    iget-object v9, v0, Lio/dcloud/common/core/ui/l$b;->c:Lio/dcloud/common/core/ui/b;

    iget v10, v0, Lio/dcloud/common/core/ui/l$b;->i:I

    const/4 v11, 0x1

    move-object v7, v8

    invoke-virtual/range {v7 .. v12}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;IZI)V

    goto :goto_10b

    .line 47
    :cond_db
    :goto_db
    iget-boolean v2, v0, Lio/dcloud/common/core/ui/l$b;->e:Z

    if-nez v2, :cond_ed

    if-ne v1, v5, :cond_e6

    const/16 v12, 0x4b0

    const/16 v21, 0x4b0

    goto :goto_ef

    :cond_e6
    if-ne v1, v3, :cond_ed

    const/16 v12, 0x514

    const/16 v21, 0x514

    goto :goto_ef

    :cond_ed
    const/16 v21, 0x44c

    .line 50
    :goto_ef
    iget-object v13, v0, Lio/dcloud/common/core/ui/l$b;->j:Lio/dcloud/common/core/ui/l;

    const/4 v1, 0x0

    iput-boolean v1, v13, Lio/dcloud/common/core/ui/l;->f:Z

    .line 51
    iget-object v14, v0, Lio/dcloud/common/core/ui/l$b;->g:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v15, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iget-object v1, v0, Lio/dcloud/common/core/ui/l$b;->h:Lio/dcloud/common/core/ui/a;

    iget-object v3, v0, Lio/dcloud/common/core/ui/l$b;->c:Lio/dcloud/common/core/ui/b;

    iget v4, v0, Lio/dcloud/common/core/ui/l$b;->i:I

    const/16 v18, 0x1

    move/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-virtual/range {v13 .. v21}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;ZLio/dcloud/common/core/ui/a;ILio/dcloud/common/core/ui/b;II)V

    :cond_10b
    :goto_10b
    return-object v6
.end method

###### Class io.dcloud.common.core.ui.l.b.a (io.dcloud.common.core.ui.l$b$a)
.class Lio/dcloud/common/core/ui/l$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l$b;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/l$b;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$b$a;->a:Lio/dcloud/common/core/ui/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$b$a;->a:Lio/dcloud/common/core/ui/l$b;

    iget-object p1, p1, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/core/ui/a;

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/a;->a(I)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    if-nez p1, :cond_18

    .line 6
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$b$a;->a:Lio/dcloud/common/core/ui/l$b;

    iget-object p1, p1, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->checkOrLoadlaunchWebview()V

    :cond_18
    return-void
.end method

###### Class io.dcloud.common.core.ui.l.c (io.dcloud.common.core.ui.l$c)
.class Lio/dcloud/common/core/ui/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/DHInterface/IApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/adapter/ui/AdaFrameItem;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/adapter/ui/AdaFrameItem;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/common/core/ui/l$c;->a:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$c;->a:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->changeWebParentViewRect()V

    return-void
.end method

###### Class io.dcloud.common.core.ui.l.d (io.dcloud.common.core.ui.l$d)
.class Lio/dcloud/common/core/ui/l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;[Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lio/dcloud/common/core/ui/l$d;->a:Lio/dcloud/common/core/ui/b;

    iput-object p3, p0, Lio/dcloud/common/core/ui/l$d;->b:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$d;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean p1, p1, Lio/dcloud/common/core/ui/b;->q:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    return-object p2

    .line 2
    :cond_8
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$d;->b:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$d;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/b;->c(Z)V

    return-object p2
.end method

###### Class io.dcloud.common.core.ui.l.e (io.dcloud.common.core.ui.l$e)
.class Lio/dcloud/common/core/ui/l$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lio/dcloud/common/core/ui/b;->setVisible(ZZ)V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->p()V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    .line 4
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object p1, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->l()V

    .line 7
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v1, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v1, :cond_5b

    const-string p1, "computeStackArray"

    .line 8
    invoke-static {p1}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2, v1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 10
    iget-object v1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->isAutoPop()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onPushToStack(Z)V

    const-string v1, "\u8ba1\u7b97\u6ee1\u5c4f\u5e55\u65f6\u95f4"

    .line 11
    invoke-static {p1, v1}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object p1, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object p1

    iget-object v1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    .line 14
    invoke-virtual {p1, v1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    .line 16
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object v1, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    .line 17
    invoke-virtual {v1, p1}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    goto :goto_68

    .line 21
    :cond_53
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object p1, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->m()V

    goto :goto_68

    .line 24
    :cond_5b
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 25
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object v1, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1, p1}, Lio/dcloud/common/core/ui/a;->h(Lio/dcloud/common/core/ui/b;)V

    .line 28
    :cond_68
    :goto_68
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v1, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v1, :cond_d9

    .line 29
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p1

    .line 30
    iget-object v1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1, p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    .line 31
    iget-object v2, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-ne p1, v2, :cond_95

    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    add-int/2addr p1, p2

    if-ge p1, v1, :cond_ac

    :cond_95
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_ab

    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne p1, v1, :cond_ab

    goto :goto_ac

    :cond_ab
    const/4 p2, 0x0

    :cond_ac
    :goto_ac
    if-eqz p2, :cond_b3

    .line 34
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-static {p1, v0}, Lio/dcloud/common/core/ui/i;->a(Lio/dcloud/common/core/ui/b;I)V

    .line 37
    :cond_b3
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string p2, "none"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 38
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 39
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->m()V

    goto :goto_fc

    .line 41
    :cond_ce
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->s()V

    .line 42
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto :goto_fc

    .line 46
    :cond_d9
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string p2, "fade-in"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f2

    .line 47
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->s()V

    .line 48
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto :goto_fc

    .line 50
    :cond_f2
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 51
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->m()V

    .line 54
    :goto_fc
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object p2, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2, p1}, Lio/dcloud/common/core/ui/a;->i(Lio/dcloud/common/core/ui/b;)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.common.core.ui.l.f (io.dcloud.common.core.ui.l$f)
.class Lio/dcloud/common/core/ui/l$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$f;->b:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    iget-object p2, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2, p1}, Lio/dcloud/common/core/ui/a;->c(Lio/dcloud/common/core/ui/b;)I

    move-result p1

    .line 2
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->p()V

    .line 4
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    sget v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->VISIBLE:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1f

    const/4 p2, 0x1

    goto :goto_20

    :cond_1f
    const/4 p2, 0x0

    .line 6
    :goto_20
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v3, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_d2

    if-eqz p2, :cond_d2

    iget-boolean p2, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez p2, :cond_d2

    .line 10
    iget-object p2, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2, v0}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 11
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->e()Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 12
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->b:Lio/dcloud/common/core/ui/l;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    iget-object v3, v3, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    const/16 v5, 0x1c

    invoke-virtual {p2, v0, v5, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    iput-object v4, p2, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    .line 16
    :cond_4b
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-interface {p2, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p2

    .line 17
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    .line 18
    iget-object v3, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    iget v3, v3, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-ne p2, v3, :cond_74

    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    add-int/2addr p2, v2

    if-ge p2, v0, :cond_89

    :cond_74
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8a

    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne p2, v0, :cond_8a

    :cond_89
    const/4 v1, 0x1

    .line 20
    :cond_8a
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    iget-object p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    const-string v0, "none"

    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a0

    sget-boolean p2, Lio/dcloud/common/util/BaseInfo;->isDefaultAim:Z

    if-eqz p2, :cond_c2

    if-eqz v1, :cond_c2

    :cond_a0
    if-ltz p1, :cond_c2

    .line 22
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->s()V

    if-eqz v1, :cond_bc

    .line 24
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_bc

    .line 25
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-static {p1, v2}, Lio/dcloud/common/core/ui/i;->a(Lio/dcloud/common/core/ui/b;I)V

    .line 28
    :cond_bc
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, v2}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto :goto_df

    .line 30
    :cond_c2
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 31
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->l()V

    .line 32
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->k()V

    goto :goto_df

    .line 36
    :cond_d2
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 37
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->l()V

    .line 38
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->k()V

    :goto_df
    return-object v4
.end method

###### Class io.dcloud.common.core.ui.l.g (io.dcloud.common.core.ui.l$g)
.class Lio/dcloud/common/core/ui/l$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:I

.field final synthetic c:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iput p3, p0, Lio/dcloud/common/core/ui/l$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-object p2, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2, p1}, Lio/dcloud/common/core/ui/a;->c(Lio/dcloud/common/core/ui/b;)I

    move-result p1

    .line 2
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->p()V

    .line 3
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-object v0, p2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, p2}, Lio/dcloud/common/core/ui/a;->d(Lio/dcloud/common/core/ui/b;)Z

    move-result p2

    const/16 v0, 0x2a

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_87

    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-object v5, p2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    iget-boolean v5, v5, Lio/dcloud/common/core/ui/a;->o:Z

    if-nez v5, :cond_26

    goto :goto_87

    .line 40
    :cond_26
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->r()V

    .line 42
    iget p2, p0, Lio/dcloud/common/core/ui/l$g;->b:I

    if-ne p2, v2, :cond_61

    .line 43
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v2, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    if-eqz v2, :cond_4c

    .line 44
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    const-string v2, "zoom-fade-in"

    iput-object v2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    .line 45
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->s()V

    .line 46
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2, v4}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto :goto_4f

    .line 48
    :cond_4c
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->i()V

    .line 50
    :goto_4f
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result p2

    if-ne p2, v1, :cond_66

    .line 51
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2, v1, v0, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    .line 54
    :cond_61
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->i()V

    .line 57
    :cond_66
    :goto_66
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0xd

    invoke-virtual {p2, v0, v1, p1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_138

    .line 59
    iget-object v1, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2, p1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_13a

    .line 61
    :cond_87
    :goto_87
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v5, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    .line 70
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_97

    const/4 p2, 0x1

    goto :goto_98

    :cond_97
    const/4 p2, 0x0

    .line 71
    :goto_98
    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    invoke-interface {v5, v3}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v5

    .line 72
    iget-object v6, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    invoke-interface {v6, v4}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v6

    .line 73
    iget-object v7, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    iget v7, v7, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-ne v5, v7, :cond_c1

    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    add-int/2addr v5, v4

    if-ge v5, v6, :cond_d6

    :cond_c1
    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_d8

    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne v5, v6, :cond_d8

    :cond_d6
    const/4 v5, 0x1

    goto :goto_d9

    :cond_d8
    const/4 v5, 0x0

    :goto_d9
    const-string v6, "none"

    if-ltz p1, :cond_f2

    if-eqz v5, :cond_f2

    .line 74
    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v5

    iget-object v5, v5, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    invoke-static {v5, v6}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f2

    .line 76
    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-static {v5, v4}, Lio/dcloud/common/core/ui/i;->a(Lio/dcloud/common/core/ui/b;I)V

    .line 80
    :cond_f2
    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->r()V

    .line 81
    iget v5, p0, Lio/dcloud/common/core/ui/l$g;->b:I

    if-ne v5, v2, :cond_133

    if-ltz p1, :cond_133

    .line 82
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v2, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    if-eqz v2, :cond_11c

    if-eqz p2, :cond_11c

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    invoke-static {p1, v6}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11c

    .line 83
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->s()V

    .line 84
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, v4}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto :goto_121

    .line 86
    :cond_11c
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->i()V

    .line 88
    :goto_121
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result p1

    if-ne p1, v1, :cond_138

    .line 89
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, p2, v0, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_138

    .line 92
    :cond_133
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->i()V

    :cond_138
    :goto_138
    const-string p1, "true"

    .line 123
    :goto_13a
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iput-boolean v3, p2, Lio/dcloud/common/core/ui/b;->i:Z

    .line 124
    iput-boolean v3, p2, Lio/dcloud/common/core/ui/b;->h:Z

    .line 125
    iput-boolean v3, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    return-object p1
.end method

###### Class io.dcloud.common.core.ui.l.h (io.dcloud.common.core.ui.l$h)
.class Lio/dcloud/common/core/ui/l$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/common/core/ui/l$h;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$h;->a:Lio/dcloud/common/core/ui/b;

    iget-object p2, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2, p1}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$h;->a:Lio/dcloud/common/core/ui/b;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lio/dcloud/common/core/ui/b;->setVisible(ZZ)V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$h;->a:Lio/dcloud/common/core/ui/b;

    iget-object p1, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->j()V

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

###### Class io.dcloud.common.core.ui.l.i (io.dcloud.common.core.ui.l$i)
.class Lio/dcloud/common/core/ui/l$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IWebviewStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic e:Lio/dcloud/common/core/ui/a;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic h:I

.field final synthetic i:Lio/dcloud/common/core/ui/b;

.field final synthetic j:I

.field final synthetic k:J

.field final synthetic l:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Ljava/lang/String;ZLio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;ILio/dcloud/common/core/ui/b;IJ)V
    .registers 13

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$i;->l:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$i;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lio/dcloud/common/core/ui/l$i;->c:Z

    iput-object p4, p0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    iput-object p5, p0, Lio/dcloud/common/core/ui/l$i;->e:Lio/dcloud/common/core/ui/a;

    iput-object p6, p0, Lio/dcloud/common/core/ui/l$i;->f:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/core/ui/l$i;->g:Lio/dcloud/common/DHInterface/IWebview;

    iput p8, p0, Lio/dcloud/common/core/ui/l$i;->h:I

    iput-object p9, p0, Lio/dcloud/common/core/ui/l$i;->i:Lio/dcloud/common/core/ui/b;

    iput p10, p0, Lio/dcloud/common/core/ui/l$i;->j:I

    iput-wide p11, p0, Lio/dcloud/common/core/ui/l$i;->k:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/l$i;->a:Z

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lio/dcloud/common/core/ui/l$i;->l:Lio/dcloud/common/core/ui/l;

    iget-object v3, v3, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    const-string v4, "titleUpdate"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v3, :cond_17

    const/4 v3, 0x4

    goto :goto_26

    .line 3
    :cond_17
    iget-object v3, v0, Lio/dcloud/common/core/ui/l$i;->l:Lio/dcloud/common/core/ui/l;

    iget-object v3, v3, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    const-string v7, "rendering"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x6

    goto :goto_26

    :cond_25
    const/4 v3, 0x1

    .line 6
    :goto_26
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autoCloseSplash4LaunchWebview  IWebviewStateListener pType= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";pArgs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Main_Path"

    invoke-static {v8, v7}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v3, :cond_122

    .line 8
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$i;->b:Ljava/lang/String;

    const-string v3, "id:*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5f

    iget-boolean v2, v0, Lio/dcloud/common/core/ui/l$i;->c:Z

    if-eqz v2, :cond_5f

    .line 10
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$i;->l:Lio/dcloud/common/core/ui/l;

    iget-object v4, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    iget-object v5, v0, Lio/dcloud/common/core/ui/l$i;->e:Lio/dcloud/common/core/ui/a;

    invoke-static {v2, v4, v5}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V

    goto :goto_bd

    .line 11
    :cond_5f
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$i;->b:Ljava/lang/String;

    const-string v7, "default"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    iget-boolean v2, v0, Lio/dcloud/common/core/ui/l$i;->c:Z

    if-eqz v2, :cond_bd

    const/16 v12, 0x44c

    .line 13
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$i;->f:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a9

    if-eq v1, v5, :cond_7b

    if-ne v1, v4, :cond_a9

    :cond_7b
    if-ne v1, v5, :cond_82

    const/16 v12, 0x4b0

    const/16 v21, 0x4b0

    goto :goto_8b

    :cond_82
    if-ne v1, v4, :cond_89

    const/16 v12, 0x514

    const/16 v21, 0x514

    goto :goto_8b

    :cond_89
    const/16 v21, 0x44c

    .line 15
    :goto_8b
    iget-object v13, v0, Lio/dcloud/common/core/ui/l$i;->l:Lio/dcloud/common/core/ui/l;

    iput-boolean v3, v13, Lio/dcloud/common/core/ui/l;->f:Z

    .line 16
    iget-object v14, v0, Lio/dcloud/common/core/ui/l$i;->g:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v15, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    iget-object v2, v0, Lio/dcloud/common/core/ui/l$i;->e:Lio/dcloud/common/core/ui/a;

    iget v4, v0, Lio/dcloud/common/core/ui/l$i;->h:I

    iget-object v5, v0, Lio/dcloud/common/core/ui/l$i;->i:Lio/dcloud/common/core/ui/b;

    iget v7, v0, Lio/dcloud/common/core/ui/l$i;->j:I

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v7

    invoke-virtual/range {v13 .. v21}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;ZLio/dcloud/common/core/ui/a;ILio/dcloud/common/core/ui/b;II)V

    goto :goto_bd

    .line 18
    :cond_a9
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    const-string v4, "timeout"

    const-string v5, "-1"

    invoke-interface {v2, v4, v5}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v8, v0, Lio/dcloud/common/core/ui/l$i;->e:Lio/dcloud/common/core/ui/a;

    iget-object v9, v0, Lio/dcloud/common/core/ui/l$i;->i:Lio/dcloud/common/core/ui/b;

    iget v10, v0, Lio/dcloud/common/core/ui/l$i;->j:I

    const/4 v11, 0x1

    move-object v7, v8

    invoke-virtual/range {v7 .. v12}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;IZI)V

    :cond_bd
    :goto_bd
    const-string v2, "f_need_auto_close_splash"

    .line 22
    invoke-static {v3, v2}, Lio/dcloud/common/util/BaseInfo;->setLoadingLaunchePage(ZLjava/lang/String;)V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v7, v0, Lio/dcloud/common/core/ui/l$i;->k:J

    sub-long/2addr v4, v7

    .line 26
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "loadedTime"

    invoke-interface {v2, v8, v7}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$i;->g:Lio/dcloud/common/DHInterface/IWebview;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "javascript:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v6, [Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v3

    const-string v9, "p.runtime.launchLoadedTime = \'%s\';"

    invoke-static {v9, v6}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v3

    const-string v3, "try{if((window.__html5plus__&&__html5plus__.isReady?__html5plus__:navigator.plus&&navigator.plus.isReady?navigator.plus:window.plus).runtime)var p=window.__html5plus__&&__html5plus__.isReady?__html5plus__:navigator.plus&&navigator.plus.isReady?navigator.plus:window.plus; %s }catch(_){}"

    invoke-static {v3, v8}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->evalJS(Ljava/lang/String;)V

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9996\u9875\u9762loadtime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shutao"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19f

    :cond_122
    const/4 v3, 0x3

    if-ne v1, v3, :cond_19f

    .line 30
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v1

    const-string v3, "progress"

    if-eqz v1, :cond_136

    .line 32
    invoke-interface {v1, v3, v2}, Lio/dcloud/common/DHInterface/IActivityHandler;->updateParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    :cond_136
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$i;->l:Lio/dcloud/common/core/ui/l;

    iget-object v4, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    invoke-static {v1, v4}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 36
    iget-boolean v1, v0, Lio/dcloud/common/core/ui/l$i;->a:Z

    if-nez v1, :cond_19f

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x32

    if-lt v2, v4, :cond_19f

    .line 37
    iput-boolean v6, v0, Lio/dcloud/common/core/ui/l$i;->a:Z

    .line 38
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".streamdownload.downloadfinish."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v4, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "appid"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "flag"

    const-string v3, "direct_page_progressed"

    .line 42
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_19f
    :goto_19f
    const/4 v1, 0x0

    return-object v1
.end method

###### Class io.dcloud.common.core.ui.l.j (io.dcloud.common.core.ui.l$j)
.class Lio/dcloud/common/core/ui/l$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/a;

.field final synthetic b:Lio/dcloud/common/core/ui/b;

.field final synthetic c:I

.field final synthetic d:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$j;->d:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$j;->a:Lio/dcloud/common/core/ui/a;

    iput-object p3, p0, Lio/dcloud/common/core/ui/l$j;->b:Lio/dcloud/common/core/ui/b;

    iput p4, p0, Lio/dcloud/common/core/ui/l$j;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v1, p0, Lio/dcloud/common/core/ui/l$j;->a:Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_f

    .line 2
    iget-object v2, p0, Lio/dcloud/common/core/ui/l$j;->b:Lio/dcloud/common/core/ui/b;

    iget v3, p0, Lio/dcloud/common/core/ui/l$j;->c:I

    const/4 v4, 0x1

    const/16 v5, 0x3e8

    move-object v0, v1

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;IZI)V

    .line 5
    :cond_f
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$j;->d:Lio/dcloud/common/core/ui/l;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    return-void
.end method

###### Class io.dcloud.common.core.ui.l.k (io.dcloud.common.core.ui.l$k)
.class Lio/dcloud/common/core/ui/l$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:Lio/dcloud/common/core/ui/a;

.field final synthetic c:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic d:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$k;->d:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$k;->a:Lio/dcloud/common/core/ui/b;

    iput-object p3, p0, Lio/dcloud/common/core/ui/l$k;->b:Lio/dcloud/common/core/ui/a;

    iput-object p4, p0, Lio/dcloud/common/core/ui/l$k;->c:Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$k;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$k;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__uniappservice.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lio/dcloud/common/core/ui/l$k;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    const-string v1, "auto"

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IWebview;->checkWhite(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 4
    iget-object v2, p0, Lio/dcloud/common/core/ui/l$k;->b:Lio/dcloud/common/core/ui/a;

    iget-object v3, p0, Lio/dcloud/common/core/ui/l$k;->a:Lio/dcloud/common/core/ui/b;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v2

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;IZI)V

    goto :goto_4b

    .line 9
    :cond_38
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$k;->d:Lio/dcloud/common/core/ui/l;

    iget-object v1, p0, Lio/dcloud/common/core/ui/l$k;->c:Lio/dcloud/common/DHInterface/IApp;

    iget-object v2, p0, Lio/dcloud/common/core/ui/l$k;->b:Lio/dcloud/common/core/ui/a;

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V

    goto :goto_4b

    .line 13
    :cond_42
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$k;->d:Lio/dcloud/common/core/ui/l;

    iget-object v1, p0, Lio/dcloud/common/core/ui/l$k;->c:Lio/dcloud/common/DHInterface/IApp;

    iget-object v2, p0, Lio/dcloud/common/core/ui/l$k;->b:Lio/dcloud/common/core/ui/a;

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4b

    :catch_4b
    :goto_4b
    return-void
.end method

###### Class io.dcloud.common.core.ui.l.RunnableC0032l (io.dcloud.common.core.ui.l$l)
.class Lio/dcloud/common/core/ui/l$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;ZLio/dcloud/common/core/ui/a;ILio/dcloud/common/core/ui/b;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/a;

.field final synthetic b:Z

.field final synthetic c:Lio/dcloud/common/core/ui/b;

.field final synthetic d:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic e:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/a;ZLio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;III)V
    .registers 10

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$l;->i:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$l;->a:Lio/dcloud/common/core/ui/a;

    iput-boolean p3, p0, Lio/dcloud/common/core/ui/l$l;->b:Z

    iput-object p4, p0, Lio/dcloud/common/core/ui/l$l;->c:Lio/dcloud/common/core/ui/b;

    iput-object p5, p0, Lio/dcloud/common/core/ui/l$l;->d:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p6, p0, Lio/dcloud/common/core/ui/l$l;->e:Lio/dcloud/common/DHInterface/IApp;

    iput p7, p0, Lio/dcloud/common/core/ui/l$l;->f:I

    iput p8, p0, Lio/dcloud/common/core/ui/l$l;->g:I

    iput p9, p0, Lio/dcloud/common/core/ui/l$l;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    move-object/from16 v0, p0

    .line 1
    :try_start_2
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$l;->a:Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_62

    iget-boolean v1, v1, Lio/dcloud/common/core/ui/a;->o:Z

    if-eqz v1, :cond_b

    goto :goto_62

    .line 5
    :cond_b
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$l;->i:Lio/dcloud/common/core/ui/l;

    iget-boolean v1, v1, Lio/dcloud/common/core/ui/l;->f:Z

    if-eqz v1, :cond_12

    return-void

    .line 8
    :cond_12
    iget-boolean v1, v0, Lio/dcloud/common/core/ui/l$l;->b:Z

    if-nez v1, :cond_20

    iget-object v1, v0, Lio/dcloud/common/core/ui/l$l;->c:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-nez v1, :cond_2a

    :cond_20
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$l;->d:Lio/dcloud/common/DHInterface/IWebview;

    const-string v2, "auto"

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->checkWhite(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 9
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-wide v1, Lio/dcloud/common/util/BaseInfo;->startTime:J

    .line 11
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$l;->e:Lio/dcloud/common/DHInterface/IApp;

    const-string v2, "timeout"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v5, v0, Lio/dcloud/common/core/ui/l$l;->a:Lio/dcloud/common/core/ui/a;

    iget-object v6, v0, Lio/dcloud/common/core/ui/l$l;->c:Lio/dcloud/common/core/ui/b;

    iget v7, v0, Lio/dcloud/common/core/ui/l$l;->f:I

    const/4 v8, 0x1

    iget v9, v0, Lio/dcloud/common/core/ui/l$l;->g:I

    move-object v4, v5

    invoke-virtual/range {v4 .. v9}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;IZI)V

    goto :goto_62

    .line 15
    :cond_46
    iget-object v10, v0, Lio/dcloud/common/core/ui/l$l;->i:Lio/dcloud/common/core/ui/l;

    iget-object v11, v0, Lio/dcloud/common/core/ui/l$l;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v12, v0, Lio/dcloud/common/core/ui/l$l;->e:Lio/dcloud/common/DHInterface/IApp;

    iget-boolean v13, v0, Lio/dcloud/common/core/ui/l$l;->b:Z

    iget-object v14, v0, Lio/dcloud/common/core/ui/l$l;->a:Lio/dcloud/common/core/ui/a;

    iget v15, v0, Lio/dcloud/common/core/ui/l$l;->h:I

    iget-object v1, v0, Lio/dcloud/common/core/ui/l$l;->c:Lio/dcloud/common/core/ui/b;

    iget v2, v0, Lio/dcloud/common/core/ui/l$l;->f:I

    iget v3, v0, Lio/dcloud/common/core/ui/l$l;->g:I

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v10 .. v18}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;ZLio/dcloud/common/core/ui/a;ILio/dcloud/common/core/ui/b;II)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    nop

    :catch_62
    :cond_62
    :goto_62
    return-void
.end method

###### Class io.dcloud.common.core.ui.l.m (io.dcloud.common.core.ui.l$m)
.class public interface abstract Lio/dcloud/common/core/ui/l$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "m"
.end annotation


# virtual methods
.method public abstract onAnimationEnd()V
.end method
