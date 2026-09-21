###### Class io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl (io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl)
.class public Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# instance fields
.field a:Lio/dcloud/common/DHInterface/AbsMgr;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;)Landroid/graphics/Bitmap;
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->b(Lio/dcloud/common/DHInterface/IApp;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 75
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 55
    new-instance v6, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;-><init>(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    const-wide/16 p1, 0x1f4

    .line 72
    invoke-static {v6, p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ZZLjava/lang/String;)V
    .registers 23

    move-object/from16 v0, p5

    .line 76
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 79
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "pdr"

    invoke-static {v2, v4}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 80
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 81
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_25

    :cond_24
    move-object v10, p2

    .line 83
    :goto_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_created_shortcut"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 84
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 85
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_53

    const-string v5, "short_cut_class_name"

    .line 87
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto :goto_55

    :cond_53
    move-object/from16 v6, p4

    .line 90
    :goto_55
    invoke-static {v9}, Lio/dcloud/common/util/ShortcutCreateUtil;->isDuplicateLauncher(Landroid/content/Context;)Z

    move-result v4

    const/16 v11, 0xb

    const/4 v12, 0x1

    if-eqz v4, :cond_86

    const/4 v8, 0x1

    move-object v2, v9

    move-object v4, v10

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    .line 91
    invoke-static/range {v2 .. v8}, Lio/dcloud/common/util/ShortCutUtil;->createShortcutToDeskTop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 92
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_82

    invoke-static {v9}, Lio/dcloud/common/util/ShortcutCreateUtil;->needToast(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 93
    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v12}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    .line 95
    :cond_82
    invoke-static {v1, v11, v12}, Lio/dcloud/common/util/ShortCutUtil;->commitShortcut(Lio/dcloud/common/DHInterface/IApp;II)V

    goto :goto_dd

    .line 98
    :cond_86
    invoke-static {v9, v10}, Lio/dcloud/common/util/ShortCutUtil;->hasShortcut(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_dd

    if-eqz p7, :cond_b3

    .line 101
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a5

    .line 102
    invoke-static {v9}, Lio/dcloud/common/util/ShortcutCreateUtil;->needToast(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 103
    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v12}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    :cond_a5
    const/4 v8, 0x1

    move-object v2, v9

    move-object v4, v10

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    .line 106
    invoke-static/range {v2 .. v8}, Lio/dcloud/common/util/ShortCutUtil;->createShortcutToDeskTop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    .line 107
    invoke-static {v1, v11, v12}, Lio/dcloud/common/util/ShortCutUtil;->commitShortcut(Lio/dcloud/common/DHInterface/IApp;II)V

    goto :goto_dd

    :cond_b3
    if-eqz v2, :cond_b6

    return-void

    :cond_b6
    const/4 v8, 0x1

    move-object v2, v9

    move-object v4, v10

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    .line 112
    invoke-static/range {v2 .. v8}, Lio/dcloud/common/util/ShortCutUtil;->createShortcutToDeskTop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 113
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_da

    invoke-static {v9}, Lio/dcloud/common/util/ShortcutCreateUtil;->needToast(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 114
    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v12}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    .line 116
    :cond_da
    invoke-static {v1, v11, v12}, Lio/dcloud/common/util/ShortCutUtil;->commitShortcut(Lio/dcloud/common/DHInterface/IApp;II)V

    .line 121
    :cond_dd
    :goto_dd
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p9

    invoke-direct {p0, v0, p1, v3, v10}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z
    .registers 21

    move-object/from16 v1, p3

    const-string v0, "toast"

    const-string v2, ""

    const/4 v3, 0x0

    .line 2
    aget-object v4, p2, v3

    const/4 v5, 0x1

    .line 3
    aget-object v15, p2, v5

    .line 11
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lio/dcloud/base/R$string;->dcloud_short_cut_created:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 15
    :try_start_23
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "force"

    .line 16
    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2e} :catch_8c

    if-eqz v4, :cond_49

    .line 18
    :try_start_30
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget v11, Lio/dcloud/base/R$string;->dcloud_short_cut_created_removed_manually:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_49
    const-string v9, "name"

    .line 20
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_4f} :catch_86

    :try_start_4f
    const-string v10, "icon"

    .line 21
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_55} :catch_7f

    :try_start_55
    const-string v11, "classname"

    .line 22
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_66

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :cond_66
    const-string v0, "extra"

    .line 24
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_6c} :catch_7b

    :try_start_6c
    const-string v0, "check"

    .line 25
    invoke-virtual {v8, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_72} :catch_77

    move v13, v4

    move v14, v5

    move-object v8, v9

    move-object v12, v11

    goto :goto_9a

    :catch_77
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    goto :goto_84

    :catch_7b
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    goto :goto_83

    :catch_7f
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v10, v0

    :goto_83
    move-object v11, v7

    :goto_84
    move-object v2, v9

    goto :goto_92

    :catch_86
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v10, v0

    move-object v11, v7

    goto :goto_92

    :catch_8c
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v10, v0

    move-object v11, v7

    const/4 v4, 0x1

    .line 27
    :goto_92
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    move-object v8, v2

    move v13, v4

    move-object v12, v11

    const/4 v14, 0x1

    move-object v2, v0

    :goto_9a
    move-object v11, v6

    .line 31
    :try_start_9b
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 32
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v10}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ad} :catch_d5

    :cond_ad
    if-nez v7, :cond_bd

    move-object/from16 v4, p0

    .line 37
    :try_start_b1
    invoke-direct {v4, v1}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IApp;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b5} :catch_b7

    move-object v7, v0

    goto :goto_bf

    :catch_b7
    move-exception v0

    move-object v1, v0

    .line 39
    :try_start_b9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bf

    :cond_bd
    move-object/from16 v4, p0

    :goto_bf
    if-nez v7, :cond_db

    if-nez v7, :cond_db

    .line 45
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/dcloud/PdrR;->DRAWABLE_ICON:I

    .line 46
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_d1} :catch_d3

    move-object v9, v0

    goto :goto_dc

    :catch_d3
    move-exception v0

    goto :goto_d8

    :catch_d5
    move-exception v0

    move-object/from16 v4, p0

    .line 51
    :goto_d8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_db
    move-object v9, v7

    :goto_dc
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v10, v2

    .line 54
    invoke-direct/range {v6 .. v15}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ZZLjava/lang/String;)V

    return v3
