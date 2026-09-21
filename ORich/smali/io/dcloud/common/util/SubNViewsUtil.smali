###### Class io.dcloud.common.util.SubNViewsUtil (io.dcloud.common.util.SubNViewsUtil)
.class public Lio/dcloud/common/util/SubNViewsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initFrameSubNViews(Lio/dcloud/common/adapter/ui/AdaFrameView;)V
    .registers 19

    move-object/from16 v1, p0

    const-string v2, "NativeView"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v0

    const-string v3, "auto"

    const/4 v4, 0x4

    const/4 v5, 0x2

    const-string v6, "animationOptimization"

    const-string v7, "subNViews"

    const/4 v8, 0x1

    if-ne v0, v5, :cond_4d

    .line 2
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    sget-object v9, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v0, v9}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_34

    .line 3
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 5
    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    iput-object v7, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mSubNViews:Lorg/json/JSONArray;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception v0

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_34
    :goto_34
    if-eqz v9, :cond_8c

    .line 10
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 11
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 13
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iput-boolean v8, v0, Lio/dcloud/common/adapter/util/ViewOptions;->isAnimationOptimization:Z

    goto :goto_8c

    .line 17
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v0

    if-ne v0, v4, :cond_8c

    .line 18
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    sget-object v9, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v0, v9}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_74

    .line 19
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 21
    :try_start_65
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    iput-object v7, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mSubNViews:Lorg/json/JSONArray;
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception v0

    .line 23
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_74
    :goto_74
    if-eqz v9, :cond_8c

    .line 26
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 27
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 29
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iput-boolean v8, v0, Lio/dcloud/common/adapter/util/ViewOptions;->isAnimationOptimization:Z

    .line 33
    :cond_8c
    :goto_8c
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mSubNViews:Lorg/json/JSONArray;

    if-eqz v0, :cond_135

    .line 34
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mSubNViews:Lorg/json/JSONArray;

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 36
    :goto_9c
    :try_start_9c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_135

    .line 37
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_9c .. :try_end_a6} :catch_131

    const-string v9, "id"

    .line 38
    :try_start_a8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uuid"

    .line 39
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 40
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_dc

    .line 41
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    int-to-long v13, v6

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_dc
    const-string v11, "styles"

    .line 43
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "tags"

    .line 44
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const-string v13, "type"

    const-string v14, "NView"

    .line 45
    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 46
    iget-object v13, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v14, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v15, v4, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v16

    aput-object v16, v15, v3

    const-string v16, "nativeobj"

    aput-object v16, v15, v8

    const-string v16, "View"

    aput-object v16, v15, v5

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    .line 47
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v17

    aput-object v17, v4, v8

    aput-object v9, v4, v5

    const/4 v9, 0x3

    aput-object v10, v4, v9

    const/4 v10, 0x4

    aput-object v11, v4, v10

    const/4 v11, 0x5

    aput-object v12, v4, v11

    const/4 v11, 0x6

    aput-object v7, v4, v11

    aput-object v4, v15, v9

    const/16 v4, 0xa

    .line 48
    invoke-virtual {v13, v14, v4, v15}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12c

    .line 51
    check-cast v4, Lio/dcloud/common/DHInterface/INativeView;

    .line 52
    invoke-interface {v4, v1}, Lio/dcloud/common/DHInterface/INativeView;->attachToViewGroup(Lio/dcloud/common/DHInterface/IFrameView;)V
    :try_end_12c
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_12c} :catch_131

    :cond_12c
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x4

    goto/16 :goto_9c

    :catch_131
    move-exception v0

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_135
    return-void
.end method

