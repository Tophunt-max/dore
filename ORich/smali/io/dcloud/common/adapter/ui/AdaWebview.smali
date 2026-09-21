###### Class io.dcloud.common.adapter.ui.AdaWebview (io.dcloud.common.adapter.ui.AdaWebview)
.class public abstract Lio/dcloud/common/adapter/ui/AdaWebview;
.super Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IWebview;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/ui/AdaWebview$WebProgressView;,
        Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;,
        Lio/dcloud/common/adapter/ui/AdaWebview$IFExecutePreloadJSContentCallBack;
    }
.end annotation


# static fields
.field public static ScreemOrientationChangedNeedLayout:Z = false

.field public static mRecordView:Lio/dcloud/common/adapter/ui/RecordView; = null

.field public static sCustomUserAgent:Ljava/lang/String; = null

.field public static sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection; = null

.field public static sDefalutUserAgent:Ljava/lang/String; = null

.field public static setedWebViewData:Z = false


# instance fields
.field public errorPageUrl:Ljava/lang/String;

.field public executeScriptListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

.field private favoriteOptions:Ljava/lang/String;

.field public hasErrorPage:Z

.field private isDisposed:Z

.field isPause:Z

.field private isStart:Z

.field public justClearOption:Z

.field mAppid:Ljava/lang/String;

.field mCssString:Ljava/lang/String;

.field public mEncoding:Ljava/lang/String;

