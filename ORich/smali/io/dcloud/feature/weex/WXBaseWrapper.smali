###### Class io.dcloud.feature.weex.WXBaseWrapper (io.dcloud.feature.weex.WXBaseWrapper)
.class public Lio/dcloud/feature/weex/WXBaseWrapper;
.super Lio/dcloud/feature/weex/adapter/widget/refresh/WeexDcRefreshLayout;
.source "WXBaseWrapper.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/IUniNView;


# static fields
.field protected static DE_INDEX:I = -0x1


# instance fields
.field protected mPath:Ljava/lang/String;

.field protected mSrcPath:Ljava/lang/String;

.field protected mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

.field protected mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

.field protected mWebview:Lio/dcloud/common/DHInterface/IWebview;

.field protected mWxId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/WeexDcRefreshLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mPath:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mSrcPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->setEnabled(Z)V

    return-void
.end method

.method private parseData(Lorg/json/JSONObject;)V
    .registers 12

    .line 70
    iget-object v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-nez v0, :cond_5

    return-void

    .line 73
    :cond_5
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 74
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    const-string v1, "offset"

    .line 75
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2a

    .line 78
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewOptions;->height:I

    iget-object v4, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    move v9, v1

    goto :goto_2b

    :cond_2a
    const/4 v9, 0x0

    :goto_2b
    const-string v1, "height"

    .line 80
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    iget v2, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mTotalDragDistance:F

    float-to-int v2, v2

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 83
    iget v4, v0, Lio/dcloud/common/adapter/util/ViewOptions;->height:I

    iget-object v5, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v5

    invoke-static {v1, v4, v2, v5}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    move v8, v1

    goto :goto_49

    :cond_48
    move v8, v2

    :goto_49
    const-string v1, "range"

    .line 85
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget v2, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mSpinnerFinalOffset:F

    float-to-int v2, v2

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 88
    iget v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->height:I

    iget-object v4, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v4

    invoke-static {v1, v0, v2, v4}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    .line 90
    :cond_64
    iget v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mOriginalOffsetTop:I

    add-int v7, v2, v0

    const-string v0, "color"

    .line 91
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "#2BD009"

    .line 92
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 95
    :try_start_82
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_86} :catch_87

    goto :goto_8b

    :catch_87
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8b
    :goto_8b
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v0, p1, v3

    .line 100
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->setColorSchemeColors([I)V

    const/4 v5, 0x0

    .line 101
    iget v6, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mOriginalOffsetTop:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lio/dcloud/feature/weex/WXBaseWrapper;->setProgressViewOffset(ZIIII)V

    return-void
.end method


# virtual methods
.method public beginPullRefresh()V
    .registers 1

    .line 106
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXBaseWrapper;->beginRefresh()V

    return-void
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WXBaseWrapper;->setEnabled(Z)V

    .line 136
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXBaseWrapper;->recoveryInstance()V

    return-void
.end method

.method public endPullToRefresh()V
    .registers 2

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WXBaseWrapper;->setRefreshing(Z)V

    return-void
.end method

.method public evalJs(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_9

    .line 166
    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public initRefresh(Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_38

    const-string v0, "support"

    .line 48
    invoke-static {p1, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "default"

    if-eqz p1, :cond_16

    const-string v2, "style"

    .line 51
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_16
    if-eqz v0, :cond_30

    const-string v0, "circle"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WXBaseWrapper;->setEnabled(Z)V

    .line 55
    new-instance v0, Lio/dcloud/feature/weex/WXBaseWrapper$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WXBaseWrapper$1;-><init>(Lio/dcloud/feature/weex/WXBaseWrapper;)V

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WXBaseWrapper;->setOnRefreshListener(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;)V

    .line 61
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->parseData(Lorg/json/JSONObject;)V

    goto :goto_38

    :cond_30
    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->setOnRefreshListener(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;)V

    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->setEnabled(Z)V

    :cond_38
    :goto_38
    return-void
.end method

.method public loadTemplate(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method public obtainMainView()Landroid/view/ViewGroup;
    .registers 1

    return-object p0
.end method

.method public onActivityPause()V
    .registers 2

    .line 187
    iget-object v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_e

    .line 188
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityPause()V

    .line 189
    iget-object v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    if-eqz v0, :cond_e

    .line 190
    invoke-virtual {v0}, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->onPause()V

    :cond_e
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 196
    iget-object v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_7

    .line 197
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->onActivityResult(IILandroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public onActivityResume()V
    .registers 2

    .line 178
    iget-object v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_e

    .line 179
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityResume()V

    .line 180
    iget-object v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    if-eqz v0, :cond_e

    .line 181
    invoke-virtual {v0}, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->onResume()V

    :cond_e
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 131
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXBaseWrapper;->destroy()V

    return-void
.end method

.method public onReady()V
    .registers 1

    return-void
.end method

.method protected onRefresh()V
    .registers 1

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 202
    iget-object v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_7

    .line 203
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_7
    return-void
.end method

.method public recoveryInstance()V
    .registers 3

    .line 140
    iget-object v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    .line 141
    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V

    .line 142
    iget-object v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityDestroy()V

    .line 143
    iget-object v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    if-eqz v0, :cond_16

    .line 144
    invoke-virtual {v0}, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->onDestroy()V

    .line 145
    iput-object v1, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    .line 147
    :cond_16
    iput-object v1, p0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 149
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXBaseWrapper;->clearTarget()V

    :cond_1b
    return-void
.end method

.method public reload()V
    .registers 1

    return-void
.end method

.method public titleNViewRefresh()V
    .registers 1

    return-void
.end method

###### Class io.dcloud.feature.weex.WXBaseWrapper.AnonymousClass1 (io.dcloud.feature.weex.WXBaseWrapper$1)
.class Lio/dcloud/feature/weex/WXBaseWrapper$1;
.super Ljava/lang/Object;
.source "WXBaseWrapper.java"

# interfaces
.implements Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WXBaseWrapper;->initRefresh(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WXBaseWrapper;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WXBaseWrapper;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lio/dcloud/feature/weex/WXBaseWrapper$1;->this$0:Lio/dcloud/feature/weex/WXBaseWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 2

    .line 58
    iget-object v0, p0, Lio/dcloud/feature/weex/WXBaseWrapper$1;->this$0:Lio/dcloud/feature/weex/WXBaseWrapper;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WXBaseWrapper;->onRefresh()V

    return-void
.end method
