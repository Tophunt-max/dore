###### Class io.dcloud.js.gallery.GalleryFeatureImpl (io.dcloud.js.gallery.GalleryFeatureImpl)
.class public Lio/dcloud/js/gallery/GalleryFeatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# static fields
.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Lio/dcloud/common/DHInterface/IWebview;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b:Ljava/lang/String;

    const/16 v0, 0x3e9

    .line 4
    sput v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->c:I

    const/16 v0, 0x3ea

    .line 5
    sput v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->d:I

    const/16 v0, 0x3eb

    .line 6
    sput v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->e:I

    const/16 v0, 0x3ec

    .line 7
    sput v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->f:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 2
    sget-object v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lio/dcloud/js/gallery/GalleryFeatureImpl;)Ljava/util/ArrayList;
    .registers 1

    .line 4
    iget-object p0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    .line 129
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v0, :cond_42

    move-object v0, p1

    check-cast v0, Lio/dcloud/common/DHInterface/IActivityHandler;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->isMultiProcessMode()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "io.dcloud.streamapp.Gallery.onMax."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    new-instance p2, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;

    invoke-direct {p2, p0, p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;-><init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Landroid/app/Activity;)V

    .line 146
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_36

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a:Ljava/util/ArrayList;

    .line 149
    :cond_36
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_42
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 13

    .line 151
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "multiple"

    .line 153
    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p5

    .line 155
    invoke-virtual {p5}, Lorg/json/JSONException;->printStackTrace()V

    .line 158
    :goto_f
    new-instance p5, Lorg/json/JSONArray;

    invoke-direct {p5}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    if-eqz p4, :cond_6b

    .line 159
    array-length v2, p4

    if-lez v2, :cond_6b

    .line 162
    array-length v2, p4

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_5d

    aget-object v4, p4, v3

    const-string v5, "content://"

    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 166
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v5, v4}, Lio/dcloud/common/util/FileUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_57

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_57

    :cond_52
    const/4 v5, 0x0

    .line 171
    invoke-interface {p1, v5, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    :cond_57
    :goto_57
    invoke-virtual {p5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_5d
    :try_start_5d
    const-string p1, "files"

    .line 177
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception p1

    .line 179
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_67
    const/4 p1, 0x1

    const-string p4, "pickImage path wrong"

    goto :goto_6e

    :cond_6b
    const-string p4, "User cancelled"

    const/4 p1, 0x0

    :goto_6e
    if-eqz p1, :cond_76

    .line 185
    sget p1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p2, p3, v0, p1, v1}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_85

    :cond_76
    const/16 p1, 0xc

    .line 187
    invoke-static {p1, p4}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_85
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 23

    move-object/from16 v13, p0

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 5
    :try_start_5
    aget-object v14, v0, v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7} :catch_15a

    .line 7
    :try_start_7
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    .line 8
    new-instance v4, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_152

    move-object/from16 v15, p1

    :try_start_13
    invoke-direct {v4, v13, v3, v15, v14}, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;-><init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    sget-object v5, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v3, v4, v5}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 64
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_150

    const-string v3, "image/*"

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 71
    :try_start_24
    aget-object v6, v0, v5

    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_150

    if-nez v6, :cond_7f

    .line 72
    :try_start_2c
    aget-object v6, v0, v5

    invoke-static {v6}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "filter"

    .line 73
    invoke-static {v6, v7}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "video"

    .line 74
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3e} :catch_7b

    if-eqz v8, :cond_43

    const-string v3, "video/*"

    goto :goto_4d

    :cond_43
    :try_start_43
    const-string v8, "none"

    .line 76
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_49} :catch_7b

    if-eqz v7, :cond_4d

    const-string v3, "image/*|video/*"

    :cond_4d
    :goto_4d
    :try_start_4d
    const-string v7, "maximum"

    .line 79
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v7, "selected"

    .line 80
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "confirmText"

    .line 81
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "editable"

    .line 82
    invoke-virtual {v6, v9, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "crop"

    .line 83
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "sizeType"

    .line 84
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "videoCompress"

    .line 85
    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_77} :catch_7b

    move/from16 v16, v2

    move-object v6, v8

    goto :goto_86

    :catch_7b
    move-exception v0

    move-object v6, v14

    goto/16 :goto_15f

    :cond_7f
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    .line 87
    :goto_86
    :try_start_86
    invoke-virtual {v12, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8b} :catch_150

    const/16 v8, 0x13

    const-string v1, "_doc"

    if-lt v2, v8, :cond_10e

    :try_start_91
    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    .line 89
    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v8, 0x1

    .line 90
    invoke-virtual {v12, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.intent.category.OPENABLE"

    .line 91
    invoke-virtual {v12, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    sget v17, Lio/dcloud/js/gallery/GalleryFeatureImpl;->e:I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a3} :catch_150

    .line 94
    :try_start_a3
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v8, 0x0

    .line 95
    invoke-virtual {v2, v12, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b8} :catch_106

    if-eqz v8, :cond_d1

    :try_start_ba
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c0} :catch_cd

    const-string v5, "com.android.documentsui"

    .line 99
    :try_start_c2
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_ca} :catch_cd

    if-eqz v5, :cond_b4

    goto :goto_d1

    :catch_cd
    move-exception v0

    move-object/from16 v18, v14

    goto :goto_10a

    .line 105
    :cond_d1
    :goto_d1
    :try_start_d1
    array-length v2, v0
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d2} :catch_106

    const/4 v5, 0x2

    if-le v2, v5, :cond_e0

    .line 106
    :try_start_d5
    aget-object v0, v0, v5

    .line 107
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v13, v2, v0}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_de} :catch_cd

    move-object v8, v0

    goto :goto_e1

    :cond_e0
    const/4 v8, 0x0

    .line 109
    :goto_e1
    :try_start_e1
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_ee} :catch_106

    move-object/from16 v1, p0

    move-object v5, v7

    move v7, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v0

    move-object/from16 v18, v14

    move-object v14, v12

    move/from16 v12, v16

    :try_start_fa
    invoke-virtual/range {v1 .. v12}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->getMediaPickerIntent(Landroid/content/Context;Ljava/lang/String;ILorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v12
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fe} :catch_103

    .line 110
    :try_start_fe
    sget v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->f:I
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_100} :catch_101

    goto :goto_142

    :catch_101
    move-exception v0

    goto :goto_10a

    :catch_103
    move-exception v0

    move-object v12, v14

    goto :goto_10a

    :catch_106
    move-exception v0

    move-object/from16 v18, v14

    move-object v14, v12

    .line 112
    :goto_10a
    :try_start_10a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_144

    :cond_10e
    move-object/from16 v18, v14

    move-object v14, v12

    .line 116
    array-length v2, v0

    const/4 v5, 0x2

    if-le v2, v5, :cond_125

    .line 117
    aget-object v0, v0, v5

    const-string v2, "_onMaxedId"

    .line 118
    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v13, v2, v0}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Landroid/app/Activity;Ljava/lang/String;)V

    move-object v8, v0

    goto :goto_126

    :cond_125
    const/4 v8, 0x0

    .line 121
    :goto_126
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    move-object v5, v7

    move v7, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v0

    move/from16 v12, v16

    invoke-virtual/range {v1 .. v12}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->getMediaPickerIntent(Landroid/content/Context;Ljava/lang/String;ILorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v12

    .line 122
    sget v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->f:I

    :goto_142
    move/from16 v17, v0

    :goto_144
    move/from16 v0, v17

    .line 125
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_14d} :catch_14e

    goto :goto_175

    :catch_14e
    move-exception v0

    goto :goto_157

    :catch_150
    move-exception v0

    goto :goto_155

    :catch_152
    move-exception v0

    move-object/from16 v15, p1

    :goto_155
    move-object/from16 v18, v14

    :goto_157
    move-object/from16 v6, v18

    goto :goto_15f

    :catch_15a
    move-exception v0

    move-object/from16 v15, p1

    const/4 v5, 0x0

    move-object v6, v5

    .line 127
    :goto_15f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_175
    return-void