.end method

.method static synthetic a(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Lio/dcloud/common/DHInterface/IApp;)Ljava/lang/String;
    .registers 3

    .line 20
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string v0, "app_icon"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_d
    const-string p1, ""

    :goto_f
    return-object p1
.end method

.method private b(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-static {p1, p4}, Lio/dcloud/common/util/ShortCutUtil;->requestShortCut(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "short_cut_existing"

    .line 2
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v0, "{result:%s}"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1b

    new-array p1, v1, [Ljava/lang/Object;

    const-string p4, "existing"

    aput-object p4, p1, v2

    .line 3
    invoke-static {v0, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :cond_1b
    const-string p4, "short_cut_none"

    .line 5
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2e

    new-array p1, v1, [Ljava/lang/Object;

    const-string p4, "none"

    aput-object p4, p1, v2

    .line 6
    invoke-static {v0, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :cond_2e
    const-string p4, "nopermissions"

    .line 8
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p4, p1, v2

    .line 9
    invoke-static {v0, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :cond_3f
    new-array p1, v1, [Ljava/lang/Object;

    const-string p4, "unknown"

    aput-object p4, p1, v2

    .line 12
    invoke-static {v0, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    :goto_49
    :try_start_49
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget p1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p2, p3, p4, p1, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p1

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_58
    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 20

    move-object/from16 v8, p0

    move-object/from16 v5, p1

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    const-string v1, "delay_w2a"

    const-string v2, "autoclose_w2a"

    const-string v3, "delay"

    const-string v4, "autoclose"

    .line 1
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v9

    .line 2
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v7

    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v12, 0x0

    sparse-switch v10, :sswitch_data_5d2

    goto/16 :goto_1bf

    :sswitch_25
    const-string v10, "setStatusBarStyle"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_1bf

    :cond_2f
    const/16 v0, 0x1e

    goto/16 :goto_1c0

    :sswitch_33
    const-string v10, "setLogs"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_1bf

    :cond_3d
    const/16 v0, 0x1d

    goto/16 :goto_1c0

    :sswitch_41
    const-string v10, "setUserAgent"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_1bf

    :cond_4b
    const/16 v0, 0x1c

    goto/16 :goto_1c0

    :sswitch_4f
    const-string v10, "getStatusbarHeight"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_1bf

    :cond_59
    const/16 v0, 0x1b

    goto/16 :goto_1c0

    :sswitch_5d
    const-string v10, "isFullScreen"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_1bf

    :cond_67
    const/16 v0, 0x1a

    goto/16 :goto_1c0

    :sswitch_6b
    const-string v10, "removeAllCookie"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_1bf

    :cond_75
    const/16 v0, 0x19

    goto/16 :goto_1c0

    :sswitch_79
    const-string v10, "setStatusBarBackground"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_1bf

    :cond_83
    const/16 v0, 0x18

    goto/16 :goto_1c0

    :sswitch_87
    const-string v10, "hasNotchInScreen"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_1bf

    :cond_91
    const/16 v0, 0x17

    goto/16 :goto_1c0

    :sswitch_95
    const-string v10, "getSignature"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto/16 :goto_1bf

    :cond_9f
    const/16 v0, 0x16

    goto/16 :goto_1c0

    :sswitch_a3
    const-string v10, "isBackground"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    goto/16 :goto_1bf

    :cond_ad
    const/16 v0, 0x15

    goto/16 :goto_1c0

    :sswitch_b1
    const-string v10, "requestPermission"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    goto/16 :goto_1bf

    :cond_bb
    const/16 v0, 0x14

    goto/16 :goto_1c0

    :sswitch_bf
    const-string v10, "checkPermission"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    goto/16 :goto_1bf

    :cond_c9
    const/16 v0, 0x13

    goto/16 :goto_1c0

    :sswitch_cd
    const-string v10, "getUiStyle"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d7

    goto/16 :goto_1bf

    :cond_d7
    const/16 v0, 0x12

    goto/16 :goto_1c0

    :sswitch_db
    const-string v10, "setFullscreen"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    goto/16 :goto_1bf

    :cond_e5
    const/16 v0, 0x11

    goto/16 :goto_1c0

    :sswitch_e9
    const-string v10, "createShortcut"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    goto/16 :goto_1bf

    :cond_f3
    const/16 v0, 0x10

    goto/16 :goto_1c0

    :sswitch_f7
    const-string v10, "getCookie"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_101

    goto/16 :goto_1bf

    :cond_101
    const/16 v0, 0xf

    goto/16 :goto_1c0

    :sswitch_105
    const-string v10, "getUserAgent"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    goto/16 :goto_1bf

    :cond_10f
    const/16 v0, 0xe

    goto/16 :goto_1c0

    :sswitch_113
    const-string v10, "hasSplashscreen"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d

    goto/16 :goto_1bf

    :cond_11d
    const/16 v0, 0xd

    goto/16 :goto_1c0

    :sswitch_121
    const-string v10, "setCookie"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12b

    goto/16 :goto_1bf

    :cond_12b
    const/16 v0, 0xc

    goto/16 :goto_1c0

    :sswitch_12f
    const-string v10, "getStatusBarBackground"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_139

    goto/16 :goto_1bf

    :cond_139
    const/16 v0, 0xb

    goto/16 :goto_1c0

    :sswitch_13d
    const-string v10, "isImmersedStatusbar"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_147

    goto/16 :goto_1bf

    :cond_147
    const/16 v0, 0xa

    goto/16 :goto_1c0

    :sswitch_14b
    const-string v10, "removeSessionCookie"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_155

    goto/16 :goto_1bf

    :cond_155
    const/16 v0, 0x9

    goto/16 :goto_1c0

    :sswitch_159
    const-string v10, "isSimulator"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_163

    goto/16 :goto_1bf

    :cond_163
    const/16 v0, 0x8

    goto/16 :goto_1c0

    :sswitch_167
    const-string v10, "showSystemNavigation"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_170

    goto :goto_1bf

    :cond_170
    const/4 v0, 0x7

    goto :goto_1c0

    :sswitch_172
    const-string v10, "isLogs"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17b

    goto :goto_1bf

    :cond_17b
    const/4 v0, 0x6

    goto :goto_1c0

    :sswitch_17d
    const-string v10, "getStatusBarStyle"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186

    goto :goto_1bf

    :cond_186
    const/4 v0, 0x5

    goto :goto_1c0

    :sswitch_188
    const-string v10, "closeSplashscreen"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_191

    goto :goto_1bf

    :cond_191
    const/4 v0, 0x4

    goto :goto_1c0

    :sswitch_193
    const-string v10, "hasShortcut"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19c

    goto :goto_1bf

    :cond_19c
    const/4 v0, 0x3

    goto :goto_1c0

    :sswitch_19e
    const-string v10, "updateSplashscreen"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a7

    goto :goto_1bf

    :cond_1a7
    const/4 v0, 0x2

    goto :goto_1c0

    :sswitch_1a9
    const-string v10, "hideSystemNavigation"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b2

    goto :goto_1bf

    :cond_1b2
    const/4 v0, 0x1

    goto :goto_1c0

    :sswitch_1b4
    const-string v10, "getOrientation"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bd

    goto :goto_1bf

    :cond_1bd
    const/4 v0, 0x0

    goto :goto_1c0

    :goto_1bf
    const/4 v0, -0x1

    :goto_1c0
    const-string v10, "h5plus"

    const-string v11, "useragent"

    const-string v14, "funSetUA"

    const-string v13, "status_bar_mode"

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_650

    goto/16 :goto_5cf

    .line 261
    :pswitch_1ce
    aget-object v0, v6, v12

    .line 262
    invoke-interface {v9, v13, v0}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/dcloud/common/util/AppStatusBarManager;->setStatusBarMode(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_5cf

    .line 264
    :pswitch_1e0
    aget-object v0, v6, v12

    .line 265
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12, v12}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->setOpen(Z)V

    goto/16 :goto_5cf

    .line 266
    :pswitch_1ef
    aget-object v0, v6, v12

    const/4 v1, 0x1

    .line 267
    aget-object v1, v6, v1

    .line 269
    invoke-interface {v9, v11, v0}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "true"

    .line 270
    invoke-interface {v9, v14, v2}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-interface {v9, v10, v1}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "User-Agent"

    .line 273
    invoke-interface {v5, v1, v0}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5cf

    .line 350
    :pswitch_206
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->updateStatusBarHeight(Landroid/app/Activity;)V

    .line 351
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    int-to-float v0, v0

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(F)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    :pswitch_21b
    if-eqz v9, :cond_5cf

    .line 352
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IAppInfo;->isFullScreen()Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    .line 399
    :pswitch_227
    :try_start_227
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->removeAllCookie()V
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_22a} :catch_22c

    goto/16 :goto_5cf

    :catch_22c
    move-exception v0

    move-object v1, v0

    .line 401
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5cf

    .line 545
    :pswitch_233
    aget-object v0, v6, v12

    .line 546
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5cf

    .line 549
    :try_start_23b
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_23f} :catch_240

    goto :goto_244

    .line 551
    :catch_240
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    .line 553
    :goto_244
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5cf

    .line 554
    aget-object v1, v6, v12

    const-string v2, "StatusBarBackground"

    invoke-interface {v9, v2, v1}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/dcloud/common/util/AppStatusBarManager;->setStatusBarColor(Landroid/app/Activity;I)V

    goto/16 :goto_5cf

    .line 604
    :pswitch_25e
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/feature/ui/navigator/QueryNotchTool;->hasNotchInScreen(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    .line 636
    :pswitch_26c
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/LoadAppUtils;->getAppSignatureSHA1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    .line 637
    :pswitch_27a
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IApp;->obtainAppStatus()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_283

    const/4 v15, 0x1

    goto :goto_284

    :cond_283
    const/4 v15, 0x0

    .line 638
    :goto_284
    invoke-static {v15}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    .line 639
    :pswitch_28a
    aget-object v0, v6, v12

    const/4 v1, 0x1

    .line 640
    aget-object v7, v6, v1

    .line 641
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v10

    .line 642
    invoke-static {v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->convertNativePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    new-instance v11, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;

    move-object v1, v11

    move-object/from16 v2, p0

    move v3, v10

    move-object v4, v9

    move-object/from16 v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;-><init>(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onRequestPermissionsResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v9, v11, v1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v12

    .line 663
    invoke-interface {v9, v1, v10}, Lio/dcloud/common/DHInterface/IApp;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_5cf

    .line 667
    :pswitch_2b3
    invoke-static {v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermission(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    :pswitch_2bd
    const-string v0, "light"

    .line 760
    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    .line 761
    :pswitch_2c5
    aget-object v0, v6, v12

    if-eqz v9, :cond_5cf

    .line 763
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12, v12}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    invoke-interface {v9, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->setFullScreen(Z)V

    goto/16 :goto_5cf

    .line 845
    :pswitch_2d6
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v10, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;-><init>(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V

    const-string v1, "Navigator"

    const-string v2, "SHORTCUT"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v10}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto/16 :goto_5cf

    .line 846
    :pswitch_2f2
    aget-object v0, v6, v12

    invoke-interface {v5, v0}, Lio/dcloud/common/DHInterface/IWebview;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    .line 847
    :pswitch_2fa
    invoke-interface {v9, v14}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 848
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1, v11}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 849
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_312

    const-string v1, ""

    :cond_312
    if-nez v0, :cond_5d0

    const-string v0, "concatenate"

    .line 853
    invoke-interface {v9, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 854
    invoke-interface {v9, v10}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_33e

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 859
    :cond_33e
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_356

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_356
    if-eqz v2, :cond_5d0

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Html5Plus/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    .line 1047
    :pswitch_36b
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->didCloseSplash()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1048
    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    :pswitch_37b
    const/4 v1, 0x1

    .line 1049
    aget-object v0, v6, v12

    aget-object v1, v6, v1

    invoke-interface {v5, v0, v1}, Lio/dcloud/common/DHInterface/IWebview;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5cf

    .line 1220
    :pswitch_385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5cf

    .line 1221
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    .line 1222
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->toHexFromColor(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    :pswitch_3a1
    const-string v0, "immersed"

    .line 1223
    invoke-interface {v9, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1224
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/dcloud/common/util/AppStatusBarManager;->checkImmersedStatusBar(Landroid/content/Context;Z)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    .line 1225
    :pswitch_3c1
    :try_start_3c1
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->removeSessionCookie()V
    :try_end_3c4
    .catch Ljava/lang/Exception; {:try_start_3c1 .. :try_end_3c4} :catch_3c6

    goto/16 :goto_5cf

    :catch_3c6
    move-exception v0

    move-object v1, v0

    .line 1227
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5cf

    .line 1450
    :pswitch_3cd
    invoke-static {}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->getSingleInstance()Lio/dcloud/common/util/emulator/EmulatorCheckUtil;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->emulatorCheck(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    :pswitch_3df
    if-eqz v9, :cond_5cf

    .line 1451
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1452
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x203

    .line 1454
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1455
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v12}, Lio/dcloud/common/DHInterface/IApp;->setHideNavBarState(Z)V

    goto/16 :goto_5cf

    .line 1456
    :pswitch_403
    invoke-static {}, Lio/dcloud/common/adapter/util/Logger;->isOpen()Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    .line 1631
    :pswitch_40d
    invoke-interface {v9, v13}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1632
    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5cf

    .line 1633
    :pswitch_417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " closeSplashscreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Main_Path"

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    sget-object v0, Lio/dcloud/common/util/TestUtil;->START_STREAM_APP:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSplashscreen appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript webapp task begin success appid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download_manager"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    iget-object v0, v8, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    const/16 v3, 0xb

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5cf

    .line 1747
    :pswitch_470
    aget-object v0, v6, v12

    const/4 v1, 0x1

    .line 1748
    aget-object v1, v6, v1

    .line 1751
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v2

    .line 1753
    :try_start_47d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "name"

    .line 1754
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_488
    .catch Lorg/json/JSONException; {:try_start_47d .. :try_end_488} :catch_489

    goto :goto_48d

    :catch_489
    move-exception v0

    .line 1756
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1759
    :goto_48d
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0, v5, v1, v2}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->b(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5cf

    .line 1764
    :pswitch_496
    aget-object v0, v6, v12

    .line 1766
    :try_start_498
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1767
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "pdr"

    invoke-static {v0, v7}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1768
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1769
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v7

    const-string v10, "image"

    .line 1770
    invoke-virtual {v6, v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1771
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4f1

    .line 1772
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5, v10}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1773
    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4ec

    .line 1774
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lio/dcloud/common/constant/StringConst;->STREAMAPP_KEY_ROOTPATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "splash/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".png"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    .line 1775
    invoke-static {v5, v9, v10, v12}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    :cond_4ec
    const-string v9, "update_splash_img_path"

    .line 1778
    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1780
    :cond_4f1
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_50f

    .line 1781
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "__update_splash_autoclose"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1783
    :cond_50f
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52d

    .line 1784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "__update_splash_delay"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1786
    :cond_52d
    invoke-static {v7}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56f

    .line 1789
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_551

    .line 1790
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "__update_splash_autoclose_w2a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1792
    :cond_551
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56f

    .line 1793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "__update_splash_delay_w2a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1796
    :cond_56f
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_572
    .catch Lorg/json/JSONException; {:try_start_498 .. :try_end_572} :catch_573

    goto :goto_5cf

    :catch_573
    move-exception v0

    .line 1799
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5cf

    :pswitch_578
    if-eqz v9, :cond_5cf

    .line 1870
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1871
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 1872
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    or-int/lit16 v1, v1, 0x100

    or-int/lit16 v1, v1, 0x200

    const/4 v2, 0x2

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1874
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->setHideNavBarState(Z)V

    goto :goto_5cf

    :pswitch_5a2
    const/4 v1, 0x1

    .line 1905
    :try_start_5a3
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v1, :cond_5c2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5bf

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5bc

    goto :goto_5c4

    :cond_5bc
    const/16 v12, -0x5a

    goto :goto_5c4

    :cond_5bf
    const/16 v12, 0xb4

    goto :goto_5c4

    :cond_5c2
    const/16 v12, 0x5a

    :goto_5c4
    int-to-float v0, v12

    .line 1918
    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(F)Ljava/lang/String;

    move-result-object v15
    :try_end_5c9
    .catch Ljava/lang/Exception; {:try_start_5a3 .. :try_end_5c9} :catch_5ca

    goto :goto_5cf

    :catch_5ca
    const/4 v0, 0x0

    .line 1920
    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(F)Ljava/lang/String;

    move-result-object v15

    :cond_5cf
    :goto_5cf
    move-object v1, v15

    :cond_5d0
    return-object v1

    nop

    :sswitch_data_5d2
    .sparse-switch
        -0x7bf6c366 -> :sswitch_1b4
        -0x760ef8fb -> :sswitch_1a9
        -0x728e1704 -> :sswitch_19e
        -0x69156700 -> :sswitch_193
        -0x4d29c055 -> :sswitch_188
        -0x4a8dcb9a -> :sswitch_17d
        -0x465a5e07 -> :sswitch_172
        -0x318ed140 -> :sswitch_167
        -0x2fdb7a06 -> :sswitch_159
        -0x22ca218a -> :sswitch_14b
        -0x1afe7025 -> :sswitch_13d
        -0x673d867 -> :sswitch_12f
        0x78c6166 -> :sswitch_121
        0xc2e114d -> :sswitch_113
        0x11fd7f44 -> :sswitch_105
        0x14572d5a -> :sswitch_f7
        0x22932562 -> :sswitch_e9
        0x22f481bd -> :sswitch_db
        0x22fb5747 -> :sswitch_cd
        0x28e6dcf7 -> :sswitch_bf
        0x2c7fedbe -> :sswitch_b1
        0x320351f8 -> :sswitch_a3
        0x3f6b0a02 -> :sswitch_95
        0x413c6c0f -> :sswitch_87
        0x47d0e70d -> :sswitch_79
        0x488f6f41 -> :sswitch_6b
        0x515f64a5 -> :sswitch_5d
        0x6dc23132 -> :sswitch_4f
        0x6e513fb8 -> :sswitch_41
        0x764cf531 -> :sswitch_33
        0x7d689c72 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_650
    .packed-switch 0x0
        :pswitch_5a2
        :pswitch_578
        :pswitch_496
        :pswitch_470
        :pswitch_417
        :pswitch_40d
        :pswitch_403
        :pswitch_3df
        :pswitch_3cd
        :pswitch_3c1
        :pswitch_3a1
        :pswitch_385
        :pswitch_37b
        :pswitch_36b
        :pswitch_2fa
        :pswitch_2f2
        :pswitch_2d6
        :pswitch_2c5
        :pswitch_2bd
        :pswitch_2b3
        :pswitch_28a
        :pswitch_27a
        :pswitch_26c
        :pswitch_25e
        :pswitch_233
        :pswitch_227
        :pswitch_21b
        :pswitch_206
        :pswitch_1ef
        :pswitch_1e0
        :pswitch_1ce
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

###### Class io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl.a (io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl$a)
.class Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->e:Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;

    iput-object p3, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->b:[Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->c:Lio/dcloud/common/DHInterface/IApp;

    iput-object p6, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->e:Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;

    iget-object v0, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->b:[Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->c:Lio/dcloud/common/DHInterface/IApp;

    iget-object v3, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$a;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    return-void
.end method

###### Class io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl.b (io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl$b)
.class Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput p2, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->a:I

    iput-object p3, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p4, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->d:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 12

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 3
    aget-object v3, p2, v2

    check-cast v3, [Ljava/lang/String;

    const/4 v3, 0x2

    .line 4
    aget-object p2, p2, v3

    check-cast p2, [I

    .line 5
    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onRequestPermissionsResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne v3, p1, :cond_57

    iget p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->a:I

    if-ne v1, p1, :cond_57

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, p0, v3}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 8
    array-length p1, p2

    if-lez p1, :cond_28

    .line 9
    aget p1, p2, v0

    goto :goto_3e

    .line 11
    :cond_28
    iget-object p1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->d:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lio/dcloud/common/DHInterface/IApp;->checkSelfPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 13
    :goto_3e
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert5PlusValue(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v3, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$b;->e:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "{result:\'%s\'}"

    invoke-static {p1, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_57
    return v2
.end method

###### Class io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl.c (io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl$c)
.class Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl;Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/common/util/ShortCutUtil;->requestShortCutForCommit(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "short_cut_existing"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "true"

    goto :goto_15

    :cond_13
    const-string v0, "false"

    :goto_15
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "{sure:%s}"

    .line 5
    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :try_start_21
    iget-object v1, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p0, Lio/dcloud/feature/ui/navigator/NavigatorUIFeatureImpl$c;->d:Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget v0, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v1, v3, v4, v0, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception v0

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_34
    return-void
.end method