.method public static startAnimation(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/nineoldandroids/animation/Animator;I)Z
    .registers 10

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    if-eqz p1, :cond_b0

    if-nez p2, :cond_b0

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->mChildNativeViewList:Ljava/util/ArrayList;

    if-eqz p1, :cond_b0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_b0

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 4
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->background:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_35

    .line 7
    invoke-virtual {v5, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_35
    const/4 p1, 0x0

    .line 9
    :goto_36
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_4c

    .line 10
    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 11
    instance-of v1, p2, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v1, :cond_49

    .line 12
    check-cast p2, Lio/dcloud/common/DHInterface/INativeView;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 p1, p1, 0x1

    goto :goto_36

    .line 15
    :cond_4c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/DHInterface/INativeView;

    .line 16
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/INativeView;->obtanMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/INativeView;->obtanMainView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_50

    .line 19
    :cond_6b
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    :try_start_6e
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_72} :catch_7d

    const-string p2, "onPause"

    const/4 v1, 0x0

    :try_start_75
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_81
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b0

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    iget-object p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    new-instance v0, Lio/dcloud/common/util/SubNViewsUtil$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/common/util/SubNViewsUtil$1;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/View;Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p0, p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setSlipping(Z)V

    .line 69
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p0

    iget-object p0, p0, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return p2

    :cond_b0
    return v0
.end method

.method public static updateSubNViews(Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONArray;)V
    .registers 10

    if-eqz p1, :cond_2e

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "nativeobj"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "updateSubNViews"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p0, v7, v4

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p0

    aput-object p0, v7, v5

    aput-object p1, v7, v6

    aput-object v7, v2, v3

    const/16 p0, 0xa

    .line 3
    invoke-virtual {v0, v1, p0, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-void
.end method

###### Class io.dcloud.common.util.SubNViewsUtil.AnonymousClass1 (io.dcloud.common.util.SubNViewsUtil$1)
.class final Lio/dcloud/common/util/SubNViewsUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/SubNViewsUtil;->startAnimation(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/nineoldandroids/animation/Animator;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$frameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

.field final synthetic val$mViewImpl:Landroid/view/View;

.field final synthetic val$staticNViews:Ljava/util/ArrayList;

.field final synthetic val$webParent:Landroid/view/ViewGroup;

.field final synthetic val$webView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/View;Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$frameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput-object p2, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$mViewImpl:Landroid/view/View;

    iput-object p3, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$staticNViews:Ljava/util/ArrayList;

    iput-object p4, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webParent:Landroid/view/ViewGroup;

    iput-object p5, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$frameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_a
    const/4 p1, 0x0

    .line 3
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    .line 4
    iget-object v0, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$frameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setSlipping(Z)V

    .line 5
    iget-object p1, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$mViewImpl:Landroid/view/View;

    new-instance v0, Lio/dcloud/common/util/SubNViewsUtil$1$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/util/SubNViewsUtil$1$1;-><init>(Lio/dcloud/common/util/SubNViewsUtil$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$frameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_a
    const/4 p1, 0x1

    .line 3
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    return-void
.end method

###### Class io.dcloud.common.util.SubNViewsUtil.AnonymousClass1.RunnableC00371 (io.dcloud.common.util.SubNViewsUtil$1$1)
.class Lio/dcloud/common/util/SubNViewsUtil$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/SubNViewsUtil$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/util/SubNViewsUtil$1;


# direct methods
.method constructor <init>(Lio/dcloud/common/util/SubNViewsUtil$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v0, v0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$staticNViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/INativeView;

    .line 2
    iget-object v2, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v2, v2, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webParent:Landroid/view/ViewGroup;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/INativeView;->obtanMainView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v2, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v2, v2, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webView:Landroid/view/ViewGroup;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/INativeView;->obtanMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 5
    :cond_2b
    iget-object v0, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v1, v0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webParent:Landroid/view/ViewGroup;

    iget-object v0, v0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v0, v0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$frameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->background:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_49

    .line 7
    iget-object v0, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v0, v0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 10
    :cond_49
    :try_start_49
    iget-object v0, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v0, v0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_51} :catch_60

    const-string v1, "onResume"

    const/4 v2, 0x0

    :try_start_54
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v1, v1, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_64
    return-void
.end method