.end method

.method static synthetic a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 6

    .line 3
    invoke-direct/range {p0 .. p5}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b()I
    .registers 1

    .line 2
    sget v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->d:I

    return v0
.end method

.method private b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 20

    move-object/from16 v13, p0

    move-object/from16 v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_6
    aget-object v14, v0, v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_8} :catch_c0

    .line 5
    :try_start_8
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    .line 6
    new-instance v4, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_bb

    move-object/from16 v15, p1

    :try_start_14
    invoke-direct {v4, v13, v3, v15, v14}, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;-><init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    sget-object v5, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v3, v4, v5}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_b9

    const-string v3, "image/*"

    const/4 v4, 0x1

    .line 52
    :try_start_1f
    aget-object v5, v0, v4

    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 53
    aget-object v5, v0, v4

    invoke-static {v5}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "filter"

    .line 54
    invoke-static {v5, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "video"

    .line 55
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_39} :catch_b9

    if-eqz v7, :cond_3e

    const-string v3, "video/*"

    goto :goto_48

    :cond_3e
    :try_start_3e
    const-string v7, "none"

    .line 57
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_44} :catch_b9

    if-eqz v6, :cond_48

    const-string v3, "image/*|video/*"

    :cond_48
    :goto_48
    :try_start_48
    const-string v6, "confirmText"

    .line 60
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "editable"

    .line 61
    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v7, "crop"

    .line 62
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "sizeType"

    .line 63
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "videoCompress"

    .line 64
    invoke-virtual {v5, v9, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v12, v1

    move-object v9, v7

    move-object v10, v8

    move v7, v4

    goto :goto_70

    :cond_6b
    move-object v6, v2

    move-object v9, v6

    move-object v10, v9

    const/4 v7, 0x1

    const/4 v12, 0x0

    .line 66
    :goto_70
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "__Single__"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    array-length v1, v0

    const/4 v4, 0x2

    if-le v1, v4, :cond_97

    .line 70
    aget-object v0, v0, v4

    .line 71
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v13, v1, v0}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Landroid/app/Activity;Ljava/lang/String;)V

    move-object v8, v0

    goto :goto_98

    :cond_97
    move-object v8, v2

    .line 73
    :goto_98
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    const-string v11, "_doc"

    invoke-interface {v1, v2, v11}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v12}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->getMediaPickerIntent(Landroid/content/Context;Ljava/lang/String;ILorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 74
    sget v1, Lio/dcloud/js/gallery/GalleryFeatureImpl;->f:I

    .line 75
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_b8} :catch_b9

    goto :goto_da

    :catch_b9
    move-exception v0

    goto :goto_be

    :catch_bb
    move-exception v0

    move-object/from16 v15, p1

    :goto_be
    move-object v6, v14

    goto :goto_c4

    :catch_c0
    move-exception v0

    move-object/from16 v15, p1

    move-object v6, v2

    .line 77
    :goto_c4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_da
    return-void
