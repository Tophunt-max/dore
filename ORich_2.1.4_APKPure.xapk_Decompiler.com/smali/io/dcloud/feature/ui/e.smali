###### Class io.dcloud.feature.ui.e (io.dcloud.feature.ui.e)
.class public Lio/dcloud/feature/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/ui/e$e;
    }
.end annotation


# static fields
.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lio/dcloud/common/DHInterface/AbsMgr;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/ui/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    .line 7
    iput-object v0, p0, Lio/dcloud/feature/ui/e;->c:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 11
    iput-object p2, p0, Lio/dcloud/feature/ui/e;->c:Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Lio/dcloud/feature/ui/e;->a()V

    return-void
.end method

.method private a(Landroid/view/View;)I
    .registers 3

    if-eqz p1, :cond_1d

    .line 1178
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v0, :cond_10

    .line 1179
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result p1

    :goto_e
    float-to-int p1, p1

    return p1

    .line 1180
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1d

    .line 1181
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result p1

    goto :goto_e

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lio/dcloud/feature/ui/e;Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/ui/e;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;
    .registers 2

    .line 1133
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1135
    :try_start_6
    sget-object v0, Lio/dcloud/feature/ui/e;->d:Ljava/util/HashMap;

    .line 1136
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1137
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 1138
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .line 1139
    instance-of v0, p0, Lio/dcloud/feature/ui/b;

    if-eqz v0, :cond_2f

    .line 1140
    check-cast p0, Lio/dcloud/feature/ui/b;
    :try_end_20
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_20} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_20} :catch_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_20} :catch_21

    goto :goto_30

    :catch_21
    move-exception p0

    .line 1147
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2f

    :catch_26
    move-exception p0

    .line 1148
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2f

    :catch_2b
    move-exception p0

    .line 1149
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_2f
    :goto_2f
    const/4 p0, 0x0

    :goto_30
    return-object p0
.end method

