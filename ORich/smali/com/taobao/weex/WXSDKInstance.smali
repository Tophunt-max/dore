###### Class com.taobao.weex.WXSDKInstance (com.taobao.weex.WXSDKInstance)
.class public Lcom/taobao/weex/WXSDKInstance;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Lio/dcloud/feature/uniapp/AbsSDKInstance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;,
        Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;,
        Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;,
        Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;,
        Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;,
        Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;,
        Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;,
        Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;
    }
.end annotation


# static fields
.field public static ACTION_DEBUG_INSTANCE_REFRESH:Ljava/lang/String; = "DEBUG_INSTANCE_REFRESH"

.field public static ACTION_INSTANCE_RELOAD:Ljava/lang/String; = "INSTANCE_RELOAD"

.field public static final BUNDLE_URL:Ljava/lang/String; = "bundleUrl"

.field private static final SOURCE_TEMPLATE_BASE64_MD5:Ljava/lang/String; = "templateSourceBase64MD5"

.field public static requestUrl:Ljava/lang/String; = "requestUrl"

.field static sScreenHeight:I = -0x1


# instance fields
.field public bundleType:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field private componentsInfoExceedGPULimit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private createInstanceHeartBeat:Z

.field private enableFullScreenHeight:Z

.field private enableLayerType:Z

.field frameViewEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private hasException:Z

.field public hiddenEmbeds:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/taobao/weex/ui/component/WXEmbed;",
            ">;"
        }
    .end annotation
.end field

.field private inactiveAddElementAction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/action/GraphicActionAddElement;",
            ">;"
        }
    .end annotation
.end field

.field private isCommit:Z

.field private isDestroy:Z

.field private isFrameShow:Z

.field private isImmersive:Z

.field public isNewFsEnd:Z

.field private isPreDownLoad:Z

.field private isPreInit:Z

.field private volatile isPreRenderMode:Z

.field private isRenderSuccess:Z

.field private isViewDisAppear:Z

.field private mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

.field private mAutoAdjustDeviceWidth:Z

.field private mBundleUrl:Ljava/lang/String;

.field private mComponentObserver:Lcom/taobao/weex/ComponentObserver;

.field private mContainerInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentBoxMeasurements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/taobao/weex/layout/ContentBoxMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mCreateInstance:Z

.field private mCurrentGround:Z

.field private mCustomFontNetworkHandler:Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;

.field private mDefaultFontSize:I

.field private mDisableSkipFrameworkInit:Z

.field public mEnd:Z

.field public mExecJSTraceId:I

.field private mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

.field private mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

.field private mGlobalEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mHasCreateFinish:Z

.field private mHttpListener:Lcom/taobao/weex/WXHttpListener;

.field private mImageNetworkHandler:Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

.field private final mInstanceId:Ljava/lang/String;

.field private mInstanceOnFireEventInterceptorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mInstanceViewPortWidth:F

.field private mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

.field private mLayerOverFlowListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDeepLayer:I

.field private mNativeInvokeHelper:Lcom/taobao/weex/bridge/NativeInvokeHelper;

.field private mNeedReLoad:Z

.field private mNeedValidate:Z

.field private mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

.field private mParentInstance:Lcom/taobao/weex/WXSDKInstance;

.field private mRefreshStartTime:J

.field private mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

.field private mRenderListener:Lcom/taobao/weex/IWXRenderListener;

.field public mRenderStartNanos:J

.field public mRenderStartTime:J

.field private mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

.field private mRenderType:Ljava/lang/String;

.field private mRendered:Z

.field private mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

.field private mStreamNetworkHandler:Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

.field public mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

.field private mUseScroller:Z

.field private mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

.field private mUserTrackParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWXActionbarHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mWXBackPressedHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

.field private mWXScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/common/OnWXScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

.field private maxHiddenEmbedsNum:I

