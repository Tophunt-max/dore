###### Class io.dcloud.feature.weex.WXViewWrapper (io.dcloud.feature.weex.WXViewWrapper)
.class Lio/dcloud/feature/weex/WXViewWrapper;
.super Lio/dcloud/feature/weex/WXBaseWrapper;
.source "WXViewWrapper.java"

# interfaces
.implements Lcom/taobao/weex/IWXRenderListener;
.implements Lio/dcloud/common/DHInterface/IEventCallback;
.implements Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;
    }
.end annotation


# static fields
.field static final LOAD_JS:I = 0x3e8


# instance fields
.field TAG:Ljava/lang/String;

.field private hasScrollListener:Z

.field private isChlid:Z

.field private isCompilerWithUniapp:Z

.field isDelayRender:Z

.field private isFrameShow:Z

.field private isPre:Z

.field isReady:Z

.field isService:Z

.field jsonObject:Lorg/json/JSONObject;

.field lastTime:J

.field mFireCaches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;",
            ">;"
        }
    .end annotation
.end field

.field mFontSize:I

.field mHandler:Landroid/os/Handler;

.field mNvueCfgData:Lorg/json/JSONObject;

.field private mRenderCaches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

.field mViewPort:F

.field mWXSDKView:Landroid/view/View;

.field private mWaitServiceRenderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private readyJs:Ljava/lang/String;