.method private a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Z)Lio/dcloud/feature/ui/c;
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p9

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNWindow pUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    const-string v1, "directPage"

    const/4 v14, 0x0

    .line 969
    invoke-virtual {v12, v1, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "winType"

    .line 970
    invoke-virtual {v12, v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_38

    .line 971
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :goto_39
    invoke-interface {v9, v3, v10}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x5

    if-eqz v1, :cond_42

    const/4 v5, 0x5

    goto :goto_43

    :cond_42
    move v5, v2

    :goto_43
    if-eqz p10, :cond_47

    const/4 v4, 0x0

    goto :goto_49

    :cond_47
    move-object v4, v3

    const/4 v3, 0x0

    .line 981
    :goto_49
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IApp;->obtainWebviewBaseUrl()Ljava/lang/String;

    .line 983
    invoke-direct {v0, v8, v9, v4}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V

    .line 985
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    .line 988
    invoke-static/range {p4 .. p4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    xor-int/lit8 v16, v1, 0x1

    const/4 v1, 0x4

    if-ne v5, v1, :cond_62

    .line 990
    invoke-virtual {v7, v1}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v17

    goto :goto_6b

    :cond_62
    if-ne v5, v6, :cond_69

    .line 992
    invoke-virtual {v7, v6}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v17

    goto :goto_6b

    :cond_69
    const/16 v17, 0x0

    :goto_6b
    if-nez v17, :cond_87

    .line 995
    new-instance v17, Lio/dcloud/feature/ui/c;

    move-object/from16 v1, v17

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    move-object v3, v4

    move-object/from16 v20, v4

    move-object/from16 v4, p5

    move/from16 v21, v5

    move-object/from16 v5, p6

    const/4 v15, 0x5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/ui/c;-><init>(Lio/dcloud/feature/ui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_90

    :cond_87
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    const/4 v15, 0x5

    :goto_90
    move-object/from16 v1, p8

    move-object/from16 v6, v17

    .line 998
    iput-object v1, v6, Lio/dcloud/feature/ui/c;->x:Lorg/json/JSONObject;

    .line 1000
    iget-object v1, v0, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v3, v15, [Ljava/lang/Object;

    .line 1002
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    const/4 v4, 0x1

    aput-object v9, v3, v4

    const/4 v5, 0x3

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v10, v15, v14

    aput-object v12, v15, v4

    const/4 v4, 0x2

    aput-object p6, v15, v4

    aput-object v15, v3, v4

    .line 1003
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v10, 0x4

    aput-object v6, v3, v10

    .line 1004
    invoke-interface {v1, v2, v5, v3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz p10, :cond_cc

    .line 1010
    invoke-interface {v15}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IWebview;->setOriginalUrl(Ljava/lang/String;)V

    :cond_cc
    if-eqz v13, :cond_d2

    .line 1013
    iput-object v13, v6, Lio/dcloud/feature/ui/c;->v:Lorg/json/JSONArray;

    .line 1014
    iput-object v8, v6, Lio/dcloud/feature/ui/c;->w:Lio/dcloud/common/DHInterface/IWebview;

    .line 1016
    :cond_d2
    invoke-virtual {v6, v15, v11}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V

    .line 1019
    iget-object v1, v6, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    const-string v2, "plusrequire"

    .line 1020
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 1021
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ea
    const-string v3, "replacewebapi"

    .line 1023
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "geolocation"

    if-eqz v4, :cond_108

    .line 1024
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_115

    .line 1025
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_115

    .line 1026
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_115

    .line 1029
    :cond_108
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 1030
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_115
    :goto_115
    const-string v3, "injection"

    .line 1032
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_128

    .line 1033
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 1034
    invoke-interface {v1, v3, v4}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_128
    const-string v3, "overrideresource"

    .line 1036
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_137

    .line 1037
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IWebview;->setOverrideResourceRequest(Lorg/json/JSONArray;)V

    :cond_137
    const-string v3, "overrideurl"

    .line 1039
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_146

    .line 1040
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IWebview;->setOverrideUrlLoadingData(Lorg/json/JSONObject;)V

    .line 1043
    :cond_146
    invoke-static/range {v18 .. v18}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b9

    .line 1044
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v3

    if-eq v3, v10, :cond_161

    .line 1045
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1b9

    .line 1046
    :cond_161
    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_181

    const-string v2, "_www/__wap2app.js"

    const/4 v3, 0x0

    .line 1047
    invoke-interface {v9, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    const-string v2, "_www/__wap2appconfig.js"

    .line 1048
    invoke-interface {v9, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    goto :goto_182

    :cond_181
    const/4 v3, 0x0

    .line 1050
    :goto_182
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "_www/server_index_append.js"

    invoke-interface {v9, v2, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 1051
    invoke-interface {v1, v2, v4}, Lio/dcloud/common/DHInterface/IWebview;->setPreloadJsFile(Ljava/lang/String;Z)V

    const-string v2, "_www/server_index_append.css"

    .line 1052
    invoke-interface {v9, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1053
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1a5

    .line 1055
    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b9

    :cond_1a5
    const-string v2, "_www/__wap2app.css"

    .line 1057
    invoke-interface {v9, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1058
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1b9

    .line 1060
    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b9
    :goto_1b9
    const-string v2, "appendCss"

    .line 1067
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c6

    .line 1068
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1d4

    :cond_1c6
    const-string v2, "preloadcss"

    .line 1070
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d3

    .line 1071
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1d4

    :cond_1d3
    const/4 v3, 0x0

    .line 1073
    :goto_1d4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1df

    const/4 v2, 0x0

    .line 1074
    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e0

    :cond_1df
    const/4 v2, 0x0

    :goto_1e0
    const-string v3, "appendJs"

    .line 1078
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f1

    .line 1079
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_201

    :cond_1f1
    const-string v3, "preloadjs"

    .line 1081
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_201

    .line 1082
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1084
    :cond_201
    :goto_201
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20a

    .line 1085
    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    :cond_20a
    if-eqz v16, :cond_238

    const/4 v1, 0x6

    move/from16 v2, v21

    if-ne v2, v1, :cond_22d

    const-string v1, "additionalHttpHeaders"

    .line 1090
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22d

    .line 1091
    iget-object v2, v6, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/JSONUtil;->toMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-interface {v2, v3, v1}, Lio/dcloud/common/DHInterface/IWebview;->setLoadURLHeads(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_22f

    :cond_22d
    move-object/from16 v3, v20

    .line 1093
    :goto_22f
    iget-object v1, v6, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    .line 1095
    :cond_238
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v15}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    move-object v1, v6

    move-object/from16 v3, p1

    move-object/from16 v5, p6

    move-object v8, v6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1101
    invoke-interface {v15}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_25b

    .line 1104
    invoke-virtual {v7, v15}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/common/DHInterface/IFrameView;)V

    .line 1107
    :cond_25b
    invoke-virtual {v7, v8}, Lio/dcloud/feature/ui/a;->e(Lio/dcloud/feature/ui/c;)V

    .line 1108
    invoke-virtual {v8, v12, v14}, Lio/dcloud/feature/ui/c;->a(Lorg/json/JSONObject;Z)Z

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " createNWindow webview_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "View_Visible_Path"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p3

    .line 930
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    move-object v3, p1

    invoke-virtual {p1, v1}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/feature/ui/c;

    move-result-object v1

    const/4 v2, 0x0

    .line 931
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new -- JSNWindow="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UIWidgetMgr"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 933
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x2

    .line 934
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x4

    .line 936
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v4, 0x5

    .line 937
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v2, :cond_48

    .line 941
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "{}"

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    move-object v9, v0

    move-object v7, v2

    goto :goto_5c

    :cond_48
    const-string v0, "name"

    .line 943
    invoke-static {v2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    const-string v0, "webviewid"

    .line 946
    invoke-static {v2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5a
    move-object v7, v0

    move-object v9, v2

    :goto_5c
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move/from16 v12, p6

    .line 949
    invoke-direct/range {v2 .. v12}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Z)Lio/dcloud/feature/ui/c;

    move-result-object v0

    if-eqz v1, :cond_6f

    .line 953
    invoke-virtual {v1, v0}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/feature/ui/c;)V

    :cond_6f
    if-eqz v13, :cond_7a

    .line 956
    iget-object v1, v0, Lio/dcloud/feature/ui/b;->b:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    :cond_7a
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 960
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v1

    .line 962
    iget-object v2, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 963
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 964
    invoke-virtual {v2}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v3

    iput-boolean v3, v0, Lio/dcloud/feature/ui/c;->J:Z

    .line 965
    iget-object v3, v2, Lio/dcloud/common/adapter/util/ViewOptions;->transition:Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lio/dcloud/common/adapter/util/AnimOptions;->parseTransition(Lorg/json/JSONObject;)V

    .line 966
    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->transform:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lio/dcloud/common/adapter/util/AnimOptions;->parseTransform(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 15

    .line 1151
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_16

    new-array v0, v3, [I

    aput p2, v0, v2

    aput p3, v0, v1

    .line 1152
    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object p2

    goto :goto_2c

    .line 1153
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2b

    new-array v0, v3, [F

    int-to-float p2, p2

    aput p2, v0, v2

    int-to-float p2, p3

    aput p2, v0, v1

    .line 1154
    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object p2

    goto :goto_2c

    :cond_2b
    const/4 p2, 0x0

    :goto_2c
    const-wide/16 v0, 0xc8

    .line 1156
    invoke-virtual {p2, v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 1157
    new-instance p3, Lio/dcloud/feature/ui/e$b;

    invoke-direct {p3, p0, p1}, Lio/dcloud/feature/ui/e$b;-><init>(Lio/dcloud/feature/ui/e;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1177
    new-instance p3, Lio/dcloud/feature/ui/e$c;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p7

    move-object v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/ui/e$c;-><init>(Lio/dcloud/feature/ui/e;Landroid/view/View;Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    return-object p2
.end method

.method private a()V
    .registers 5

    .line 1150
    iget-object v0, p0, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/feature/ui/e;->c:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lio/dcloud/feature/ui/e;->d:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V
    .registers 6

    .line 1110
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 1111
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://"

    .line 1113
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string v0, "https://"

    .line 1114
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 1115
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_66

    .line 1120
    :cond_31
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1121
    invoke-static {p3}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1124
    invoke-interface {p2, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1125
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1127
    invoke-interface {p2, p3}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 1131
    invoke-static {p1}, Lio/dcloud/feature/ui/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p2}, Lio/dcloud/feature/ui/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    const-string p1, "{\"open\": {\"opener\":\"%s\",\"opened\":\"%s\"}}"

    .line 1132
    invoke-static {p1, p3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".stream_json"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_66
    :goto_66
    return-void
.end method

.method private a(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
    .registers 14

    .line 916
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    .line 917
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 918
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v2

    .line 919
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v0

    .line 920
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    move-object v8, v0

    goto :goto_1d

    :cond_1c
    move-object v8, v2

    .line 921
    :goto_1d
    new-instance v9, Lio/dcloud/feature/ui/c;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p2

    move-object v3, v8

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/ui/c;-><init>(Lio/dcloud/feature/ui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 922
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p2

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    .line 923
    iput-boolean v0, v9, Lio/dcloud/feature/ui/c;->F:Z

    .line 924
    iput-boolean v0, v9, Lio/dcloud/feature/ui/c;->H:Z

    const/4 v1, 0x1

    .line 925
    invoke-virtual {v9, v1}, Lio/dcloud/feature/ui/c;->a(Z)V

    .line 926
    invoke-interface {p3, v9}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 927
    invoke-virtual {v9, p3, v8}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V

    .line 928
    invoke-virtual {p2, v9}, Lio/dcloud/feature/ui/a;->e(Lio/dcloud/feature/ui/c;)V

    .line 929
    invoke-virtual {p2, p1, v9, v0}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    const-string v0, "./"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    const-string v0, "../"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const-string v0, ".../"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x4

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_32
    return-object p0
.end method


# virtual methods
.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 32

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "WebviewGroup"

    const-string v1, "NWindow"

    const-string v2, "js"

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2
    :try_start_10
    invoke-static {v11, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x1

    .line 3
    invoke-static {v11, v15}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    .line 4
    invoke-static {v11, v7}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v5

    .line 5
    invoke-static {v5, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {v5, v15}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v14

    .line 7
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v7
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_90a

    if-nez v7, :cond_2d

    return-object v13

    .line 10
    :cond_2d
    :try_start_2d
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v13

    .line 12
    iget-object v15, v9, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/dcloud/feature/ui/a;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_39} :catch_903

    move-object/from16 v19, v2

    const-string v2, "Main_Path"

    if-eqz v15, :cond_a5

    .line 13
    :try_start_3f
    iget-object v11, v15, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    .line 14
    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IApp;->obtainAppStatus()B

    move-result v11

    const/4 v10, 0x1

    if-ne v11, v10, :cond_49

    goto :goto_a5

    .line 42
    :cond_49
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-interface {v10}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_63

    .line 43
    iget-boolean v10, v15, Lio/dcloud/feature/ui/a;->i:Z

    if-nez v10, :cond_96

    .line 44
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-virtual {v9, v13, v15, v10}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V

    const/4 v10, 0x1

    .line 45
    iput-boolean v10, v15, Lio/dcloud/feature/ui/a;->i:Z

    goto :goto_96

    .line 47
    :cond_63
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-interface {v10}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7d

    .line 48
    iget-boolean v10, v15, Lio/dcloud/feature/ui/a;->h:Z

    if-nez v10, :cond_96

    .line 49
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-virtual {v9, v13, v15, v10}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V

    const/4 v10, 0x1

    .line 50
    iput-boolean v10, v15, Lio/dcloud/feature/ui/a;->h:Z

    goto :goto_96

    .line 52
    :cond_7d
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-interface {v10}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_96

    .line 53
    iget-boolean v10, v15, Lio/dcloud/feature/ui/a;->j:Z

    if-nez v10, :cond_96

    .line 54
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-direct {v9, v13, v15, v10}, Lio/dcloud/feature/ui/e;->a(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V

    const/4 v10, 0x1

    .line 55
    iput-boolean v10, v15, Lio/dcloud/feature/ui/a;->j:Z

    :cond_96
    :goto_96
    move-object/from16 v22, v7

    move-object/from16 v20, v12

    goto/16 :goto_137

    :catch_9c
    move-exception v0

    :goto_9d
    move-object/from16 v1, p2

    move-object/from16 v12, p3

    :goto_a1
    move-object v2, v0

    :goto_a2
    const/4 v13, 0x0

    goto/16 :goto_90f

    :cond_a5
    :goto_a5
    if-eqz v15, :cond_b5

    .line 56
    iget-object v10, v15, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    .line 57
    invoke-interface {v10}, Lio/dcloud/common/DHInterface/IApp;->obtainAppStatus()B

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b5

    .line 58
    iget-object v10, v9, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_b5} :catch_9c

    .line 60
    :cond_b5
    :try_start_b5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init AppWidgetMgr pAppid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v10, Lio/dcloud/feature/ui/a;

    iget-object v11, v9, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-direct {v10, v11, v7}, Lio/dcloud/feature/ui/a;-><init>(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IApp;)V

    .line 62
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v11

    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v11

    const/4 v15, 0x3

    if-ne v11, v15, :cond_dd

    const/4 v11, 0x1

    goto :goto_de

    :cond_dd
    const/4 v11, 0x0

    :goto_de
    iput-boolean v11, v10, Lio/dcloud/feature/ui/a;->i:Z

    .line 63
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v11

    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v11

    const/4 v15, 0x2

    if-ne v11, v15, :cond_ed

    const/4 v11, 0x1

    goto :goto_ee

    :cond_ed
    const/4 v11, 0x0

    :goto_ee
    iput-boolean v11, v10, Lio/dcloud/feature/ui/a;->h:Z

    .line 64
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v11

    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v11

    const/4 v15, 0x7

    if-ne v11, v15, :cond_fd

    const/4 v11, 0x1

    goto :goto_fe

    :cond_fd
    const/4 v11, 0x0

    :goto_fe
    iput-boolean v11, v10, Lio/dcloud/feature/ui/a;->j:Z

    .line 65
    iget-object v11, v9, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {v11, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v11

    .line 70
    iget-boolean v15, v10, Lio/dcloud/feature/ui/a;->j:Z
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_10b} :catch_8fd

    if-eqz v15, :cond_119

    .line 71
    :try_start_10d
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v11

    invoke-direct {v9, v13, v10, v11}, Lio/dcloud/feature/ui/e;->a(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_114} :catch_9c

    move-object/from16 v22, v7

    move-object/from16 v20, v12

    goto :goto_136

    .line 73
    :cond_119
    :try_start_119
    invoke-virtual {v9, v13, v10, v11}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V

    .line 75
    iget-object v15, v9, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    move-object/from16 v20, v12

    sget-object v12, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    move-object/from16 v22, v7

    const/16 v7, 0x9

    invoke-interface {v15, v12, v7, v13}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/dcloud/common/DHInterface/IFrameView;
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_12c} :catch_8fd

    if-eqz v7, :cond_136

    if-eq v11, v7, :cond_136

    const/4 v11, 0x1

    .line 77
    :try_start_131
    iput-boolean v11, v10, Lio/dcloud/feature/ui/a;->h:Z

    .line 78
    invoke-virtual {v9, v13, v10, v7}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_136} :catch_9c

    :cond_136
    :goto_136
    move-object v15, v10

    .line 102
    :goto_137
    :try_start_137
    invoke-static {v4}, Lio/dcloud/feature/ui/e$e;->valueOf(Ljava/lang/String;)Lio/dcloud/feature/ui/e$e;

    move-result-object v7
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13b} :catch_13c

    goto :goto_13d

    :catch_13c
    const/4 v7, 0x0

    :goto_13d
    :try_start_13d
    const-string v10, "UI"

    .line 107
    invoke-static {v10, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_143} :catch_8fd

    const/4 v11, 0x5

    const/4 v12, 0x4

    if-eqz v10, :cond_4bc

    .line 108
    :try_start_147
    invoke-virtual {v15, v8}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 109
    sget-object v1, Lio/dcloud/feature/ui/e$d;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_49e

    const/4 v4, 0x2

    if-eq v1, v4, :cond_47a

    packed-switch v1, :pswitch_data_932

    goto/16 :goto_4af

    :pswitch_15d
    const/4 v1, 0x0

    .line 328
    invoke-virtual {v14, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {v14, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_175

    .line 332
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/BaseInfo;->getUniNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v3

    goto :goto_187

    :cond_175
    const/4 v3, 0x0

    .line 334
    invoke-virtual {v15, v3, v3, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v4

    if-eqz v4, :cond_185

    .line 335
    iget-object v3, v4, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v3, :cond_185

    .line 336
    invoke-static {v3}, Lio/dcloud/common/util/BaseInfo;->getUniNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v3
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_184} :catch_9c

    goto :goto_187

    :cond_185
    const-string v3, ""

    .line 339
    :goto_187
    :try_start_187
    sget-object v4, Lio/dcloud/feature/ui/e$e;->t:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v7, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18d} :catch_9c

    const-string v5, "weex,io.dcloud.feature.weex.WeexFeature"

    const/16 v6, 0xa

    if-eqz v4, :cond_1c2

    .line 340
    :try_start_193
    iget-object v4, v9, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v7, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v10, v16

    const/4 v14, 0x1

    aput-object v5, v10, v14

    const-string v5, "callNativeModuleSync"

    const/16 v17, 0x2

    aput-object v5, v10, v17

    new-array v5, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v5, v11

    aput-object v3, v5, v14

    aput-object v1, v5, v17

    const/4 v1, 0x3

    aput-object v13, v5, v1

    aput-object v2, v5, v12

    aput-object v5, v10, v1

    invoke-interface {v4, v7, v6, v10}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_473

    .line 342
    :cond_1c2
    iget-object v4, v9, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v7, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v10, v16

    const/4 v14, 0x1

    aput-object v5, v10, v14

    const-string v5, "postMessageToUniNView"

    const/16 v17, 0x2

    aput-object v5, v10, v17

    new-array v5, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v5, v11

    aput-object v3, v5, v14

    aput-object v1, v5, v17

    const/4 v1, 0x3

    aput-object v13, v5, v1

    aput-object v2, v5, v12

    aput-object v5, v10, v1

    invoke-interface {v4, v7, v6, v10}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_46a

    .line 343
    :pswitch_1ee
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->e()Ljava/lang/String;

    move-result-object v1
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1f2} :catch_9c

    goto/16 :goto_473

    :pswitch_1f4
    const/4 v1, 0x0

    .line 344
    :try_start_1f5
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v1, 0x1

    .line 345
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v1, 0x2

    .line 346
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    .line 347
    invoke-static {v14, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v10

    .line 349
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 351
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_21e
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_21e} :catch_475

    if-nez v5, :cond_22c

    .line 352
    :try_start_220
    invoke-virtual {v15, v1, v1, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_22c

    .line 354
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_22a} :catch_9c

    move-object v11, v1

    goto :goto_22d

    :cond_22c
    const/4 v11, 0x0

    :goto_22d
    const-string v1, "action"

    const-string v5, "view"

    const v6, 0x7fffffff

    if-eqz v2, :cond_2bd

    .line 363
    :try_start_236
    invoke-static {v2, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 364
    invoke-static {v2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "styles"

    .line 365
    invoke-static {v2, v12}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v12, "fromLeft"

    .line 366
    invoke-static {v2, v12}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "toLeft"

    .line 367
    invoke-static {v2, v13}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-static {v12, v4, v6}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v12

    .line 369
    invoke-static {v2, v4, v6}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v2

    const/4 v13, 0x0

    .line 370
    invoke-virtual {v15, v13, v7, v7}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v7

    if-eq v6, v2, :cond_2b7

    if-eqz v7, :cond_2b7

    .line 373
    iget-object v13, v7, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v13}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v13

    .line 374
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_2ae

    if-eq v6, v12, :cond_270

    goto :goto_288

    .line 379
    :cond_270
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 380
    instance-of v14, v12, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v14, :cond_27d

    .line 381
    check-cast v12, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v12, v12, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    goto :goto_288

    .line 382
    :cond_27d
    instance-of v12, v12, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v12, :cond_287

    .line 383
    invoke-static {v13}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v12

    float-to-int v12, v12

    goto :goto_288

    :cond_287
    const/4 v12, 0x0

    .line 386
    :goto_288
    iget-object v14, v7, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v14}, Lio/dcloud/common/DHInterface/IFrameView;->pushToViewStack()V

    .line 387
    invoke-virtual {v7}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v14

    invoke-virtual {v14}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v14

    iput v2, v14, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 388
    invoke-virtual {v7}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v14

    invoke-virtual {v14}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v19

    const-string v20, "left"

    const/16 v23, 0x1

    const/16 v24, 0x1

    move/from16 v21, v2

    move/from16 v22, v4

    invoke-virtual/range {v19 .. v24}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_2ac} :catch_9c

    const/4 v14, 0x1

    goto :goto_2b0

    :cond_2ae
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_2b0
    move-object/from16 v27, v7

    move v7, v2

    move-object v2, v13

    move-object/from16 v13, v27

    goto :goto_2c3

    :cond_2b7
    move-object v13, v7

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v7, v2

    const/4 v2, 0x0

    goto :goto_2c3

    :cond_2bd
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2c3
    if-eqz v3, :cond_352

    .line 395
    :try_start_2c5
    invoke-static {v3, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-static {v3, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "styles"

    .line 397
    invoke-static {v3, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "fromLeft"

    .line 398
    invoke-static {v3, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v1

    const-string v1, "toLeft"

    .line 399
    invoke-static {v3, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7fffffff

    .line 400
    invoke-static {v6, v4, v3}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v6

    .line 401
    invoke-static {v1, v4, v3}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x0

    .line 402
    invoke-virtual {v15, v3, v5, v5}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v5

    const v3, 0x7fffffff

    if-eq v3, v1, :cond_350

    if-eqz v5, :cond_350

    .line 405
    iget-object v3, v5, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v3

    .line 406
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_357

    const v9, 0x7fffffff

    if-eq v9, v6, :cond_30a

    goto :goto_322

    .line 411
    :cond_30a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 412
    instance-of v9, v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v9, :cond_317

    .line 413
    check-cast v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v6, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    goto :goto_322

    .line 414
    :cond_317
    instance-of v6, v6, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v6, :cond_321

    .line 415
    invoke-static {v3}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v6

    float-to-int v6, v6

    goto :goto_322

    :cond_321
    const/4 v6, 0x0

    .line 418
    :goto_322
    iget-object v9, v5, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IFrameView;->pushToViewStack()V

    .line 419
    invoke-virtual {v5}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v9

    invoke-virtual {v9}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v9

    iput v1, v9, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 420
    invoke-virtual {v5}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v9

    invoke-virtual {v9}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v19

    const-string v20, "left"

    const/16 v23, 0x1

    const/16 v24, 0x1

    move/from16 v21, v1

    move/from16 v22, v4

    invoke-virtual/range {v19 .. v24}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    move-object v9, v3

    move-object/from16 v19, v5

    move/from16 v16, v6

    move-object/from16 v18, v17

    const/16 v20, 0x1

    goto :goto_360

    :cond_350
    const/4 v3, 0x0

    goto :goto_357

    :cond_352
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    :cond_357
    :goto_357
    move-object v9, v3

    move-object/from16 v19, v5

    move-object/from16 v18, v17

    const/16 v16, 0x0

    const/16 v20, 0x0

    :goto_360
    move/from16 v17, v1

    if-eqz v14, :cond_373

    move-object/from16 v1, p0

    move v3, v12

    move v4, v7

    move-object v5, v8

    move-object v6, v11

    move-object v7, v10

    move-object v8, v13

    .line 429
    invoke-direct/range {v1 .. v8}, Lio/dcloud/feature/ui/e;->a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    :cond_373
    if-eqz v20, :cond_46a

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object v6, v11

    move-object v7, v10

    move-object/from16 v8, v19

    .line 432
    invoke-direct/range {v1 .. v8}, Lio/dcloud/feature/ui/e;->a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    goto/16 :goto_46a

    .line 433
    :pswitch_38b
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/adapter/util/MobilePhoneModel;->checkPhoneBanAcceleration(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_471

    :pswitch_397
    const/4 v1, 0x0

    .line 434
    invoke-static {v5, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 435
    invoke-static {v5, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_3a1
    .catch Ljava/lang/Exception; {:try_start_2c5 .. :try_end_3a1} :catch_475

    :try_start_3a1
    const-string v3, "0"

    .line 437
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "save"

    .line 438
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b7

    .line 439
    move-object v2, v8

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2, v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->saveWebViewData(Ljava/lang/String;)V

    goto/16 :goto_46a

    :cond_3b7
    const-string v3, "update"

    .line 440
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46a

    .line 441
    move-object v2, v8

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2, v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->syncUpdateWebViewData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3c6
    .catch Ljava/lang/Exception; {:try_start_3a1 .. :try_end_3c6} :catch_3c8

    goto/16 :goto_471

    :catch_3c8
    move-exception v0

    move-object v1, v0

    .line 446
    :try_start_3ca
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_46a

    :pswitch_3cf
    const/4 v1, 0x0

    .line 447
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 448
    invoke-virtual {v15, v6, v6, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v3

    if-eqz v3, :cond_46a

    .line 451
    iget-object v2, v3, Lio/dcloud/feature/ui/b;->b:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_46a

    :pswitch_3e6
    const/4 v1, 0x0

    .line 452
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 453
    invoke-static {v14, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    .line 454
    invoke-static {v1}, Lio/dcloud/feature/ui/e;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v1

    const/4 v7, 0x2

    .line 455
    invoke-static {v14, v7}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v2, 0x3

    .line 457
    invoke-static {v14, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 459
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->b:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-virtual {v15, v5, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/b;)V

    .line 462
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v3, v15

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_46a

    .line 463
    :pswitch_415
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    .line 464
    invoke-virtual {v15, v1}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/feature/ui/c;

    move-result-object v3

    if-eqz v3, :cond_424

    .line 466
    invoke-virtual {v3}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_471

    .line 468
    :cond_424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ui.execute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found NWindow uuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";frameView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46a

    .line 469
    :pswitch_449
    invoke-virtual {v15, v12}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_46a

    .line 471
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_471

    .line 472
    :pswitch_454
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->c()Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_46a

    .line 474
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_471

    .line 475
    :pswitch_45f
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->d()Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_46a

    .line 477
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_471

    :cond_46a
    :goto_46a
    move-object/from16 v9, p0

    goto :goto_4af

    .line 478
    :pswitch_46d
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->b()Ljava/lang/String;

    move-result-object v1
    :try_end_471
    .catch Ljava/lang/Exception; {:try_start_3ca .. :try_end_471} :catch_475

    :goto_471
    move-object/from16 v9, p0

    :goto_473
    move-object v13, v1

    goto :goto_4b0

    :catch_475
    move-exception v0

    move-object/from16 v9, p0

    goto/16 :goto_9d

    .line 479
    :cond_47a
    :try_start_47a
    iget-object v1, v9, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0x2c

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 480
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 481
    invoke-virtual {v15, v1, v1, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_4af

    .line 484
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_473

    :cond_49e
    const/4 v1, 0x0

    .line 485
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 486
    invoke-virtual {v15, v2, v2, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_4af

    .line 489
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1
    :try_end_4ae
    .catch Ljava/lang/Exception; {:try_start_47a .. :try_end_4ae} :catch_9c

    goto :goto_473

    :cond_4af
    :goto_4af
    const/4 v13, 0x0

    .line 721
    :goto_4b0
    :try_start_4b0
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->g()V
    :try_end_4b3
    .catch Ljava/lang/Exception; {:try_start_4b0 .. :try_end_4b3} :catch_4b5

    goto/16 :goto_930

    :catch_4b5
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v12, p3

    goto/16 :goto_90e

    :cond_4bc
    const/4 v7, 0x2

    .line 722
    :try_start_4bd
    invoke-static {v1, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_4c1
    .catch Ljava/lang/Exception; {:try_start_4bd .. :try_end_4c1} :catch_8fd

    if-eqz v5, :cond_516

    .line 723
    :try_start_4c3
    invoke-virtual {v15, v8}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 724
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d9

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, v22

    .line 726
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    goto :goto_510

    :cond_4d9
    const/4 v1, 0x0

    .line 729
    invoke-virtual {v15, v6, v6, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v3

    if-eqz v3, :cond_4e5

    .line 732
    invoke-virtual {v3, v8, v4, v14}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v13

    goto :goto_511

    .line 735
    :cond_4e5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " App not found NWindow ;uuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";_action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 738
    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_510
    .catch Ljava/lang/Exception; {:try_start_4c3 .. :try_end_510} :catch_9c

    :goto_510
    const/4 v13, 0x0

    .line 743
    :goto_511
    :try_start_511
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->g()V
    :try_end_514
    .catch Ljava/lang/Exception; {:try_start_511 .. :try_end_514} :catch_4b5

    goto/16 :goto_930

    :cond_516
    move-object/from16 v10, v20

    .line 744
    :try_start_518
    invoke-static {v10, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_51c
    .catch Ljava/lang/Exception; {:try_start_518 .. :try_end_51c} :catch_8fd

    if-eqz v1, :cond_5f4

    :try_start_51e
    const-string v1, "createGroup"

    .line 745
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e8

    .line 746
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 747
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v1, 0x1

    .line 748
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_540

    .line 750
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_541

    :cond_540
    move-object v3, v2

    :goto_541
    const/4 v2, 0x0

    .line 752
    :goto_542
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_583

    .line 753
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v5, 0x1

    .line 754
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v1, p0

    move/from16 v23, v2

    move-object v2, v15

    move-object v5, v3

    move-object/from16 v3, p1

    move-object/from16 v24, v4

    move-object/from16 v4, v19

    move-object v11, v5

    const/4 v12, 0x6

    move-object/from16 v5, v22

    move-object/from16 v25, v6

    move-object/from16 v26, v22

    move/from16 v7, v20

    .line 755
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    move-result-object v1

    const/4 v2, 0x1

    .line 756
    invoke-virtual {v1, v2}, Lio/dcloud/feature/ui/c;->b(Z)V

    .line 757
    iget-object v1, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v23, 0x1

    move-object v3, v11

    move-object/from16 v4, v24

    move-object/from16 v6, v25

    move-object/from16 v22, v26

    const/4 v7, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x4

    goto :goto_542

    :cond_583
    move-object v11, v3

    move-object/from16 v25, v6

    move-object/from16 v26, v22

    const/4 v12, 0x6

    .line 759
    new-instance v7, Lio/dcloud/feature/ui/d;

    invoke-direct {v7, v10, v13, v11}, Lio/dcloud/feature/ui/d;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;)V

    .line 760
    iget-object v1, v9, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v3, v12, [Ljava/lang/Object;

    const/4 v4, 0x1

    .line 762
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    move-object/from16 v5, v26

    aput-object v5, v3, v4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v11, v4, v6

    const/4 v10, 0x2

    aput-object v4, v3, v10

    .line 763
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v3, v6

    const/4 v4, 0x4

    aput-object v7, v3, v4

    const/4 v4, 0x5

    aput-object v13, v3, v4

    .line 764
    invoke-interface {v1, v2, v6, v3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lio/dcloud/common/DHInterface/IFrameView;

    .line 769
    invoke-virtual {v7, v12}, Lio/dcloud/feature/ui/d;->a(Lio/dcloud/common/DHInterface/IFrameView;)V

    .line 770
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v1, v7

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, v25

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 772
    iget-object v1, v7, Lio/dcloud/feature/ui/b;->b:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v25

    .line 773
    invoke-virtual {v15, v11, v7}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/b;)V

    .line 774
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_607

    .line 775
    invoke-virtual {v15, v12}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/common/DHInterface/IFrameView;)V

    goto :goto_607

    :cond_5e8
    move-object v11, v6

    .line 778
    invoke-virtual {v15, v11}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v1

    .line 779
    invoke-virtual {v1, v8, v4, v14}, Lio/dcloud/feature/ui/b;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1
    :try_end_5f1
    .catch Ljava/lang/Exception; {:try_start_51e .. :try_end_5f1} :catch_9c

    :goto_5f1
    move-object v13, v1

    goto/16 :goto_930

    :cond_5f4
    move-object v11, v6

    move-object/from16 v5, v22

    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x6

    :try_start_5fa
    const-string v1, "updateAppFrameViews"
    :try_end_5fc
    .catch Ljava/lang/Exception; {:try_start_5fa .. :try_end_5fc} :catch_8fd

    move-object/from16 v7, p2

    .line 781
    :try_start_5fe
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_602
    .catch Ljava/lang/Exception; {:try_start_5fe .. :try_end_602} :catch_8f8

    if-eqz v1, :cond_611

    .line 782
    :try_start_604
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->i()V
    :try_end_607
    .catch Ljava/lang/Exception; {:try_start_604 .. :try_end_607} :catch_60a

    :cond_607
    :goto_607
    const/4 v3, 0x0

    goto/16 :goto_8f2

    :catch_60a
    move-exception v0

    move-object/from16 v12, p3

    :goto_60d
    move-object v2, v0

    move-object v1, v7

    goto/16 :goto_a2

    :cond_611
    :try_start_611
    const-string v1, "n_createDirectWebview"

    .line 783
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_617
    .catch Ljava/lang/Exception; {:try_start_611 .. :try_end_617} :catch_8f8

    const-string v2, "winType"

    if-eqz v1, :cond_6d4

    .line 784
    :try_start_61b
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 785
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "direct_page"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 788
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    sget-object v3, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_642

    .line 790
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_642
    const/4 v3, 0x5

    .line 792
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 793
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "backButtonAutoControl"

    const-string v3, "quit"

    .line 794
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "extras"

    .line 795
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_656
    .catch Ljava/lang/Exception; {:try_start_61b .. :try_end_656} :catch_60a

    const-string v2, "__wap2app_type"

    if-eqz v1, :cond_667

    .line 797
    :try_start_65a
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_665

    const-string v3, "direct"

    .line 798
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_665
    :goto_665
    const/4 v2, 0x4

    goto :goto_672

    .line 801
    :cond_667
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "direct"

    .line 802
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_665

    .line 804
    :goto_672
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_675
    .catch Ljava/lang/Exception; {:try_start_65a .. :try_end_675} :catch_60a

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v6, v11

    move-object v8, v7

    move v7, v12

    .line 806
    :try_start_67e
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-nez v11, :cond_690

    .line 808
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    :cond_690
    const/4 v2, 0x1

    .line 810
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->F:Z

    .line 811
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->H:Z

    const/4 v2, 0x4

    .line 812
    invoke-virtual {v15, v2}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v2

    if-eqz v2, :cond_6a4

    .line 814
    iget-wide v2, v2, Lio/dcloud/feature/ui/c;->u:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, v1, Lio/dcloud/feature/ui/c;->u:J

    goto :goto_6b1

    .line 816
    :cond_6a4
    invoke-virtual {v15, v10}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v2

    if-eqz v2, :cond_6b1

    .line 818
    iget-wide v2, v2, Lio/dcloud/feature/ui/c;->u:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, v1, Lio/dcloud/feature/ui/c;->u:J

    .line 821
    :cond_6b1
    :goto_6b1
    invoke-virtual {v15, v1}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v2

    .line 822
    invoke-virtual {v15, v13, v1, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 823
    iget-object v2, v9, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v1, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v5, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6cb
    .catch Ljava/lang/Exception; {:try_start_67e .. :try_end_6cb} :catch_6cd

    goto/16 :goto_607

    :catch_6cd
    move-exception v0

    move-object/from16 v12, p3

    :goto_6d0
    move-object v2, v0

    move-object v1, v8

    goto/16 :goto_a2

    :cond_6d4
    :try_start_6d4
    const-string v1, "n_createHDWebview"

    .line 824
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_6da
    .catch Ljava/lang/Exception; {:try_start_6d4 .. :try_end_6da} :catch_8f8

    const-string v3, "id"

    const-string v6, "name"

    if-eqz v1, :cond_77c

    move-object/from16 v1, p3

    const/4 v10, 0x3

    .line 826
    :try_start_6e3
    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_607

    const-string v10, "url"

    const/4 v13, 0x0

    .line 829
    invoke-virtual {v4, v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 830
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v14, v19

    .line 831
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17
    :try_end_6fb
    .catch Ljava/lang/Exception; {:try_start_6e3 .. :try_end_6fb} :catch_778

    if-nez v17, :cond_728

    .line 832
    :try_start_6fd
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 833
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 834
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppTempPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 835
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/4 v1, 0x0

    invoke-static {v14, v1, v12}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    const-string v1, "preloadjs"

    .line 836
    invoke-virtual {v4, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    :cond_728
    invoke-virtual {v13, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "__hd"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x6

    .line 842
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 843
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_755
    .catch Ljava/lang/Exception; {:try_start_6fd .. :try_end_755} :catch_60a

    const/4 v10, 0x0

    move-object/from16 v12, p3

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v6, v11

    move-object v8, v7

    move v7, v10

    .line 845
    :try_start_761
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-nez v11, :cond_607

    .line 847
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;
    :try_end_773
    .catch Ljava/lang/Exception; {:try_start_761 .. :try_end_773} :catch_775

    goto/16 :goto_607

    :catch_775
    move-exception v0

    goto/16 :goto_6d0

    :catch_778
    move-exception v0

    move-object v12, v1

    goto/16 :goto_60d

    :cond_77c
    move-object/from16 v12, p3

    const/4 v10, 0x3

    :try_start_77f
    const-string v1, "n_createSecondWebview"

    .line 850
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_785
    .catch Ljava/lang/Exception; {:try_start_77f .. :try_end_785} :catch_8f6

    if-eqz v1, :cond_8e4

    .line 852
    :try_start_787
    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v5, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_607

    const-string v4, "launch_path"
    :try_end_791
    .catch Ljava/lang/Exception; {:try_start_787 .. :try_end_791} :catch_8de

    const/4 v14, 0x0

    .line 855
    :try_start_792
    invoke-virtual {v1, v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_796
    .catch Ljava/lang/Exception; {:try_start_792 .. :try_end_796} :catch_8db

    :try_start_796
    const-string v14, "mode"

    const-string v10, "front"

    .line 856
    invoke-virtual {v1, v14, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 857
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 858
    invoke-virtual {v14, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7ab
    .catch Ljava/lang/Exception; {:try_start_796 .. :try_end_7ab} :catch_8de

    :try_start_7ab
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "__second"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "child"

    .line 862
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_7c8
    .catch Ljava/lang/Exception; {:try_start_7ab .. :try_end_7c8} :catch_8d6

    if-eqz v3, :cond_7df

    :try_start_7ca
    const-string v3, "position"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7df

    const-string v3, "position"

    const-string v4, "absolute"

    .line 863
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7d9
    .catch Ljava/lang/Exception; {:try_start_7ca .. :try_end_7d9} :catch_7da

    goto :goto_7df

    :catch_7da
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_a1

    :cond_7df
    :goto_7df
    const/4 v3, 0x4

    .line 865
    :try_start_7e0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 866
    invoke-virtual {v14, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 868
    invoke-virtual {v15, v3}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v1
    :try_end_7ea
    .catch Ljava/lang/Exception; {:try_start_7e0 .. :try_end_7ea} :catch_8d6

    if-eqz v1, :cond_7ef

    const/16 v17, 0x1

    goto :goto_7f1

    :cond_7ef
    const/16 v17, 0x0

    :goto_7f1
    if-nez v11, :cond_80a

    .line 870
    :try_start_7f3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__second"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_808
    .catch Ljava/lang/Exception; {:try_start_7f3 .. :try_end_808} :catch_7da

    move-object v6, v1

    goto :goto_80b

    :cond_80a
    move-object v6, v11

    :goto_80b
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v11, p2

    .line 872
    :try_start_814
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-nez v17, :cond_607

    const/4 v2, 0x1

    .line 875
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->F:Z

    .line 876
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->H:Z

    .line 877
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_82b
    .catch Ljava/lang/Exception; {:try_start_814 .. :try_end_82b} :catch_8d0

    const/4 v3, 0x0

    :try_start_82c
    invoke-virtual {v15, v2, v3, v3}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v2

    .line 878
    iget-object v4, v15, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const-string v5, "behind"

    .line 879
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_851

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 881
    iget-wide v5, v2, Lio/dcloud/feature/ui/c;->u:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, v1, Lio/dcloud/feature/ui/c;->u:J

    if-gez v4, :cond_84b

    const/4 v14, 0x0

    goto :goto_84c

    :cond_84b
    move v14, v4

    .line 882
    :goto_84c
    invoke-virtual {v15, v13, v1, v14}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    goto/16 :goto_8f2

    :cond_851
    const-string v5, "parent"

    .line 883
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87f

    .line 884
    invoke-virtual {v2}, Lio/dcloud/feature/ui/b;->f()V

    .line 885
    invoke-virtual {v1, v2}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/b;)V

    .line 886
    invoke-virtual {v15, v1}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v2

    .line 887
    invoke-virtual {v15, v13, v1, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 888
    iget-object v2, v9, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v1, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v7, 0x2

    aput-object v1, v5, v7

    invoke-interface {v2, v4, v6, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8f2

    :cond_87f
    const-string v5, "child"

    .line 889
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8aa

    .line 890
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    .line 891
    iget-object v5, v4, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    if-nez v5, :cond_89f

    .line 892
    new-instance v5, Lorg/json/JSONObject;

    const-string v6, "{\"width\":\"100%\",\"height\":\"100%\"}"

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    .line 894
    :cond_89f
    invoke-virtual {v2, v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/b;)V

    .line 895
    invoke-virtual {v15, v1}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v2

    .line 896
    invoke-virtual {v15, v13, v1, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    goto :goto_8f2

    .line 898
    :cond_8aa
    iget-wide v5, v2, Lio/dcloud/feature/ui/c;->u:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v1, Lio/dcloud/feature/ui/c;->u:J

    const/4 v2, 0x1

    add-int/2addr v4, v2

    .line 900
    invoke-virtual {v15, v13, v1, v4}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 901
    iget-object v2, v9, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v1, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v7, 0x2

    aput-object v1, v5, v7

    invoke-interface {v2, v4, v6, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_8cd
    .catch Ljava/lang/Exception; {:try_start_82c .. :try_end_8cd} :catch_8ce

    goto :goto_8f2

    :catch_8ce
    move-exception v0

    goto :goto_8d2

    :catch_8d0
    move-exception v0

    const/4 v3, 0x0

    :goto_8d2
    move-object v2, v0

    move-object v13, v3

    move-object v1, v11

    goto :goto_90f

    :catch_8d6
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v1, p2

    goto :goto_907

    :catch_8db
    move-exception v0

    move-object v3, v14

    goto :goto_8e0

    :catch_8de
    move-exception v0

    const/4 v3, 0x0

    :goto_8e0
    move-object v2, v0

    move-object v13, v3

    move-object v1, v7

    goto :goto_90f

    :cond_8e4
    move-object v1, v7

    const/4 v3, 0x0

    .line 906
    :try_start_8e6
    invoke-virtual {v15, v11}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v2

    if-eqz v2, :cond_8f2

    .line 908
    invoke-virtual {v2, v8, v4, v14}, Lio/dcloud/feature/ui/b;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1
    :try_end_8f0
    .catch Ljava/lang/Exception; {:try_start_8e6 .. :try_end_8f0} :catch_8f4

    goto/16 :goto_5f1

    :cond_8f2
    :goto_8f2
    move-object v13, v3

    goto :goto_930

    :catch_8f4
    move-exception v0

    goto :goto_907

    :catch_8f6
    move-exception v0

    goto :goto_8fb

    :catch_8f8
    move-exception v0

    move-object/from16 v12, p3

    :goto_8fb
    move-object v1, v7

    goto :goto_906

    :catch_8fd
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v12, p3

    goto :goto_906

    :catch_903
    move-exception v0

    move-object v1, v10

    move-object v12, v11

    :goto_906
    const/4 v3, 0x0

    :goto_907
    move-object v2, v0

    move-object v13, v3

    goto :goto_90f

    :catch_90a
    move-exception v0

    move-object v1, v10

    move-object v12, v11

    move-object v3, v13

    :goto_90e
    move-object v2, v0

    .line 913
    :goto_90f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pActionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";pJsArgs="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UIWidgetMgr"

    invoke-static {v3, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_930
    return-object v13

    nop

    :pswitch_data_932
    .packed-switch 0x5
        :pswitch_46d
        :pswitch_45f
        :pswitch_454
        :pswitch_449
        :pswitch_415
        :pswitch_3e6
        :pswitch_3cf
        :pswitch_397
        :pswitch_38b
        :pswitch_1f4
        :pswitch_1ee
        :pswitch_15d
        :pswitch_15d
    .end packed-switch
.end method

.method public declared-synchronized b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .line 28
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 29
    iget-object p1, p0, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    .line 30
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/ui/a;

    .line 32
    invoke-virtual {v0}, Lio/dcloud/feature/ui/a;->a()V

    goto :goto_10

    .line 34
    :cond_20
    iget-object p1, p0, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto :goto_4e

    .line 36
    :cond_26
    iget-object v0, p0, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/ui/a;

    if-eqz v0, :cond_49

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIWidgetMgr.dispose pAppid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Main_Path"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lio/dcloud/feature/ui/a;->a()V

    .line 42
    :cond_49
    iget-object v0, p0, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4e
    return-void
.end method

.method public b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
    .registers 16

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz p3, :cond_24

    .line 6
    move-object v2, p3

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 7
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 9
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    move-object v8, v2

    goto :goto_25

    :cond_24
    move-object v8, v7

    .line 12
    :goto_25
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x2

    if-nez v2, :cond_32

    move-object v10, v1

    goto :goto_3b

    :cond_32
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v1

    if-ne v1, v9, :cond_3a

    move-object v10, p1

    goto :goto_3b

    :cond_3a
    move-object v10, v3

    .line 14
    :goto_3b
    new-instance v11, Lio/dcloud/feature/ui/c;

    move-object v1, v11

    move-object v2, p2

    move-object v4, v10

    move-object v5, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/ui/c;-><init>(Lio/dcloud/feature/ui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 17
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 18
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    move-object v3, p2

    .line 19
    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 21
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v9, :cond_69

    move-object v0, p3

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_67

    goto :goto_69

    :cond_67
    const/4 v0, 0x0

    goto :goto_6a

    :cond_69
    :goto_69
    const/4 v0, 0x1

    :goto_6a
    iput-boolean v0, v11, Lio/dcloud/feature/ui/c;->F:Z

    .line 22
    iput-boolean v2, v11, Lio/dcloud/feature/ui/c;->H:Z

    .line 23
    move-object v0, p3

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0, v11}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 24
    invoke-virtual {v11, p3, v10}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2, v11}, Lio/dcloud/feature/ui/a;->e(Lio/dcloud/feature/ui/c;)V

    .line 26
    invoke-virtual {p2, p1, v11, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 27
    new-instance p1, Lio/dcloud/feature/ui/e$a;

    invoke-direct {p1, p0, p2, v11}, Lio/dcloud/feature/ui/e$a;-><init>(Lio/dcloud/feature/ui/e;Lio/dcloud/feature/ui/a;Lio/dcloud/feature/ui/c;)V

    invoke-static {p1, v7}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.feature.ui.e.a (io.dcloud.feature.ui.e$a)
.class Lio/dcloud/feature/ui/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/a;

.field final synthetic b:Lio/dcloud/feature/ui/c;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/e;Lio/dcloud/feature/ui/a;Lio/dcloud/feature/ui/c;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/e$a;->a:Lio/dcloud/feature/ui/a;

    iput-object p3, p0, Lio/dcloud/feature/ui/e$a;->b:Lio/dcloud/feature/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/e$a;->a:Lio/dcloud/feature/ui/a;

    iget-object v0, p0, Lio/dcloud/feature/ui/e$a;->b:Lio/dcloud/feature/ui/c;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/ui/a;->g(Lio/dcloud/feature/ui/c;)V

    return-void
.end method

###### Class io.dcloud.feature.ui.e.b (io.dcloud.feature.ui.e$b)
.class Lio/dcloud/feature/ui/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/e;->a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/e;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v0, :cond_48

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 6
    :try_start_22
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    goto :goto_42

    .line 9
    :catch_33
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 12
    :goto_42
    iget-object p1, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_61

    .line 13
    :cond_48
    iget-object v0, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_61

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    :cond_61
    :goto_61
    return-void
.end method

###### Class io.dcloud.feature.ui.e.c (io.dcloud.feature.ui.e$c)
.class Lio/dcloud/feature/ui/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/e;->a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lio/dcloud/feature/ui/c;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lio/dcloud/feature/ui/e;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/e;Landroid/view/View;Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/e$c;->f:Lio/dcloud/feature/ui/e;

    iput-object p2, p0, Lio/dcloud/feature/ui/e$c;->a:Landroid/view/View;

    iput-object p3, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    iput-object p4, p0, Lio/dcloud/feature/ui/e$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/feature/ui/e$c;->d:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/feature/ui/e$c;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 8

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->a:Landroid/view/View;

    if-eqz p1, :cond_a7

    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    if-eqz p1, :cond_a7

    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    if-nez p1, :cond_10

    goto/16 :goto_a7

    .line 4
    :cond_10
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->f:Lio/dcloud/feature/ui/e;

    iget-object v0, p0, Lio/dcloud/feature/ui/e$c;->a:Landroid/view/View;

    invoke-static {p1, v0}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/e;Landroid/view/View;)I

    move-result p1

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/ui/e$c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/ui/e$c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_WIDTH(Landroid/content/Context;)I

    move-result v1

    if-ge p1, v1, :cond_2d

    neg-int v0, v0

    if-gt p1, v0, :cond_34

    .line 8
    :cond_2d
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    iget-object p1, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->popFromViewStack()V

    .line 10
    :cond_34
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6e

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->m()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string p1, ""

    .line 15
    :cond_4e
    iget-object v0, p0, Lio/dcloud/feature/ui/e$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/e$c;->d:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "{\"id\":\"%s\",\"target\":%s}"

    invoke-static {p1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 17
    :cond_6e
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a7

    .line 18
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->e:Ljava/lang/String;

    const-string v0, "hide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "[null,null,null]"

    if-eqz p1, :cond_90

    .line 19
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-static {v1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v2, v0, v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    goto :goto_a7

    .line 20
    :cond_90
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->e:Ljava/lang/String;

    const-string v0, "close"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 21
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-static {v1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v2, v0, v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    :cond_a7
    :goto_a7
    return-void
.end method

.method public onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.feature.ui.e.d (io.dcloud.feature.ui.e$d)
.class synthetic Lio/dcloud/feature/ui/e$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/feature/ui/e$e;->values()[Lio/dcloud/feature/ui/e$e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    :try_start_9
    sget-object v1, Lio/dcloud/feature/ui/e$e;->a:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->f:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->q:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->r:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->b:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->d:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->c:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->n:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->e:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->g:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->h:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->i:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->l:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->m:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->o:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->t:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->s:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    return-void
.end method

###### Class io.dcloud.feature.ui.e.EnumC0052e (io.dcloud.feature.ui.e$e)
.class final enum Lio/dcloud/feature/ui/e$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/ui/e$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/dcloud/feature/ui/e$e;

.field public static final enum b:Lio/dcloud/feature/ui/e$e;

.field public static final enum c:Lio/dcloud/feature/ui/e$e;

.field public static final enum d:Lio/dcloud/feature/ui/e$e;

.field public static final enum e:Lio/dcloud/feature/ui/e$e;

.field public static final enum f:Lio/dcloud/feature/ui/e$e;

.field public static final enum g:Lio/dcloud/feature/ui/e$e;

.field public static final enum h:Lio/dcloud/feature/ui/e$e;

.field public static final enum i:Lio/dcloud/feature/ui/e$e;

.field public static final enum j:Lio/dcloud/feature/ui/e$e;

.field public static final enum k:Lio/dcloud/feature/ui/e$e;

.field public static final enum l:Lio/dcloud/feature/ui/e$e;

.field public static final enum m:Lio/dcloud/feature/ui/e$e;

.field public static final enum n:Lio/dcloud/feature/ui/e$e;

.field public static final enum o:Lio/dcloud/feature/ui/e$e;

.field public static final enum p:Lio/dcloud/feature/ui/e$e;

.field public static final enum q:Lio/dcloud/feature/ui/e$e;

.field public static final enum r:Lio/dcloud/feature/ui/e$e;

.field public static final enum s:Lio/dcloud/feature/ui/e$e;

.field public static final enum t:Lio/dcloud/feature/ui/e$e;

.field private static final synthetic u:[Lio/dcloud/feature/ui/e$e;


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 1
    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "findWindowByName"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->a:Lio/dcloud/feature/ui/e$e;

    new-instance v1, Lio/dcloud/feature/ui/e$e;

    const-string v3, "enumWindow"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/ui/e$e;->b:Lio/dcloud/feature/ui/e$e;

    new-instance v3, Lio/dcloud/feature/ui/e$e;

    const-string v5, "getLaunchWebview"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/ui/e$e;->c:Lio/dcloud/feature/ui/e$e;

    new-instance v5, Lio/dcloud/feature/ui/e$e;

    const-string v7, "getWapLaunchWebview"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/feature/ui/e$e;->d:Lio/dcloud/feature/ui/e$e;

    new-instance v7, Lio/dcloud/feature/ui/e$e;

    const-string v9, "currentWebview"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/feature/ui/e$e;->e:Lio/dcloud/feature/ui/e$e;

    new-instance v9, Lio/dcloud/feature/ui/e$e;

    const-string v11, "getTopWebview"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/dcloud/feature/ui/e$e;->f:Lio/dcloud/feature/ui/e$e;

    new-instance v11, Lio/dcloud/feature/ui/e$e;

    const-string v13, "createView"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/dcloud/feature/ui/e$e;->g:Lio/dcloud/feature/ui/e$e;

    new-instance v13, Lio/dcloud/feature/ui/e$e;

    const-string v15, "setcallbackid"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/dcloud/feature/ui/e$e;->h:Lio/dcloud/feature/ui/e$e;

    new-instance v15, Lio/dcloud/feature/ui/e$e;

    const-string v14, "debug"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/dcloud/feature/ui/e$e;->i:Lio/dcloud/feature/ui/e$e;

    new-instance v14, Lio/dcloud/feature/ui/e$e;

    const-string v12, "setLogs"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/dcloud/feature/ui/e$e;->j:Lio/dcloud/feature/ui/e$e;

    new-instance v12, Lio/dcloud/feature/ui/e$e;

    const-string v10, "isLogs"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lio/dcloud/feature/ui/e$e;->k:Lio/dcloud/feature/ui/e$e;

    new-instance v10, Lio/dcloud/feature/ui/e$e;

    const-string v8, "defaultHardwareAccelerated"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lio/dcloud/feature/ui/e$e;->l:Lio/dcloud/feature/ui/e$e;

    new-instance v8, Lio/dcloud/feature/ui/e$e;

    const-string v6, "startAnimation"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lio/dcloud/feature/ui/e$e;->m:Lio/dcloud/feature/ui/e$e;

    new-instance v6, Lio/dcloud/feature/ui/e$e;

    const-string v4, "getSecondWebview"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/feature/ui/e$e;->n:Lio/dcloud/feature/ui/e$e;

    new-instance v4, Lio/dcloud/feature/ui/e$e;

    const-string v2, "getDisplayWebview"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/ui/e$e;->o:Lio/dcloud/feature/ui/e$e;

    new-instance v2, Lio/dcloud/feature/ui/e$e;

    const-string v6, "updateAppFrameViews"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/ui/e$e;->p:Lio/dcloud/feature/ui/e$e;

    .line 2
    new-instance v6, Lio/dcloud/feature/ui/e$e;

    const-string v4, "prefetchURL"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/feature/ui/e$e;->q:Lio/dcloud/feature/ui/e$e;

    new-instance v4, Lio/dcloud/feature/ui/e$e;

    const-string v2, "prefetchURLs"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/ui/e$e;->r:Lio/dcloud/feature/ui/e$e;

    new-instance v2, Lio/dcloud/feature/ui/e$e;

    const-string v6, "postMessageToUniNView"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/ui/e$e;->s:Lio/dcloud/feature/ui/e$e;

    new-instance v6, Lio/dcloud/feature/ui/e$e;

    const-string v4, "__callNativeModuleSync"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/feature/ui/e$e;->t:Lio/dcloud/feature/ui/e$e;

    const/16 v4, 0x14

    new-array v4, v4, [Lio/dcloud/feature/ui/e$e;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    aput-object v6, v4, v2

    .line 3
    sput-object v4, Lio/dcloud/feature/ui/e$e;->u:[Lio/dcloud/feature/ui/e$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/ui/e$e;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/ui/e$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/ui/e$e;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/ui/e$e;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/ui/e$e;->u:[Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v0}, [Lio/dcloud/feature/ui/e$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/ui/e$e;

    return-object v0
.end method