.field mEvalJsOptionStack:[Ljava/lang/String;

.field private mFixBottomHeight:I

.field private mFlag:Ljava/lang/Object;

.field public mForceAHeadJsFile:Ljava/lang/String;

.field public mForceAHeadJsFileLoaded:Z

.field private mFrameId:Ljava/lang/String;

.field public mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

.field public mInjectGEO:Ljava/lang/String;

.field public mInjectGeoLoaded:Z

.field mInjectPlusLoadedUrl:Ljava/lang/String;

.field public mInjectPlusWidthJs:Ljava/lang/String;

.field public mIsAdvanceCss:Z

.field mJsInterfaces:Lio/dcloud/common/DHInterface/IJsInterface;

.field mListenResourceLoadingOptions:Lorg/json/JSONObject;

.field public mLoadCompleted:Z

.field public mLoaded:Z

.field mLoading:Z

.field public mMesssageListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

.field public mNeedInjection:Z

.field mNeedSitemapJson:Z

.field private mOpener:Lio/dcloud/common/DHInterface/IWebview;

.field mOverrideResourceRequestOptions:Lorg/json/JSONArray;

.field mOverrideUrlLoadingDataOptions:Lorg/json/JSONObject;

.field public mPlusInjectTag:Ljava/lang/String;

.field public mPlusLoaded:Z

.field public mPlusLoading:Z

.field public mPlusrequire:Ljava/lang/String;

.field public mPreloadJsFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPreloadJsLoaded:Z

.field public mPreloadJsLoading:Z

.field public mProgress:I

.field public mProgressIntValue:I

.field public mProgressView:Landroid/view/View;

.field public mReceiveJSValue_android42:Lio/dcloud/common/adapter/ui/ReceiveJSValue;

.field public mRecordLastUrl:Ljava/lang/String;

.field private mShareable:Z

.field private mStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/DHInterface/IWebviewStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoFullscreen:Ljava/lang/String;

.field private mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

.field mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

.field mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

.field private mWebviewANID:Ljava/lang/String;

.field private mWebviewUUID:Ljava/lang/String;

.field private needTouchEvent:Ljava/lang/String;

.field originalUrl:Ljava/lang/String;

.field private shareOptions:Ljava/lang/String;

.field public unReceiveTitle:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->unReceiveTitle:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    .line 5
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mRecordLastUrl:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    .line 7
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    .line 11
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoadCompleted:Z

    .line 13
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoaded:Z

    .line 14
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoading:Z

    .line 16
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    .line 18
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoading:Z

    const-string v2, "page_finished"

    .line 21
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusInjectTag:Ljava/lang/String;

    .line 22
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mIsAdvanceCss:Z

    .line 24
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedInjection:Z

    .line 26
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEncoding:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewUUID:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewANID:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameId:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mJsInterfaces:Lio/dcloud/common/DHInterface/IJsInterface;

    .line 34
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->hasErrorPage:Z

    .line 35
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->errorPageUrl:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->originalUrl:Ljava/lang/String;

    const-string v2, "auto"

    .line 38
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mVideoFullscreen:Ljava/lang/String;

    const-string v2, ""

    .line 39
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->needTouchEvent:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->favoriteOptions:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->shareOptions:Ljava/lang/String;

    .line 44
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mShareable:Z

    const-string p1, "normal"

    .line 45
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    const-string p1, "none"

    .line 46
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGEO:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGeoLoaded:Z

    .line 48
    iput v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressIntValue:I

    .line 54
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isDisposed:Z

    .line 59
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mReceiveJSValue_android42:Lio/dcloud/common/adapter/ui/ReceiveJSValue;

    .line 210
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isPause:Z

    .line 264
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFlag:Ljava/lang/Object;

    .line 462
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectPlusLoadedUrl:Ljava/lang/String;

    .line 528
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    .line 686
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFileLoaded:Z

    .line 687
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFile:Ljava/lang/String;

    .line 688
    new-instance p1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    .line 725
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mCssString:Ljava/lang/String;

    .line 951
    new-instance p1, Lio/dcloud/common/adapter/ui/AdaWebview$4;

    invoke-direct {p1, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$4;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScriptListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    .line 1071
    new-instance p1, Lio/dcloud/common/adapter/ui/AdaWebview$5;

    invoke-direct {p1, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$5;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mMesssageListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    .line 1162
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mStateListeners:Ljava/util/ArrayList;

    .line 1176
    iput v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgress:I

    .line 1177
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isStart:Z

    .line 1252
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->justClearOption:Z

    .line 1271
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoading:Z

    .line 1297
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedSitemapJson:Z

    .line 1555
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideResourceRequestOptions:Lorg/json/JSONArray;

    .line 1610
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideUrlLoadingDataOptions:Lorg/json/JSONObject;

    .line 1622
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mListenResourceLoadingOptions:Lorg/json/JSONObject;

    .line 1623
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->initANID()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lio/dcloud/common/adapter/ui/AdaFrameView;)V
    .registers 8

    .line 1624
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1625
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->unReceiveTitle:Z

    const/4 v1, 0x0

    .line 1626
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    .line 1628
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mRecordLastUrl:Ljava/lang/String;

    .line 1629
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    .line 1630
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v2, 0x0

    .line 1632
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    .line 1634
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoadCompleted:Z

    .line 1636
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoaded:Z

    .line 1637
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoading:Z

    .line 1639
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    .line 1641
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoading:Z

    const-string v3, "page_finished"

    .line 1644
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusInjectTag:Ljava/lang/String;

    .line 1645
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mIsAdvanceCss:Z

    .line 1647
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedInjection:Z

    .line 1649
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEncoding:Ljava/lang/String;

    .line 1651
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewUUID:Ljava/lang/String;

    .line 1653
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewANID:Ljava/lang/String;

    .line 1655
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameId:Ljava/lang/String;

    .line 1656
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mJsInterfaces:Lio/dcloud/common/DHInterface/IJsInterface;

    .line 1657
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->hasErrorPage:Z

    .line 1658
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->errorPageUrl:Ljava/lang/String;

    .line 1659
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->originalUrl:Ljava/lang/String;

    const-string v3, "auto"

    .line 1661
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mVideoFullscreen:Ljava/lang/String;

    const-string v3, ""

    .line 1662
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->needTouchEvent:Ljava/lang/String;

    .line 1663
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->favoriteOptions:Ljava/lang/String;

    .line 1664
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->shareOptions:Ljava/lang/String;

    .line 1667
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mShareable:Z

    const-string v0, "normal"

    .line 1668
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    const-string v0, "none"

    .line 1669
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGEO:Ljava/lang/String;

    .line 1670
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGeoLoaded:Z

    .line 1671
    iput v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressIntValue:I

    .line 1677
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isDisposed:Z

    .line 1682
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mReceiveJSValue_android42:Lio/dcloud/common/adapter/ui/ReceiveJSValue;

    .line 1833
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isPause:Z

    .line 1887
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFlag:Ljava/lang/Object;

    .line 2085
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectPlusLoadedUrl:Ljava/lang/String;

    .line 2151
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    .line 2309
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFileLoaded:Z

    .line 2310
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFile:Ljava/lang/String;

    .line 2311
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    .line 2348
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mCssString:Ljava/lang/String;

    .line 2574
    new-instance v0, Lio/dcloud/common/adapter/ui/AdaWebview$4;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$4;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScriptListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    .line 2694
    new-instance v0, Lio/dcloud/common/adapter/ui/AdaWebview$5;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$5;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mMesssageListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    .line 2785
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mStateListeners:Ljava/util/ArrayList;

    .line 2799
    iput v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgress:I

    .line 2800
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isStart:Z

    .line 2875
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->justClearOption:Z

    .line 2894
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoading:Z

    .line 2920
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedSitemapJson:Z

    .line 3178
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideResourceRequestOptions:Lorg/json/JSONArray;

    .line 3233
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideUrlLoadingDataOptions:Lorg/json/JSONObject;

    .line 3245
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mListenResourceLoadingOptions:Lorg/json/JSONObject;

    .line 3246
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->initANID()V

    .line 3247
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 3248
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mAppid:Ljava/lang/String;

    .line 3249
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->initSitemapState()V

    const-string v0, "AdaWebview"

    .line 3250
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 3252
    :try_start_9f
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getWebView(Landroid/app/Activity;Lio/dcloud/common/adapter/ui/AdaWebview;)Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a9} :catch_aa

    goto :goto_b8

    :catch_aa
    move-exception v0

    .line 3254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3255
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getWebView(Landroid/app/Activity;Lio/dcloud/common/adapter/ui/AdaWebview;)Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    .line 3257
    :goto_b8
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setMainView(Landroid/view/View;)V

    .line 3259
    new-instance v0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    invoke-direct {v0, p1}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    .line 3260
    invoke-virtual {v0, p0}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->fillsWithWebview(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    .line 3261
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result p1

    if-ne p1, v4, :cond_132

    .line 3262
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->OverrideUrlJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideUrlLoadingDataOptions:Lorg/json/JSONObject;

    .line 3263
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->OverrideResourceJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_f5

    const-string p2, "0"

    .line 3265
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideResourceRequestOptions:Lorg/json/JSONArray;

    .line 3267
    :cond_f5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "injection"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedInjection:Z

    invoke-static {p1, p2, v2}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedInjection:Z

    .line 3268
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "L_plusrequire"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_11d

    .line 3270
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    .line 3272
    :cond_11d
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "L_geolocation"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_161

    .line 3274
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGEO:Ljava/lang/String;

    goto :goto_161

    .line 3278
    :cond_132
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_161

    .line 3279
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "S_pluserquire"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14d

    .line 3281
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    .line 3283
    :cond_14d
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "S_geolocation"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_161

    .line 3285
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGEO:Ljava/lang/String;

    :cond_161
    :goto_161
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)V
    .registers 9

    .line 3286
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 3287
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->unReceiveTitle:Z

    const/4 v1, 0x0

    .line 3288
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    .line 3290
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mRecordLastUrl:Ljava/lang/String;

    .line 3291
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    .line 3292
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v2, 0x0

    .line 3294
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    .line 3296
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoadCompleted:Z

    .line 3298
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoaded:Z

    .line 3299
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoading:Z

    .line 3301
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    .line 3303
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoading:Z

    const-string v3, "page_finished"

    .line 3306
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusInjectTag:Ljava/lang/String;

    .line 3307
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mIsAdvanceCss:Z

    .line 3309
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedInjection:Z

    .line 3311
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEncoding:Ljava/lang/String;

    .line 3313
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewUUID:Ljava/lang/String;

    .line 3315
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewANID:Ljava/lang/String;

    .line 3317
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameId:Ljava/lang/String;

    .line 3318
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mJsInterfaces:Lio/dcloud/common/DHInterface/IJsInterface;

    .line 3319
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->hasErrorPage:Z

    .line 3320
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->errorPageUrl:Ljava/lang/String;

    .line 3321
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->originalUrl:Ljava/lang/String;

    const-string v3, "auto"

    .line 3323
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mVideoFullscreen:Ljava/lang/String;

    const-string v3, ""

    .line 3324
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->needTouchEvent:Ljava/lang/String;

    .line 3325
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->favoriteOptions:Ljava/lang/String;

    .line 3326
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->shareOptions:Ljava/lang/String;

    .line 3329
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mShareable:Z

    const-string v0, "normal"

    .line 3330
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    const-string v0, "none"

    .line 3331
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGEO:Ljava/lang/String;

    .line 3332
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGeoLoaded:Z

    .line 3333
    iput v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressIntValue:I

    .line 3339
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isDisposed:Z

    .line 3344
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mReceiveJSValue_android42:Lio/dcloud/common/adapter/ui/ReceiveJSValue;

    .line 3495
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isPause:Z

    .line 3549
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFlag:Ljava/lang/Object;

    .line 3747
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectPlusLoadedUrl:Ljava/lang/String;

    .line 3813
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    .line 3971
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFileLoaded:Z

    .line 3972
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFile:Ljava/lang/String;

    .line 3973
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    .line 4010
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mCssString:Ljava/lang/String;

    .line 4236
    new-instance v0, Lio/dcloud/common/adapter/ui/AdaWebview$4;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$4;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScriptListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    .line 4356
    new-instance v0, Lio/dcloud/common/adapter/ui/AdaWebview$5;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$5;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mMesssageListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    .line 4447
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mStateListeners:Ljava/util/ArrayList;

    .line 4461
    iput v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgress:I

    .line 4462
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isStart:Z

    .line 4537
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->justClearOption:Z

    .line 4556
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoading:Z

    .line 4582
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedSitemapJson:Z

    .line 4840
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideResourceRequestOptions:Lorg/json/JSONArray;

    .line 4895
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideUrlLoadingDataOptions:Lorg/json/JSONObject;

    .line 4907
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mListenResourceLoadingOptions:Lorg/json/JSONObject;

    .line 4908
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->initANID()V

    .line 4909
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 4910
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mAppid:Ljava/lang/String;

    .line 4911
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->initSitemapState()V

    const-string v0, "AdaWebview"

    .line 4912
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 4914
    :try_start_9f
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0, p3}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getWebView(Landroid/app/Activity;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a9} :catch_aa

    goto :goto_b8

    :catch_aa
    move-exception v0

    .line 4916
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4917
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0, p3}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getWebView(Landroid/app/Activity;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object p3

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    .line 4919
    :goto_b8
    iget-object p3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p3}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p0, p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setMainView(Landroid/view/View;)V

    .line 4921
    new-instance p3, Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    invoke-direct {p3, p1}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    .line 4922
    invoke-virtual {p3, p0}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->fillsWithWebview(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    .line 4923
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result p1

    if-ne p1, v4, :cond_132

    .line 4924
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->OverrideUrlJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideUrlLoadingDataOptions:Lorg/json/JSONObject;

    .line 4925
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->OverrideResourceJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_f5

    const-string p2, "0"

    .line 4927
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideResourceRequestOptions:Lorg/json/JSONArray;

    .line 4929
    :cond_f5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "injection"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedInjection:Z

    invoke-static {p1, p2, v2}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedInjection:Z

    .line 4930
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "L_plusrequire"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4931
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_11d

    .line 4932
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    .line 4934
    :cond_11d
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "L_geolocation"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4935
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_161

    .line 4936
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGEO:Ljava/lang/String;

    goto :goto_161

    .line 4940
    :cond_132
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_161

    .line 4941
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "S_pluserquire"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4942
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14d

    .line 4943
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    .line 4945
    :cond_14d
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "S_geolocation"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4946
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_161

    .line 4947
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGEO:Ljava/lang/String;

    :cond_161
    :goto_161
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;)V
    .registers 9

    .line 4948
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 4949
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->unReceiveTitle:Z

    const/4 v1, 0x0

    .line 4950
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    .line 4952
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mRecordLastUrl:Ljava/lang/String;

    .line 4953
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    .line 4954
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v2, 0x0

    .line 4956
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    .line 4958
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoadCompleted:Z

    .line 4960
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoaded:Z

    .line 4961
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoading:Z

    .line 4963
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    .line 4965
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoading:Z

    const-string v3, "page_finished"

    .line 4968
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusInjectTag:Ljava/lang/String;

    .line 4969
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mIsAdvanceCss:Z

    .line 4971
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedInjection:Z

    .line 4973
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEncoding:Ljava/lang/String;

    .line 4975
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewUUID:Ljava/lang/String;

    .line 4977
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewANID:Ljava/lang/String;

    .line 4979
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameId:Ljava/lang/String;

    .line 4980
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mJsInterfaces:Lio/dcloud/common/DHInterface/IJsInterface;

    .line 4981
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->hasErrorPage:Z

    .line 4982
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->errorPageUrl:Ljava/lang/String;

    .line 4983
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->originalUrl:Ljava/lang/String;

    const-string v3, "auto"

    .line 4985
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mVideoFullscreen:Ljava/lang/String;

    const-string v3, ""

    .line 4986
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->needTouchEvent:Ljava/lang/String;

    .line 4987
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->favoriteOptions:Ljava/lang/String;

    .line 4988
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->shareOptions:Ljava/lang/String;

    .line 4991
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mShareable:Z

    const-string v0, "normal"

    .line 4992
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    const-string v0, "none"

    .line 4993
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGEO:Ljava/lang/String;

    .line 4994
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGeoLoaded:Z

    .line 4995
    iput v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressIntValue:I

    .line 5001
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isDisposed:Z

    .line 5006
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mReceiveJSValue_android42:Lio/dcloud/common/adapter/ui/ReceiveJSValue;

    .line 5157
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isPause:Z

    .line 5211
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFlag:Ljava/lang/Object;

    .line 5409
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectPlusLoadedUrl:Ljava/lang/String;

    .line 5475
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    .line 5633
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFileLoaded:Z

    .line 5634
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFile:Ljava/lang/String;

    .line 5635
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    .line 5672
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mCssString:Ljava/lang/String;

    .line 5898
    new-instance v0, Lio/dcloud/common/adapter/ui/AdaWebview$4;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$4;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScriptListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    .line 6018
    new-instance v0, Lio/dcloud/common/adapter/ui/AdaWebview$5;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$5;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mMesssageListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    .line 6109
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mStateListeners:Ljava/util/ArrayList;

    .line 6123
    iput v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgress:I

    .line 6124
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isStart:Z

    .line 6199
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->justClearOption:Z

    .line 6218
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoading:Z

    .line 6244
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedSitemapJson:Z

    .line 6502
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideResourceRequestOptions:Lorg/json/JSONArray;

    .line 6557
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideUrlLoadingDataOptions:Lorg/json/JSONObject;

    .line 6569
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mListenResourceLoadingOptions:Lorg/json/JSONObject;

    .line 6570
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->initANID()V

    .line 6571
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const-string p2, "AdaWebview"

    .line 6572
    invoke-static {p2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 6574
    :try_start_92
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p0, p3}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getWebView(Landroid/app/Activity;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;)Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9c} :catch_9d

    goto :goto_ab

    :catch_9d
    move-exception p2

    .line 6576
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 6577
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p0, p3}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getWebView(Landroid/app/Activity;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;)Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    .line 6579
    :goto_ab
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setMainView(Landroid/view/View;)V

    .line 6581
    new-instance p2, Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    invoke-direct {p2, p1}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    .line 6582
    invoke-virtual {p2, p0}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->fillsWithWebview(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->releaseConfigCallback()V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/common/adapter/ui/AdaWebview;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mStateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lio/dcloud/common/adapter/ui/AdaWebview;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mStateListeners:Ljava/util/ArrayList;

    return-object p1
.end method

.method private checkRedCssline(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 8
    :goto_18
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"\n+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    :cond_38
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_43} :catch_44

    goto :goto_49

    :catch_44
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_49
    return-object p1
.end method

.method public static clearData()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lio/dcloud/common/adapter/ui/AdaWebview;->setedWebViewData:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomUserAgent:Ljava/lang/String;

    .line 3
    sput-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->sDefalutUserAgent:Ljava/lang/String;

    return-void
.end method

.method public static combineObj2Array([Lio/dcloud/common/DHInterface/IJsInterface;Lio/dcloud/common/DHInterface/IJsInterface;)[Lio/dcloud/common/DHInterface/IJsInterface;
    .registers 5

    if-nez p0, :cond_6

    const/4 p0, 0x1

    new-array p0, p0, [Lio/dcloud/common/DHInterface/IJsInterface;

    goto :goto_10

    .line 3
    :cond_6
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    .line 4
    new-array v1, v1, [Lio/dcloud/common/DHInterface/IJsInterface;

    const/4 v2, 0x0

    .line 5
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v1

    .line 8
    :goto_10
    array-length v0, p0

    aput-object p1, p0, v0

    return-object p0
.end method

.method private loadFileContent(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 20
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-static {p1, v1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 24
    :try_start_11
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_1e
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 28
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    goto :goto_51

    :catchall_1c
    move-exception p1

    goto :goto_26

    :catch_1e
    move-exception p2

    .line 29
    :try_start_1f
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    .line 31
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    goto :goto_51

    :goto_26
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 32
    throw p1

    .line 34
    :cond_2a
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    :try_start_38
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 37
    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFileContent(Ljava/lang/String;I)[B

    move-result-object p2

    if-eqz p2, :cond_51

    .line 39
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4c} :catch_4d

    goto :goto_51

    :catch_4d
    move-exception p2

    .line 43
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    :cond_51
    :goto_51
    iget-boolean p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedSitemapJson:Z

    if-eqz p2, :cond_b5

    const-string p2, "__wap2app.js"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 47
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseFsSitMapPath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_sitemap.json"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_b5

    const/4 p2, 0x0

    .line 50
    :try_start_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ";window.__wap2app_sitemap="

    .line 51
    invoke-virtual {v0, p2, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_ae} :catch_af

    goto :goto_b3

    :catch_af
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 55
    :goto_b3
    iput-boolean p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedSitemapJson:Z

    .line 58
    :cond_b5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private pushEvalJsOption(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_a

    new-array v0, v1, [Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    goto :goto_15

    .line 5
    :cond_a
    array-length v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    .line 6
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :goto_15
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    array-length v2, v0

    sub-int/2addr v2, v1

    aput-object p1, v0, v2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewimp=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ");pushEvalJs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adawebview"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private releaseConfigCallback()V
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "sConfigCallback"

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-ge v0, v4, :cond_2b

    .line 3
    :try_start_a
    const-class v0, Landroid/webkit/WebView;

    const-string v4, "mWebViewCore"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "mBrowserFrame"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_2a} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_2a} :catch_3d

    goto :goto_3d

    :cond_2b
    :try_start_2b
    const-string v0, "android.webkit.BrowserFrame"

    .line 15
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 18
    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2b .. :try_end_3d} :catch_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b .. :try_end_3d} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_3d} :catch_3d

    :catch_3d
    :cond_3d
    :goto_3d
    return-void
.end method

.method private startWebProgress()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mProgressJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_89

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    if-nez v0, :cond_19

    .line 3
    new-instance v0, Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dcloud/android/widget/DCWebViewProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    .line 5
    :cond_19
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mProgressJson:Lorg/json/JSONObject;

    const-string v1, "color"

    const-string v2, "#00FF00"

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "height"

    const-string v3, "2px"

    .line 7
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :try_start_31
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_36

    goto :goto_3a

    .line 12
    :catch_36
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    .line 14
    :goto_3a
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-virtual {v2, v1}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->setColorInt(I)V

    .line 15
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getScale()F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    .line 17
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 18
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->setAlphaInt(I)V

    .line 21
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_83

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 22
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_82

    .line 24
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_83

    :cond_82
    return-void

    .line 29
    :cond_83
    :goto_83
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->startProgress()V

    goto :goto_aa

    .line 31
    :cond_89
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    if-eqz v0, :cond_aa

    const/16 v1, 0x8

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a7

    .line 34
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 35
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a7
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    :cond_aa
    :goto_aa
    return-void
.end method


# virtual methods
.method public addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    return-void
.end method

.method public addJsInterface(Ljava/lang/String;Lio/dcloud/common/DHInterface/IJsInterface;)V
    .registers 5

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_b

    .line 4
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0, p2, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :cond_b
    invoke-virtual {p0, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->setJsInterface(Lio/dcloud/common/DHInterface/IJsInterface;)V

    return-void
.end method

.method public addJsInterface(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0, p2, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public addJsInterface(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0, p2, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mStateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mStateListeners:Ljava/util/ArrayList;

    :cond_b
    if-eqz p1, :cond_12

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public appendPreloadJsFile(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appendPreloadJsFile mPreloadJsFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaWebview"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    if-eqz v0, :cond_70

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendPreloadJsFile---="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4c

    const/4 v0, 0x0

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x2

    .line 6
    :goto_4d
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadFileContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadUrl(Ljava/lang/String;)V

    :cond_70
    return-void
.end method

.method public backOrForward(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->canGoBackOrForward(I)Z

    move-result p1

    return p1
.end method

.method public canGoBack()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->justClearOption:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 2
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canGoBack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->justClearOption:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdaFrameItem"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public canGoForward()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->justClearOption:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public checkIfNeedLoadOriginalUrl()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoading:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    if-nez v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadUrl(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public checkInjectSitemap()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedSitemapJson:Z

    if-eqz v0, :cond_64

    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    if-eqz v0, :cond_64

    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoaded:Z

    if-eqz v0, :cond_64

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseFsSitMapPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_sitemap.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_64

    :try_start_3f
    const-string v2, ";window.__wap2app_sitemap="

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";wap2app&wap2app.initSitemap();\n"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    :goto_5a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScript(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedSitemapJson:Z

    :cond_64
    return-void
.end method

.method public checkOverrideUrl(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_6
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideUrlLoadingDataOptions:Lorg/json/JSONObject;

    invoke-interface {v0, v1, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->checkOverrideUrl(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkPreLoadJsContent()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPreLoadJsContent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->onPreloadJSContent(Ljava/lang/String;)V

    return-void
.end method

.method public checkResourceLoading(Ljava/lang/String;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mListenResourceLoadingOptions:Lorg/json/JSONObject;

    if-eqz v0, :cond_25

    const-string v1, "match"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    .line 4
    :try_start_d
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mListenResourceLoadingOptions:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    :cond_25
    const/4 v0, 0x1

    :goto_26
    return v0
.end method

.method public checkResourceRequestUrl(Ljava/lang/String;)Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideResourceRequestOptions:Lorg/json/JSONArray;

    if-eqz v0, :cond_87

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_87

    const/4 v0, 0x0

    .line 6
    :goto_b
    :try_start_b
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideResourceRequestOptions:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_87

    .line 7
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideResourceRequestOptions:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "match"

    const-string v3, ""

    .line 8
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 10
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 11
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_69

    const-string p1, "redirect"

    .line 13
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_43} :catch_6c

    const-string v0, "mime"

    .line 15
    :try_start_45
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "encoding"

    const-string v3, "utf-8"

    .line 16
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "header"

    .line 17
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 18
    new-instance v3, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;

    invoke-direct {v3, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    .line 19
    iput-object p1, v3, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->redirect:Ljava/lang/String;

    .line 20
    iput-object v2, v3, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->encoding:Ljava/lang/String;

    .line 21
    iput-object v0, v3, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->mime:Ljava/lang/String;

    .line 22
    iput-object v1, v3, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->headerJson:Lorg/json/JSONObject;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_68} :catch_6c

    return-object v3

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :catch_6c
    move-exception p1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkResourceRequestUrl e=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdaWebview"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    const/4 p1, 0x0

    return-object p1
.end method

.method public checkWhite(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->checkWhite(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public clearHistory()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearHistory url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaFrameItem"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->justClearOption:Z

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    const-string v1, "<html><head><meta charset=\"utf-8\"></head><body></body><html>"

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-interface {v0, v1, v2, v3}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    const-string v1, ""

    invoke-interface {v0, v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setUrlStr(Ljava/lang/String;)V

    return-void
.end method

.method public dispatchWebviewStateEvent(ILjava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_31

    const/4 v2, 0x3

    if-eq p1, v2, :cond_8

    goto :goto_3e

    .line 1
    :cond_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgress:I

    .line 3
    iget-boolean v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isStart:Z

    const/16 v4, 0x64

    if-nez v3, :cond_1f

    if-ge v2, v4, :cond_1f

    .line 5
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->startWebProgress()V

    .line 6
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isStart:Z

    .line 8
    :cond_1f
    iget v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgress:I

    if-lt v2, v4, :cond_3e

    iget-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isStart:Z

    if-eqz v2, :cond_3e

    .line 10
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isStart:Z

    .line 11
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    if-eqz v0, :cond_3e

    .line 12
    invoke-virtual {v0}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->finishProgress()V

    goto :goto_3e

    .line 26
    :cond_31
    iget-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isStart:Z

    if-eqz v2, :cond_3e

    .line 27
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isStart:Z

    .line 28
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    if-eqz v0, :cond_3e

    .line 30
    invoke-virtual {v0}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->finishProgress()V

    .line 36
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mStateListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_57

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_47
    if-ltz v0, :cond_57

    .line 38
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IWebviewStateListener;

    .line 39
    invoke-interface {v1, p1, p2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    :cond_57
    return-void
.end method

.method public dispose()V
    .registers 6

    .line 1
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->dispose()V

    .line 2
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isDisposed:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isDisposed:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressView:Landroid/view/View;

    .line 7
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7d

    iget-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    if-nez v2, :cond_7d

    .line 9
    iget v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressIntValue:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_74

    .line 10
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".streamdownload.downloadfinish."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appid"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget v3, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressIntValue:I

    const-string v4, "progress"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "flag"

    const-string v4, "direct_page_progressed"

    .line 14
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7d

    .line 17
    :cond_74
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->checkOrLoadlaunchWebview()V

    .line 20
    :cond_7d
    :goto_7d
    sget v2, Lio/dcloud/common/util/BaseInfo;->s_Webview_Count:I

    sub-int/2addr v2, v0

    sput v2, Lio/dcloud/common/util/BaseInfo;->s_Webview_Count:I

    .line 22
    :try_start_82
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_89

    .line 23
    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->stopLoading()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_89} :catch_89

    .line 27
    :catch_89
    :cond_89
    new-instance v0, Lio/dcloud/common/adapter/ui/AdaWebview$3;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$3;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method

.method public endWebViewEvent(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "pull_down_refresh"

    .line 4
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->endPullRefresh()V

    goto :goto_20

    :cond_13
    const-string v0, "bounce_register"

    .line 6
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 7
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->resetBounce()V

    :cond_20
    :goto_20
    return-void
.end method

.method public evalJS(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScript(Ljava/lang/String;)V

    goto :goto_b

    .line 5
    :cond_8
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->pushEvalJsOption(Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method public evalJS(Ljava/lang/String;Lio/dcloud/common/adapter/ui/ReceiveJSValue$ReceiveJSValueCallback;)V
    .registers 3

    if-eqz p2, :cond_6

    .line 6
    invoke-static {p1, p2}, Lio/dcloud/common/adapter/ui/ReceiveJSValue;->registerCallback(Ljava/lang/String;Lio/dcloud/common/adapter/ui/ReceiveJSValue$ReceiveJSValueCallback;)Ljava/lang/String;

    move-result-object p1

    .line 8
    :cond_6
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->evalJS(Ljava/lang/String;)V

    return-void
.end method

.method public evalJSSync(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_21

    const-string v0, "javascript:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_1c

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_1c
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0, p1, p2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->evalJSSync(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V

    :cond_21
    return-void
.end method

.method public execScript(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Z)Ljava/lang/String;
    .registers 7

    if-eqz p4, :cond_17

    .line 1
    iget-object p4, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mMesssageListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    if-eqz p4, :cond_15

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 2
    invoke-static {p4, v0}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    :cond_15
    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_17
    iget-object p4, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mJsInterfaces:Lio/dcloud/common/DHInterface/IJsInterface;

    invoke-interface {p4, p1, p2, p3}, Lio/dcloud/common/DHInterface/IJsInterface;->exec(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public executeScript(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScriptListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    if-eqz v0, :cond_9

    .line 3
    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method execute_eval_js_stack()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    if-eqz v0, :cond_38

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webviewimp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";execute_eval_js_stack count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adawebview"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    :goto_28
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_35

    .line 4
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScript(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_35
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    :cond_38
    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_15
    const-string v0, ""

    :goto_17
    return-object v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCssString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mCssString:Ljava/lang/String;

    return-object v0
.end method

.method public getDCWebView()Lio/dcloud/common/adapter/ui/webview/DCWebView;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    return-object v0
.end method

.method public getFixBottom()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFixBottomHeight:I

    return v0
.end method

.method public getFlag()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFlag:Ljava/lang/Object;

    return-object v0
.end method

.method public getOpener()Lio/dcloud/common/DHInterface/IWebview;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOpener:Lio/dcloud/common/DHInterface/IWebview;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->originalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPreLoadJsString()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 3
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_80

    .line 5
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    const/4 v0, 0x2

    .line 6
    :goto_22
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ";"

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\n"

    if-eqz v3, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    iget-object v5, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    const-string v5, "__wap2app.js"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    const-string v5, "__wap2appconfig.js"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_53

    goto :goto_2a

    .line 11
    :cond_53
    invoke-virtual {p0, v3, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->wrapAppendJsFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 16
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_82

    :cond_80
    const-string v0, ""

    :goto_82
    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleOfOpenerWebview()F
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getScale()F

    move-result v0

    return v0
.end method

.method public getScreenAndDisplayJson(Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;
    .registers 10

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const/4 v1, 0x2

    .line 3
    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    .line 4
    invoke-interface {p1, v3}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    .line 5
    invoke-interface {p1, v5}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p1

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    int-to-float v3, v2

    div-float/2addr v3, v0

    float-to-int v3, v3

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v5

    int-to-float v3, v4

    div-float/2addr v3, v0

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v6, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v6, v2

    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->dpiX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v6, v2

    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->dpiY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v6, v2

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x7

    aput-object p1, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x8

    aput-object p1, v6, v0

    const-string p1, "(function(p){p.screen.scale=%f;p.screen.resolutionHeight=%d;p.screen.resolutionWidth=%d;p.screen.height=%d;p.screen.width=%d;p.screen.dpiX=%f;p.screen.dpiY=%f;p.display.resolutionHeight=%d;p.display.resolutionWidth=%d;})(((window.__html5plus__&&__html5plus__.isReady)?__html5plus__:(navigator.plus&&navigator.plus.isReady)?navigator.plus:window.plus));"

    .line 9
    invoke-static {p1, v6}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebviewANID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewANID:Ljava/lang/String;

    return-object v0
.end method

.method protected getWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    return-object v0
.end method

.method public getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "getShareOptions"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->shareOptions:Ljava/lang/String;

    return-object p1

    :cond_b
    const-string v0, "getFavoriteOptions"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->favoriteOptions:Ljava/lang/String;

    return-object p1

    :cond_16
    const-string v0, "needTouchEvent"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 8
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->needTouchEvent:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_25
    const-string v0, "User-Agent"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 11
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz p1, :cond_36

    .line 12
    invoke-interface {p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_36
    sget-object p1, Lio/dcloud/common/adapter/ui/AdaWebview;->sDefalutUserAgent:Ljava/lang/String;

    return-object p1

    :cond_39
    const-string v0, "videoFullscreen"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 18
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mVideoFullscreen:Ljava/lang/String;

    return-object p1

    :cond_44
    const-string v0, "plusrequire"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 20
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    return-object p1

    :cond_4f
    const-string v0, "shareable"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mShareable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getWebviewUUID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewUUID:Ljava/lang/String;

    return-object v0
.end method

.method public get_eval_js_stack()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    if-eqz v1, :cond_29

    const/4 v1, 0x0

    .line 3
    :goto_a
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_26

    .line 4
    aget-object v2, v2, v1

    const-string v3, ";"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    .line 8
    :cond_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_26
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mEvalJsOptionStack:[Ljava/lang/String;

    .line 13
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBackOrForward(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->goBackOrForward(I)V

    :cond_7
    return-void
.end method

.method public hadClearHistory(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->justClearOption:Z

    if-eqz v0, :cond_e

    const-string v0, "data:text/html,<html><head><meta charset=\"utf-8\"></head><body></body><html>"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public hasPreLoadJsFile()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hasWebViewEvent(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "pull_down_refresh"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    if-eqz p1, :cond_f

    .line 3
    iget-boolean p1, p1, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->isSetPull2Refresh:Z

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public init()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->init()V

    :cond_7
    return-void
.end method

.method protected initANID()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewANID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AD_Webview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewANID:Ljava/lang/String;

    :cond_1f
    return-void
.end method

.method protected initSitemapState()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mAppid:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    :cond_11
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedSitemapJson:Z

    return-void
.end method

.method public final initWebviewUUID(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewUUID:Ljava/lang/String;

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isDisposed:Z

    return v0
.end method

.method public isIWebViewFocusable()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    return v0
.end method

.method public isPause()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isPause:Z

    return v0
.end method

.method public isRealInject(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectPlusLoadedUrl:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getUrlPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->getUrlPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    if-eqz v1, :cond_16

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public isUniService()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isUniWebView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public loadContentData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadCssFile()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mCssString:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mCssString:Ljava/lang/String;

    const-string v1, "\""

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mCssString:Ljava/lang/String;

    .line 4
    invoke-direct {p0, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkRedCssline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:var container = document.getElementsByTagName(\'head\')[0];\nvar addStyle = document.createElement(\'style\');\naddStyle.rel = \'stylesheet\';\naddStyle.type = \'text/css\';\naddStyle.innerHTML = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";\ncontainer.appendChild(addStyle);\nfirstNode = container.children[0];\n    container.appendChild(addStyle);\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method loadFileContent(Lio/dcloud/common/adapter/ui/AdaWebview$IFExecutePreloadJSContentCallBack;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 3
    :try_start_8
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 5
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x2

    .line 6
    :goto_1a
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v2, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->wrapAppendJsFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_52

    .line 11
    invoke-virtual {p0, v3}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadUrl(Ljava/lang/String;)V

    goto :goto_20

    .line 13
    :cond_52
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v4, v2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->convertRelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Lio/dcloud/common/adapter/ui/AdaWebview$IFExecutePreloadJSContentCallBack;->callback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5b} :catch_5c

    goto :goto_20

    :catch_5c
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_60
    return-void
.end method

.method public loadForceAHeadJs()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 5
    :cond_d
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFileLoaded:Z

    if-nez v0, :cond_50

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    const/4 v0, 0x2

    .line 7
    :goto_29
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFile:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadFileContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadUrl(Ljava/lang/String;)V

    .line 11
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFileLoaded:Z

    :cond_50
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setUrlStr(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->hasErrorPage:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->errorPageUrl:Ljava/lang/String;

    .line 7
    :cond_23
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_2a

    .line 8
    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->loadUrl(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public obtainFrameId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameId:Ljava/lang/String;

    return-object v0
.end method

.method public obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    return-object v0
.end method

.method public obtainFullUrl()Ljava/lang/String;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_19
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainPageTitle()Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3e

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getPageTitle()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    :cond_22
    return-object v0

    :catch_23
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e.getMessage()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaWebview"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3e
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getPageTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainUrl()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 4
    :cond_7
    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 6
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v1

    if-ltz v0, :cond_33

    .line 8
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_33
    return-object v1

    .line 12
    :cond_34
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainWebview()Landroid/webkit/WebView;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainWindowView()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public onDispose()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_17
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onDispose()Z

    move-result v0

    return v0
.end method

.method public onPageStarted()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoading:Z

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->onPageStarted()V

    .line 6
    :cond_a
    :try_start_a
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 7
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "direct_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 9
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/adapter/ui/AdaWebview$6;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$6;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_40
    return-void
.end method

.method public onRootViewGlobalLayout(Landroid/view/View;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IWebAppRootView;->onRootViewGlobalLayout(Landroid/view/View;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_23

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isPause:Z

    .line 6
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/adapter/ui/AdaWebview$1;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$1;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v0, :cond_23

    const-string v1, "webPause"

    .line 13
    invoke-virtual {v0, v1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method public reload()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->removeAllFrameItem()V

    const/4 v0, 0x0

    .line 5
    :try_start_10
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-eqz v1, :cond_19

    .line 6
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v1, v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->clearCache(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_19

    .line 10
    :catch_19
    :cond_19
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v1, v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setDidTouch(Z)V

    .line 11
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->reload()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reload url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->convertRelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method public reload(Ljava/lang/String;)V
    .registers 4

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reload loadUrl url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    .line 15
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setUrlStr(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public reload(Z)V
    .registers 3

    .line 17
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_7

    .line 18
    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->webReload(Z)V

    .line 20
    :cond_7
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->reload()V

    return-void
.end method

.method public removeAllCookie()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->removeAllCookie()V

    goto :goto_15

    .line 5
    :cond_8
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lio/dcloud/common/util/net/http/WebkitCookieManagerProxy;

    if-eqz v1, :cond_15

    .line 7
    check-cast v0, Lio/dcloud/common/util/net/http/WebkitCookieManagerProxy;

    .line 8
    invoke-virtual {v0}, Lio/dcloud/common/util/net/http/WebkitCookieManagerProxy;->removeAllCookie()Z

    :cond_15
    :goto_15
    return-void
.end method

.method public removeSessionCookie()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->removeSessionCookie()V

    goto :goto_15

    .line 5
    :cond_8
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lio/dcloud/common/util/net/http/WebkitCookieManagerProxy;

    if-eqz v1, :cond_15

    .line 7
    check-cast v0, Lio/dcloud/common/util/net/http/WebkitCookieManagerProxy;

    .line 8
    invoke-virtual {v0}, Lio/dcloud/common/util/net/http/WebkitCookieManagerProxy;->removeSessionCookie()Z

    :cond_15
    :goto_15
    return-void
.end method

.method public removeStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mStateListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public resetPlusLoadSaveData()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoading:Z

    .line 3
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoaded:Z

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoading:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectPlusWidthJs:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    .line 7
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mIsAdvanceCss:Z

    .line 8
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGeoLoaded:Z

    .line 9
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFileLoaded:Z

    .line 10
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectPlusLoadedUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->initSitemapState()V

    return-void
.end method

.method public resume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_23

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->isPause:Z

    .line 6
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/adapter/ui/AdaWebview$2;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$2;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v0, :cond_23

    const-string v1, "webResume"

    .line 13
    invoke-virtual {v0, v1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method public saveWebViewData(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoading:Z

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-nez v0, :cond_9

    goto :goto_7a

    .line 4
    :cond_9
    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "about:blank"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setUrlStr(Ljava/lang/String;)V

    goto :goto_2c

    .line 9
    :cond_27
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setUrlStr(Ljava/lang/String;)V

    .line 11
    :cond_2c
    :goto_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveWebViewData url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdaFrameItem"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    .line 14
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectPlusLoadedUrl:Ljava/lang/String;

    .line 15
    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoading:Z

    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoaded:Z

    .line 16
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    const-string v0, "saveWebViewData"

    invoke-interface {p1, v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->onUpdatePlusData(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1, v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->listenPageFinishTimeout(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object p1

    invoke-interface {p1}, Lcom/dcloud/android/v4/widget/IRefreshAble;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 19
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object p1

    invoke-interface {p1}, Lcom/dcloud/android/v4/widget/IRefreshAble;->endRefresh()V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public setAssistantType(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAssistantType type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssistantInput"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/RecordView$Utils;->convertInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    sput p1, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->sDefaultInputType:I

    .line 5
    sget-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    .line 6
    iget v0, v0, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->mInputType:I

    if-eq v0, p1, :cond_2b

    if-eq v0, v1, :cond_2b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    .line 14
    :goto_2c
    sget-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mRecordView:Lio/dcloud/common/adapter/ui/RecordView;

    if-eqz v0, :cond_3d

    if-eqz v1, :cond_3d

    sget-boolean v0, Lio/dcloud/common/adapter/util/AndroidResources;->sIMEAlive:Z

    if-eqz v0, :cond_3d

    .line 15
    sget-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mRecordView:Lio/dcloud/common/adapter/ui/RecordView;

    iget v1, v0, Lio/dcloud/common/adapter/ui/RecordView;->mAnchorY:I

    invoke-virtual {v0, v1, p1}, Lio/dcloud/common/adapter/ui/RecordView;->update(II)V

    :cond_3d
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0, p1, p2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 6
    :cond_8
    :try_start_8
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "Set-Cookie"

    .line 14
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    :goto_27
    return-void
.end method

.method public setCssFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_15

    const/4 p2, 0x0

    goto :goto_16

    :cond_15
    const/4 p2, 0x2

    .line 4
    :goto_16
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadFileContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mCssString:Ljava/lang/String;

    goto :goto_1f

    .line 6
    :cond_1d
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mCssString:Ljava/lang/String;

    :goto_1f
    return-void
.end method

.method public setFixBottom(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFixBottomHeight:I

    return-void
.end method

.method public setFlag(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFlag:Ljava/lang/Object;

    return-void
.end method

.method public setFrameId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameId:Ljava/lang/String;

    return-void
.end method

.method public setIWebViewFocusable(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v1

    if-eqz p1, :cond_16

    if-nez v1, :cond_16

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    goto :goto_21

    :cond_16
    if-nez p1, :cond_21

    if-eqz v1, :cond_21

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public setJsInterface(Lio/dcloud/common/DHInterface/IJsInterface;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mJsInterfaces:Lio/dcloud/common/DHInterface/IJsInterface;

    if-nez v0, :cond_6

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mJsInterfaces:Lio/dcloud/common/DHInterface/IJsInterface;

    :cond_6
    return-void
.end method

.method public setListenResourceLoading(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mListenResourceLoadingOptions:Lorg/json/JSONObject;

    return-void
.end method

.method public setLoadURLHeads(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->putHeads(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_7
    return-void
.end method

.method public setOpener(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOpener:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

.method public setOriginalUrl(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->originalUrl:Ljava/lang/String;

    return-void
.end method

.method public setOverrideResourceRequest(Lorg/json/JSONArray;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideResourceRequestOptions:Lorg/json/JSONArray;

    return-void
.end method

.method public setOverrideUrlLoadingData(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mOverrideUrlLoadingDataOptions:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOverrideUrlLoadingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdaFrameItem"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2a

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3f

    .line 4
    :cond_2a
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string v0, "wap2app_running_mode"

    const-string v1, "false"

    invoke-interface {p1, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz p1, :cond_3f

    const/4 v0, 0x1

    .line 6
    invoke-interface {p1, v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->closeWap2AppBlockDialog(Z)V

    :cond_3f
    return-void
.end method

.method public setPreloadJsFile(Ljava/lang/String;Z)V
    .registers 5

    if-eqz p2, :cond_f

    const/4 p2, 0x0

    .line 1
    iput-boolean p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFileLoaded:Z

    .line 2
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFile:Ljava/lang/String;

    .line 3
    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    if-eqz p1, :cond_4d

    .line 4
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadForceAHeadJs()V

    goto :goto_4d

    .line 7
    :cond_f
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPreloadJsFile mPreloadJsFile="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AdaWebview"

    invoke-static {v0, p2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-boolean p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    if-eqz p2, :cond_4d

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreloadJsFile---="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadFileContent(Lio/dcloud/common/adapter/ui/AdaWebview$IFExecutePreloadJSContentCallBack;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public setProgressView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressView:Landroid/view/View;

    return-void
.end method

.method public setScrollIndicator(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_49

    const-string v0, "none"

    .line 2
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1, v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1, v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_49

    :cond_18
    const-string v0, "vertical"

    .line 5
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2c

    .line 6
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1, v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 7
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1, v2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_49

    :cond_2c
    const-string v0, "horizontal"

    .line 8
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 9
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1, v2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 10
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1, v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_49

    .line 12
    :cond_3f
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1, v2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 13
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1, v2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setVerticalScrollBarEnabled(Z)V

    :cond_49
    :goto_49
    return-void
.end method

.method public setWebViewCacheMode(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setWebViewCacheMode(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setWebViewEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "pull_down_refresh"

    .line 4
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6
    check-cast p2, Lorg/json/JSONObject;

    .line 7
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->parsePullToReFresh(Lorg/json/JSONObject;)V

    goto :goto_32

    :cond_15
    const-string v0, "pull_down_refresh_begin"

    .line 8
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 9
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->beginPullRefresh()V

    goto :goto_32

    :cond_23
    const-string v0, "bounce_register"

    .line 10
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 11
    check-cast p2, Lorg/json/JSONObject;

    .line 12
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->parseBounce(Lorg/json/JSONObject;)V

    :cond_32
    :goto_32
    return-void
.end method

.method public setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "icon"

    const-string v1, "setShareOptions"

    .line 1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_38

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 3
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->shareOptions:Ljava/lang/String;

    .line 5
    :try_start_14
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->shareOptions:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_194

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_194

    .line 9
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;->getInstance()Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_32} :catch_194

    goto/16 :goto_194

    .line 14
    :cond_34
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->shareOptions:Ljava/lang/String;

    goto/16 :goto_194

    :cond_38
    const-string v0, "setFavoriteOptions"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4a

    .line 19
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->favoriteOptions:Ljava/lang/String;

    goto/16 :goto_194

    .line 21
    :cond_4a
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->favoriteOptions:Ljava/lang/String;

    goto/16 :goto_194

    :cond_4e
    const-string v0, "needTouchEvent"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 26
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->needTouchEvent:Ljava/lang/String;

    goto/16 :goto_194

    .line 28
    :cond_60
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->needTouchEvent:Ljava/lang/String;

    goto/16 :goto_194

    :cond_64
    const-string v0, "scalable"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_84

    .line 32
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz p1, :cond_194

    .line 33
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget-boolean p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->scalable:Z

    invoke-static {p2, p1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    .line 34
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p2, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->initScalable(Z)V

    goto/16 :goto_194

    :cond_84
    const-string v0, "User-Agent"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 37
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz p1, :cond_194

    .line 38
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string v0, "h5plus"

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_bb

    const-string p1, " Html5Plus/"

    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_bb

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Html5Plus/1.0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 42
    :cond_bb
    sput-object p2, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomUserAgent:Ljava/lang/String;

    .line 43
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object p1

    new-instance p2, Lio/dcloud/common/adapter/ui/AdaWebview$7;

    invoke-direct {p2, p0}, Lio/dcloud/common/adapter/ui/AdaWebview$7;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_194

    :cond_cd
    const-string v0, "blockNetworkImage"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 52
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz p1, :cond_194

    .line 53
    invoke-static {p2, v1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    .line 54
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p2, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setBlockNetworkImage(Z)V

    goto/16 :goto_194

    :cond_e4
    const-string v0, "injection"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_f5

    .line 57
    invoke-static {p2, v2, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedInjection:Z

    goto/16 :goto_194

    :cond_f5
    const-string v0, "bounce"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 59
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz p1, :cond_194

    sget p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v0, 0x9

    if-lt p1, v0, :cond_194

    .line 61
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    const-string v0, "vertical"

    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_127

    const-string v0, "horizontal"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_127

    const-string v0, "all"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_138

    :cond_127
    if-eqz p1, :cond_143

    const-string p2, "type"

    .line 63
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "transparent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_138

    goto :goto_143

    .line 66
    :cond_138
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    goto :goto_194

    .line 67
    :cond_143
    :goto_143
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    goto :goto_194

    :cond_14d
    const-string v0, "videoFullscreen"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_194

    .line 74
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mVideoFullscreen:Ljava/lang/String;

    goto :goto_194

    :cond_15e
    const-string v0, "plusrequire"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_194

    .line 78
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    goto :goto_194

    :cond_16f
    const-string v0, "geolocation"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_180

    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_194

    .line 82
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGEO:Ljava/lang/String;

    goto :goto_194

    :cond_180
    const-string v0, "shareable"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_194

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_194

    .line 86
    invoke-static {p2, v2, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mShareable:Z

    :catch_194
    :cond_194
    :goto_194
    return-void
.end method

.method public setWebviewclientListener(Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setDcloudwebviewclientListener(Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)V

    return-void
.end method

.method public stopLoading()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->stopLoading()V

    :cond_7
    return-void
.end method

.method public syncUpdateWebViewData(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_9

    const-string p1, ""

    return-object p1

    .line 3
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getWebviewUUID()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 7
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.__HtMl_Id__= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\';"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v1, "window.__WebVieW_Id__= undefined;"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_66

    .line 13
    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.__WebVieW_Id__= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    :goto_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncUpdateWebViewData url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mRecordLastUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewData"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try{window.plus.__tag__=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusInjectTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\';location.__plusready__=true;/*console.log(location);window.plus.__url__=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\';*/}catch(e){console.log(e)}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebviewUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_2d

    goto :goto_25

    :cond_23
    const-string v1, "view = null"

    :goto_25
    :try_start_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unReceiveTitle()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->unReceiveTitle:Z

    return v0
.end method

.method wrapAppendJsFile(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mAppid:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "wap2app.js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_77

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_77

    :cond_1e
    const-string p2, "file://"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2b

    const/4 p2, 0x7

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_2b
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/h5pscript://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_60

    :cond_49
    const-string p2, "h5pscript://"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    :cond_60
    :goto_60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:(function(){var container = document.getElementsByTagName(\'head\')[0];\nvar script = document.createElement(\'script\');\nscript.type = \'text/javascript\';\nscript.src = \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\';\ncontainer.appendChild(script);\nfirstNode = container.children[0];\nif(firstNode == null || firstNode==undefined)\n{    container.appendChild(script);}\nelse{\n\tcontainer.insertBefore(script,container.children[0]);\n}})();"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 25
    :cond_77
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadFileContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.common.adapter.ui.AdaWebview.AnonymousClass1 (io.dcloud.common.adapter.ui.AdaWebview$1)
.class Lio/dcloud/common/adapter/ui/AdaWebview$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaWebview;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$1;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$1;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->onPause()V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaWebview.AnonymousClass2 (io.dcloud.common.adapter.ui.AdaWebview$2)
.class Lio/dcloud/common/adapter/ui/AdaWebview$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaWebview;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$2;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$2;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->onResume()V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaWebview.AnonymousClass3 (io.dcloud.common.adapter.ui.AdaWebview$3)
.class Lio/dcloud/common/adapter/ui/AdaWebview$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaWebview;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$3;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 4

    const/4 p1, 0x0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$3;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v1, :cond_9

    .line 2
    iput-object p1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 4
    :cond_9
    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_48

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->clearCache(Z)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$3;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$3;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$3;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v1, v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    :cond_38
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$3;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->destroyWeb()V

    .line 10
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$3;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->access$000(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    .line 11
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$3;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-object p1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    .line 13
    :cond_48
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$3;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-object p1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mJsInterfaces:Lio/dcloud/common/DHInterface/IJsInterface;

    .line 14
    iput-object p1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mMesssageListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    .line 15
    iput-object p1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScriptListener:Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    .line 16
    iput-object p1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewParent:Lio/dcloud/common/adapter/ui/AdaWebViewParent;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :goto_57
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$3;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->access$100(Lio/dcloud/common/adapter/ui/AdaWebview;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 21
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$3;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->access$100(Lio/dcloud/common/adapter/ui/AdaWebview;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    :cond_68
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$3;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->access$102(Lio/dcloud/common/adapter/ui/AdaWebview;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 24
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaWebview.AnonymousClass4 (io.dcloud.common.adapter.ui.AdaWebview$4)
.class Lio/dcloud/common/adapter/ui/AdaWebview$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/AdaWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$4;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$4;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_23

    const-string v1, "javascript:"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_20

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_20
    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->loadUrl(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaWebview.AnonymousClass5 (io.dcloud.common.adapter.ui.AdaWebview$5)
.class Lio/dcloud/common/adapter/ui/AdaWebview$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/AdaWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$5;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 6

    .line 1
    check-cast p1, [Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$5;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mJsInterfaces:Lio/dcloud/common/DHInterface/IJsInterface;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object p1, p1, v3

    check-cast p1, Lorg/json/JSONArray;

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IJsInterface;->exec(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaWebview.AnonymousClass6 (io.dcloud.common.adapter.ui.AdaWebview$6)
.class Lio/dcloud/common/adapter/ui/AdaWebview$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaWebview;->onPageStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$6;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$6;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    if-nez v1, :cond_19

    .line 2
    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$6;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->checkOrLoadlaunchWebview()V

    :cond_19
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaWebview.AnonymousClass7 (io.dcloud.common.adapter.ui.AdaWebview$7)
.class Lio/dcloud/common/adapter/ui/AdaWebview$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$7;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview$7;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    sget-object v1, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomUserAgent:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaWebview.IFExecutePreloadJSContentCallBack (io.dcloud.common.adapter.ui.AdaWebview$IFExecutePreloadJSContentCallBack)
.class public interface abstract Lio/dcloud/common/adapter/ui/AdaWebview$IFExecutePreloadJSContentCallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/AdaWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFExecutePreloadJSContentCallBack"
.end annotation


# virtual methods
.method public abstract callback(Ljava/lang/String;Ljava/lang/String;)V
.end method

###### Class io.dcloud.common.adapter.ui.AdaWebview.OverrideResourceRequestItem (io.dcloud.common.adapter.ui.AdaWebview$OverrideResourceRequestItem)
.class public Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/AdaWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverrideResourceRequestItem"
.end annotation


# instance fields
.field public encoding:Ljava/lang/String;

.field public headerJson:Lorg/json/JSONObject;

.field public mime:Ljava/lang/String;

.field public redirect:Ljava/lang/String;

.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaWebview;


# direct methods
.method public constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->redirect:Ljava/lang/String;

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->mime:Ljava/lang/String;

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->encoding:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->headerJson:Lorg/json/JSONObject;

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaWebview.WebProgressView (io.dcloud.common.adapter.ui.AdaWebview$WebProgressView)
.class Lio/dcloud/common/adapter/ui/AdaWebview$WebProgressView;
.super Lcom/dcloud/android/widget/DCProgressView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/AdaWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebProgressView"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaWebview;


# direct methods
.method public constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebview;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview$WebProgressView;->this$0:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 2
    invoke-direct {p0, p2}, Lcom/dcloud/android/widget/DCProgressView;-><init>(Landroid/content/Context;)V

    return-void
.end method
