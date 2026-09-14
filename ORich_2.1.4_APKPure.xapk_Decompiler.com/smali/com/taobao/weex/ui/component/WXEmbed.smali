###### Class com.taobao.weex.ui.component.WXEmbed (com.taobao.weex.ui.component.WXEmbed)
.class public Lcom/taobao/weex/ui/component/WXEmbed;
.super Lcom/taobao/weex/ui/component/WXDiv;
.source "WXEmbed.java"

# interfaces
.implements Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;
.implements Lcom/taobao/weex/ui/component/NestedContainer;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;,
        Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;,
        Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;,
        Lcom/taobao/weex/ui/component/WXEmbed$FailToH5Listener;,
        Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;
    }
.end annotation


# static fields
.field private static ERROR_IMG_HEIGHT:I = 0x0

.field private static ERROR_IMG_WIDTH:I = 0x0

.field public static final ITEM_ID:Ljava/lang/String; = "itemId"

.field public static final PRIORITY_HIGH:Ljava/lang/String; = "high"

.field public static final PRIORITY_LOW:Ljava/lang/String; = "low"

.field public static final PRIORITY_NORMAL:Ljava/lang/String; = "normal"

.field public static final STRATEGY_HIGH:Ljava/lang/String; = "high"

.field public static final STRATEGY_NONE:Ljava/lang/String; = "none"

.field public static final STRATEGY_NORMAL:Ljava/lang/String; = "normal"


# instance fields
.field private hiddenTime:J

.field private mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

.field private mIsVisible:Z

.field private mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

.field protected mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

.field private originUrl:Ljava/lang/String;