.field public measureTimes:[J

.field public mwxDims:[Ljava/lang/String;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public templateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackComponent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 128
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    const-string v1, ""

    .line 140
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 142
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 143
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 144
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 145
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    .line 148
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    const/4 v2, 0x1

    .line 151
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 152
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 153
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 154
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    const v3, 0x443b8000    # 750.0f

    .line 155
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 156
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    .line 158
    new-instance v3, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 163
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 164
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    .line 171
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 173
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    .line 178
    iput-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    new-array v3, v3, [J

    .line 179
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 182
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 187
    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 189
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    const-string v3, "platform"

    .line 213
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    .line 221
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    iput-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    .line 251
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 253
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 255
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    const/4 v3, -0x1

    .line 335
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 515
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 788
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 793
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 1058
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 1760
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 2094
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    const/16 v1, 0x20

    .line 2410
    iput v1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    .line 2424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    .line 2435
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 2458
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    .line 524
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->generateInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 525
    new-instance v1, Lcom/taobao/weex/common/WXPerformance;

    invoke-direct {v1, v0}, Lcom/taobao/weex/common/WXPerformance;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    .line 526
    new-instance v1, Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-direct {v1, v0}, Lcom/taobao/weex/performance/WXInstanceApm;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    .line 527
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 128
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    const-string v1, ""

    .line 140
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 142
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 143
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 144
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 145
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    .line 148
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    const/4 v2, 0x1

    .line 151
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 152
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 153
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 154
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    const v3, 0x443b8000    # 750.0f

    .line 155
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 156
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    .line 158
    new-instance v3, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 163
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 164
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    .line 171
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 173
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    .line 178
    iput-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    new-array v3, v3, [J

    .line 179
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 182
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 187
    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 189
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    const-string v3, "platform"

    .line 213
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    .line 221
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    iput-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    .line 251
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 253
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 255
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    const/4 v3, -0x1

    .line 335
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 515
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 788
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 793
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 1058
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 1760
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 2094
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    const/16 v1, 0x20

    .line 2410
    iput v1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    .line 2424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    .line 2435
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 2458
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    .line 518
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->generateInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 519
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 128
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    const-string v1, ""

    .line 140
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 142
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 143
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 144
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 145
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    .line 148
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    const/4 v2, 0x1

    .line 151
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 152
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 153
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 154
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    const v3, 0x443b8000    # 750.0f

    .line 155
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 156
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    .line 158
    new-instance v3, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 163
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 164
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    .line 171
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 173
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    .line 178
    iput-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    new-array v3, v3, [J

    .line 179
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 182
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 187
    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 189
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    const-string v3, "platform"

    .line 213
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    .line 221
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    iput-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    .line 251
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 253
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 255
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    const/4 v3, -0x1

    .line 335
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 515
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 788
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 793
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 1058
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 1760
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 2094
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    const/16 v1, 0x20

    .line 2410
    iput v1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    .line 2424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    .line 2435
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 2458
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    .line 536
    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 537
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 1

    .line 116
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->checkWhiteScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 1

    .line 116
    iget-boolean p0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 1

    .line 116
    iget-boolean p0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 1

    .line 116
    iget-boolean p0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 1

    .line 116
    iget-boolean p0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    return p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/taobao/weex/WXSDKInstance;Z)Z
    .registers 2

    .line 116
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXStatisticsListener;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/taobao/weex/WXSDKInstance;)Ljava/util/Map;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    return-object p0
.end method

.method private assembleFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p1, :cond_15

    .line 1133
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1134
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    return-object v0
.end method

.method private checkWhiteScreen()V
    .registers 6

    .line 957
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    if-nez v0, :cond_69

    invoke-static {}, Lcom/taobao/weex/performance/WhiteScreenUtils;->doWhiteScreenCheck()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_69

    .line 961
    :cond_b
    invoke-static {p0}, Lcom/taobao/weex/performance/WhiteScreenUtils;->isWhiteScreen(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 965
    :cond_12
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERROR_WHITE_SCREEN:Lcom/taobao/weex/common/WXErrorCode;

    .line 966
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 967
    invoke-static {p0}, Lcom/taobao/weex/performance/WhiteScreenUtils;->takeViewTreeSnapShot(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_22

    const-string v2, "null viewTreeMsg"

    :cond_22
    const-string v3, "viewTree"

    .line 968
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getWeexCoreThreadStackTrace()Ljava/lang/String;

    move-result-object v2

    const-string v3, "weexCoreThreadStackTrace"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/performance/WXStateRecord;->getStateInfo()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 972
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 974
    :cond_5c
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkEmptyScreen"

    invoke-static {v2, v0, v4, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_69
    :goto_69
    return-void
.end method

.method private destroyView(Landroid/view/View;)V
    .registers 6

    .line 1822
    :try_start_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2c

    .line 1823
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1824
    :goto_9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_19

    .line 1825
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/taobao/weex/WXSDKInstance;->destroyView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1828
    :cond_19
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    const-string v0, "mChildrenCount"

    .line 1830
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/utils/WXReflectionUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1833
    :cond_2c
    instance-of v0, p1, Lcom/taobao/weex/common/Destroyable;

    if-eqz v0, :cond_3c

    .line 1834
    check-cast p1, Lcom/taobao/weex/common/Destroyable;

    invoke-interface {p1}, Lcom/taobao/weex/common/Destroyable;->destroy()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_3c

    :catch_36
    move-exception p1

    const-string v0, "WXSDKInstance destroyView Exception: "

    .line 1837
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private ensureRenderArchor()V
    .registers 4

    .line 766
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-nez v0, :cond_31

    .line 767
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 768
    new-instance v0, Lcom/taobao/weex/RenderContainer;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/RenderContainer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->setRenderContainer(Lcom/taobao/weex/RenderContainer;)V

    .line 769
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->setBackgroundColor(I)V

    .line 771
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 772
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_31
    return-void
.end method

.method private isDataRender()Z
    .registers 3

    .line 983
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static isDisableSkipFrameworkInDataRender()Z
    .registers 4

    .line 2402
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    const-string v1, "wxeagle"

    const-string v2, "disable_skip_framework_init"

    const-string v3, "false"

    .line 2406
    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 2407
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onInterceptInstanceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2368
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 2371
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 2372
    invoke-virtual/range {v2 .. v7}, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->onInterceptFireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_9

    :cond_1f
    return-void
.end method

.method private renderByUrlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 992
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    const-string v1, "renderByUrlInternal"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/TimeCalculator;->createLogDetail(Ljava/lang/String;)Lcom/taobao/weex/utils/tools/LogDetail;

    move-result-object v0

    .line 993
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 994
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->ensureRenderArchor()V

    .line 995
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->wrapPageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 996
    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 997
    iput-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 998
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 999
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object p1

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/taobao/weex/bridge/WXValidateProcessor;->needValidate(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    :cond_30
    if-nez p3, :cond_37

    .line 1004
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_37
    move-object v4, p3

    const-string p1, "bundleUrl"

    .line 1006
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_43

    .line 1007
    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    :cond_43
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object p1

    iput-object v3, p1, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    .line 1012
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p1}, Lcom/taobao/weex/performance/WXInstanceApm;->doInit()V

    .line 1013
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p1, v3}, Lcom/taobao/weex/performance/WXInstanceApm;->setPageName(Ljava/lang/String;)V

    .line 1015
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "wxStartDownLoadBundle"

    if-eqz p1, :cond_86

    .line 1016
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1017
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->assembleFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXFileUtils;->loadFileOrAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1019
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-string p3, "wxEndDownLoadBundle"

    invoke-virtual {p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, v3

    move-object v3, p1

    move-object v5, p4

    move-object v6, p5

    .line 1020
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void

    :cond_86
    const/4 v1, 0x0

    if-eqz p1, :cond_9c

    .line 1025
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 1026
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".wlasm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9c

    const/4 v1, 0x1

    :cond_9c
    if-eqz v1, :cond_a0

    .line 1031
    sget-object p5, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    :cond_a0
    move-object v6, p5

    .line 1034
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object p1

    .line 1036
    new-instance p5, Lcom/taobao/weex/common/WXRequest;

    invoke-direct {p5}, Lcom/taobao/weex/common/WXRequest;-><init>()V

    .line 1037
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "bundle"

    invoke-virtual {p0, p2, v1}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p5, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    .line 1038
    iget-object p2, p5, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_cb

    .line 1039
    iget-object p2, p5, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    sput-object p2, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    goto :goto_cd

    .line 1041
    :cond_cb
    sput-object v3, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    .line 1044
    :goto_cd
    iget-object p2, p5, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    if-nez p2, :cond_d8

    .line 1045
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p5, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    .line 1047
    :cond_d8
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p5, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    .line 1048
    iget-object p2, p5, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/http/WXHttpUtil;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user-agent"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    iget-object p2, p5, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    const-string v1, "isBundleRequest"

    const-string v2, "true"

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    new-instance p2, Lcom/taobao/weex/WXHttpListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v1, p2

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/taobao/weex/WXHttpListener;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;J)V

    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 1051
    iget-boolean p4, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    iput-boolean p4, p2, Lcom/taobao/weex/WXHttpListener;->isPreDownLoadMode:Z

    .line 1052
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    invoke-virtual {p2, p0}, Lcom/taobao/weex/WXHttpListener;->setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 1053
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 1054
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    invoke-interface {p1, p5, p2}, Lcom/taobao/weex/adapter/IWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    .line 1055
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    return-void
.end method

.method private renderInternal(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/Script;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 842
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-nez v0, :cond_1b7

    if-eqz p2, :cond_1b7

    invoke-virtual {p2}, Lcom/taobao/weex/Script;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_1b7

    .line 845
    :cond_e
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    const-string v1, "renderInternal"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/TimeCalculator;->createLogDetail(Ljava/lang/String;)Lcom/taobao/weex/utils/tools/LogDetail;

    move-result-object v0

    .line 847
    iput-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 850
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->hasInit()Z

    move-result v1

    if-nez v1, :cond_25

    .line 851
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->doInit()V

    .line 853
    :cond_25
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->setPageName(Ljava/lang/String;)V

    .line 854
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-string v2, "wxRenderTimeOrigin"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 855
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->doDelayCollectData()V

    .line 857
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string v2, "defaultBundleUrl"

    goto :goto_42

    :cond_41
    move-object v2, p1

    :goto_42
    iput-object v2, v1, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    .line 858
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 859
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, v1, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 862
    :cond_52
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 863
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, "executeBundleJS"

    invoke-static {v3, v1, v2}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v1

    .line 864
    iget v2, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    iput v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    .line 865
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    iput-object v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->iid:Ljava/lang/String;

    const-string v2, "JSThread"

    .line 866
    iput-object v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    const-string v2, "B"

    .line 867
    iput-object v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 868
    invoke-virtual {v1}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    .line 869
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartNanos:J

    .line 872
    :cond_7a
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->ensureRenderArchor()V

    if-nez p3, :cond_84

    .line 876
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_84
    move-object v4, p3

    .line 879
    sget-boolean p3, Lcom/taobao/weex/WXEnvironment;->sDynamicMode:Z

    if-eqz p3, :cond_a8

    sget-object p3, Lcom/taobao/weex/WXEnvironment;->sDynamicUrl:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a8

    const-string p3, "dynamicMode"

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a8

    const-string p2, "true"

    .line 880
    invoke-interface {v4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sDynamicUrl:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void

    .line 887
    :cond_a8
    iget-object p3, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p2}, Lcom/taobao/weex/Script;->length()I

    move-result p5

    int-to-float p5, p5

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr p5, v1

    float-to-double v1, p5

    iput-wide v1, p3, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    .line 888
    iget-object p3, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    iget-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v1, p5, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    const-string p5, "wxBundleSize"

    invoke-virtual {p3, p5, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    .line 890
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p3

    const-string p5, "wx_current_url"

    invoke-virtual {p3, p5, p1}, Lcom/taobao/weex/WXSDKManager;->setCrashInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInitParams()Lcom/taobao/weex/bridge/WXParams;

    move-result-object p1

    .line 896
    sget-object p3, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {p3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 897
    iget-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p5

    .line 898
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getComplier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "weex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_ff

    int-to-float v1, p5

    div-float/2addr v1, p3

    .line 899
    invoke-virtual {p0, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(FZ)V

    :cond_ff
    if-eqz p1, :cond_169

    .line 901
    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getDeviceWidth()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_169

    .line 902
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/taobao/weex/bridge/WXParams;->setDeviceWidth(Ljava/lang/String;)V

    .line 903
    iget-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/taobao/weex/bridge/WXParams;->setDeviceHeight(Ljava/lang/String;)V

    .line 904
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p5

    const-string v1, "scale"

    invoke-static {v1, p5}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 906
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_13f

    .line 907
    iget-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/taobao/weex/utils/WXViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    .line 909
    :cond_13f
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getDeviceWidth()Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getDeviceHeight()Ljava/lang/String;

    move-result-object p1

    .line 911
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p3

    .line 909
    invoke-virtual {v1, v3, p1, p3, p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 913
    invoke-static {p3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p3

    int-to-float p3, p3

    iget-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 914
    invoke-static {p5}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result p5

    .line 912
    invoke-direct {p0, p1, p3, p5}, Lcom/taobao/weex/WXSDKInstance;->setDeviceDisplay(FFF)V

    .line 917
    :cond_169
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 918
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isPreInitMode()Z

    move-result p1

    if-eqz p1, :cond_18b

    .line 919
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-string p3, "wxStartLoadBundle"

    invoke-virtual {p1, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 920
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/taobao/weex/Script;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->loadJsBundleInPreInitMode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_192

    .line 922
    :cond_18b
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2, v4, p4}, Lcom/taobao/weex/WXSDKManager;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    .line 924
    :goto_192
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 925
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    .line 927
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;

    move-result-object p1

    if-eqz p1, :cond_1b7

    .line 929
    invoke-interface {p1}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->shouldReboot()Z

    move-result p2

    if-eqz p2, :cond_1b7

    .line 930
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    new-instance p3, Lcom/taobao/weex/WXSDKInstance$3;

    invoke-direct {p3, p0, p1}, Lcom/taobao/weex/WXSDKInstance$3;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/adapter/IWXJscProcessManager;)V

    .line 951
    invoke-interface {p1}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->rebootTimeout()J

    move-result-wide p4

    .line 930
    invoke-virtual {p2, p3, p4, p5}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    :cond_1b7
    :goto_1b7
    return-void
.end method

.method private renderInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 782
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-nez v0, :cond_18

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_18

    .line 785
    :cond_b
    new-instance v3, Lcom/taobao/weex/Script;

    invoke-direct {v3, p2}, Lcom/taobao/weex/Script;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->renderInternal(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    :cond_18
    :goto_18
    return-void
.end method

.method private setDeviceDisplay(FFF)V
    .registers 6

    .line 495
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDeviceDisplay(Ljava/lang/String;FFF)V

    return-void
.end method

.method private wrapPageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "default"

    .line 1114
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1116
    sput-object p2, Lcom/taobao/weex/utils/WXExceptionUtils;->degradeUrl:Ljava/lang/String;

    .line 1118
    :try_start_a
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 1120
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1121
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1122
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1123
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1124
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    :cond_2f
    move-object p1, p2

    :cond_30
    :goto_30
    return-object p1
.end method


# virtual methods
.method public OnVSync()V
    .registers 3

    .line 2347
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->notifyLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2349
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$11;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$11;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_1a
    return-void
.end method

.method public addContentBoxMeasurement(JLcom/taobao/weex/layout/ContentBoxMeasurement;)V
    .registers 5

    .line 2359
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_24

    .line 2149
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_21

    .line 2151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2152
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    :cond_21
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    :goto_24
    return-void
.end method

.method public addFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V
    .registers 3

    .line 2426
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2427
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public addInActiveAddElementAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicActionAddElement;)V
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addInstanceOnFireEventInterceptor(Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 2388
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceOnFireEventInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2389
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceOnFireEventInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method public addLayerOverFlowListener(Ljava/lang/String;)V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    .line 238
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
    .registers 3

    .line 576
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUserTrackParameter(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4

    .line 2231
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 2232
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    .line 2234
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public callActionAddElementTime(J)V
    .registers 6

    .line 1787
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int p1, v1

    iput p1, v0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    return-void
.end method

.method public callJsTime(J)V
    .registers 6

    .line 1769
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_13

    .line 1770
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalTime:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalTime:J

    .line 1771
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget p2, p1, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalNum:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalNum:I

    :cond_13
    return-void
.end method

.method public checkModuleEventRegistered(Ljava/lang/String;Lcom/taobao/weex/common/WXModule;)Z
    .registers 3

    if-eqz p2, :cond_10

    .line 2210
    invoke-virtual {p2, p1}, Lcom/taobao/weex/common/WXModule;->getEventCallbacks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 2211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public clearUserTrackParameters()V
    .registers 2

    .line 2238
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 2239
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_7
    return-void
.end method

.method public createInstanceFuncHeartBeat()V
    .registers 3

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createInstanceFuncHeartBeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 572
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    return-void
.end method

.method public final createNestedInstance(Lcom/taobao/weex/ui/component/NestedContainer;)Lcom/taobao/weex/WXSDKInstance;
    .registers 4

    .line 549
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->newNestedInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    if-eqz v1, :cond_b

    .line 551
    invoke-interface {v1, v0, p1}, Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;->onCreateNestInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/NestedContainer;)V

    :cond_b
    if-eqz v0, :cond_14

    .line 554
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->setComponentObserver(Lcom/taobao/weex/ComponentObserver;)V

    :cond_14
    return-object v0
.end method

.method public declared-synchronized destroy()V
    .registers 5

    monitor-enter p0

    .line 1842
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 1843
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mParentInstance:Lcom/taobao/weex/WXSDKInstance;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1844
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mParentInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 1846
    :cond_e
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->onEnd()V

    .line 1849
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-eqz v0, :cond_20

    .line 1850
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/WXSDKManager;->destroyInstance(Ljava/lang/String;)V

    .line 1853
    :cond_20
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    if-eqz v0, :cond_2f

    .line 1854
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1855
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 1857
    :cond_2f
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_38

    .line 1858
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 1859
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    .line 1862
    :cond_38
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_3f

    .line 1863
    invoke-direct {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->destroyView(Landroid/view/View;)V

    .line 1867
    :cond_3f
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    if-eqz v0, :cond_46

    .line 1868
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1871
    :cond_46
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    if-eqz v0, :cond_4c

    .line 1872
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    .line 1875
    :cond_4c
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    if-eqz v0, :cond_53

    .line 1876
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1879
    :cond_53
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->destroy()V

    .line 1880
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 1881
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    .line 1882
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    .line 1883
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    .line 1884
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    .line 1885
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    .line 1886
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    .line 1887
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 1888
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    .line 1889
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 1890
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    const/4 v0, 0x1

    .line 1891
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 1892
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    .line 1893
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    if-eqz v0, :cond_7c

    .line 1894
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1896
    :cond_7c
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_82

    .line 1897
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    .line 1899
    :cond_82
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    if-eqz v0, :cond_89

    .line 1900
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1902
    :cond_89
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/common/WXPerformance;->afterInstanceDestroy(Ljava/lang/String;)V

    .line 1904
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$8;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$8;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 1915
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$9;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$9;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->postDelay(Ljava/lang/Runnable;J)V
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_ac

    .line 1922
    :cond_aa
    monitor-exit p0

    return-void

    :catchall_ac
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableLayerType(Z)V
    .registers 2

    .line 427
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2138
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2134
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2113
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/EventResult;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    .line 2117
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->onInterceptInstanceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 2118
    iget-object v0, v6, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-eqz v0, :cond_24

    iget v0, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_24

    .line 2119
    iget-object v0, v6, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    .line 2121
    :cond_24
    iget-object v0, v6, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "wxFSCallEventTotalNum"

    invoke-virtual {v0, v3, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateFSDiffStats(Ljava/lang/String;D)V

    .line 2122
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v7 .. v14}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
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

    .line 2097
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_25

    .line 2099
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2100
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/taobao/weex/WXSDKManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_e

    :cond_25
    return-void
.end method

.method public fireModuleEvent(Ljava/lang/String;Lcom/taobao/weex/common/WXModule;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXModule;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    if-nez p2, :cond_9

    goto :goto_4c

    .line 2184
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 2185
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2186
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXModule;->getModuleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 2187
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2189
    invoke-virtual {p2, p1}, Lcom/taobao/weex/common/WXModule;->getEventCallbacks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 2191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2192
    new-instance v1, Lcom/taobao/weex/bridge/SimpleJSCallback;

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v1, v2, p3}, Lcom/taobao/weex/bridge/SimpleJSCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    invoke-virtual {p2, p3}, Lcom/taobao/weex/common/WXModule;->isOnce(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_48

    .line 2194
    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/SimpleJSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_2b

    .line 2196
    :cond_48
    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/SimpleJSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_4c
    :goto_4c
    return-void
.end method

.method public firstScreenCreateInstanceTime(J)V
    .registers 6

    .line 1762
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    if-eqz v0, :cond_e

    .line 1763
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long/2addr p1, v1

    iput-wide p1, v0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    const/4 p1, 0x0

    .line 1764
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    :cond_e
    return-void
.end method

.method public getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;
    .registers 2

    .line 2223
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    return-object v0
.end method

.method public getBundleUrl()Ljava/lang/String;
    .registers 2

    .line 1932
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentObserver()Lcom/taobao/weex/ComponentObserver;
    .registers 2

    .line 627
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    return-object v0
.end method

.method public getComponentsExceedGPULimit()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    return-object v0
.end method

.method public getContainerInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .registers 2

    .line 1942
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    return-object v0
.end method

.method public getContentBoxMeasurement(J)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .registers 4

    .line 2363
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/layout/ContentBoxMeasurement;

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1213
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomFontNetworkHandler()Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCustomFontNetworkHandler:Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;

    return-object v0
.end method

.method public getDefaultFontSize()I
    .registers 2

    .line 2412
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    return v0
.end method

.method public getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;
    .registers 2

    .line 1230
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    return-object v0
.end method

.method public getImageNetworkHandler()Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mImageNetworkHandler:Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

    return-object v0
.end method

.method public getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .registers 2

    .line 1226
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInActiveAddElementAction(Ljava/lang/String;)Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    return-object p1
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 1209
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceOnFireEventInterceptorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;",
            ">;"
        }
    .end annotation

    .line 2377
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    .line 2380
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceViewPortWidth()I
    .registers 2

    .line 503
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getInstanceViewPortWidthWithFloat()F
    .registers 2

    .line 499
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    return v0
.end method

.method public getLayerOverFlowListeners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    return-object v0
.end method

.method public getMaxDeepLayer()I
    .registers 2

    .line 2250
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mMaxDeepLayer:I

    return v0
.end method

.method public getMaxHiddenEmbedsNum()I
    .registers 2

    .line 338
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    return v0
.end method

.method public getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNativeInvokeHelper:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    return-object v0
.end method

.method public getParentInstance()Lcom/taobao/weex/WXSDKInstance;
    .registers 2

    .line 1813
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mParentInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method public getRenderContainerPaddingLeft()I
    .registers 2

    .line 1987
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_9

    .line 1988
    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getPaddingLeft()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getRenderContainerPaddingRight()I
    .registers 2

    .line 1994
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_9

    .line 1995
    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getPaddingRight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getRenderContainerPaddingTop()I
    .registers 2

    .line 2001
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_9

    .line 2002
    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getPaddingTop()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;
    .registers 2

    .line 1201
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    return-object v0
.end method

.method public getRenderType()Ljava/lang/String;
    .registers 2

    .line 2394
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    return-object v0
.end method

.method public getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;
    .registers 2

    .line 541
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 2

    .line 1936
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1938
    :cond_6
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .registers 2

    .line 642
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public getScrollViewListener()Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    return-object v0
.end method

.method public getStreamNetworkHandler()Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStreamNetworkHandler:Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .registers 2

    .line 2332
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 2335
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateInfo()Ljava/lang/String;
    .registers 8

    .line 2278
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getTemplate()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 2280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " template md5 null ,httpHeader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2282
    :cond_1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " template md5  length 0 ,httpHeader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3c
    :try_start_3c
    const-string v1, "UTF-8"

    .line 2286
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2287
    invoke-static {v0}, Lcom/taobao/weex/utils/WXFileUtils;->md5([B)Ljava/lang/String;

    move-result-object v1

    .line 2288
    invoke-static {v0}, Lcom/taobao/weex/utils/WXFileUtils;->base64Md5([B)Ljava/lang/String;

    move-result-object v2

    .line 2289
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2290
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2291
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2292
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2293
    iget-object v5, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string v6, "templateSourceMD5"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string v5, "templateSourceBase64MD5"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " template md5 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " length "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " base64 md5 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " response header "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 2297
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_98} :catch_99

    return-object v0

    :catch_99
    const-string v0, "template md5 getBytes error"

    return-object v0
.end method

.method public getUIContext()Landroid/content/Context;
    .registers 2

    .line 1205
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;
    .registers 2

    .line 1234
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getUserTrackParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 2227
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    return-object v0
.end method

.method public getWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .registers 2

    .line 1242
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWXPerformance()Lcom/taobao/weex/common/WXPerformance;
    .registers 2

    .line 2219
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    return-object v0
.end method

.method public declared-synchronized getWXScrollListeners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/weex/common/OnWXScrollListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2008
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;
    .registers 2

    .line 1246
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-object v0
.end method

.method public getWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .registers 2

    .line 1251
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWeexHeight()I
    .registers 2

    .line 1217
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getHeight()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getWeexWidth()I
    .registers 2

    .line 1221
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getWidth()I

    move-result v0

    :goto_a
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    .line 584
    invoke-static {}, Lcom/taobao/weex/utils/cache/RegisterCache;->getInstance()Lcom/taobao/weex/utils/cache/RegisterCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/cache/RegisterCache;->idle(Z)Z

    .line 585
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 586
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    .line 587
    new-instance v0, Lcom/taobao/weex/bridge/NativeInvokeHelper;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/weex/bridge/NativeInvokeHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNativeInvokeHelper:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    .line 589
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-nez v0, :cond_28

    .line 590
    new-instance v0, Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXPerformance;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    .line 592
    :cond_28
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    if-nez v0, :cond_35

    .line 593
    new-instance v0, Lcom/taobao/weex/performance/WXInstanceApm;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    .line 596
    :cond_35
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    .line 597
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->JSLibInitTime:J

    .line 599
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 601
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_67

    .line 604
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_69

    :cond_67
    const-string p1, "unKnowContainer"

    :goto_69
    const-string v1, "wxContainerName"

    .line 603
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    const-string v0, "wxInstanceType"

    const-string v1, "page"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-static {}, Lcom/taobao/weex/WXSDKInstance;->isDisableSkipFrameworkInDataRender()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    .line 612
    new-instance p1, Lcom/taobao/weex/utils/tools/TimeCalculator;

    invoke-direct {p1, p0}, Lcom/taobao/weex/utils/tools/TimeCalculator;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    return-void
.end method

.method public isAutoAdjustDeviceWidth()Z
    .registers 2

    .line 491
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    return v0
.end method

.method public isCompilerWithUniapp()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isContentMd5Match()Z
    .registers 6

    .line 2308
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v2, "Content-Md5"

    .line 2311
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1a

    .line 2313
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string v2, "content-md5"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_1a
    if-eqz v0, :cond_53

    .line 2315
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_23

    goto :goto_53

    :cond_23
    const/4 v2, 0x0

    .line 2318
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2320
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string v4, "templateSourceBase64MD5"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_41

    .line 2322
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    .line 2323
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    :cond_41
    if-eqz v3, :cond_53

    .line 2325
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4a

    goto :goto_53

    .line 2328
    :cond_4a
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_53
    :goto_53
    return v1
.end method

.method public isDestroy()Z
    .registers 2

    .line 1925
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    return v0
.end method

.method public isFrameViewShow()Z
    .registers 2

    .line 2438
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    return v0
.end method

.method public isFullScreenHeightEnabled()Z
    .registers 2

    .line 452
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    return v0
.end method

.method public isHasException()Z
    .registers 2

    .line 563
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    return v0
.end method

.method public isImmersive()Z
    .registers 2

    .line 2451
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    return v0
.end method

.method public isLayerTypeEnabled()Z
    .registers 2

    .line 414
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    return v0
.end method

.method public isNeedReLoad()Z
    .registers 2

    .line 441
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    return v0
.end method

.method public isNeedValidate()Z
    .registers 2

    .line 437
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    return v0
.end method

.method public isPreDownLoad()Z
    .registers 2

    .line 795
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    return v0
.end method

.method public isPreInitMode()Z
    .registers 2

    .line 790
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    return v0
.end method

.method public isPreRenderMode()Z
    .registers 2

    .line 1263
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode:Z

    return v0
.end method

.method public isTrackComponent()Z
    .registers 2

    .line 400
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->trackComponent:Z

    return v0
.end method

.method public isUseScroller()Z
    .registers 2

    .line 455
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    return v0
.end method

.method public isViewDisAppear()Z
    .registers 2

    .line 1579
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    return v0
.end method

.method public moveFixedView(Landroid/view/View;)V
    .registers 4

    .line 1967
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_1e

    .line 1969
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    .line 1970
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eq v0, v1, :cond_1e

    .line 1971
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1972
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->addView(Landroid/view/View;)V

    goto :goto_1e

    .line 1975
    :cond_19
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->addView(Landroid/view/View;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method protected newNestedInstance()Lcom/taobao/weex/WXSDKInstance;
    .registers 3

    .line 560
    new-instance v0, Lcom/taobao/weex/WXSDKInstance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/weex/WXSDKInstance;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onActivityBack()Z
    .registers 2

    .line 1481
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityBack(Ljava/lang/String;)Z

    .line 1483
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_10

    .line 1484
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityBack()Z

    move-result v0

    return v0

    .line 1486
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "Warning :Component tree has not build completely, onActivityBack can not be call!"

    .line 1487
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreate()V
    .registers 5

    .line 1313
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityCreate(Ljava/lang/String;)V

    .line 1315
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 1316
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityCreate()V

    goto :goto_1a

    .line 1318
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Warning :Component tree has not build completely,onActivityCreate can not be call!"

    .line 1319
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 1323
    :cond_1a
    :goto_1a
    new-instance v0, Lcom/taobao/weex/WXGlobalEventReceiver;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXGlobalEventReceiver;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 1325
    :try_start_21
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "wx_global_action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_32

    goto :goto_3d

    :catchall_32
    move-exception v0

    .line 1328
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1329
    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    :goto_3d
    return-void
.end method

.method public onActivityDestroy()V
    .registers 2

    .line 1465
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityDestroy(Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 1468
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityDestroy()V

    goto :goto_1a

    .line 1470
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Warning :Component tree has not build completely, onActivityDestroy can not be call!"

    .line 1471
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 1474
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/TimeCalculator;->println()V

    .line 1475
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    return-void
.end method

.method public onActivityPause()V
    .registers 10

    .line 1366
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->onViewDisappear()V

    .line 1367
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_38

    .line 1368
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    if-eqz v0, :cond_10

    .line 1369
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    .line 1371
    :cond_10
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getMaxDeepLayer()I

    move-result v2

    iput v2, v0, Lcom/taobao/weex/common/WXPerformance;->maxDeepViewLayer:I

    .line 1372
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    .line 1373
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    iput-object v2, v0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    .line 1374
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    if-eqz v3, :cond_36

    .line 1375
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUserTrackParams()Ljava/util/Map;

    move-result-object v8

    const-string v6, "load"

    invoke-interface/range {v3 .. v8}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 1377
    :cond_36
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    .line 1380
    :cond_38
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityPause(Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_47

    .line 1382
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityPause()V

    goto :goto_52

    .line 1384
    :cond_47
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "Warning :Component tree has not build completely,onActivityPause can not be call!"

    .line 1385
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 1389
    :cond_52
    :goto_52
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    if-nez v0, :cond_8a

    const-string v0, "Application to be in the backround"

    .line 1390
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    .line 1391
    new-instance v0, Landroid/content/Intent;

    const-string v2, "wx_global_action"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "eventName"

    const-string v3, "WXApplicationWillResignActiveEvent"

    .line 1392
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1393
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wx_instanceid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_7a

    .line 1398
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_88

    .line 1401
    :cond_7a
    :try_start_7a
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_81} :catch_82

    goto :goto_88

    :catch_82
    move-exception v0

    const-string v2, "weex"

    .line 1403
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1406
    :goto_88
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 1410
    :cond_8a
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-nez v0, :cond_96

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isPerf()Z

    move-result v0

    if-eqz v0, :cond_b4

    :cond_96
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    if-eqz v0, :cond_b4

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerformanceData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->toPerfString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_b4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1535
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1537
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 1538
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1a

    .line 1540
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "Warning :Component tree has not build completely, onActivityResult can not be call!"

    .line 1541
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onActivityResume()V
    .registers 4

    .line 1420
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityResume(Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 1423
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResume()V

    goto :goto_1a

    .line 1425
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Warning :Component tree has not build completely, onActivityResume can not be call!"

    .line 1426
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 1430
    :cond_1a
    :goto_1a
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    if-eqz v0, :cond_4c

    const-string v0, "Application  to be in the foreground"

    .line 1431
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    .line 1432
    new-instance v0, Landroid/content/Intent;

    const-string v1, "wx_global_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eventName"

    const-string v2, "WXApplicationDidBecomeActiveEvent"

    .line 1433
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wx_instanceid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1436
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_42

    .line 1437
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_49

    .line 1439
    :cond_42
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :goto_49
    const/4 v0, 0x0

    .line 1441
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 1444
    :cond_4c
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->onViewAppear()V

    return-void
.end method

.method public onActivityStart()V
    .registers 2

    .line 1338
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityStart(Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 1340
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStart()V

    goto :goto_1a

    .line 1342
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Warning :Component tree has not build completely,onActivityStart can not be call!"

    .line 1343
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onActivityStop()V
    .registers 2

    .line 1451
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityStop(Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 1454
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStop()V

    goto :goto_1a

    .line 1456
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Warning :Component tree has not build completely, onActivityStop can not be call!"

    .line 1457
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onBackPressed()Z
    .registers 8

    .line 1506
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 1507
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;

    .line 1508
    invoke-interface {v2}, Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_9

    return v1

    .line 1514
    :cond_1c
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_56

    .line 1516
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v3

    const-string v4, "nativeback"

    .line 1517
    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_47

    .line 1519
    invoke-virtual {v0, v4, v6}, Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;

    move-result-object v4

    .line 1520
    invoke-virtual {v4}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_47

    return v1

    :cond_47
    const-string v1, "clickbackitem"

    .line 1525
    invoke-virtual {v3, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1527
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v6, v6}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_56
    return v2
.end method

.method public onChangeElement(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 8

    .line 1668
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-nez v0, :cond_f

    goto :goto_57

    :cond_f
    if-eqz p1, :cond_57

    .line 1671
    iget-boolean v0, p1, Lcom/taobao/weex/ui/component/WXComponent;->isIgnoreInteraction:Z

    if-eqz v0, :cond_16

    goto :goto_57

    .line 1675
    :cond_16
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->hasConsumeEvent()Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    .line 1679
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1683
    iget-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    if-eqz v2, :cond_33

    .line 1684
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v2, v2, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f40

    cmp-long v4, v0, v2

    if-lez v4, :cond_33

    return-void

    .line 1691
    :cond_33
    iget-boolean v0, p1, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    if-eqz v0, :cond_50

    .line 1692
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->localInteractionViewAddCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->localInteractionViewAddCount:I

    if-nez p2, :cond_4d

    .line 1694
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddLimitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddLimitCount:I

    :cond_4d
    const/4 v0, 0x0

    .line 1695
    iput-boolean v0, p1, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    :cond_50
    if-nez p2, :cond_57

    .line 1699
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->arriveInteraction(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public onComponentCreate(Lcom/taobao/weex/ui/component/WXComponent;J)V
    .registers 8

    .line 1776
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v0, p1, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementCount:I

    .line 1777
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v0, p1, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v1, v0

    iput v1, p1, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    .line 1778
    iget-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez p1, :cond_26

    .line 1779
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v0, p1, Lcom/taobao/weex/common/WXPerformance;->fsComponentCreateTime:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v1, v0

    iput v1, p1, Lcom/taobao/weex/common/WXPerformance;->fsComponentCreateTime:I

    .line 1780
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v0, p1, Lcom/taobao/weex/common/WXPerformance;->fsComponentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/taobao/weex/common/WXPerformance;->fsComponentCount:I

    .line 1782
    :cond_26
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    .line 1783
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCreateTime:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCreateTime:J

    return-void
.end method

.method public onCreateFinish()V
    .registers 3

    .line 1596
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    if-eqz v0, :cond_5

    return-void

    .line 1599
    :cond_5
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    .line 1600
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->onViewAppear()V

    .line 1601
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    .line 1602
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v1, :cond_15

    .line 1603
    invoke-interface {v1, p0, v0}, Lcom/taobao/weex/IWXRenderListener;->onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V

    .line 1605
    :cond_15
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    if-eqz v0, :cond_1c

    .line 1606
    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onFirstView()V

    :cond_1c
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .line 1352
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/weex/bridge/WXModuleManager;->onCreateOptionsMenu(Ljava/lang/String;Landroid/view/Menu;)Z

    .line 1353
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 1354
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_1a

    .line 1356
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "Warning :Component tree has not build completely,onActivityStart can not be call!"

    .line 1357
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    return p1
.end method

.method public onHttpStart()V
    .registers 3

    .line 2269
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_c

    .line 2270
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsRequestNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsRequestNum:I

    :cond_c
    return-void
.end method

.method public onInstanceReady()V
    .registers 3

    const-string v0, "test->"

    const-string v1, "onInstanceReady"

    .line 799
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-string v1, "wxContainerReady"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 801
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    if-nez v0, :cond_17

    return-void

    .line 804
    :cond_17
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    invoke-virtual {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->onInstanceReady(Z)V

    .line 805
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    if-eqz v0, :cond_27

    .line 806
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    invoke-virtual {v0}, Lcom/taobao/weex/WXHttpListener;->onInstanceReady()V

    :cond_27
    return-void
.end method

.method public onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    .line 1719
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 1720
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2f

    .line 1721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJSException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1722
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/weex/WXSDKInstance$6;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2f
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    if-ne p2, p6, :cond_8

    if-ne p3, p7, :cond_8

    if-ne p4, p8, :cond_8

    if-eq p5, p9, :cond_b

    .line 1748
    :cond_8
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->onLayoutChange(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public onOldFsRenderTimeLogic()V
    .registers 6

    .line 1791
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 1794
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 1795
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_18

    .line 1796
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$7;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXSDKInstance$7;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1807
    :cond_18
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->arriveFSRenderTime()V

    .line 1808
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsRenderTime:J

    .line 1809
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    return-void
.end method

.method public onRefreshSuccess(II)V
    .registers 5

    .line 1661
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_b

    .line 1662
    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/weex/IWXRenderListener;->onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V

    :cond_b
    return-void
.end method

.method public onRenderError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1704
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2c

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRenderError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1706
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance$5;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2c
    return-void
.end method

.method public onRenderSuccess(II)V
    .registers 11

    const/4 v0, 0x1

    .line 1626
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 1627
    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    if-nez v1, :cond_e

    .line 1628
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->arriveNewFsRenderTime()V

    .line 1631
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long/2addr v1, v3

    .line 1632
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->getRenderFinishTime(Ljava/lang/String;)[J

    move-result-object v3

    .line 1634
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    const/4 v5, 0x0

    aget-wide v5, v3, v5

    iput-wide v5, v4, Lcom/taobao/weex/common/WXPerformance;->callBridgeTime:J

    .line 1635
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    aget-wide v5, v3, v0

    iput-wide v5, v4, Lcom/taobao/weex/common/WXPerformance;->cssLayoutTime:J

    .line 1636
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    const/4 v4, 0x2

    aget-wide v4, v3, v4

    iput-wide v4, v0, Lcom/taobao/weex/common/WXPerformance;->parseJsonTime:J

    .line 1638
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    long-to-double v3, v1

    iput-wide v3, v0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    .line 1639
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v3, v0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    long-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v3, v5

    if-gez v0, :cond_4c

    .line 1640
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    .line 1643
    :cond_4c
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    const-string v1, "weex_perf"

    if-eqz v0, :cond_8f

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_8f

    .line 1644
    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/weex/IWXRenderListener;->onRenderSuccess(Lcom/taobao/weex/WXSDKInstance;II)V

    .line 1645
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    if-eqz p1, :cond_80

    .line 1646
    new-instance v6, Lcom/taobao/weex/common/WXPerformance;

    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v6, p1}, Lcom/taobao/weex/common/WXPerformance;-><init>(Ljava/lang/String;)V

    .line 1647
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    .line 1648
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;

    .line 1649
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUserTrackParams()Ljava/util/Map;

    move-result-object v7

    const-string v5, "jsBridge"

    invoke-interface/range {v2 .. v7}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 1651
    :cond_80
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 1652
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXPerformance;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    :cond_8f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isPerf()Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 1656
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXPerformance;->getPerfData()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 1549
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXModuleManager;->onRequestPermissionsResult(Ljava/lang/String;I[Ljava/lang/String;[I)V

    .line 1551
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 1552
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1a

    .line 1554
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "Warning :Component tree has not build completely, onRequestPermissionsResult can not be call!"

    .line 1555
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onRootCreated(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1954
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    const/4 v0, 0x1

    .line 1955
    iput v0, p1, Lcom/taobao/weex/ui/component/WXComponent;->mDeepInComponentTree:I

    .line 1956
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->addView(Landroid/view/View;)V

    .line 1959
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/WXSDKInstance;->setSize(II)V

    return-void
.end method

.method public declared-synchronized onShowAnimationEnd()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 2441
    :try_start_2
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 2442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2443
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2444
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    .line 2445
    invoke-interface {v2}, Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;->onShowAnimationEnd()V

    goto :goto_12

    .line 2447
    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_27

    .line 2448
    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSupportNavigateUp()Z
    .registers 3

    .line 1495
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    if-eqz v0, :cond_1c

    .line 1496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;

    .line 1497
    invoke-interface {v1}, Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;->onSupportNavigateUp()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdateFinish()V
    .registers 2

    .line 1615
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Instance onUpdateSuccess"

    .line 1616
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onViewAppear()V
    .registers 4

    const/4 v0, 0x1

    .line 1583
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    .line 1584
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->onAppear()V

    .line 1585
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1587
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewappear"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1588
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;

    .line 1589
    invoke-interface {v1}, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;->onAppear()V

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public onViewDisappear()V
    .registers 4

    const/4 v0, 0x0

    .line 1566
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    .line 1567
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->onDisAppear()V

    .line 1568
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1570
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewdisappear"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1572
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;

    .line 1573
    invoke-interface {v1}, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;->onDisappear()V

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public preDownLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 830
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 831
    iput-object p4, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 832
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/taobao/weex/performance/WXInstanceApm;->isReady:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 833
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public preInit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x1

    .line 815
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 816
    iput-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    if-nez p3, :cond_c

    .line 819
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 822
    :cond_c
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const/4 p5, 0x0

    iput-boolean p5, p1, Lcom/taobao/weex/performance/WXInstanceApm;->isReady:Z

    .line 823
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    new-instance p5, Lcom/taobao/weex/Script;

    invoke-direct {p5, p2}, Lcom/taobao/weex/Script;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p5, p3, p4}, Lcom/taobao/weex/WXSDKManager;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public refreshInstance(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1189
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRefreshStartTime:J

    .line 1191
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 1192
    iput-boolean v1, v0, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    .line 1195
    :cond_10
    new-instance v0, Lcom/taobao/weex/common/WXRefreshData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/common/WXRefreshData;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    .line 1197
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/WXSDKManager;->refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    return-void
.end method

.method public refreshInstance(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1178
    :cond_3
    invoke-static {p1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->refreshInstance(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized registerActionbarHandler(Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    .line 2020
    monitor-exit p0

    return-void

    .line 2022
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    if-nez v0, :cond_10

    .line 2023
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    .line 2026
    :cond_10
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_17

    .line 2027
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerActivityStateListener(Lcom/taobao/weex/IWXActivityStateListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public declared-synchronized registerBackPressedHandler(Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    .line 2037
    monitor-exit p0

    return-void

    .line 2040
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    if-nez v0, :cond_10

    .line 2041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    .line 2044
    :cond_10
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_17

    .line 2045
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerOnWXScrollListener(Lcom/taobao/weex/common/OnWXScrollListener;)V
    .registers 3

    monitor-enter p0

    .line 2012
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    if-nez v0, :cond_c

    .line 2013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    .line 2015
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 2016
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V
    .registers 2

    .line 1283
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    return-void
.end method

.method public registerScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 654
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    return-void
.end method

.method public registerStatisticsListener(Lcom/taobao/weex/IWXStatisticsListener;)V
    .registers 2

    .line 1292
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-void
.end method

.method public reloadImages()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1256
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_4

    :cond_4
    return-void
.end method

.method public reloadPage(Z)V
    .registers 5

    .line 1141
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    if-eqz p1, :cond_20

    .line 1144
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_62

    .line 1145
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1146
    sget-object v0, Lcom/taobao/weex/WXSDKInstance;->ACTION_INSTANCE_RELOAD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_62

    .line 1155
    :cond_20
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object p1

    if-eqz p1, :cond_62

    const-string v0, "android_weex_ext_config"

    const-string v1, "degrade_to_h5_if_not_reload"

    const-string v2, "true"

    .line 1158
    invoke-interface {p1, v0, v1, v2}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1157
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "degrade : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_62

    .line 1163
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Do not reloadPage"

    const-string v1, "Do not reloadPage degradeToH5"

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/WXSDKInstance;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void
.end method

.method public reloadPageLayout()V
    .registers 3

    .line 483
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->reloadPageLayout(Ljava/lang/String;)V

    return-void
.end method

.method public removeEventListener(Ljava/lang/String;)V
    .registers 3

    .line 2167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2170
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 2160
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1a

    .line 2162
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method public removeFixedView(Landroid/view/View;)V
    .registers 3

    .line 1981
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_7

    .line 1982
    invoke-virtual {v0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->removeView(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public declared-synchronized removeFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V
    .registers 3

    monitor-enter p0

    .line 2431
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2432
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 2434
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeInActiveAddElmentAction(Ljava/lang/String;)V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeLayerOverFlowListener(Ljava/lang/String;)V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 243
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public removeOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
    .registers 3

    .line 580
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeUserTrackParameter(Ljava/lang/String;)V
    .registers 3

    .line 2244
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 2245
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public render(Ljava/lang/String;)V
    .registers 8

    .line 1080
    iget-object v5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    const-string v1, "default"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;II)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1091
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;)V

    return-void
.end method

.method public render(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/Script;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/common/WXPerformance;->beforeInstanceRender(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 744
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 745
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "Error: Missing pageName"

    .line 746
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "We highly recommend you to set pageName. Call\nWXSDKInstance#render(String pageName, String template, Map<String, Object> options, String jsonInitData, WXRenderStrategy flag)\nto fix it."

    .line 747
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 750
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_33
    return-void

    .line 755
    :cond_34
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/WXSDKInstance;->renderInternal(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    .line 1072
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 736
    new-instance v2, Lcom/taobao/weex/Script;

    invoke-direct {v2, p2}, Lcom/taobao/weex/Script;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 691
    sget-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "default"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 713
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 762
    new-instance v2, Lcom/taobao/weex/Script;

    invoke-direct {v2, p2}, Lcom/taobao/weex/Script;-><init>([B)V

    sget-object v5, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    .line 1106
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 1110
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/WXSDKInstance;->renderByUrlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public resetDeviceDisplayOfPage()V
    .registers 5

    .line 477
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDeviceDisplayOfPage(Ljava/lang/String;FF)V

    return-void
.end method

.method public rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    .line 1238
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p2, p1}, Lcom/taobao/weex/adapter/URIAdapter;->rewrite(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .registers 5

    .line 1622
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAutoAdjustDeviceWidth(Z)V
    .registers 2

    .line 487
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 636
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 637
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput-object p1, v0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public setBundleUrl(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1947
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 1948
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 1949
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/WXValidateProcessor;->needValidate(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    :cond_1c
    return-void
.end method

.method public setComponentObserver(Lcom/taobao/weex/ComponentObserver;)V
    .registers 2

    .line 623
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    return-void
.end method

.method public setComponentsInfoExceedGPULimit(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 226
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 227
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public setContainerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 667
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 1276
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setCustomFontNetworkHandler(Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mCustomFontNetworkHandler:Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;

    return-void
.end method

.method public setDefaultFontSize(I)V
    .registers 2

    .line 2415
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    return-void
.end method

.method public setEnableFullScreenHeight(Z)V
    .registers 2

    .line 449
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    return-void
.end method

.method public setHasException(Z)V
    .registers 2

    .line 567
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    return-void
.end method

.method public setIWXUserTrackAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setImageNetworkHandler(Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mImageNetworkHandler:Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

    return-void
.end method

.method public setImmersive(Z)V
    .registers 2

    .line 2455
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    return-void
.end method

.method public setInstanceViewPortWidth(F)V
    .registers 3

    const/4 v0, 0x0

    .line 464
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(FZ)V

    return-void
.end method

.method public setInstanceViewPortWidth(FZ)V
    .registers 4

    .line 468
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 469
    invoke-static {p1}, Lcom/taobao/weex/WXEnvironment;->setViewProt(F)V

    if-eqz p2, :cond_14

    .line 472
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    invoke-virtual {p1, p2, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setViewPortWidth(Ljava/lang/String;F)V

    :cond_14
    return-void
.end method

.method public setMaxDeepLayer(I)V
    .registers 5

    .line 2254
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->mMaxDeepLayer:I

    .line 2255
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    int-to-double v1, p1

    const-string p1, "wxMaxDeepViewLayer"

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateMaxStats(Ljava/lang/String;D)V

    return-void
.end method

.method public setMaxDomDeep(I)V
    .registers 6

    .line 2259
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    int-to-double v1, p1

    const-string v3, "wxMaxDeepVDomLayer"

    invoke-virtual {v0, v3, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateMaxStats(Ljava/lang/String;D)V

    .line 2260
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-nez v0, :cond_d

    return-void

    .line 2263
    :cond_d
    iget v0, v0, Lcom/taobao/weex/common/WXPerformance;->maxDeepVDomLayer:I

    if-gt v0, p1, :cond_15

    .line 2264
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput p1, v0, Lcom/taobao/weex/common/WXPerformance;->maxDeepVDomLayer:I

    :cond_15
    return-void
.end method

.method public setMaxHiddenEmbedsNum(I)V
    .registers 2

    .line 342
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    return-void
.end method

.method public setNeedLoad(Z)V
    .registers 2

    .line 445
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    return-void
.end method

.method public setNestedInstanceInterceptor(Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;)V
    .registers 2

    .line 545
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    return-void
.end method

.method public setPageKeepRawCssStyles()V
    .registers 5

    .line 480
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reserveCssStyles"

    const-string v3, "true"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPageArgument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParentInstance(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 1817
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mParentInstance:Lcom/taobao/weex/WXSDKInstance;

    return-void
.end method

.method public setPreRenderMode(Z)V
    .registers 6

    .line 1267
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$4;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/WXSDKInstance$4;-><init>(Lcom/taobao/weex/WXSDKInstance;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setRenderContainer(Lcom/taobao/weex/RenderContainer;)V
    .registers 2

    .line 369
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->setWXAbstractRenderContainer(Lcom/taobao/weex/render/WXAbstractRenderContainer;)V

    return-void
.end method

.method public setRenderStartTime(J)V
    .registers 3

    .line 1297
    iput-wide p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    return-void
.end method

.method public setRenderType(Ljava/lang/String;)V
    .registers 2

    .line 2398
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    return-void
.end method

.method public setRootScrollView(Landroid/widget/ScrollView;)V
    .registers 4

    .line 646
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    .line 647
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    if-eqz v0, :cond_f

    instance-of v1, p1, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v1, :cond_f

    .line 648
    check-cast p1, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    :cond_f
    return-void
.end method

.method public setSize(II)V
    .registers 12

    if-lez p1, :cond_8a

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    .line 2055
    :goto_9
    iget-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    xor-int/2addr v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_8a

    iget-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v2, :cond_8a

    .line 2056
    sget v2, Lcom/taobao/weex/WXSDKInstance;->sScreenHeight:I

    if-gez v2, :cond_25

    .line 2057
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/taobao/weex/WXSDKInstance;->sScreenHeight:I

    .line 2059
    :cond_25
    sget v2, Lcom/taobao/weex/WXSDKInstance;->sScreenHeight:I

    if-lez v2, :cond_3f

    int-to-double v3, p2

    int-to-double v5, v2

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    cmpl-double v2, v3, v5

    if-lez v2, :cond_35

    goto :goto_36

    :cond_35
    move-wide v5, v3

    .line 2064
    :goto_36
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v2

    const-string v3, "wxBodyRatio"

    invoke-virtual {v2, v3, v5, v6}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    .line 2066
    :cond_3f
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v2}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_8a

    int-to-float v5, p1

    int-to-float v6, p2

    .line 2070
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenDensity(Landroid/content/Context;)F

    .line 2071
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v3}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_5e

    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v3}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_67

    .line 2072
    :cond_5e
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2073
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2074
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {p1, v2}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2077
    :cond_67
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_8a

    if-eqz v2, :cond_8a

    .line 2078
    iget p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p2, -0x2

    if-ne p1, p2, :cond_74

    const/4 v7, 0x1

    goto :goto_75

    :cond_74
    const/4 v7, 0x0

    .line 2079
    :goto_75
    iget p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, p2, :cond_7b

    const/4 v8, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v8, 0x0

    .line 2081
    :goto_7c
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance p2, Lcom/taobao/weex/WXSDKInstance$10;

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/WXSDKInstance$10;-><init>(Lcom/taobao/weex/WXSDKInstance;FFZZ)V

    invoke-virtual {p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_8a
    return-void
.end method

.method public setStreamNetworkHandler(Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mStreamNetworkHandler:Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .registers 3

    .line 2339
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setTrackComponent(Z)V
    .registers 2

    .line 404
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->trackComponent:Z

    return-void
.end method

.method public setUseSandBox(Z)V
    .registers 3

    .line 330
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setSandBoxContext(Z)V

    return-void
.end method

.method public setUseScroller(Z)V
    .registers 2

    .line 459
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    return-void
.end method

.method public setUseSingleProcess(Z)V
    .registers 3

    .line 322
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setUseSingleProcess(Z)V

    return-void
.end method

.method public setWXAbstractRenderContainer(Lcom/taobao/weex/render/WXAbstractRenderContainer;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 374
    invoke-virtual {p1, p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 375
    invoke-virtual {p1, p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 378
    :cond_8
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz p1, :cond_2a

    .line 379
    invoke-virtual {p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    .line 380
    invoke-virtual {p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2a

    .line 381
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance v0, Lcom/taobao/weex/WXSDKInstance$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXSDKInstance$1;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_36

    .line 388
    :cond_2a
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance v0, Lcom/taobao/weex/WXSDKInstance$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXSDKInstance$2;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :goto_36
    return-void
.end method

.method public skipFrameworkInit()Z
    .registers 2

    .line 979
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->isDataRender()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public declared-synchronized unRegisterActionbarHandler(Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;)V
    .registers 3

    monitor-enter p0

    .line 2030
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 2031
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 2033
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unRegisterBackPressedHandler(Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;)V
    .registers 3

    monitor-enter p0

    .line 2048
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 2049
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 2051
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass1 (com.taobao.weex.WXSDKInstance$1)
.class Lcom/taobao/weex/WXSDKInstance$1;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->setWXAbstractRenderContainer(Lcom/taobao/weex/render/WXAbstractRenderContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$1;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 384
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$1;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setRenderContentWrapContentToCore(ZLjava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass10 (com.taobao.weex.WXSDKInstance$10)
.class Lcom/taobao/weex/WXSDKInstance$10;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->setSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$isHeightWrapContent:Z

.field final synthetic val$isWidthWrapContent:Z

.field final synthetic val$realHeight:F

.field final synthetic val$realWidth:F


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;FFZZ)V
    .registers 6

    .line 2081
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$10;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput p2, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$realWidth:F

    iput p3, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$realHeight:F

    iput-boolean p4, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$isWidthWrapContent:Z

    iput-boolean p5, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$isHeightWrapContent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 2084
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$10;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$realWidth:F

    iget v3, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$realHeight:F

    iget-boolean v4, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$isWidthWrapContent:Z

    iget-boolean v5, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$isHeightWrapContent:Z

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDefaultRootSize(Ljava/lang/String;FFZZ)V

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass11 (com.taobao.weex.WXSDKInstance$11)
.class Lcom/taobao/weex/WXSDKInstance$11;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->OnVSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 2349
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$11;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2352
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$11;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->forceLayout(Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass2 (com.taobao.weex.WXSDKInstance$2)
.class Lcom/taobao/weex/WXSDKInstance$2;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->setWXAbstractRenderContainer(Lcom/taobao/weex/render/WXAbstractRenderContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 388
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$2;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 391
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$2;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setRenderContentWrapContentToCore(ZLjava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass3 (com.taobao.weex.WXSDKInstance$3)
.class Lcom/taobao/weex/WXSDKInstance$3;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->renderInternal(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$wxJscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/adapter/IWXJscProcessManager;)V
    .registers 3

    .line 930
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance$3;->val$wxJscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 933
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$000(Lcom/taobao/weex/WXSDKInstance;)V

    .line 934
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$100(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$200(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$300(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_62

    .line 938
    :cond_1e
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v0

    .line 939
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_62

    .line 940
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_62

    .line 941
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->val$wxJscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-interface {v0, v1}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->withException(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 942
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jsc reboot"

    invoke-virtual {v0, v1, v2, v2}, Lcom/taobao/weex/WXSDKInstance;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    :cond_47
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$400(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 945
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$500(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callReportCrashReloadPage(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "callReportCrashReloadPage with jsc reboot"

    .line 946
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass4 (com.taobao.weex.WXSDKInstance$4)
.class Lcom/taobao/weex/WXSDKInstance$4;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->setPreRenderMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$isPreRenderMode:Z


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;Z)V
    .registers 3

    .line 1267
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput-boolean p2, p0, Lcom/taobao/weex/WXSDKInstance$4;->val$isPreRenderMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1270
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance$4;->val$isPreRenderMode:Z

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->access$602(Lcom/taobao/weex/WXSDKInstance;Z)Z

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass5 (com.taobao.weex.WXSDKInstance$5)
.class Lcom/taobao/weex/WXSDKInstance$5;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$errCode:Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1706
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance$5;->val$errCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/WXSDKInstance$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1710
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$700(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1d

    .line 1711
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$700(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance$5;->val$errCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance$5;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/weex/IWXRenderListener;->onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass6 (com.taobao.weex.WXSDKInstance$6)
.class Lcom/taobao/weex/WXSDKInstance$6;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$errCode:Ljava/lang/String;

.field final synthetic val$exception:Ljava/lang/String;

.field final synthetic val$function:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1722
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$errCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$function:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$exception:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1726
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$errCode:Ljava/lang/String;

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_VALIDAPPKEY:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1727
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1f

    .line 1728
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/util/ErrorDialogUtil;->checkAppKeyErrorTips(Landroid/app/Activity;)V

    :cond_1f
    return-void

    .line 1732
    :cond_20
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$700(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4e

    .line 1733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1734
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$function:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$exception:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$700(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$errCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/taobao/weex/IWXRenderListener;->onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass7 (com.taobao.weex.WXSDKInstance$7)
.class Lcom/taobao/weex/WXSDKInstance$7;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->onOldFsRenderTimeLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 1796
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$7;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1799
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$7;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$800(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$7;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1f

    const-string v0, "onFirstScreen"

    .line 1800
    invoke-static {v0}, Lcom/taobao/weex/utils/Trace;->beginSection(Ljava/lang/String;)V

    .line 1801
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$7;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$800(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onFirstScreen()V

    .line 1802
    invoke-static {}, Lcom/taobao/weex/utils/Trace;->endSection()V

    :cond_1f
    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass8 (com.taobao.weex.WXSDKInstance$8)
.class Lcom/taobao/weex/WXSDKInstance$8;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 1904
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$8;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1907
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$8;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->onInstanceClose(Ljava/lang/String;)V

    .line 1908
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$8;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$900(Lcom/taobao/weex/WXSDKInstance;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass9 (com.taobao.weex.WXSDKInstance$9)
.class Lcom/taobao/weex/WXSDKInstance$9;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 1915
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$9;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1918
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$9;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$500(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.ActionBarHandler (com.taobao.weex.WXSDKInstance$ActionBarHandler)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionBarHandler"
.end annotation


# virtual methods
.method public abstract onSupportNavigateUp()Z
.end method

###### Class com.taobao.weex.WXSDKInstance.CustomFontNetworkHandler (com.taobao.weex.WXSDKInstance$CustomFontNetworkHandler)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomFontNetworkHandler"
.end annotation


# virtual methods
.method public abstract fetchLocal(Ljava/lang/String;)Ljava/lang/String;
.end method

###### Class com.taobao.weex.WXSDKInstance.FrameViewEventListener (com.taobao.weex.WXSDKInstance$FrameViewEventListener)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameViewEventListener"
.end annotation


# virtual methods
.method public abstract onShowAnimationEnd()V
.end method

###### Class com.taobao.weex.WXSDKInstance.ImageNetworkHandler (com.taobao.weex.WXSDKInstance$ImageNetworkHandler)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageNetworkHandler"
.end annotation


# virtual methods
.method public abstract fetchLocal(Ljava/lang/String;)Ljava/lang/String;
.end method

###### Class com.taobao.weex.WXSDKInstance.NestedInstanceInterceptor (com.taobao.weex.WXSDKInstance$NestedInstanceInterceptor)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NestedInstanceInterceptor"
.end annotation


# virtual methods
.method public abstract onCreateNestInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/NestedContainer;)V
.end method

###### Class com.taobao.weex.WXSDKInstance.OnBackPressedHandler (com.taobao.weex.WXSDKInstance$OnBackPressedHandler)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBackPressedHandler"
.end annotation


# virtual methods
.method public abstract onBackPressed()Z
.end method

###### Class com.taobao.weex.WXSDKInstance.OnInstanceVisibleListener (com.taobao.weex.WXSDKInstance$OnInstanceVisibleListener)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnInstanceVisibleListener"
.end annotation


# virtual methods
.method public abstract onAppear()V
.end method

.method public abstract onDisappear()V
.end method

###### Class com.taobao.weex.WXSDKInstance.StreamNetworkHandler (com.taobao.weex.WXSDKInstance$StreamNetworkHandler)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamNetworkHandler"
.end annotation


# virtual methods
.method public abstract fetchLocal(Ljava/lang/String;)Ljava/lang/String;
.end method