.end method

.method static synthetic b(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->e:I

    return v0
.end method

.method static synthetic d()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->f:I

    return v0
.end method

.method static synthetic e()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->c:I

    return v0
.end method

.method public static onMaxed(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->g:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_d

    .line 2
    sget p0, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, p1, v2, p0, v1}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2f

    .line 4
    :cond_d
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "io.dcloud.streamapp.Gallery.onMax."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "_onMaxedId"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :goto_2f
    return-void
.end method


# virtual methods
.method public JSONArrayToMedias(ILorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    const/4 v0, 0x0

    .line 1
    :goto_4
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_56

    if-nez v1, :cond_12

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    :cond_12
    move-object/from16 v2, p2

    .line 5
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/io/File;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4d

    const/16 v3, 0x66

    move/from16 v5, p1

    if-ne v5, v3, :cond_30

    const/4 v3, 0x3

    const/4 v11, 0x3

    goto :goto_32

    :cond_30
    const/4 v3, 0x1

    const/4 v11, 0x1

    .line 12
    :goto_32
    new-instance v3, Lcom/dmcbig/mediapicker/entity/Media;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    const/4 v14, 0x0

    const-string v15, ""

    move-object v6, v3

    invoke-direct/range {v6 .. v15}, Lcom/dmcbig/mediapicker/entity/Media;-><init>(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;)V

    .line 13
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4c} :catch_52

    goto :goto_4f

    :cond_4d
    move/from16 v5, p1

    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_52
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_56
    return-object v1
.end method

.method public dispose(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_2b

    sget-object v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->g:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_2b

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 3
    sget-object v1, Lio/dcloud/js/gallery/GalleryFeatureImpl;->g:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_c

    .line 5
    :cond_26
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2b
    const/4 p1, 0x0

    .line 7
    sput-object p1, Lio/dcloud/js/gallery/GalleryFeatureImpl;->g:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 1
    sput-object p1, Lio/dcloud/js/gallery/GalleryFeatureImpl;->g:Lio/dcloud/common/DHInterface/IWebview;

    const-string v0, "pick"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "STORAGE"

    if-eqz v0, :cond_1d

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;

    invoke-direct {v2, p0, p3, p1, p2}, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;-><init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto :goto_44

    :cond_1d
    const-string v0, "save"

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 35
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    const/4 p2, 0x0

    .line 36
    aget-object v5, p3, p2

    const/4 p2, 0x1

    .line 37
    aget-object v8, p3, p2

    .line 38
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    move-object v2, v0

    move-object v3, p0

    move-object v4, v6

    move-object v7, p1

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;-><init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p2, v1, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    :cond_44
    :goto_44
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMediaPickerIntent(Landroid/content/Context;Ljava/lang/String;ILorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 16

    const-string v0, ""

    .line 1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "video"

    .line 3
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "image"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/16 v2, 0x65

    goto :goto_25

    .line 5
    :cond_1a
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/16 v2, 0x66

    goto :goto_25

    :cond_23
    const/16 v2, 0x64

    :goto_25
    const-string v3, "__Single__"

    .line 8
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v3, "com.dmcbig.mediapicker.PickerActivity"

    .line 9
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "select_mode"

    .line 10
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "single_select"

    .line 11
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "COMPRESSED"

    .line 12
    invoke-virtual {v1, p1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "max_select_count"

    if-lez p3, :cond_46

    .line 14
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_46
    if-eqz p4, :cond_51

    .line 17
    invoke-virtual {p0, v2, p4}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->JSONArrayToMedias(ILorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p2

    const-string p3, "default_list"

    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    :cond_51
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5c

    const-string p2, "select_max_cb_id"

    .line 20
    invoke-virtual {v1, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    :cond_5c
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_67

    const-string p2, "done_button_text"

    .line 23
    invoke-virtual {v1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    :cond_67
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_72

    const-string p2, "size_type"

    .line 26
    invoke-virtual {v1, p2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    :cond_72
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7d

    const-string p2, "doc_path"

    .line 29
    invoke-virtual {v1, p2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7d
    if-eqz p8, :cond_cc

    const-string p2, "width"

    .line 31
    invoke-virtual {p8, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_cc

    const-string p3, "height"

    invoke-virtual {p8, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_cc

    const-string p4, "[^0-9]"

    .line 32
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p4

    .line 35
    :try_start_95
    invoke-virtual {p8, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    invoke-virtual {p5, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    .line 36
    invoke-virtual {p8, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p4, p7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    if-lez p5, :cond_cc

    if-lez p4, :cond_cc

    .line 38
    invoke-virtual {p8, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {p8, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_bf} :catch_cc

    const-string p2, "image_crop"

    .line 40
    :try_start_c1
    invoke-virtual {p8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 41
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cc} :catch_cc

    :catch_cc
    :cond_cc
    const-string p1, "image_editable"

    .line 45
    invoke-virtual {v1, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v1
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public mediasToJSONArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcelable;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dmcbig/mediapicker/entity/Media;

    if-nez v0, :cond_16

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 6
    :cond_16
    iget-object v2, v2, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return-object v0
.end method

###### Class io.dcloud.js.gallery.GalleryFeatureImpl.a (io.dcloud.js.gallery.GalleryFeatureImpl$a)
.class Lio/dcloud/js/gallery/GalleryFeatureImpl$a;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/gallery/GalleryFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 9

    const/16 p1, 0xc

    const-string v0, "No Permission"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v2, p1, v0

    .line 3
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_20

    const/4 v0, 0x1

    .line 2
    aget-object p1, p1, v0

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 5
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "multiple"

    .line 6
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_20
    :goto_20
    if-eqz v1, :cond_2e

    .line 15
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_39

    .line 17
    :cond_2e
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_39
    return-void
.end method

###### Class io.dcloud.js.gallery.GalleryFeatureImpl.b (io.dcloud.js.gallery.GalleryFeatureImpl$b)
.class Lio/dcloud/js/gallery/GalleryFeatureImpl$b;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .line 1
    iput-object p3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->a:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p5, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p6, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->e:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 9

    const/16 p1, 0xc

    const-string v0, "No Permission"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 9

    const/16 p1, 0xc

    .line 1
    :try_start_2
    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_118

    .line 4
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 5
    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const-class v1, [B

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;

    invoke-direct {v1, p0}, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;-><init>(Lio/dcloud/js/gallery/GalleryFeatureImpl$b;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_133

    .line 60
    :cond_2c
    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->e:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 63
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PATH_NOT_PRIVATE_ERROR:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    :cond_67
    const-string v1, "/"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_b7

    .line 72
    iget-object v4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9f

    .line 73
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_be

    goto :goto_bf

    .line 76
    :cond_9f
    iget-object v4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lio/dcloud/common/util/FileUtil;->copyMediaFileToDCIM(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 78
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/FileUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_bf

    .line 83
    :cond_b7
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_be

    goto :goto_bf

    :cond_be
    const/4 v2, 0x0

    :goto_bf
    if-eqz v2, :cond_106

    .line 87
    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "file"

    .line 89
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "path"

    .line 90
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v0, v4, v2, v5, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    .line 92
    new-instance v0, Landroid/content/Intent;
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e2} :catch_11e

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    :try_start_e4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_133

    :cond_106
    const-string v0, "UNKOWN ERROR3"

    .line 95
    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_133

    .line 97
    :cond_118
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_11e} :catch_11e

    :catch_11e
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "UNKOWN ERROR4"

    .line 196
    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_133
    return-void
.end method

###### Class io.dcloud.js.gallery.GalleryFeatureImpl.b.a (io.dcloud.js.gallery.GalleryFeatureImpl$b$a)
.class Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->onGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BLcom/bumptech/glide/request/transition/Transition;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-[B>;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "image/*"

    invoke-static {v0, v1, p2}, Lio/dcloud/common/util/PdrUtil;->getDownloadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "."

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_57

    .line 3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 4
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    array-length v5, p1

    invoke-static {p1, v3, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    const-string v5, "/"

    .line 8
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 9
    array-length v5, v2

    if-le v5, v4, :cond_57

    aget-object v5, v2, v4

    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    aget-object v5, v2, v4

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, v2, v4

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    :cond_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 17
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_86

    .line 18
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lio/dcloud/common/util/FileUtil;->writeStream2File(Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_b6

    .line 21
    :cond_86
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, p2}, Lio/dcloud/common/util/FileUtil;->copyMediaFileToDCIM(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_a1

    .line 23
    iget-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lio/dcloud/common/util/FileUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b6

    :cond_a1
    const/16 p1, 0xc

    const-string p2, "SAVE ERROR"

    .line 25
    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 26
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object v4, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v5, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v7, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 29
    :goto_b6
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    :try_start_be
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "file"

    .line 32
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "path"

    .line 33
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object v0, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object p1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v0, p1, p2, v2, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    .line 35
    new-instance p1, Landroid/content/Intent;
    :try_end_da
    .catch Lorg/json/JSONException; {:try_start_be .. :try_end_da} :catch_ff

    const-string p2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    :try_start_dc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 36
    iget-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_ff
    .catch Lorg/json/JSONException; {:try_start_dc .. :try_end_ff} :catch_ff

    :catch_ff
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 9

    const/16 p1, 0xc

    const-string v0, "UNKOWN ERROR"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object v1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a([BLcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

###### Class io.dcloud.js.gallery.GalleryFeatureImpl.c (io.dcloud.js.gallery.GalleryFeatureImpl$c)
.class Lio/dcloud/js/gallery/GalleryFeatureImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/gallery/GalleryFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 13

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

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    const/4 v3, 0x2

    .line 4
    aget-object p2, p2, v3

    check-cast p2, Landroid/content/Intent;

    .line 5
    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v3, :cond_b8

    .line 6
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, p0, v3}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    const/4 p1, 0x0

    .line 10
    :try_start_22
    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b()I

    move-result v3

    if-ne v1, v3, :cond_30

    const-string v1, "all_path"

    .line 11
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a4

    .line 12
    :cond_30
    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->c()I

    move-result v3

    if-ne v1, v3, :cond_92

    if-eqz p2, :cond_a6

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 17
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    .line 18
    new-array v3, v2, [Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_44} :catch_a6

    const/4 v4, 0x0

    :goto_45
    if-ge v4, v2, :cond_a7

    .line 20
    :try_start_47
    invoke-virtual {v1, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 21
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 22
    iget-object v6, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5}, Lio/dcloud/common/adapter/util/ContentUriUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 23
    aput-object v5, v3, v4
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5b} :catch_5e

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :catch_5e
    nop

    goto :goto_a7

    .line 25
    :cond_60
    :try_start_60
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_a6

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_8b

    .line 30
    :cond_7d
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v3}, Lio/dcloud/common/adapter/util/ContentUriUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    :goto_8b
    if-eqz v1, :cond_a6

    new-array v3, v2, [Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_8f} :catch_a6

    :try_start_8f
    aput-object v1, v3, v0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_91} :catch_5e

    goto :goto_a7

    .line 38
    :cond_92
    :try_start_92
    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->d()I

    move-result v2

    if-ne v1, v2, :cond_a6

    const-string v1, "select_result"

    .line 39
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    invoke-virtual {v2, v1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->mediasToJSONArray(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v1
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a4} :catch_a6

    :goto_a4
    move-object v3, v1

    goto :goto_a7

    :catch_a6
    :cond_a6
    move-object v3, p1

    .line 45
    :cond_a7
    :goto_a7
    iget-object v4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iget-object v5, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IApp;

    iget-object v6, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v7, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->c:Ljava/lang/String;

    if-eqz p2, :cond_b3

    move-object v8, v3

    goto :goto_b4

    :cond_b3
    move-object v8, p1

    :goto_b4
    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_b8
    return v0
.end method

###### Class io.dcloud.js.gallery.GalleryFeatureImpl.d (io.dcloud.js.gallery.GalleryFeatureImpl$d)
.class Lio/dcloud/js/gallery/GalleryFeatureImpl$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lio/dcloud/js/gallery/GalleryFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;->b:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;->a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p1, "_onMaxedId"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 3
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;->b:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    invoke-static {p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 4
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;->b:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    invoke-static {p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_1d
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;->a:Landroid/app/Activity;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_2c

    .line 8
    :cond_27
    iget-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;->a:Landroid/app/Activity;

    invoke-static {p2, p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->onMaxed(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

###### Class io.dcloud.js.gallery.GalleryFeatureImpl.e (io.dcloud.js.gallery.GalleryFeatureImpl$e)
.class Lio/dcloud/js/gallery/GalleryFeatureImpl$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/gallery/GalleryFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->a:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 13

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

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    const/4 v3, 0x2

    .line 4
    aget-object p2, p2, v3

    check-cast p2, Landroid/content/Intent;

    .line 6
    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v3, :cond_89

    .line 7
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, p0, v3}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 8
    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->e()I

    move-result p1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_59

    if-eqz p2, :cond_44

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    .line 18
    :cond_3f
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    :cond_44
    move-object p1, v3

    .line 23
    :goto_45
    iget-object v4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iget-object v5, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->a:Lio/dcloud/common/DHInterface/IApp;

    iget-object v6, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v7, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->c:Ljava/lang/String;

    if-eqz p1, :cond_53

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v0

    :cond_53
    move-object v8, v3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_89

    .line 24
    :cond_59
    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->d()I

    move-result p1

    if-ne v1, p1, :cond_89

    if-eqz p2, :cond_75

    const-string p1, "select_result"

    .line 26
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    invoke-virtual {p2, p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->mediasToJSONArray(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_75

    .line 28
    array-length p2, p1

    if-lez p2, :cond_75

    .line 29
    aget-object p1, p1, v0

    goto :goto_76

    :cond_75
    move-object p1, v3

    .line 32
    :goto_76
    iget-object v4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iget-object v5, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->a:Lio/dcloud/common/DHInterface/IApp;

    iget-object v6, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v7, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->c:Ljava/lang/String;

    if-eqz p1, :cond_84

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v0

    :cond_84
    move-object v8, v3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_89
    :goto_89
    return v0
.end method