.field private priority:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private strategy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/high16 v0, 0x43870000    # 270.0f

    const/16 v1, 0x2ee

    .line 68
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_WIDTH:I

    const/high16 v0, 0x43820000    # 260.0f

    .line 69
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXDiv;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p2, 0x1

    .line 71
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    const-string p2, "normal"

    .line 76
    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    .line 204
    new-instance p3, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    invoke-direct {p3, p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;-><init>(Lcom/taobao/weex/ui/component/WXEmbed;)V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    .line 205
    new-instance p3, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-direct {p3, p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;-><init>(Lcom/taobao/weex/ui/component/WXEmbed;)V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    .line 207
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p3

    const/high16 v0, 0x43870000    # 270.0f

    invoke-static {v0, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_WIDTH:I

    .line 208
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p3

    const/high16 v0, 0x43820000    # 260.0f

    invoke-static {v0, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_HEIGHT:I

    .line 209
    instance-of p3, p1, Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;

    if-eqz p3, :cond_4e

    .line 210
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    const-string v0, "itemId"

    invoke-virtual {p3, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4e

    .line 212
    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;->putEmbed(Ljava/lang/String;Lcom/taobao/weex/ui/component/WXEmbed;)V

    .line 215
    :cond_4e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    const-string v0, "priority"

    invoke-virtual {p3, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string p3, "strategy"

    invoke-virtual {p2, p3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "none"

    invoke-static {p2, p3}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    const-string v0, "wxEmbedCount"

    invoke-virtual {p1, v0, p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXEmbed;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXEmbed;)Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()I
    .registers 1

    .line 53
    sget v0, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_WIDTH:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .line 53
    sget v0, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_HEIGHT:I

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXEmbed;)I
    .registers 1

    .line 53
    invoke-static {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getLevel(Lcom/taobao/weex/ui/component/WXEmbed;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/WXEmbed;)J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->hiddenTime:J

    return-wide v0
.end method

.method private createInstance()Lcom/taobao/weex/WXSDKInstance;
    .registers 8

    .line 340
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKInstance;->createNestedInstance(Lcom/taobao/weex/ui/component/NestedContainer;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->setParentInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 342
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "disableInstanceVisibleListener"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_24

    .line 344
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/weex/WXSDKInstance;->addOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    .line 346
    :cond_24
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V

    .line 347
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->resetFirstLaterScroller()V

    .line 348
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->addInstanceOnFireEventInterceptor(Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;)V

    .line 349
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->registerOnWXScrollListener(Lcom/taobao/weex/common/OnWXScrollListener;)V

    .line 351
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    .line 352
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    if-eqz v2, :cond_5a

    iget-object v2, v2, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    if-eqz v2, :cond_5a

    .line 353
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->transformUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-interface {v2, p0, v3}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onPreCreate(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    const/4 v0, 0x0

    return-object v0

    :cond_5a
    move-object v3, v1

    .line 360
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 361
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    .line 362
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    .line 363
    invoke-virtual {v4}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "!!wx embed src url is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-interface {v1, p0, v2, v3}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_86
    const-string v1, "wxInstanceType"

    const-string v2, "embed"

    .line 367
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setContainerInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    const-string v2, "wxParentPage"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/WXSDKInstance;->setContainerInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 369
    sget-object v6, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v1, v0

    move-object v2, v3

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-object v0
.end method

.method private destoryNestInstance()V
    .registers 4

    .line 524
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 525
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 527
    :cond_1d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_27

    .line 528
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 531
    :cond_27
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WXEmbed destoryNestInstance priority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->hiddenTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " embeds size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-nez v1, :cond_67

    const/4 v1, 0x0

    goto :goto_71

    :cond_67
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    :goto_71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strategy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_85
    return-void
.end method

.method private doAutoEmbedMemoryStrategy()V
    .registers 5

    .line 415
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 416
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-nez v0, :cond_93

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_93

    .line 417
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    const-string v1, "low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 418
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->destoryNestInstance()V

    goto/16 :goto_93

    .line 420
    :cond_21
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-nez v0, :cond_3b

    .line 421
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    new-instance v1, Ljava/util/PriorityQueue;

    const/16 v2, 0x8

    new-instance v3, Lcom/taobao/weex/ui/component/WXEmbed$1;

    invoke-direct {v3, p0}, Lcom/taobao/weex/ui/component/WXEmbed$1;-><init>(Lcom/taobao/weex/ui/component/WXEmbed;)V

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    .line 433
    :cond_3b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->hiddenTime:J

    .line 435
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_56
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-eqz v0, :cond_93

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getMaxHiddenEmbedsNum()I

    move-result v0

    if-ltz v0, :cond_93

    .line 438
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getMaxHiddenEmbedsNum()I

    move-result v1

    if-le v0, v1, :cond_93

    .line 439
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXEmbed;

    .line 440
    iget-boolean v1, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz v1, :cond_8d

    goto :goto_68

    :cond_8d
    if-eqz v0, :cond_68

    .line 444
    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXEmbed;->destoryNestInstance()V

    goto :goto_68

    .line 450
    :cond_93
    :goto_93
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_b8

    .line 451
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-eqz v0, :cond_b8

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 452
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    :cond_b8
    return-void
.end method

.method private static final getLevel(Lcom/taobao/weex/ui/component/WXEmbed;)I
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    .line 327
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    const-string v1, "high"

    .line 329
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    const-string p0, "low"

    .line 330
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x0

    goto :goto_20

    .line 332
    :cond_16
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/16 p0, 0xa

    goto :goto_20

    :cond_1f
    const/4 p0, 0x5

    :goto_20
    return p0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 274
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXDiv;->addEvent(Ljava/lang/String;)V

    const-string v0, "scrollstart"

    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 276
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->addInterceptEvent(Ljava/lang/String;)V

    goto :goto_2c

    :cond_11
    const-string v0, "scrollend"

    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 278
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->addInterceptEvent(Ljava/lang/String;)V

    goto :goto_2c

    :cond_1f
    const-string v0, "scroll"

    .line 279
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 280
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->addInterceptEvent(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public addLayerOverFlowListener(Ljava/lang/String;)V
    .registers 3

    .line 540
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz p1, :cond_b

    .line 541
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/WXSDKInstance;->addLayerOverFlowListener(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 403
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXDiv;->destroy()V

    .line 404
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->destoryNestInstance()V

    const/4 v0, 0x0

    .line 405
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    .line 406
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 407
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKInstance;->removeOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    :cond_16
    return-void
.end method

.method public getOriginUrl()Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getViewContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 227
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected loadContent()V
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_7

    .line 314
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    .line 316
    :cond_7
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->createInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 317
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    if-eqz v0, :cond_2a

    .line 318
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onPreCreate(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 320
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-interface {v0, p0, v1}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onCreated(Lcom/taobao/weex/ui/component/NestedContainer;Lcom/taobao/weex/WXSDKInstance;)V

    :cond_2a
    return-void
.end method

.method public onActivityDestroy()V
    .registers 2

    .line 513
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXDiv;->onActivityDestroy()V

    .line 514
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_a

    .line 515
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityDestroy()V

    :cond_a
    return-void
.end method

.method public onActivityPause()V
    .registers 2

    .line 497
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXDiv;->onActivityPause()V

    .line 498
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_a

    .line 499
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityPause()V

    :cond_a
    return-void
.end method

.method public onActivityResume()V
    .registers 2

    .line 489
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXDiv;->onActivityResume()V

    .line 490
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_a

    .line 491
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityResume()V

    :cond_a
    return-void
.end method

.method public onActivityStart()V
    .registers 2

    .line 481
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXDiv;->onActivityStart()V

    .line 482
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_a

    .line 483
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityStart()V

    :cond_a
    return-void
.end method

.method public onActivityStop()V
    .registers 2

    .line 505
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXDiv;->onActivityStop()V

    .line 506
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_a

    .line 507
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityStop()V

    :cond_a
    return-void
.end method

.method public onAppear()V
    .registers 3

    .line 462
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_13

    .line 463
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "viewappear"

    .line 465
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public onDisappear()V
    .registers 3

    .line 472
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_13

    .line 473
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "viewdisappear"

    .line 475
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public reload()V
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 257
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    :cond_b
    return-void
.end method

.method public removeLayerOverFlowListener(Ljava/lang/String;)V
    .registers 3

    .line 546
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_7

    .line 547
    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->removeLayerOverFlowListener(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public renderNewURL(Ljava/lang/String;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    .line 251
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    return-void
.end method

.method public setOnNestEventListener(Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;)V
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iput-object p1, v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    return-void
.end method

.method public setOriginUrl(Ljava/lang/String;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->originUrl:Ljava/lang/String;

    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "priority"
    .end annotation

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 306
    :cond_7
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_24

    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 245
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXDiv;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 234
    :cond_1a
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 236
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXEmbed;->setSrc(Ljava/lang/String;)V

    :cond_23
    return v1

    .line 239
    :cond_24
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 241
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXEmbed;->setPriority(Ljava/lang/String;)V

    :cond_2d
    return v1
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->originUrl:Ljava/lang/String;

    .line 287
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    .line 288
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz p1, :cond_e

    .line 289
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 292
    :cond_e
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 293
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    :cond_1d
    return-void
.end method

.method public setStrategy(Ljava/lang/String;)V
    .registers 2

    .line 520
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .registers 3

    .line 379
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXDiv;->setVisibility(Ljava/lang/String;)V

    const-string v0, "visible"

    .line 380
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 381
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eq v0, p1, :cond_30

    .line 383
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    if-eqz p1, :cond_22

    .line 384
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v0, :cond_1f

    .line 385
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    goto :goto_22

    .line 387
    :cond_1f
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onViewAppear()V

    :cond_22
    :goto_22
    if-nez p1, :cond_2b

    .line 392
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_2b

    .line 393
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onViewDisappear()V

    .line 396
    :cond_2b
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    .line 397
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->doAutoEmbedMemoryStrategy()V

    :cond_30
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.AnonymousClass1 (com.taobao.weex.ui.component.WXEmbed$1)
.class Lcom/taobao/weex/ui/component/WXEmbed$1;
.super Ljava/lang/Object;
.source "WXEmbed.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXEmbed;->doAutoEmbedMemoryStrategy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/taobao/weex/ui/component/WXEmbed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXEmbed;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXEmbed;)V
    .registers 2

    .line 421
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$1;->this$0:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/taobao/weex/ui/component/WXEmbed;Lcom/taobao/weex/ui/component/WXEmbed;)I
    .registers 5

    .line 424
    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->access$300(Lcom/taobao/weex/ui/component/WXEmbed;)I

    move-result v0

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXEmbed;->access$300(Lcom/taobao/weex/ui/component/WXEmbed;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_c

    return v0

    .line 428
    :cond_c
    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->access$400(Lcom/taobao/weex/ui/component/WXEmbed;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXEmbed;->access$400(Lcom/taobao/weex/ui/component/WXEmbed;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 421
    check-cast p1, Lcom/taobao/weex/ui/component/WXEmbed;

    check-cast p2, Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXEmbed$1;->compare(Lcom/taobao/weex/ui/component/WXEmbed;Lcom/taobao/weex/ui/component/WXEmbed;)I

    move-result p1

    return p1
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.ClickToReloadListener (com.taobao.weex.ui.component.WXEmbed$ClickToReloadListener)
.class public Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;
.super Ljava/lang/Object;
.source "WXEmbed.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickToReloadListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/taobao/weex/ui/component/NestedContainer;Lcom/taobao/weex/WXSDKInstance;)V
    .registers 3

    return-void
.end method

.method public onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 122
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_NETWORK_BUNDLE_DOWNLOAD_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 123
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXEmbed;

    if-eqz v0, :cond_6f

    .line 124
    check-cast p1, Lcom/taobao/weex/ui/component/WXEmbed;

    .line 125
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 126
    sget v1, Lcom/taobao/weex/R$drawable;->weex_error:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/taobao/weex/ui/component/WXEmbed;->access$100()I

    move-result v2

    invoke-static {}, Lcom/taobao/weex/ui/component/WXEmbed;->access$200()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 128
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 132
    new-instance v1, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;-><init>(Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;Landroid/widget/ImageView;Lcom/taobao/weex/ui/component/WXEmbed;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 141
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetWork failure :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",\n error message :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WXEmbed"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    return-void
.end method

.method public onPreCreate(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public transformUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.ClickToReloadListener.AnonymousClass1 (com.taobao.weex.ui.component.WXEmbed$ClickToReloadListener$1)
.class Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;
.super Ljava/lang/Object;
.source "WXEmbed.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;->onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;

.field final synthetic val$comp:Lcom/taobao/weex/ui/component/WXEmbed;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;Landroid/widget/ImageView;Lcom/taobao/weex/ui/component/WXEmbed;)V
    .registers 4

    .line 132
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->this$0:Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$comp:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 135
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 137
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$comp:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.EmbedInstanceOnScrollFireEventInterceptor (com.taobao.weex.ui.component.WXEmbed$EmbedInstanceOnScrollFireEventInterceptor)
.class Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;
.super Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;
.source "WXEmbed.java"

# interfaces
.implements Lcom/taobao/weex/common/OnWXScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmbedInstanceOnScrollFireEventInterceptor"
.end annotation


# instance fields
.field private firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

.field private mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXEmbed;)V
    .registers 2

    .line 555
    invoke-direct {p0}, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;-><init>()V

    .line 556
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    return-void
.end method

.method private findFirstLayerScroller()Lcom/taobao/weex/ui/component/WXComponent;
    .registers 6

    .line 600
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 603
    :cond_8
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 604
    instance-of v2, v0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v2, :cond_15

    return-object v0

    .line 607
    :cond_15
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 608
    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 609
    :cond_1d
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 610
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_2c

    goto :goto_48

    .line 614
    :cond_2c
    instance-of v3, v0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v3, :cond_31

    return-object v0

    .line 617
    :cond_31
    instance-of v3, v0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v3, :cond_1d

    .line 618
    check-cast v0, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v3, 0x0

    .line 619
    :goto_38
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1d

    .line 620
    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_48
    :goto_48
    return-object v1
.end method

.method private initFirstLayerScroller()V
    .registers 4

    .line 583
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_37

    .line 584
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->findFirstLayerScroller()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_37

    .line 586
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->getListenEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 587
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 588
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/weex/dom/WXEvent;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    goto :goto_14

    :cond_37
    return-void
.end method


# virtual methods
.method public onFireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
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

    .line 565
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    if-eqz v0, :cond_3c

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 567
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_3c

    .line 570
    :cond_17
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez p1, :cond_1e

    .line 571
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->initFirstLayerScroller()V

    .line 573
    :cond_1e
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez p1, :cond_23

    return-void

    .line 576
    :cond_23
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 577
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXEmbed;->getRef()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public onScrollStateChanged(Landroid/view/View;III)V
    .registers 5

    return-void
.end method

.method public onScrolled(Landroid/view/View;II)V
    .registers 4

    .line 630
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_5

    return-void

    .line 633
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->getListenEvents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_12

    .line 634
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->initFirstLayerScroller()V

    :cond_12
    return-void
.end method

.method public resetFirstLaterScroller()V
    .registers 2

    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.EmbedManager (com.taobao.weex.ui.component.WXEmbed$EmbedManager)
.class public interface abstract Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;
.super Ljava/lang/Object;
.source "WXEmbed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmbedManager"
.end annotation


# virtual methods
.method public abstract getEmbed(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXEmbed;
.end method

.method public abstract putEmbed(Ljava/lang/String;Lcom/taobao/weex/ui/component/WXEmbed;)V
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.EmbedRenderListener (com.taobao.weex.ui.component.WXEmbed$EmbedRenderListener)
.class Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;
.super Ljava/lang/Object;
.source "WXEmbed.java"

# interfaces
.implements Lcom/taobao/weex/IWXRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmbedRenderListener"
.end annotation


# instance fields
.field mComponent:Lcom/taobao/weex/ui/component/WXEmbed;

.field mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXEmbed;)V
    .registers 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mComponent:Lcom/taobao/weex/ui/component/WXEmbed;

    .line 169
    new-instance p1, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;

    invoke-direct {p1}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    return-void
.end method


# virtual methods
.method public onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 191
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    if-eqz p1, :cond_9

    .line 192
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mComponent:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-interface {p1, v0, p2, p3}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .registers 4

    return-void
.end method

.method public onRenderSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .registers 4

    return-void
.end method

.method public onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V
    .registers 3

    .line 174
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mComponent:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 175
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 176
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.FailToH5Listener (com.taobao.weex.ui.component.WXEmbed$FailToH5Listener)
.class public Lcom/taobao/weex/ui/component/WXEmbed$FailToH5Listener;
.super Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;
.source "WXEmbed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailToH5Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p2, :cond_53

    .line 94
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXEmbed;

    if-eqz v0, :cond_53

    const-string v0, "1|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 95
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/NestedContainer;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object p2

    .line 96
    new-instance p3, Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 98
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v0, "searchBoxJavaBridge_"

    .line 102
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 103
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 104
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 107
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 108
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    check-cast p1, Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->access$000(Lcom/taobao/weex/ui/component/WXEmbed;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_56

    .line 111
    :cond_53
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;->onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V

    :goto_56
    return-void
.end method