.field time:J


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;IZ)V
    .registers 13

    .line 167
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WXBaseWrapper;-><init>(Landroid/content/Context;)V

    const-string v0, "WXViewWrapper"

    .line 80
    iput-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->lastTime:J

    const/4 v2, 0x0

    .line 84
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    const-string v3, ";var plusModule = weex.requireModule(\'plus\'); plusModule.uniReady();"

    .line 87
    iput-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->readyJs:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isReady:Z

    const/4 v3, -0x1

    .line 90
    iput v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFontSize:I

    const/4 v4, 0x0

    .line 91
    iput-object v4, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mNvueCfgData:Lorg/json/JSONObject;

    .line 93
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isDelayRender:Z

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mRenderCaches:Ljava/util/List;

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWaitServiceRenderList:Ljava/util/List;

    .line 98
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    .line 99
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isChlid:Z

    .line 100
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    const/4 v4, 0x1

    .line 102
    iput-boolean v4, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isCompilerWithUniapp:Z

    .line 104
    new-instance v5, Lio/dcloud/feature/weex/WXViewWrapper$1;

    invoke-direct {v5, p0}, Lio/dcloud/feature/weex/WXViewWrapper$1;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;)V

    iput-object v5, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mHandler:Landroid/os/Handler;

    .line 323
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->hasScrollListener:Z

    .line 715
    iput-wide v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->time:J

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->lastTime:J

    .line 169
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WXViewWrapper----------isPre="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  wxid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady()Z

    move-result v0

    if-nez v0, :cond_77

    .line 171
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setWXStatisticsCallBack(Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;)V

    .line 173
    :cond_77
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getComplier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isCompilerWithUniapp:Z

    .line 174
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 175
    iput-boolean p6, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    .line 176
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFireCaches:Ljava/util/List;

    .line 177
    iget-object p6, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    instance-of p6, p6, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz p6, :cond_a3

    .line 178
    iget-object p6, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    check-cast p6, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {p6}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->isUniService()Z

    move-result p6

    iput-boolean p6, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    .line 180
    :cond_a3
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p6

    invoke-virtual {p6}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJSFKFileNotFound()Z

    move-result p6

    if-eqz p6, :cond_e1

    .line 181
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getVueVersion()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_ba

    const/4 p2, 0x1

    goto :goto_bb

    :cond_ba
    const/4 p2, 0x0

    .line 182
    :goto_bb
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/taobao/weex/R$string;->dcloud_feature_weex_jsfk_not_found_tips:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    if-eqz p2, :cond_cc

    const-string p2, "VUE3"

    goto :goto_ce

    :cond_cc
    const-string p2, "VUE2"

    :goto_ce
    aput-object p2, p4, v2

    invoke-static {p3, p4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 183
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p3, Lio/dcloud/feature/weex/WXViewWrapper$2;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex/WXViewWrapper$2;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;)V

    invoke-static {p1, p2, p3}, Lio/dcloud/common/util/ErrorDialogUtil;->showErrorTipsAlert(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 191
    :cond_e1
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0, p5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 194
    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 195
    iput-object p3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->jsonObject:Lorg/json/JSONObject;

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->lastTime:J

    .line 197
    iput-object p4, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWxId:Ljava/lang/String;

    .line 198
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "uni_nvue_data"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mNvueCfgData:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;J)V
    .registers 4

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/weex/WXViewWrapper;->delayedRender(Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->getAllUniService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;
    .registers 1

    .line 79
    iget-object p0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWaitServiceRenderList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;
    .registers 1

    .line 79
    iget-object p0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mRenderCaches:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex/WXViewWrapper;)Z
    .registers 1

    .line 79
    iget-boolean p0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    return p0
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/Map;
    .registers 1

    .line 79
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getInitOptions()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/lang/String;
    .registers 1

    .line 79
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getInitStringJsonData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)V
    .registers 4

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/weex/WXViewWrapper;->render(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private delayedRender(Ljava/lang/Object;J)V
    .registers 5

    .line 588
    new-instance v0, Lio/dcloud/feature/weex/WXViewWrapper$8;

    invoke-direct {v0, p0, p1}, Lio/dcloud/feature/weex/WXViewWrapper$8;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2, p3}, Lio/dcloud/feature/weex/WXViewWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getAllUniService(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 562
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_47

    .line 565
    :cond_d
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const-string v1, "_www/app-config.js"

    .line 573
    invoke-virtual {p0, v1}, Lio/dcloud/feature/weex/WXViewWrapper;->initSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_www/app-confusion.js"

    .line 574
    invoke-virtual {p0, v2}, Lio/dcloud/feature/weex/WXViewWrapper;->initSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 575
    invoke-static {v1, v0}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object v1

    .line 576
    invoke-static {v2, v0}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object v0

    .line 578
    :try_start_27
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception v0

    .line 582
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_46
    return-object p1

    :cond_47
    :goto_47
    const-string p1, ""

    return-object p1
.end method

.method private getInitOptions()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_18

    .line 204
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plus_appid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_18
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_27

    .line 207
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plus_web_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_27
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mSrcPath:Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_57

    .line 212
    iget-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_57

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    :cond_57
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceLanguage"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isInternational"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bundleUrl"

    .line 219
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getWxId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__uniapp__service"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    const-string v1, "plus_weex_id"

    .line 221
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_83
    return-object v0
.end method

.method private getInitStringJsonData()Ljava/lang/String;
    .registers 4

    .line 235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 237
    :try_start_5
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x7

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    :cond_18
    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Plus_InitURL"

    .line 242
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v1

    .line 244
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 246
    :goto_2c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initFlexDirection()V
    .registers 3

    .line 886
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mNvueCfgData:Lorg/json/JSONObject;

    if-eqz v0, :cond_19

    const-string v1, "flex-direction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 887
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mNvueCfgData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setFlexDirectionDef(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private initTitleNView()V
    .registers 4

    .line 325
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 326
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v1, :cond_32

    .line 327
    iget-boolean v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v0, :cond_32

    const-string v0, "type"

    .line 328
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "transparent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 330
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    new-instance v1, Lio/dcloud/feature/weex/WXViewWrapper$3;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/WXViewWrapper$3;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->addOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    :cond_32
    return-void
.end method

.method private initViewPortWidth(Z)V
    .registers 4

    .line 874
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isCompilerWithUniapp:Z

    if-eqz v0, :cond_2f

    .line 875
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v0, :cond_9

    return-void

    .line 876
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->getInt(I)I

    move-result v0

    if-eqz p1, :cond_1e

    .line 878
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    :cond_1e
    int-to-float v0, v0

    .line 880
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mViewPort:F

    .line 881
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mViewPort:F

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(FZ)V

    :cond_2f
    return-void
.end method

.method private render(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_7

    .line 259
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->recoveryInstance()V

    .line 261
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_157

    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    if-nez v0, :cond_15

    goto/16 :goto_157

    .line 264
    :cond_15
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-eqz v0, :cond_32

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v0, :cond_32

    .line 265
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    if-nez v0, :cond_2d

    .line 266
    new-instance v0, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {v0}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    const-string v1, "initV3Service"

    .line 267
    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 269
    :cond_2d
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 271
    :cond_32
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-boolean v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    iput-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isChlid:Z

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isReady:Z

    .line 274
    iget-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    if-eqz v1, :cond_7e

    .line 275
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getPreInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 276
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getPreInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 277
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_a5

    .line 278
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->init(Landroid/content/Context;)V

    .line 279
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->onReady()V

    .line 280
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "launchApp"

    invoke-virtual {p0, v2, v1}, Lio/dcloud/feature/weex/WXViewWrapper;->fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_a5

    .line 284
    :cond_7e
    check-cast p1, Ljava/lang/String;

    .line 285
    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    if-nez v1, :cond_94

    const-string v1, "\"use weex:vue\""

    .line 286
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 288
    :cond_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->readyJs:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 291
    :cond_a5
    :goto_a5
    iget-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    if-nez v1, :cond_b6

    .line 292
    new-instance v1, Lio/dcloud/feature/uniapp/UniSDKInstance;

    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/dcloud/feature/uniapp/UniSDKInstance;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 294
    :cond_b6
    iget v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFontSize:I

    if-lez v1, :cond_c1

    .line 295
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFontSize:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setDefaultFontSize(I)V

    .line 297
    :cond_c1
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->setPageKeepRawCssStyles()V

    .line 298
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v2

    iget-boolean v2, v2, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setImmersive(Z)V

    .line 299
    new-instance v1, Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/dcloud/feature/weex/WXAnalyzerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    .line 300
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1, p0}, Lcom/taobao/weex/WXSDKInstance;->registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V

    .line 301
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mSrcPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setBundleUrl(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    check-cast v1, Lio/dcloud/feature/uniapp/UniSDKInstance;

    iget-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isCompilerWithUniapp:Z

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/UniSDKInstance;->setCompilerWithUniapp(Z)V

    .line 303
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v1

    .line 305
    iget-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    if-nez v2, :cond_10d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10d

    const/4 v2, 0x4

    if-ne v1, v2, :cond_116

    :cond_10d
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_116

    .line 306
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->onShowAnimationEnd()V

    .line 308
    :cond_116
    iget-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    if-nez v1, :cond_129

    .line 309
    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWxId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 311
    :cond_129
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez p1, :cond_13c

    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    instance-of p1, p1, Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz p1, :cond_13c

    .line 312
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispatchWebviewStateEvent(ILjava/lang/Object;)V

    .line 315
    :cond_13c
    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->initViewPortWidth(Z)V

    .line 316
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->initFlexDirection()V

    .line 317
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->initTitleNView()V

    .line 318
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-eqz p1, :cond_157

    .line 319
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    const/4 p2, 0x1

    iget-object p3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setUniServiceCreated(ZLio/dcloud/common/DHInterface/IApp;)V

    :cond_157
    :goto_157
    return-void
.end method

.method private declared-synchronized runFireCache()V
    .registers 4

    monitor-enter p0

    .line 157
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFireCaches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    .line 158
    :goto_a
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFireCaches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 159
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFireCaches:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;

    .line 160
    iget-object v2, v1, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;->key:Ljava/lang/String;

    iget-object v1, v1, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;->params:Ljava/util/Map;

    invoke-virtual {p0, v2, v1}, Lio/dcloud/feature/weex/WXViewWrapper;->fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 162
    :cond_24
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFireCaches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 164
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateInitDeviceParams(Landroid/content/Context;)V
    .registers 7

    .line 817
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInitParams()Lcom/taobao/weex/bridge/WXParams;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 818
    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXParams;->getDeviceWidth()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 819
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXParams;->setDeviceWidth(Ljava/lang/String;)V

    .line 820
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXParams;->setDeviceHeight(Ljava/lang/String;)V

    .line 821
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 822
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "scale"

    invoke-static {v3, v2}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 824
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_56

    .line 825
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 827
    :cond_56
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXParams;->getDeviceWidth()Ljava/lang/String;

    move-result-object v4

    .line 828
    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXParams;->getDeviceHeight()Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    .line 827
    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 831
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    .line 832
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result p1

    .line 830
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDeviceDisplay(Ljava/lang/String;FFF)V

    :cond_84
    return-void
.end method


# virtual methods
.method public addScrollListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
    .registers 8

    .line 346
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_c2

    .line 349
    :cond_e
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->hasScrollListener:Z

    if-eqz v0, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->hasScrollListener:Z

    .line 352
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 353
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 354
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    .line 356
    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-nez v2, :cond_34

    .line 358
    iget-object v4, v3, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v4, :cond_34

    .line 359
    iget-object v2, v3, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    :cond_34
    if-eqz v2, :cond_c2

    const-string v3, "type"

    .line 362
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40

    goto/16 :goto_c2

    .line 365
    :cond_40
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    move-result-object v4

    .line 366
    instance-of v5, v4, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v5, :cond_61

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    if-eqz v5, :cond_61

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tab"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    :goto_62
    if-eqz v2, :cond_c2

    .line 367
    iget-boolean v4, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz v4, :cond_6a

    if-eqz v0, :cond_c2

    .line 368
    :cond_6a
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "transparent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 369
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v0, :cond_81

    return-void

    .line 371
    :cond_81
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_90

    if-eqz p1, :cond_90

    .line 373
    iget-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3, p1}, Lcom/taobao/weex/WXSDKInstance;->removeOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    .line 375
    :cond_90
    instance-of p1, v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    if-eqz p1, :cond_9f

    .line 376
    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    new-instance p1, Lio/dcloud/feature/weex/WXViewWrapper$4;

    invoke-direct {p1, p0, v1, v2}, Lio/dcloud/feature/weex/WXViewWrapper$4;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->addScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;)V

    goto :goto_c2

    .line 410
    :cond_9f
    instance-of p1, v0, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz p1, :cond_ae

    .line 411
    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    new-instance p1, Lio/dcloud/feature/weex/WXViewWrapper$5;

    invoke-direct {p1, p0, v1, v2}, Lio/dcloud/feature/weex/WXViewWrapper$5;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    goto :goto_c2

    .line 440
    :cond_ae
    instance-of p1, v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-eqz p1, :cond_c2

    .line 441
    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    new-instance v0, Lio/dcloud/feature/weex/WXViewWrapper$6;

    invoke-direct {v0, p0, v1, v2}, Lio/dcloud/feature/weex/WXViewWrapper$6;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_c2
    :goto_c2
    return-void
.end method

.method public evalJs(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 251
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_13

    .line 252
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->syncExecJsOnInstanceWithResult(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    const-string p1, ""

    return-object p1
.end method

.method public declared-synchronized fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 5
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

    monitor-enter p0

    .line 839
    :try_start_1
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isReady:Z

    if-eqz v0, :cond_b

    .line 840
    invoke-super {p0, p1, p2}, Lio/dcloud/feature/weex/WXBaseWrapper;->fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_18

    monitor-exit p0

    return p1

    .line 842
    :cond_b
    :try_start_b
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFireCaches:Ljava/util/List;

    new-instance v1, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_18

    const/4 p1, 0x1

    .line 843
    monitor-exit p0

    return p1

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSrcPath()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mSrcPath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "view"

    return-object v0
.end method

.method public getWaitServiceRenderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWaitServiceRenderList:Ljava/util/List;

    return-object v0
.end method

.method public getWxId()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWxId:Ljava/lang/String;

    return-object v0
.end method

.method public initSrcPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 600
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    const-string v0, "?"

    .line 603
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_14

    .line 606
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, p1

    :goto_15
    const-string v3, "/"

    .line 608
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 609
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_21
    const-string v4, "\\."

    .line 612
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 613
    array-length v4, p1

    const-string v5, ".js"

    if-ne v4, v2, :cond_3c

    .line 614
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    .line 615
    :cond_3c
    array-length v4, p1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_51

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    :cond_51
    :goto_51
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 620
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 622
    :cond_65
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result p1

    const/4 v1, 0x0

    .line 624
    iget-object v4, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    instance-of v4, v4, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-nez v4, :cond_7c

    .line 625
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    :cond_7c
    const-string v4, "/storage"

    .line 627
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9f

    if-ne p1, v2, :cond_9f

    .line 628
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 629
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 630
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_a9

    .line 634
    :cond_9f
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_a9
    :goto_a9
    return-object p1
.end method

.method public loadTemplate(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "delayRender"

    const-string v1, "data"

    .line 479
    :try_start_4
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "js"

    .line 480
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    .line 481
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->jsonObject:Lorg/json/JSONObject;

    if-eqz p1, :cond_36

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 482
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_36

    const-string v1, "defaultFontSize"

    .line 484
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFontSize:I

    .line 493
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 494
    iget-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isDelayRender:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isDelayRender:Z

    .line 498
    :cond_36
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_6a

    .line 501
    :cond_3f
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->initSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mSrcPath:Ljava/lang/String;

    .line 502
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    if-eqz p1, :cond_58

    const/4 p1, 0x0

    .line 503
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getInitOptions()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getInitStringJsonData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/dcloud/feature/weex/WXViewWrapper;->render(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 506
    :cond_58
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/weex/WXViewWrapper$7;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WXViewWrapper$7;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p1

    .line 546
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6a
    return-void
.end method

.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string v0, "close"

    .line 738
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    instance-of v0, p2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_24

    .line 739
    check-cast p2, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 740
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWxId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->removeWeexView(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->onDestroy()V

    goto :goto_4d

    :cond_24
    const-string p2, "show_animation_end"

    .line 742
    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_34

    const-string p2, "child_initialize_show"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 743
    :cond_34
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    if-nez p1, :cond_4d

    const/4 p1, 0x1

    .line 744
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    .line 745
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz p1, :cond_44

    .line 746
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->onShowAnimationEnd()V

    .line 747
    :cond_44
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isDelayRender:Z

    if-eqz p1, :cond_4d

    .line 748
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mRenderCaches:Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->runDelayedRenderCaches(Ljava/util/List;)V

    :cond_4d
    :goto_4d
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 13

    .line 757
    invoke-super {p0, p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 758
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz p1, :cond_14f

    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_14f

    .line 761
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->getInt(I)I

    move-result p1

    .line 762
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IApp;->getInt(I)I

    move-result v1

    .line 763
    iget-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IApp;->getInt(I)I

    move-result v3

    .line 764
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 765
    iget-object v6, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v6

    int-to-float p1, p1

    div-float/2addr p1, v6

    float-to-int p1, p1

    .line 766
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v7, "resolutionHeight"

    invoke-interface {v5, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, v1

    div-float v1, p1, v6

    float-to-int v1, v1

    .line 767
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "resolutionWidth"

    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    sget v8, Lio/dcloud/common/adapter/util/DeviceInfo;->dpiX:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v10, "dpiX"

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    sget v8, Lio/dcloud/common/adapter/util/DeviceInfo;->dpiY:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v10, "dpiY"

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-int v3, v3

    .line 772
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ";"

    const-string v9, "="

    if-eqz v6, :cond_b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v10, "plus.screen."

    .line 776
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8d

    .line 778
    :cond_b3
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_bb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "plus.display."

    .line 779
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bb

    .line 781
    :cond_dd
    iget-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IWebview;->evalJS(Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v1, v4, :cond_10c

    if-eq v1, v0, :cond_107

    const/4 v0, 0x3

    if-eq v1, v0, :cond_102

    const-string v0, "portrait"

    goto :goto_110

    :cond_102
    const/16 v2, -0x5a

    const-string v0, "landscapeReverse"

    goto :goto_110

    :cond_107
    const/16 v2, 0xb4

    const-string v0, "portraitReverse"

    goto :goto_110

    :cond_10c
    const/16 v2, 0x5a

    const-string v0, "landscape"

    .line 800
    :goto_110
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getCache()Landroidx/collection/LruCache;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/LruCache;->evictAll()V

    .line 801
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "value"

    .line 802
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "orientation"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    const-string v2, "orientationchange"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/WXSDKInstance;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 805
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isCompilerWithUniapp:Z

    if-eqz v0, :cond_141

    .line 806
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    div-float/2addr p1, v0

    .line 807
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, p1, v4}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(FZ)V

    .line 809
    :cond_141
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez p1, :cond_14f

    .line 810
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->resetDeviceDisplayOfPage()V

    .line 811
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->reloadPageLayout()V

    :cond_14f
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 710
    invoke-super {p0}, Lio/dcloud/feature/weex/WXBaseWrapper;->onDestroy()V

    .line 711
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->unWXStatisticsCallBack(Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;)V

    const/4 v0, 0x0

    .line 712
    iput-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

.method public onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 701
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onException--errCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    if-eqz v0, :cond_27

    .line 703
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public onJsFrameworkReady()V
    .registers 2

    .line 849
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mRenderCaches:Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->runDelayedRenderCaches(Ljava/util/List;)V

    .line 850
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 851
    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->initViewPortWidth(Z)V

    .line 852
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->initFlexDirection()V

    :cond_10
    return-void
.end method

.method public onReady()V
    .registers 7

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isReady:Z

    .line 144
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->runFireCache()V

    .line 145
    iget-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-eqz v1, :cond_42

    .line 146
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1

    if-nez v1, :cond_28

    .line 147
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v5

    invoke-virtual {v5}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v1, v2, v3, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_28
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    if-eqz v0, :cond_42

    .line 150
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 151
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    iget-object v0, v0, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iget-object v0, v0, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    iget-object v1, v1, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    iget-wide v1, v1, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_42
    return-void
.end method

.method protected onRefresh()V
    .registers 5

    .line 470
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_27

    .line 471
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pulldownrefreshevent"

    invoke-virtual {v0, v3, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pullToRefresh"

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_27
    return-void
.end method

.method public onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .registers 4

    return-void
.end method

.method public onRenderSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .registers 5

    .line 675
    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    if-eqz p2, :cond_9

    .line 676
    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->onWeexRenderSuccess(Lcom/taobao/weex/WXSDKInstance;)V

    .line 678
    :cond_9
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez p1, :cond_52

    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_52

    .line 679
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    instance-of p1, p1, Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz p1, :cond_21

    .line 680
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 p2, 0x1

    iget-object p3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispatchWebviewStateEvent(ILjava/lang/Object;)V

    .line 682
    :cond_21
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "autoclose"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 683
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    const-string p1, "true"

    .line 686
    :cond_35
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 688
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 p3, 0xb

    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lio/dcloud/common/DHInterface/AbsMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_52
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 923
    invoke-super {p0, p1, p2, p3, p4}, Lio/dcloud/feature/weex/WXBaseWrapper;->onSizeChanged(IIII)V

    .line 924
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    instance-of p1, p1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz p1, :cond_19

    .line 926
    :try_start_d
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->updateScreenAndDisplay()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p1

    .line 928
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    :goto_19
    return-void
.end method

.method public onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V
    .registers 4

    .line 641
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    if-eqz v0, :cond_9

    .line 642
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->onWeexViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)Landroid/view/View;

    .line 645
    :cond_9
    iput-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    .line 646
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 648
    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->isFocusableInTouchMode()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 650
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 651
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_27
    const/4 p1, 0x0

    .line 653
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->addScrollListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    return-void
.end method

.method public recoveryInstance()V
    .registers 3

    .line 904
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 905
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isChlid:Z

    if-nez v0, :cond_18

    .line 906
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 908
    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->hideIME(Landroid/view/View;)V

    .line 911
    :cond_18
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 912
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->clearFocus()V

    .line 913
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 914
    iput-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    .line 915
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    .line 917
    :cond_2a
    invoke-super {p0}, Lio/dcloud/feature/weex/WXBaseWrapper;->recoveryInstance()V

    .line 918
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    return-void
.end method

.method public reload()V
    .registers 6

    .line 718
    iget-wide v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v4, v0, v2

    if-gez v4, :cond_16

    return-void

    .line 721
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->time:J

    .line 722
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->recoveryInstance()V

    const/4 v0, 0x1

    .line 724
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    .line 725
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 726
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->loadTemplate(Lorg/json/JSONObject;)V

    :cond_2f
    return-void
.end method

.method public runDelayedRenderCaches(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;)V"
        }
    .end annotation

    .line 861
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 862
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1c

    .line 863
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 865
    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1f
    return-void
.end method

.method public setFocusable(I)V
    .registers 3

    .line 658
    invoke-super {p0, p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->setFocusable(I)V

    .line 659
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 660
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(I)V

    :cond_a
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 3

    .line 666
    invoke-super {p0, p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->setFocusableInTouchMode(Z)V

    .line 667
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 668
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_a
    return-void
.end method

.method public titleNViewRefresh()V
    .registers 2

    const/4 v0, 0x0

    .line 552
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->addScrollListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WXViewWrapper.AnonymousClass1 (io.dcloud.feature.weex.WXViewWrapper$1)
.class Lio/dcloud/feature/weex/WXViewWrapper$1;
.super Landroid/os/Handler;
.source "WXViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/WXViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WXViewWrapper;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WXViewWrapper;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_b

    goto/16 :goto_86

    .line 110
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-boolean v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-eqz v0, :cond_7c

    .line 111
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-nez v0, :cond_18

    return-void

    .line 114
    :cond_18
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const-string v1, "nvueLaunchMode"

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0xa

    if-nez v1, :cond_74

    const-string v1, "fast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 116
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uni-v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    if-nez v0, :cond_74

    .line 117
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6c

    const-string v1, "uniNView"

    .line 118
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 119
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v1, 0x64

    invoke-static {v0, p1, v1, v2}, Lio/dcloud/feature/weex/WXViewWrapper;->access$000(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;J)V

    goto :goto_73

    .line 121
    :cond_6c
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1, v2, v3}, Lio/dcloud/feature/weex/WXViewWrapper;->access$000(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;J)V

    :goto_73
    return-void

    .line 125
    :cond_74
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1, v2, v3}, Lio/dcloud/feature/weex/WXViewWrapper;->access$000(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;J)V

    goto :goto_86

    :cond_7c
    const/16 v0, 0xa

    .line 129
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    int-to-long v2, v0

    invoke-static {v1, p1, v2, v3}, Lio/dcloud/feature/weex/WXViewWrapper;->access$000(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;J)V

    :goto_86
    return-void
.end method

###### Class io.dcloud.feature.weex.WXViewWrapper.AnonymousClass2 (io.dcloud.feature.weex.WXViewWrapper$2)
.class Lio/dcloud/feature/weex/WXViewWrapper$2;
.super Ljava/lang/Object;
.source "WXViewWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WXViewWrapper;-><init>(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WXViewWrapper;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WXViewWrapper;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$2;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 186
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WXViewWrapper.AnonymousClass3 (io.dcloud.feature.weex.WXViewWrapper$3)
.class Lio/dcloud/feature/weex/WXViewWrapper$3;
.super Ljava/lang/Object;
.source "WXViewWrapper.java"

# interfaces
.implements Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WXViewWrapper;->initTitleNView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WXViewWrapper;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WXViewWrapper;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$3;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear()V
    .registers 2

    .line 333
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$3;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-virtual {v0, p0}, Lio/dcloud/feature/weex/WXViewWrapper;->addScrollListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    return-void
.end method

.method public onDisappear()V
    .registers 1

    return-void
.end method

###### Class io.dcloud.feature.weex.WXViewWrapper.AnonymousClass4 (io.dcloud.feature.weex.WXViewWrapper$4)
.class Lio/dcloud/feature/weex/WXViewWrapper$4;
.super Ljava/lang/Object;
.source "WXViewWrapper.java"

# interfaces
.implements Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WXViewWrapper;->addScrollListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WXViewWrapper;

.field final synthetic val$finalTitleNView:Lorg/json/JSONObject;

.field final synthetic val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WXViewWrapper;Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONObject;)V
    .registers 4

    .line 376
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$4;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iput-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper$4;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput-object p3, p0, Lio/dcloud/feature/weex/WXViewWrapper$4;->val$finalTitleNView:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .registers 4

    return-void
.end method

.method public onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;IIII)V
    .registers 7

    .line 379
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$4;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p1, :cond_3d

    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper$4;->val$finalTitleNView:Lorg/json/JSONObject;

    if-nez p2, :cond_9

    goto :goto_3d

    .line 380
    :cond_9
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->coverage:I

    if-ge p1, p5, :cond_14

    if-ge p1, p3, :cond_14

    return-void

    .line 384
    :cond_14
    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper$4;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p2

    iget-object p4, p0, Lio/dcloud/feature/weex/WXViewWrapper$4;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p4

    iget-object p5, p0, Lio/dcloud/feature/weex/WXViewWrapper$4;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {p5}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p4, p5, v0}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 385
    instance-of p4, p2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz p4, :cond_3d

    .line 386
    check-cast p2, Lio/dcloud/common/DHInterface/ITitleNView;

    iget-object p4, p0, Lio/dcloud/feature/weex/WXViewWrapper$4;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p4

    int-to-float p3, p3

    iget-object p5, p0, Lio/dcloud/feature/weex/WXViewWrapper$4;->val$finalTitleNView:Lorg/json/JSONObject;

    int-to-float p1, p1

    invoke-static {p2, p4, p3, p5, p1}, Lio/dcloud/common/util/TitleNViewUtil;->updateTitleNViewStatus(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;FLorg/json/JSONObject;F)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public onScrollStopped(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .registers 4

    return-void
.end method

.method public onScrollToBottom(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .registers 4

    return-void
.end method

.method public onScrollToTop(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .registers 4

    return-void
.end method

###### Class io.dcloud.feature.weex.WXViewWrapper.AnonymousClass5 (io.dcloud.feature.weex.WXViewWrapper$5)
.class Lio/dcloud/feature/weex/WXViewWrapper$5;
.super Ljava/lang/Object;
.source "WXViewWrapper.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WXViewWrapper;->addScrollListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WXViewWrapper;

.field final synthetic val$finalTitleNView:Lorg/json/JSONObject;

.field final synthetic val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WXViewWrapper;Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONObject;)V
    .registers 4

    .line 411
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$5;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iput-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper$5;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput-object p3, p0, Lio/dcloud/feature/weex/WXViewWrapper$5;->val$finalTitleNView:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .registers 7

    .line 414
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$5;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p1, :cond_3d

    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper$5;->val$finalTitleNView:Lorg/json/JSONObject;

    if-nez p2, :cond_9

    goto :goto_3d

    .line 415
    :cond_9
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->coverage:I

    if-ge p1, p5, :cond_14

    if-ge p1, p3, :cond_14

    return-void

    .line 419
    :cond_14
    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper$5;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p2

    iget-object p4, p0, Lio/dcloud/feature/weex/WXViewWrapper$5;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p4

    iget-object p5, p0, Lio/dcloud/feature/weex/WXViewWrapper$5;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {p5}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p4, p5, v0}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 420
    instance-of p4, p2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz p4, :cond_3d

    .line 421
    check-cast p2, Lio/dcloud/common/DHInterface/ITitleNView;

    iget-object p4, p0, Lio/dcloud/feature/weex/WXViewWrapper$5;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p4

    int-to-float p3, p3

    iget-object p5, p0, Lio/dcloud/feature/weex/WXViewWrapper$5;->val$finalTitleNView:Lorg/json/JSONObject;

    int-to-float p1, p1

    invoke-static {p2, p4, p3, p5, p1}, Lio/dcloud/common/util/TitleNViewUtil;->updateTitleNViewStatus(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;FLorg/json/JSONObject;F)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

.method public onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

###### Class io.dcloud.feature.weex.WXViewWrapper.AnonymousClass6 (io.dcloud.feature.weex.WXViewWrapper$6)
.class Lio/dcloud/feature/weex/WXViewWrapper$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WXViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WXViewWrapper;->addScrollListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field oldx:I

.field oldy:I

.field final synthetic this$0:Lio/dcloud/feature/weex/WXViewWrapper;

.field final synthetic val$finalTitleNView:Lorg/json/JSONObject;

.field final synthetic val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WXViewWrapper;Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONObject;)V
    .registers 4

    .line 441
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iput-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput-object p3, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->val$finalTitleNView:Lorg/json/JSONObject;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 6

    .line 447
    iget p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->oldx:I

    .line 448
    iget v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->oldy:I

    add-int/2addr p1, p2

    .line 449
    iput p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->oldx:I

    add-int/2addr p3, v0

    .line 450
    iput p3, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->oldy:I

    .line 452
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p1, :cond_4b

    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->val$finalTitleNView:Lorg/json/JSONObject;

    if-nez p2, :cond_13

    goto :goto_4b

    .line 453
    :cond_13
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->coverage:I

    if-ge p1, v0, :cond_20

    .line 454
    iget p2, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->oldy:I

    if-ge p1, p2, :cond_20

    return-void

    .line 457
    :cond_20
    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p2

    iget-object p3, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p3

    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 458
    instance-of p3, p2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz p3, :cond_4b

    .line 459
    check-cast p2, Lio/dcloud/common/DHInterface/ITitleNView;

    iget-object p3, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->val$frame:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p3

    iget v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->oldy:I

    int-to-float v0, v0

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$6;->val$finalTitleNView:Lorg/json/JSONObject;

    int-to-float p1, p1

    invoke-static {p2, p3, v0, v1, p1}, Lio/dcloud/common/util/TitleNViewUtil;->updateTitleNViewStatus(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;FLorg/json/JSONObject;F)V

    :cond_4b
    :goto_4b
    return-void
.end method

###### Class io.dcloud.feature.weex.WXViewWrapper.AnonymousClass7 (io.dcloud.feature.weex.WXViewWrapper$7)
.class Lio/dcloud/feature/weex/WXViewWrapper$7;
.super Ljava/lang/Object;
.source "WXViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WXViewWrapper;->loadTemplate(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WXViewWrapper;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WXViewWrapper;)V
    .registers 2

    .line 506
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 509
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-nez v0, :cond_7

    return-void

    .line 512
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mSrcPath:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 515
    :try_start_19
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-boolean v2, v2, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-eqz v2, :cond_2e

    .line 517
    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v2, v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$100(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 519
    :cond_2e
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 520
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x3e8

    .line 521
    iput v1, v2, Landroid/os/Message;->what:I

    .line 522
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-boolean v1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez v1, :cond_67

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v3, v3, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 523
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$200(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 524
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$200(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    .line 526
    :cond_67
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady()Z

    move-result v1

    if-nez v1, :cond_87

    .line 527
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$300(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 528
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$300(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    .line 530
    :cond_87
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-boolean v1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->isDelayRender:Z

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-boolean v1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez v1, :cond_b1

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$400(Lio/dcloud/feature/weex/WXViewWrapper;)Z

    move-result v1

    if-nez v1, :cond_b1

    .line 531
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$300(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 532
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$300(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    .line 535
    :cond_b1
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$7;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_b8} :catch_b9

    goto :goto_bd

    :catch_b9
    move-exception v1

    .line 538
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 540
    :cond_bd
    :goto_bd
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    :cond_c0
    return-void
.end method

###### Class io.dcloud.feature.weex.WXViewWrapper.AnonymousClass8 (io.dcloud.feature.weex.WXViewWrapper$8)
.class Lio/dcloud/feature/weex/WXViewWrapper$8;
.super Ljava/lang/Object;
.source "WXViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WXViewWrapper;->delayedRender(Ljava/lang/Object;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WXViewWrapper;

.field final synthetic val$template:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;)V
    .registers 3

    .line 588
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iput-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->val$template:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 591
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-nez v0, :cond_7

    return-void

    .line 594
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->val$template:Ljava/lang/Object;

    invoke-static {v0}, Lio/dcloud/feature/weex/WXViewWrapper;->access$500(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v3}, Lio/dcloud/feature/weex/WXViewWrapper;->access$600(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/feature/weex/WXViewWrapper;->access$700(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WXViewWrapper.FireEvent (io.dcloud.feature.weex.WXViewWrapper$FireEvent)
.class Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;
.super Ljava/lang/Object;
.source "WXViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/WXViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FireEvent"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/dcloud/feature/weex/WXViewWrapper;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 895
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;->key:Ljava/lang/String;

    .line 897
    iput-object p3, p0, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;->params:Ljava/util/Map;

    return-void
.end method
