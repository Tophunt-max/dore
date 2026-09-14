###### Class com.taobao.weex.ui.component.WXComponent (com.taobao.weex.ui.component.WXComponent)
.class public abstract Lcom/taobao/weex/ui/component/WXComponent;
.super Lcom/taobao/weex/ui/component/basic/WXBasicComponent;
.source "WXComponent.java"

# interfaces
.implements Lcom/taobao/weex/common/IWXObject;
.implements Lcom/taobao/weex/IWXActivityStateListener;
.implements Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXComponent$RenderState;,
        Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;,
        Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;,
        Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;,
        Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<",
        "TT;>;",
        "Lcom/taobao/weex/common/IWXObject;",
        "Lcom/taobao/weex/IWXActivityStateListener;",
        "Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;"
    }
.end annotation


# static fields
.field public static final PROP_FIXED_SIZE:Ljava/lang/String; = "fixedSize"

.field public static final PROP_FS_MATCH_PARENT:Ljava/lang/String; = "m"

.field public static final PROP_FS_WRAP_CONTENT:Ljava/lang/String; = "w"

.field public static final ROOT:Ljava/lang/String; = "_root"

.field public static final STATE_ALL_FINISH:I = 0x2

.field public static final STATE_DOM_FINISH:I = 0x0

.field public static final STATE_UI_FINISH:I = 0x1

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_COMMON:I = 0x0

.field public static final TYPE_VIRTUAL:I = 0x1


# instance fields
.field private EMPTY_STATE_SET:[I

.field private ENABLED_STATE_SET:[I

.field private FOCUSED_ENABLED_STATE_SET:[I

.field private PRESSED_ANIM_DELAY:J

.field private PRESSED_ANIM_DURATION:J

.field private PRESSED_ENABLED_STATE_SET:[I

.field private animations:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

.field public interactionAbsoluteX:I

.field public interactionAbsoluteY:I

.field public isIgnoreInteraction:Z

.field private isLastLayoutDirectionRTL:Z

.field private isPreventGesture:Z

.field private isUsing:Z

.field private mAbsoluteX:I

.field private mAbsoluteY:I

.field private mAnimationHolder:Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;

.field private mAppendEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

.field private mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/ui/component/WXComponent<",
            "TT;>.OnClick",
            "ListenerImp;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mDeepInComponentTree:I

.field private mElevation:F

.field private mFixedProp:I

.field private mFocusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

.field private mGestureType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasAddFocusListener:Z

.field private mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

.field mHost:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mHostClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHover:Lio/dcloud/weex/ViewHover;

.field private mInstance:Lcom/taobao/weex/WXSDKInstance;

.field public mIsAddElementToTree:Z

.field private mIsDestroyed:Z

.field private mIsDisabled:Z

.field private mLastBoxShadowId:Ljava/lang/String;

.field private mLazy:Z

.field private mNeedLayoutOnAnimation:Z

.field private volatile mParent:Lcom/taobao/weex/ui/component/WXVContainer;

.field private mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

.field private mPreRealHeight:I

.field private mPreRealLeft:I

.field private mPreRealRight:I

.field private mPreRealTop:I

.field private mPreRealWidth:I

.field private mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

.field private mRippleBackground:Landroid/graphics/drawable/Drawable;

.field private mStickyOffset:I

.field public mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

.field private mTransition:Lcom/taobao/weex/dom/transition/WXTransition;

.field private mType:I

.field private mViewTreeKey:Ljava/lang/String;

.field private waste:Z


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 7

    .line 225
    invoke-direct {p0, p4}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;-><init>(Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;)V

    const/4 p4, 0x0

    .line 156
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    .line 163
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    .line 164
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteX:I

    .line 165
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->isLastLayoutDirectionRTL:Z

    .line 171
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 172
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 173
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 174
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    .line 175
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    .line 176
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    .line 179
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->isUsing:Z

    .line 185
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDestroyed:Z

    .line 186
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDisabled:Z

    .line 187
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    .line 188
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mNeedLayoutOnAnimation:Z

    .line 190
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mDeepInComponentTree:I

    .line 191
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    .line 193
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    .line 194
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHasAddFocusListener:Z

    .line 196
    new-instance v0, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    invoke-direct {v0}, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    .line 201
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    .line 202
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->isIgnoreInteraction:Z

    const-wide/16 v0, 0x64

    .line 936
    iput-wide v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DURATION:J

    .line 937
    iput-wide v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DELAY:J

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, p4

    .line 938
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->ENABLED_STATE_SET:[I

    new-array v0, p4, [I

    .line 939
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->EMPTY_STATE_SET:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 940
    fill-array-data v1, :array_88

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ENABLED_STATE_SET:[I

    new-array v0, v0, [I

    .line 941
    fill-array-data v0, :array_90

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->FOCUSED_ENABLED_STATE_SET:[I

    const/4 v0, 0x0

    .line 942
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    .line 2544
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    .line 2710
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture:Z

    .line 226
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 227
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    .line 228
    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 229
    iput p3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    if-eqz p1, :cond_76

    .line 232
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setViewPortWidth(F)V

    .line 234
    :cond_76
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onCreate()V

    .line 236
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 237
    invoke-interface {p1, p0}, Lcom/taobao/weex/ComponentObserver;->onCreate(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_86
    return-void

    nop

    :array_88
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_90
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-direct {p0, p1, p2, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/WXSDKInstance;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    return-object p0
.end method

.method private applyBorder(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 6

    .line 297
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object p1

    .line 298
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    .line 299
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 300
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    .line 301
    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    .line 303
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v3, :cond_21

    return-void

    :cond_21
    const-string v3, "borderLeftWidth"

    .line 307
    invoke-virtual {p0, v3, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    const-string v0, "borderTopWidth"

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    const-string v0, "borderRightWidth"

    .line 309
    invoke-virtual {p0, v0, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    const-string v0, "borderBottomWidth"

    .line 310
    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    return-void
.end method

.method private applyEvents()V
    .registers 5

    .line 332
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_32

    .line 334
    :cond_11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_2f

    .line 337
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v3

    if-lt v2, v3, :cond_23

    goto :goto_2f

    .line 340
    :cond_23
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXEvent;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 341
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 343
    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->setActiveTouchListener()V

    :cond_32
    :goto_32
    return-void
.end method

.method private createAnimationBean(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/ui/animation/WXAnimationBean;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/ui/animation/WXAnimationBean;"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_50

    :try_start_3
    const-string v0, "transform"

    .line 2522
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2523
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_50

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "transformOrigin"

    .line 2524
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 2525
    new-instance p2, Lcom/taobao/weex/ui/animation/WXAnimationBean;

    invoke-direct {p2}, Lcom/taobao/weex/ui/animation/WXAnimationBean;-><init>()V

    .line 2526
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v1

    float-to-int v4, v1

    .line 2527
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v1

    float-to-int v5, v1

    .line 2528
    new-instance v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    invoke-direct {v1}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;-><init>()V

    iput-object v1, p2, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    .line 2529
    iget-object v1, p2, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/WXSDKManager;->getInstanceViewPortWidth(Ljava/lang/String;)F

    move-result v6

    .line 2530
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    .line 2529
    invoke-virtual/range {v1 .. v7}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->init(Ljava/lang/String;Ljava/lang/String;IIFLcom/taobao/weex/WXSDKInstance;)V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_49} :catch_4a

    return-object p2

    :catch_4a
    move-exception p2

    const-string v0, ""

    .line 2534
    invoke-static {v0, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_50
    return-object p1
.end method

.method private final fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/EventResult;",
            ")V"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Landroidx/collection/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 590
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Landroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_23
    move-object v6, v0

    if-eqz p2, :cond_31

    .line 593
    invoke-static {p0}, Lcom/taobao/weex/ui/component/binding/Statements;->getComponentId(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string v1, "componentId"

    .line 595
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_31
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    :cond_3e
    return-void
.end method

.method private initOutlineProvider(F)V
    .registers 4

    .line 1876
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->useFeature()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/BaseFrameLayout;

    if-eqz v0, :cond_22

    .line 1877
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$7;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/WXComponent$7;-><init>(Lcom/taobao/weex/ui/component/WXComponent;F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1902
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_22
    return-void
.end method

.method private needGestureDetector(Ljava/lang/String;)Z
    .registers 8

    .line 1477
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_36

    .line 1478
    invoke-static {}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1e

    aget-object v5, v0, v4

    .line 1479
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    return v2

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1483
    :cond_1e
    invoke-static {}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v3, :cond_36

    aget-object v5, v0, v4

    .line 1484
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    return v2

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 1489
    :cond_36
    invoke-static {p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isStopPropagation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    return v2

    :cond_3d
    const-string v0, "view_hover_event"

    .line 1492
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    return v2

    .line 1495
    :cond_46
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture()Z

    move-result p1

    if-eqz p1, :cond_4d

    return v2

    :cond_4d
    return v1
.end method

.method private parseAnimation()V
    .registers 6

    .line 2503
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_5

    return-void

    .line 2506
    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2507
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2508
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->createAnimationBean(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/ui/animation/WXAnimationBean;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2510
    new-instance v2, Lcom/taobao/weex/ui/action/GraphicActionAnimation;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/taobao/weex/ui/animation/WXAnimationBean;)V

    .line 2511
    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->executeAction()V

    goto :goto_9

    .line 2515
    :cond_3e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method private prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;
    .registers 9

    const/4 v0, 0x0

    .line 1772
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    if-eqz v1, :cond_66

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 1773
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v1

    const-string v2, "backgroundColor"

    .line 1775
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    .line 1778
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2e

    return-object v0

    :cond_2d
    const/4 v2, 0x0

    :cond_2e
    const-string v4, "backgroundColor:active"

    .line 1784
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_37

    return-object v0

    .line 1788
    :cond_37
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v1

    .line 1789
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_66

    .line 1790
    new-instance v4, Landroid/content/res/ColorStateList;

    const/4 v5, 0x1

    new-array v6, v5, [[I

    new-array v7, v3, [I

    aput-object v7, v6, v3

    new-array v5, v5, [I

    aput v1, v5, v3

    invoke-direct {v4, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1793
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$6;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, p0, v4, v3, v0}, Lcom/taobao/weex/ui/component/WXComponent$6;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_60

    return-object v1

    :catchall_60
    move-exception v1

    const-string v2, "Exception on create ripple: "

    .line 1806
    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_66
    return-object v0
.end method

.method private recordInteraction(II)V
    .registers 8

    .line 1168
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 1171
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    .line 1172
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-nez v1, :cond_11

    .line 1173
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    .line 1174
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    goto :goto_39

    .line 1176
    :cond_11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getCSSLayoutTop()F

    move-result v1

    .line 1177
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getCSSLayoutLeft()F

    move-result v2

    .line 1178
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_26

    :cond_20
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget v3, v3, Lcom/taobao/weex/ui/component/WXVContainer;->interactionAbsoluteX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    :goto_26
    float-to-int v2, v2

    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    .line 1179
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_36

    :cond_30
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget v2, v2, Lcom/taobao/weex/ui/component/WXVContainer;->interactionAbsoluteY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    :goto_36
    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    .line 1182
    :goto_39
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/performance/WXInstanceApm;->instanceRect:Landroid/graphics/Rect;

    if-nez v1, :cond_54

    .line 1183
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/taobao/weex/performance/WXInstanceApm;->instanceRect:Landroid/graphics/Rect;

    .line 1185
    :cond_54
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/performance/WXInstanceApm;->instanceRect:Landroid/graphics/Rect;

    .line 1186
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWeexWidth()I

    move-result v2

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1187
    iget v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    iget v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    .line 1188
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_9a

    iget v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    add-int/2addr v2, p1

    iget v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    .line 1189
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_9a

    iget v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    iget v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    add-int/2addr v4, p2

    .line 1190
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_9a

    iget v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    add-int/2addr v2, p1

    iget p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    add-int/2addr p1, p2

    .line 1191
    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_9b

    :cond_9a
    const/4 v0, 0x1

    .line 1192
    :cond_9b
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    xor-int/lit8 p2, v0, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/taobao/weex/WXSDKInstance;->onChangeElement(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method private setActiveTouchListener()V
    .registers 4

    .line 2252
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getPesudoStyles()Ljava/util/Map;

    move-result-object v0

    const-string v1, ":active"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2254
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2255
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isConsumeTouch()Z

    move-result v1

    .line 2256
    new-instance v2, Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;-><init>(Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_24
    return-void
.end method

.method private setComponentLayoutParams(IIIIIILandroid/graphics/Point;)V
    .registers 19

    move-object v10, p0

    .line 1121
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_8d

    .line 1125
    :cond_13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 1128
    invoke-virtual {v2, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1129
    instance-of v0, v10, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v0, :cond_36

    move-object v0, v10

    check-cast v0, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1130
    invoke-interface {v0}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v0

    goto :goto_3a

    .line 1132
    :cond_36
    invoke-virtual {v2, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v0

    :goto_3a
    move-object v1, v0

    move-object v0, p0

    move-object/from16 v3, p7

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p5

    move v8, p4

    move/from16 v9, p6

    .line 1134
    invoke-direct/range {v0 .. v9}, Lcom/taobao/weex/ui/component/WXComponent;->setWidgetParams(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/flat/FlatGUIContext;Landroid/graphics/Point;IIIIII)V

    goto :goto_8d

    .line 1136
    :cond_4a
    iget-object v0, v10, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_8d

    .line 1138
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    .line 1139
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1140
    iget-object v1, v10, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p5

    move v6, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setFixedHostLayoutParams(Landroid/view/View;IIIIII)V

    goto :goto_74

    .line 1143
    :cond_66
    iget-object v1, v10, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p5

    move v6, p4

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 1145
    :goto_74
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->recordInteraction(II)V

    move v0, p1

    .line 1146
    iput v0, v10, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    move v0, p2

    .line 1147
    iput v0, v10, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    move v0, p3

    .line 1148
    iput v0, v10, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    move/from16 v0, p5

    .line 1149
    iput v0, v10, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    move v0, p4

    .line 1150
    iput v0, v10, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    .line 1151
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onFinishLayout()V

    .line 1153
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->updateBoxShadow()V

    :cond_8d
    :goto_8d
    return-void
.end method

.method private setFixedHostLayoutParams(Landroid/view/View;IIIIII)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIIII)V"
        }
    .end annotation

    .line 1253
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v6, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1255
    iput p2, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1256
    iput p3, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object v0, p0

    move-object v1, v6

    move v2, p4

    move v3, p6

    move v4, p5

    move v5, p7

    .line 1258
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/component/WXComponent;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 1260
    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1261
    iget-object p5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p5, p1}, Lcom/taobao/weex/WXSDKInstance;->moveFixedView(Landroid/view/View;)V

    .line 1263
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_76

    .line 1264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "WXComponent:setLayout :"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Weex_Fixed_Style"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WXComponent:setLayout Left:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXStyle;->getLeft()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXStyle;->getTop()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    return-void
.end method

.method private setFixedSize(Ljava/lang/String;)V
    .registers 3

    const-string v0, "m"

    .line 1438
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, -0x1

    .line 1439
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    goto :goto_17

    :cond_c
    const-string v0, "w"

    .line 1440
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    const/4 p1, -0x2

    .line 1441
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    .line 1446
    :goto_17
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz p1, :cond_2e

    .line 1447
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 1449
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1450
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1451
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2e
    return-void

    :cond_2f
    const/4 p1, 0x0

    .line 1443
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    return-void
.end method

.method private setWidgetParams(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/flat/FlatGUIContext;Landroid/graphics/Point;IIIIII)V
    .registers 24

    move-object v9, p0

    move-object v10, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 1197
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 1198
    iget-object v2, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v2, :cond_8b

    .line 1199
    iget-object v2, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    instance-of v2, v2, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v2, :cond_31

    iget-object v2, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1200
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-object v2, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1201
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v2

    if-nez v2, :cond_31

    .line 1202
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v2, v1}, Landroid/graphics/Point;->set(II)V

    move/from16 v12, p6

    move/from16 v13, p8

    goto :goto_38

    :cond_31
    move/from16 v12, p6

    move/from16 v13, p8

    .line 1205
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 1208
    :goto_38
    iget-object v1, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    instance-of v1, v1, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v1, :cond_61

    iget-object v1, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1209
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v1

    if-eqz v1, :cond_61

    iget-object v1, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1210
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v0

    if-nez v0, :cond_61

    .line 1211
    iget-object v0, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    check-cast v0, Lcom/taobao/weex/ui/flat/FlatComponent;

    invoke-interface {v0}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/flat/widget/Widget;->getLocInFlatContainer()Landroid/graphics/Point;

    move-result-object v0

    .line 1212
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Point;->offset(II)V

    .line 1214
    :cond_61
    iget-object v0, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget-object v2, v9, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object v1, p0

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 1215
    invoke-virtual/range {v0 .. v8}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1216
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_8f

    .line 1217
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1218
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1219
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1220
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1221
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1222
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v12, v3

    move v13, v5

    goto :goto_97

    :cond_8b
    move/from16 v12, p6

    move/from16 v13, p8

    :cond_8f
    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v4, p7

    move/from16 v0, p9

    :goto_97
    move-object/from16 p2, p1

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v12

    move/from16 p6, v4

    move/from16 p7, v13

    move/from16 p8, v0

    move-object/from16 p9, v11

    .line 1225
    invoke-interface/range {p2 .. p9}, Lcom/taobao/weex/ui/flat/widget/Widget;->setLayout(IIIIIILandroid/graphics/Point;)V

    .line 1227
    instance-of v3, v10, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    if-eqz v3, :cond_d1

    move-object v3, v10

    check-cast v3, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d1

    .line 1229
    invoke-virtual {v3}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->getView()Landroid/view/View;

    move-result-object v3

    iget v5, v11, Landroid/graphics/Point;->x:I

    iget v6, v11, Landroid/graphics/Point;->y:I

    move-object p1, p0

    move-object/from16 p2, v3

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v5

    move/from16 p6, v4

    move/from16 p7, v6

    move/from16 p8, v0

    invoke-virtual/range {p1 .. p8}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    :cond_d1
    return-void
.end method

.method private shouldCancelHardwareAccelerate()Z
    .registers 6

    .line 1820
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    :try_start_b
    const-string v2, "android_weex_test_gpu"

    const-string v3, "cancel_hardware_accelerate"

    const-string v4, "true"

    .line 1825
    invoke-interface {v0, v2, v3, v4}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1824
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_1b

    move v1, v0

    goto :goto_23

    :catch_1b
    move-exception v0

    .line 1829
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1831
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel_hardware_accelerate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    :cond_37
    return v1
.end method

.method private updateElevation()V
    .registers 3

    .line 2006
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->getElevation(F)F

    move-result v0

    .line 2007
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2008
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_1d
    return-void
.end method

.method private updateStyleByPesudo(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2309
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2312
    :cond_7
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;Z)V

    .line 2313
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->executeActionOnRender()V

    .line 2314
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_38

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_38

    goto :goto_5e

    .line 2316
    :cond_38
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 2317
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    :goto_5e
    return-void
.end method


# virtual methods
.method public addAnimationForElement(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 2494
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 2495
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_13

    .line 2496
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2498
    :cond_13
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_21
    return-void
.end method

.method protected final addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V
    .registers 4

    if-eqz p1, :cond_2a

    .line 657
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 658
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-nez v1, :cond_13

    .line 659
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    .line 661
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x1

    .line 663
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 664
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$4;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXComponent$4;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    :cond_25
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 353
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    .line 355
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_104

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_104

    .line 358
    :cond_1b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    const-string v1, "layeroverflow"

    .line 360
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 361
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->addLayerOverFlowListener(Ljava/lang/String;)V

    :cond_2e
    const-string v1, "click"

    .line 363
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    if-nez v0, :cond_39

    return-void

    .line 368
    :cond_39
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    if-nez v0, :cond_45

    .line 369
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent$1;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    .line 371
    :cond_45
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V

    goto/16 :goto_ff

    :cond_4c
    const-string v1, "focus"

    .line 372
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f0

    const-string v1, "blur"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    goto/16 :goto_f0

    .line 384
    :cond_5e
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->needGestureDetector(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    if-nez v0, :cond_67

    return-void

    .line 389
    :cond_67
    instance-of v1, v0, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    if-eqz v1, :cond_b4

    .line 390
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-nez v1, :cond_94

    .line 391
    new-instance v1, Lcom/taobao/weex/ui/view/gesture/WXGesture;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 392
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "preventMoveEvent"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 393
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->setPreventMoveEvent(Z)V

    .line 395
    :cond_94
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-nez v1, :cond_9f

    .line 396
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    :cond_9f
    const-string v1, "view_hover_event"

    .line 398
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 399
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_ac
    check-cast v0, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;->registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V

    goto :goto_ff

    .line 402
    :cond_b4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " don\'t implement WXGestureObservable, so no gesture is supported."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_ff

    .line 406
    :cond_d1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    if-nez v0, :cond_d8

    return-void

    :cond_d8
    const-string v1, "appear"

    .line 411
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 412
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_ff

    :cond_e4
    const-string v1, "disappear"

    .line 413
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 414
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_ff

    .line 373
    :cond_f0
    :goto_f0
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHasAddFocusListener:Z

    if-nez v0, :cond_ff

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHasAddFocusListener:Z

    .line 375
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXComponent$1;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 418
    :cond_ff
    :goto_ff
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_104
    :goto_104
    return-void
.end method

.method protected final addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V
    .registers 4

    if-eqz p1, :cond_24

    .line 629
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 630
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    if-nez v1, :cond_1f

    .line 631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    const/4 v1, 0x1

    .line 632
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 633
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXComponent$3;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 644
    :cond_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method

.method public addLayerOverFlowListener(Ljava/lang/String;)V
    .registers 3

    .line 2613
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2614
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->addLayerOverFlowListener(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method protected appendEventToDOM(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public applyComponentEvents()V
    .registers 1

    .line 328
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyEvents()V

    return-void
.end method

.method public applyLayoutAndEvent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 3

    .line 706
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_20

    if-nez p1, :cond_9

    move-object p1, p0

    .line 710
    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 711
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 712
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 713
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getPadding()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setPadding(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;)V

    .line 714
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyEvents()V

    :cond_20
    return-void
.end method

.method public applyLayoutOnly()V
    .registers 3

    .line 730
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_14

    .line 731
    invoke-virtual {p0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->setSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 732
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setPadding(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;)V

    :cond_14
    return-void
.end method

.method protected final bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 3

    .line 245
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 246
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 247
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setViewPortWidth(F)V

    .line 250
    :cond_14
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 251
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 252
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getType()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    return-void
.end method

.method protected bindComponentData(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 3

    .line 693
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_1c

    if-nez p1, :cond_9

    move-object p1, p0

    .line 697
    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 698
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 699
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyles(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 700
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateAttrs(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 701
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getExtra()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateExtra(Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 689
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindComponentData(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    return-void
.end method

.method public bindHolder(Lcom/taobao/weex/ui/IFComponentHolder;)V
    .registers 2

    .line 433
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    return-void
.end method

.method public canRecycled()Z
    .registers 2

    .line 2327
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isSticky()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->canRecycled()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method protected clearBoxShadow()V
    .registers 4

    .line 1339
    invoke-static {}, Lcom/taobao/weex/utils/BoxShadowUtil;->isBoxShadowEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1344
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1345
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "boxShadow"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    return-void

    .line 1351
    :cond_1a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    .line 1352
    instance-of v1, p0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v1, :cond_2c

    .line 1353
    move-object v0, p0

    check-cast v0, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getBoxShadowHost(Z)Landroid/view/View;

    move-result-object v1

    .line 1354
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->removeBoxShadowHost()V

    move-object v0, v1

    :cond_2c
    if-eqz v0, :cond_3d

    .line 1357
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3d

    .line 1358
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 1360
    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    :cond_3d
    const/4 v0, 0x0

    .line 1363
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLastBoxShadowId:Ljava/lang/String;

    return-void
.end method

.method public clearPreLayout()V
    .registers 2

    const/4 v0, 0x0

    .line 2137
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 2138
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    .line 2139
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 2140
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 2141
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    return-void
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .registers 4

    .line 2154
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    .line 2155
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public containsEvent(Ljava/lang/String;)Z
    .registers 3

    .line 2163
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-eqz v0, :cond_15

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method public containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z
    .registers 3

    .line 2159
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 2226
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 2234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_e2

    :goto_10
    const/4 v1, -0x1

    goto/16 :goto_d6

    :sswitch_13
    const-string v0, "borderRadius"

    .line 2226
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_10

    :cond_1c
    const/16 v1, 0xf

    goto/16 :goto_d6

    :sswitch_20
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_10

    :cond_29
    const/16 v1, 0xe

    goto/16 :goto_d6

    :sswitch_2d
    const-string v0, "borderWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_10

    :cond_36
    const/16 v1, 0xd

    goto/16 :goto_d6

    :sswitch_3a
    const-string v0, "borderColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto :goto_10

    :cond_43
    const/16 v1, 0xc

    goto/16 :goto_d6

    :sswitch_47
    const-string v0, "borderBottomRightRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto :goto_10

    :cond_50
    const/16 v1, 0xb

    goto/16 :goto_d6

    :sswitch_54
    const-string v0, "borderBottomLeftRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto :goto_10

    :cond_5d
    const/16 v1, 0xa

    goto/16 :goto_d6

    :sswitch_61
    const-string v0, "borderTopRightRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto :goto_10

    :cond_6a
    const/16 v1, 0x9

    goto/16 :goto_d6

    :sswitch_6e
    const-string v0, "borderLeftWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    goto :goto_10

    :cond_77
    const/16 v1, 0x8

    goto :goto_d6

    :sswitch_7a
    const-string v0, "borderLeftColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_83

    goto :goto_10

    :cond_83
    const/4 v1, 0x7

    goto :goto_d6

    :sswitch_85
    const-string v0, "borderTopLeftRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    goto :goto_10

    :cond_8e
    const/4 v1, 0x6

    goto :goto_d6

    :sswitch_90
    const-string v0, "borderBottomWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9a

    goto/16 :goto_10

    :cond_9a
    const/4 v1, 0x5

    goto :goto_d6

    :sswitch_9c
    const-string v0, "borderBottomColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a6

    goto/16 :goto_10

    :cond_a6
    const/4 v1, 0x4

    goto :goto_d6

    :sswitch_a8
    const-string v0, "borderTopWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b2

    goto/16 :goto_10

    :cond_b2
    const/4 v1, 0x3

    goto :goto_d6

    :sswitch_b4
    const-string v0, "borderTopColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_be

    goto/16 :goto_10

    :cond_be
    const/4 v1, 0x2

    goto :goto_d6

    :sswitch_c0
    const-string v0, "borderRightWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ca

    goto/16 :goto_10

    :cond_ca
    const/4 v1, 0x1

    goto :goto_d6

    :sswitch_cc
    const-string v0, "borderRightColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d6

    goto/16 :goto_10

    :cond_d6
    :goto_d6
    packed-switch v1, :pswitch_data_124

    return-object p2

    :pswitch_da
    const-string p1, "transparent"

    return-object p1

    :pswitch_dd
    return-object v2

    :pswitch_de
    const-string p1, "black"

    return-object p1

    nop

    :sswitch_data_e2
    .sparse-switch
        -0x7696880d -> :sswitch_cc
        -0x757f89aa -> :sswitch_c0
        -0x57ab08a6 -> :sswitch_b4
        -0x56940a43 -> :sswitch_a8
        -0x4e0397d4 -> :sswitch_9c
        -0x4cec9971 -> :sswitch_90
        -0x4932ce1e -> :sswitch_85
        -0xe70d730 -> :sswitch_7a
        -0xd59d8cd -> :sswitch_6e
        0x13dfc885 -> :sswitch_61
        0x22a57450 -> :sswitch_54
        0x230fd3d7 -> :sswitch_47
        0x2b158697 -> :sswitch_3a
        0x2c2c84fa -> :sswitch_2d
        0x4cb7f6d5 -> :sswitch_20
        0x506afbde -> :sswitch_13
    .end sparse-switch

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_de
        :pswitch_dd
        :pswitch_de
        :pswitch_dd
        :pswitch_de
        :pswitch_dd
        :pswitch_dd
        :pswitch_de
        :pswitch_dd
        :pswitch_dd
        :pswitch_dd
        :pswitch_dd
        :pswitch_de
        :pswitch_dd
        :pswitch_da
        :pswitch_dd
    .end packed-switch
.end method

.method public final createView()V
    .registers 2

    .line 1542
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1543
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    :cond_9
    return-void
.end method

.method protected createViewImpl()V
    .registers 3

    .line 1548
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3e

    .line 1549
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_15

    .line 1550
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1552
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->initView()V

    .line 1554
    :cond_15
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_38

    .line 1555
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    .line 1556
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1562
    :cond_29
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1563
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Lcom/taobao/weex/ComponentObserver;->onViewCreated(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;)V

    .line 1566
    :cond_38
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    goto :goto_45

    :cond_3e
    const-string v0, "createViewImpl"

    const-string v1, "Context is null"

    .line 1568
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 2071
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2075
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2076
    invoke-interface {v0, p0}, Lcom/taobao/weex/ComponentObserver;->onPreDestory(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 2079
    :cond_14
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_29

    .line 2080
    :cond_21
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v1, "[WXComponent] destroy can only be called in main thread"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2082
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_41

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2083
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2085
    :cond_41
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->removeAllEvent()V

    .line 2086
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->removeStickyStyle()V

    .line 2089
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 2090
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/weex/WXSDKInstance;->removeFixedView(Landroid/view/View;)V

    .line 2093
    :cond_5a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    if-eqz v0, :cond_63

    .line 2094
    invoke-virtual {v0}, Lcom/taobao/weex/layout/ContentBoxMeasurement;->destroy()V

    .line 2095
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    :cond_63
    const/4 v0, 0x1

    .line 2097
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDestroyed:Z

    .line 2098
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_6d

    .line 2099
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2101
    :cond_6d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-eqz v0, :cond_76

    .line 2102
    invoke-virtual {v0}, Lio/dcloud/weex/ViewHover;->destroy()V

    .line 2103
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    .line 2105
    :cond_76
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 2106
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_7f

    .line 2107
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2109
    :cond_7f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v0, :cond_86

    .line 2110
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_86
    return-void
.end method

.method public detachViewAndClearPreInfo()Landroid/view/View;
    .registers 3

    .line 2126
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    .line 2127
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 2128
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    .line 2129
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 2130
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 2131
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    return-object v0
.end method

.method protected final findComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 4

    .line 452
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 453
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 455
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public findTypeParent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 606
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_7

    return-object p1

    .line 609
    :cond_7
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 610
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 611
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->findTypeParent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public final fireEvent(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 549
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
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

    .line 553
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "fireEventSyn"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 554
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;

    goto :goto_21

    :cond_1d
    const/4 v0, 0x0

    .line 556
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V

    :goto_21
    return-void
.end method

.method protected final fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v0, 0x0

    .line 582
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public final fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/bridge/EventResult;"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 562
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$2;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/WXComponent$2;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v2, 0x0

    .line 570
    :try_start_c
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V

    const-wide/16 p1, 0x32

    .line 571
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    move-exception p1

    .line 574
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_23

    const-string p2, "fireEventWait"

    .line 575
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    return-object v1
.end method

.method public getAbsoluteX()I
    .registers 2

    .line 1630
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteX:I

    return v0
.end method

.method public getAbsoluteY()I
    .registers 2

    .line 1626
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    return v0
.end method

.method public getAttrByKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p1, "default"

    return-object p1
.end method

.method public getComponentSize()Landroid/graphics/Rect;
    .registers 7

    .line 497
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 498
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v1, :cond_38

    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v2, v2, [I

    .line 501
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 502
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 504
    aget v4, v3, v1

    aget v1, v2, v1

    sub-int/2addr v4, v1

    const/4 v1, 0x1

    .line 505
    aget v3, v3, v1

    iget v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    sub-int/2addr v3, v5

    aget v1, v2, v1

    sub-int/2addr v3, v1

    .line 506
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v1

    float-to-int v1, v1

    .line 507
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v4

    add-int/2addr v2, v3

    .line 508
    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_38
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 442
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFirstScroller()Lcom/taobao/weex/ui/component/Scrollable;
    .registers 2

    .line 1528
    instance-of v0, p0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v0, :cond_8

    .line 1529
    move-object v0, p0

    check-cast v0, Lcom/taobao/weex/ui/component/Scrollable;

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostView()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1612
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getHover()Lio/dcloud/weex/ViewHover;
    .registers 2

    .line 2703
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    return-object v0
.end method

.method public getInstance()Lcom/taobao/weex/WXSDKInstance;
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutTopOffsetForSibling()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .registers 6

    .line 999
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-nez v0, :cond_36

    .line 1000
    new-instance v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-direct {v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 1001
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_36

    const/4 v1, 0x0

    .line 1002
    invoke-static {v0, v1, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1003
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1f

    .line 1004
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-static {v0, v1, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_36

    .line 1007
    :cond_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v1, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1012
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    return-object v0
.end method

.method public getParent()Lcom/taobao/weex/ui/component/WXVContainer;
    .registers 2

    .line 1535
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    return-object v0
.end method

.method public getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;
    .registers 5

    move-object v0, p0

    .line 1508
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return-object v1

    .line 1512
    :cond_9
    instance-of v2, v0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v2, :cond_10

    .line 1513
    check-cast v0, Lcom/taobao/weex/ui/component/Scrollable;

    return-object v0

    .line 1516
    :cond_10
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1
.end method

.method public getRealView()Landroid/view/View;
    .registers 2

    .line 1466
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getRenderObjectPtr()J
    .registers 4

    .line 2552
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->isRenderPtrEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2553
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeGetRenderObject(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->setRenderObjectPr(J)V

    .line 2555
    :cond_1d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getRenderObjectPr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStickyOffset()I
    .registers 2

    .line 2323
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    return v0
.end method

.method public getTransition()Lcom/taobao/weex/dom/transition/WXTransition;
    .registers 2

    .line 2486
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTransition:Lcom/taobao/weex/dom/transition/WXTransition;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 2206
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1622
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getViewPortWidthForFloat()F
    .registers 2

    .line 2718
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2719
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    return v0

    :cond_f
    const/high16 v0, 0x44340000    # 720.0f

    return v0
.end method

.method public getViewTreeKey()Ljava/lang/String;
    .registers 4

    .line 2473
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    if-nez v0, :cond_53

    .line 2474
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    const-string v1, "_"

    if-nez v0, :cond_29

    .line 2475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    goto :goto_53

    .line 2477
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/component/WXVContainer;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    .line 2480
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/String;
    .registers 3

    .line 1985
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "visibility"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    const-string v0, "visible"

    return-object v0
.end method

.method public hasScrollParent(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .registers 3

    .line 2210
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x1

    return p1

    .line 2212
    :cond_8
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/component/WXBaseScroller;

    if-eqz v0, :cond_12

    const/4 p1, 0x0

    return p1

    .line 2215
    :cond_12
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->hasScrollParent(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result p1

    return p1
.end method

.method public hoverClass(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hoverClass"
    .end annotation

    .line 2626
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 2628
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-nez v0, :cond_12

    .line 2629
    new-instance v0, Lio/dcloud/weex/ViewHover;

    invoke-direct {v0, p0, p1}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/alibaba/fastjson/JSONObject;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    goto :goto_15

    .line 2631
    :cond_12
    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->update(Lcom/alibaba/fastjson/JSONObject;)V

    .line 2633
    :goto_15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    const-string v0, "view_hover_event"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 2634
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public hoverStartTime(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hoverStartTime"
    .end annotation

    .line 2655
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-nez v0, :cond_b

    .line 2656
    new-instance v0, Lio/dcloud/weex/ViewHover;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    .line 2658
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->setHoverStartTime(I)V

    return-void
.end method

.method public hoverStayTime(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hoverStayTime"
    .end annotation

    .line 2663
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-nez v0, :cond_b

    .line 2664
    new-instance v0, Lio/dcloud/weex/ViewHover;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    .line 2666
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->setHoverStayTime(I)V

    return-void
.end method

.method public hoverStopPropagation(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hoverStopPropagation"
    .end annotation

    .line 2641
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-nez v0, :cond_b

    .line 2642
    new-instance v0, Lio/dcloud/weex/ViewHover;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    .line 2644
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->setHoverStopPropagation(Z)V

    .line 2645
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "view_hover_event"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2646
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    .line 2648
    :cond_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    .line 2649
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->setHoverReceiveTouch(Z)V

    :cond_2b
    return-void
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected initElevation(Ljava/lang/String;)V
    .registers 14

    .line 944
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_17d

    const/4 v0, 0x0

    .line 945
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 946
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    .line 947
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    .line 948
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne p1, v1, :cond_39

    .line 949
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    goto/16 :goto_17d

    .line 951
    :cond_39
    new-instance p1, Landroid/animation/StateListAnimator;

    invoke-direct {p1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 953
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 954
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [F

    iget v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    const/4 v6, 0x0

    aput v5, v4, v6

    const-string v5, "elevation"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 955
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v10, v3, [F

    aput v0, v10, v6

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-wide v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DURATION:J

    .line 956
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 955
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 957
    new-instance v2, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 958
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 961
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 962
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    new-array v4, v3, [F

    iget v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    aput v9, v4, v6

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 963
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v10, v3, [F

    aput v0, v10, v6

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-wide v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DURATION:J

    .line 964
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 963
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 965
    new-instance v2, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 966
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->FOCUSED_ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 969
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 970
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 971
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    new-array v9, v3, [F

    iget v10, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    aput v10, v9, v6

    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x16

    if-lt v4, v9, :cond_10c

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-gt v4, v9, :cond_10c

    .line 977
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v10, v3, [F

    .line 978
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTranslationZ()F

    move-result v11

    aput v11, v10, v6

    .line 977
    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-wide v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DELAY:J

    .line 978
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 977
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_10c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v10, v3, [F

    aput v0, v10, v6

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-wide v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DURATION:J

    .line 981
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 980
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v4, v6, [Landroid/animation/ObjectAnimator;

    .line 982
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/animation/Animator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 983
    new-instance v2, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 984
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 987
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 988
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    new-array v4, v3, [F

    aput v0, v4, v6

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 989
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v3, v3, [F

    aput v0, v3, v6

    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 990
    new-instance v0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 991
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->EMPTY_STATE_SET:[I

    invoke-virtual {p1, v0, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 993
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_17d
    :goto_17d
    return-void
.end method

.method protected initView()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1577
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    .line 1578
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    :cond_a
    return-void
.end method

.method public interceptFocusAndBlurEvent()V
    .registers 2

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHasAddFocusListener:Z

    return-void
.end method

.method public final invoke(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .registers 5

    .line 514
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/IFComponentHolder;->getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 517
    :try_start_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    .line 518
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;

    move-result-object p1

    .line 519
    invoke-virtual {p1, p0, v0, p2}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_49

    :catch_14
    move-exception p1

    .line 522
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WXComponent] updateProperties :class:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "method:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " function "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_49

    .line 525
    :cond_46
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->onInvokeUnknownMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    :goto_49
    return-void
.end method

.method protected isConsumeTouch()Z
    .registers 2

    .line 2261
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_e

    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isDestoryed()Z
    .registers 2

    .line 2115
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDestroyed:Z

    return v0
.end method

.method public isDisabled()Z
    .registers 2

    .line 1737
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDisabled:Z

    return v0
.end method

.method public isFixed()Z
    .registers 2

    .line 1725
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->isFixed()Z

    move-result v0

    return v0
.end method

.method public isFlatUIEnabled()Z
    .registers 2

    .line 472
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->isFlatUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isLayerTypeEnabled()Z
    .registers 2

    .line 2345
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isLayerTypeEnabled()Z

    move-result v0

    return v0
.end method

.method public isLazy()Z
    .registers 3

    .line 621
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 624
    :cond_6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public isPreventGesture()Z
    .registers 2

    .line 2708
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture:Z

    return v0
.end method

.method protected isRippleEnabled()Z
    .registers 4

    const/4 v0, 0x0

    .line 2417
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "rippleEnabled"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2418
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_17

    :catchall_17
    return v0
.end method

.method public isSticky()Z
    .registers 2

    .line 1721
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->isSticky()Z

    move-result v0

    return v0
.end method

.method public isUsing()Z
    .registers 2

    .line 2175
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->isUsing:Z

    return v0
.end method

.method public isVirtualComponent()Z
    .registers 3

    .line 2199
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isWaste()Z
    .registers 2

    .line 2426
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    return v0
.end method

.method protected ismHasFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)Z
    .registers 3

    .line 649
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 650
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method protected layoutDirectionDidChanged(Z)V
    .registers 2

    return-void
.end method

.method public lazy(Z)V
    .registers 2

    .line 2548
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    return-void
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .registers 5

    .line 1381
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;-><init>()V

    .line 1383
    iget v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    if-eqz v1, :cond_10

    .line 1384
    iput v1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 1385
    iget p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    goto :goto_14

    .line 1387
    :cond_10
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 1388
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    :goto_14
    return-object v0
.end method

.method public nativeUpdateAttrs(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2571
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 2575
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2576
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2577
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2578
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_8

    .line 2581
    :cond_1b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateNativeAttr(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_29
    return-void
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "appear"

    .line 2167
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "disappear"

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2168
    :cond_10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "direction"

    .line 2169
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2170
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1d
    return-void
.end method

.method public notifyNativeSizeChanged(II)V
    .registers 6

    .line 2359
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mNeedLayoutOnAnimation:Z

    if-nez v0, :cond_5

    return-void

    .line 2363
    :cond_5
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    .line 2364
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 2365
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    int-to-float p2, p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public onActivityBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreate()V
    .registers 1

    return-void
.end method

.method public onActivityDestroy()V
    .registers 1

    return-void
.end method

.method public onActivityPause()V
    .registers 1

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onActivityResume()V
    .registers 1

    return-void
.end method

.method public onActivityStart()V
    .registers 1

    return-void
.end method

.method public onActivityStop()V
    .registers 1

    return-void
.end method

.method protected onCreate()V
    .registers 1

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishLayout()V
    .registers 3

    .line 1371
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "backgroundImage"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1b

    .line 1373
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setBackgroundImage(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method protected onHostViewInitialized(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1604
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAnimationHolder:Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;

    if-eqz p1, :cond_9

    .line 1606
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-interface {p1, v0, p0}, Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;->execute(Lio/dcloud/feature/uniapp/AbsSDKInstance;Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 1608
    :cond_9
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->setActiveTouchListener()V

    return-void
.end method

.method protected onInvokeUnknownMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .registers 3

    return-void
.end method

.method public onRenderFinish(I)V
    .registers 9

    .line 2379
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 2380
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadNanos:J

    invoke-static {v0, v1}, Lcom/taobao/weex/tracing/Stopwatch;->nanosToMillis(J)D

    move-result-wide v0

    const-string v2, "X"

    const/4 v3, 0x2

    if-eq p1, v3, :cond_15

    if-nez p1, :cond_52

    .line 2382
    :cond_15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget v5, v5, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->rootEventId:I

    const-string v6, "DomExecute"

    invoke-static {v6, v4, v5}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v4

    .line 2383
    iput-object v2, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 2384
    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v5, v5, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->domThreadStart:J

    iput-wide v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    const-string v5, "DOMThread"

    .line 2385
    iput-object v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    .line 2386
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->name:Ljava/lang/String;

    .line 2387
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->classname:Ljava/lang/String;

    .line 2388
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v5

    if-eqz v5, :cond_4f

    .line 2389
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXVContainer;->getRef()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentRef:Ljava/lang/String;

    .line 2391
    :cond_4f
    invoke-virtual {v4}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    :cond_52
    if-eq p1, v3, :cond_57

    const/4 v3, 0x1

    if-ne p1, v3, :cond_a6

    .line 2395
    :cond_57
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadStart:J

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_9d

    .line 2396
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget v3, v3, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->rootEventId:I

    const-string v4, "UIExecute"

    invoke-static {v4, p1, v3}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object p1

    .line 2397
    iput-object v2, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 2398
    iput-wide v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    .line 2399
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadStart:J

    iput-wide v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    .line 2400
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->name:Ljava/lang/String;

    .line 2401
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->classname:Ljava/lang/String;

    .line 2402
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 2403
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getRef()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentRef:Ljava/lang/String;

    .line 2405
    :cond_99
    invoke-virtual {p1}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    goto :goto_a6

    .line 2407
    :cond_9d
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_a6

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    :cond_a6
    :goto_a6
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    return-void
.end method

.method public postAnimation(Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;)V
    .registers 2

    .line 466
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAnimationHolder:Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;

    return-void
.end method

.method public readyToRender()V
    .registers 2

    .line 2183
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isTrackComponent()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2184
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->readyToRender()V

    :cond_19
    return-void
.end method

.method public recycled()V
    .registers 2

    .line 2065
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2067
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    return-void
.end method

.method public refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    return-void
.end method

.method public registerActivityStateListener()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public removeAllEvent()V
    .registers 5

    .line 1676
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_c

    return-void

    .line 1679
    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    .line 1680
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_2d

    .line 1682
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v3

    if-lt v2, v3, :cond_1e

    goto :goto_2d

    .line 1685
    :cond_1e
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXEvent;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_27

    goto :goto_2a

    .line 1689
    :cond_27
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->removeEventFromView(Ljava/lang/String;)V

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1691
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-eqz v0, :cond_34

    .line 1692
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1694
    :cond_34
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-eqz v0, :cond_3b

    .line 1695
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_3b
    const/4 v0, 0x0

    .line 1697
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 1698
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 1699
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    if-eqz v1, :cond_55

    .line 1700
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    invoke-interface {v1, v0}, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;->registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V

    .line 1702
    :cond_55
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v1, :cond_70

    .line 1703
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1704
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v1, :cond_70

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_70

    .line 1705
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1706
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_70
    return-void
.end method

.method protected final removeClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V
    .registers 3

    .line 685
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeEvent(Ljava/lang/String;)V
    .registers 3

    .line 1634
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "layeroverflow"

    .line 1638
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1639
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->removeLayerOverFlowListener(Ljava/lang/String;)V

    .line 1641
    :cond_16
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1642
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXEvent;->remove(Ljava/lang/String;)Z

    .line 1644
    :cond_23
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-eqz v0, :cond_2a

    .line 1645
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1647
    :cond_2a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-eqz v0, :cond_31

    .line 1648
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1650
    :cond_31
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->removeEventFromView(Ljava/lang/String;)V

    return-void
.end method

.method protected removeEventFromView(Ljava/lang/String;)V
    .registers 5

    const-string v0, "click"

    .line 1654
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 1655
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 1656
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent$1;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    .line 1658
    :cond_1e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1660
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3d

    .line 1661
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1662
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1666
    :cond_3d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    const-string v1, "appear"

    .line 1667
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    if-eqz v0, :cond_4e

    .line 1668
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_4e
    const-string v1, "disappear"

    .line 1670
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    if-eqz v0, :cond_5b

    .line 1671
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_5b
    return-void
.end method

.method public removeLayerOverFlowListener(Ljava/lang/String;)V
    .registers 3

    .line 2618
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2619
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->removeLayerOverFlowListener(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final removeStickyStyle()V
    .registers 2

    .line 1712
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1713
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1715
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_f
    return-void
.end method

.method public removeVirtualComponent()V
    .registers 1

    return-void
.end method

.method protected setAriaHidden(Z)V
    .registers 5

    .line 1395
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1396
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_14

    if-eqz p1, :cond_10

    const/4 p1, 0x2

    goto :goto_11

    :cond_10
    const/4 p1, 0x1

    .line 1397
    :goto_11
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_14
    return-void
.end method

.method protected setAriaLabel(Ljava/lang/String;)V
    .registers 3

    .line 1402
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1404
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .registers 5

    .line 1750
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1751
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    .line 1752
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isRippleEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_40

    .line 1753
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_40

    .line 1755
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-nez p1, :cond_28

    .line 1756
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-static {p1, v0, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_3f

    .line 1758
    :cond_28
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1759
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-static {v0, p1, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    :goto_3f
    return-void

    :cond_40
    if-nez p1, :cond_46

    .line 1764
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v0, :cond_4d

    .line 1765
    :cond_46
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setColor(I)V

    :cond_4d
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .registers 4

    .line 1812
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1813
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setImage(Landroid/graphics/Shader;)V

    goto :goto_30

    .line 1815
    :cond_15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/utils/WXResourceUtils;->getShader(Ljava/lang/String;FF)Landroid/graphics/Shader;

    move-result-object p1

    .line 1816
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setImage(Landroid/graphics/Shader;)V

    :goto_30
    return-void
.end method

.method public setBorderColor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1957
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 1958
    invoke-static {p2}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p2

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_85

    .line 1960
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_86

    goto :goto_50

    :sswitch_1a
    const-string v1, "borderColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_50

    :cond_23
    const/4 v0, 0x4

    goto :goto_50

    :sswitch_25
    const-string v1, "borderLeftColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_50

    :cond_2e
    const/4 v0, 0x3

    goto :goto_50

    :sswitch_30
    const-string v1, "borderBottomColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_50

    :cond_39
    const/4 v0, 0x2

    goto :goto_50

    :sswitch_3b
    const-string v1, "borderTopColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_50

    :cond_44
    const/4 v0, 0x1

    goto :goto_50

    :sswitch_46
    const-string v1, "borderRightColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    packed-switch v0, :pswitch_data_9c

    goto :goto_85

    .line 1962
    :pswitch_54
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_85

    .line 1974
    :pswitch_5e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_85

    .line 1971
    :pswitch_68
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_85

    .line 1965
    :pswitch_72
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_85

    .line 1968
    :pswitch_7c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    :cond_85
    :goto_85
    return-void

    :sswitch_data_86
    .sparse-switch
        -0x7696880d -> :sswitch_46
        -0x57ab08a6 -> :sswitch_3b
        -0x4e0397d4 -> :sswitch_30
        -0xe70d730 -> :sswitch_25
        0x2b158697 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_72
        :pswitch_68
        :pswitch_5e
        :pswitch_54
    .end packed-switch
.end method

.method public setBorderRadius(Ljava/lang/String;F)V
    .registers 5

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_ae

    .line 1852
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_b0

    goto :goto_47

    :sswitch_11
    const-string v1, "borderRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_47

    :cond_1a
    const/4 v0, 0x4

    goto :goto_47

    :sswitch_1c
    const-string v1, "borderBottomRightRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_47

    :cond_25
    const/4 v0, 0x3

    goto :goto_47

    :sswitch_27
    const-string v1, "borderBottomLeftRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_47

    :cond_30
    const/4 v0, 0x2

    goto :goto_47

    :sswitch_32
    const-string v1, "borderTopRightRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_47

    :cond_3b
    const/4 v0, 0x1

    goto :goto_47

    :sswitch_3d
    const-string v1, "borderTopLeftRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    packed-switch v0, :pswitch_data_c6

    goto :goto_ae

    .line 1854
    :pswitch_4b
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    .line 1855
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p2

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->ALL:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {p2, v0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto :goto_ae

    .line 1866
    :pswitch_5f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto :goto_ae

    .line 1869
    :pswitch_73
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto :goto_ae

    .line 1863
    :pswitch_87
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto :goto_ae

    .line 1860
    :pswitch_9b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    :cond_ae
    :goto_ae
    return-void

    nop

    :sswitch_data_b0
    .sparse-switch
        -0x4932ce1e -> :sswitch_3d
        0x13dfc885 -> :sswitch_32
        0x22a57450 -> :sswitch_27
        0x230fd3d7 -> :sswitch_1c
        0x506afbde -> :sswitch_11
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_87
        :pswitch_73
        :pswitch_5f
        :pswitch_4b
    .end packed-switch
.end method

.method public setBorderStyle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1935
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 1936
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_7e

    goto :goto_48

    :sswitch_12
    const-string v1, "borderStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_48

    :cond_1b
    const/4 v0, 0x4

    goto :goto_48

    :sswitch_1d
    const-string v1, "borderLeftStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_48

    :cond_26
    const/4 v0, 0x3

    goto :goto_48

    :sswitch_28
    const-string v1, "borderBottomStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_48

    :cond_31
    const/4 v0, 0x2

    goto :goto_48

    :sswitch_33
    const-string v1, "borderTopStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_48

    :cond_3c
    const/4 v0, 0x1

    goto :goto_48

    :sswitch_3e
    const-string v1, "borderRightStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    packed-switch v0, :pswitch_data_94

    goto :goto_7d

    .line 1938
    :pswitch_4c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_7d

    .line 1947
    :pswitch_56
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_7d

    .line 1944
    :pswitch_60
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_7d

    .line 1950
    :pswitch_6a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_7d

    .line 1941
    :pswitch_74
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    return-void

    :sswitch_data_7e
    .sparse-switch
        -0x75b299bf -> :sswitch_3e
        -0x56c71a58 -> :sswitch_33
        -0x4d1fa986 -> :sswitch_28
        -0xd8ce8e2 -> :sswitch_1d
        0x2bf974e5 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_74
        :pswitch_6a
        :pswitch_60
        :pswitch_56
        :pswitch_4c
    .end packed-switch
.end method

.method public setBorderWidth(Ljava/lang/String;F)V
    .registers 5

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_7c

    .line 1912
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_7e

    goto :goto_47

    :sswitch_11
    const-string v1, "borderWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_47

    :cond_1a
    const/4 v0, 0x4

    goto :goto_47

    :sswitch_1c
    const-string v1, "borderLeftWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_47

    :cond_25
    const/4 v0, 0x3

    goto :goto_47

    :sswitch_27
    const-string v1, "borderBottomWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_47

    :cond_30
    const/4 v0, 0x2

    goto :goto_47

    :sswitch_32
    const-string v1, "borderTopWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_47

    :cond_3b
    const/4 v0, 0x1

    goto :goto_47

    :sswitch_3d
    const-string v1, "borderRightWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    packed-switch v0, :pswitch_data_94

    goto :goto_7c

    .line 1914
    :pswitch_4b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_7c

    .line 1926
    :pswitch_55
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_7c

    .line 1923
    :pswitch_5f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_7c

    .line 1917
    :pswitch_69
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_7c

    .line 1920
    :pswitch_73
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    :cond_7c
    :goto_7c
    return-void

    nop

    :sswitch_data_7e
    .sparse-switch
        -0x757f89aa -> :sswitch_3d
        -0x56940a43 -> :sswitch_32
        -0x4cec9971 -> :sswitch_27
        -0xd59d8cd -> :sswitch_1c
        0x2c2c84fa -> :sswitch_11
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_73
        :pswitch_69
        :pswitch_5f
        :pswitch_55
        :pswitch_4b
    .end packed-switch
.end method

.method protected setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V
    .registers 5

    .line 256
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    .line 257
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/WXSDKInstance;->addContentBoxMeasurement(JLcom/taobao/weex/layout/ContentBoxMeasurement;)V

    .line 258
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->bindMeasurementToRenderObject(J)V

    return-void
.end method

.method public setDemission(Lcom/taobao/weex/ui/action/GraphicSize;Lcom/taobao/weex/ui/action/GraphicPosition;)V
    .registers 3

    .line 719
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 720
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    return-void
.end method

.method public setDisabled(Z)V
    .registers 3

    .line 1729
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDisabled:Z

    .line 1730
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_7

    return-void

    :cond_7
    xor-int/lit8 p1, p1, 0x1

    .line 1733
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setElevation(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "elevation"
    .end annotation

    .line 933
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->initElevation(Ljava/lang/String;)V

    return-void
.end method

.method protected setHostLayoutParams(Landroid/view/View;IIIIII)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIIII)V"
        }
    .end annotation

    move-object v9, p0

    .line 1240
    iget-object v0, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-nez v0, :cond_18

    .line 1241
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    move v3, p2

    move v4, p3

    invoke-direct {v6, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, p0

    move-object v1, v6

    move v2, p4

    move/from16 v3, p6

    move v4, p5

    move/from16 v5, p7

    .line 1242
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/component/WXComponent;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    goto :goto_28

    :cond_18
    move v3, p2

    move v4, p3

    .line 1245
    iget-object v0, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    :goto_28
    if-eqz v6, :cond_2e

    move-object v0, p1

    .line 1248
    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2e
    return-void
.end method

.method public setHoverClassStatus(Z)V
    .registers 9

    .line 2670
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->updateStatusAndGetUpdateStyles(Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_74

    if-eqz p1, :cond_6d

    .line 2673
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v1, "width"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 2674
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "height"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez p1, :cond_22

    if-eqz v2, :cond_39

    .line 2676
    :cond_22
    new-instance v4, Lcom/taobao/weex/ui/action/GraphicSize;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    iput-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    :cond_39
    if-eqz p1, :cond_53

    .line 2679
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/action/GraphicSize;->setWidth(F)V

    goto :goto_74

    :cond_53
    if-eqz v2, :cond_74

    .line 2681
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/action/GraphicSize;->setHeight(F)V

    goto :goto_74

    .line 2684
    :cond_6d
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-eqz p1, :cond_74

    .line 2685
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 2690
    :cond_74
    :goto_74
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyleByPesudo(Ljava/util/Map;)V

    return-void
.end method

.method public setHoverReceiveTouch(Z)V
    .registers 3

    .line 2694
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHover()Lio/dcloud/weex/ViewHover;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2695
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHover()Lio/dcloud/weex/ViewHover;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->setReceiveTouch(Z)V

    .line 2697
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_16

    .line 2698
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->setHoverReceiveTouch(Z)V

    :cond_16
    return-void
.end method

.method public setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 17

    move-object v8, p0

    move-object/from16 v0, p1

    .line 1031
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 1032
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 1033
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 1034
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 1035
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 1037
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->isLayoutRTL()Z

    move-result v1

    .line 1038
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setIsLayoutRTL(Z)V

    .line 1039
    iget-boolean v2, v0, Lcom/taobao/weex/ui/component/WXComponent;->isLastLayoutDirectionRTL:Z

    if-eq v1, v2, :cond_36

    .line 1040
    iput-boolean v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->isLastLayoutDirectionRTL:Z

    .line 1041
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->layoutDirectionDidChanged(Z)V

    :cond_36
    const/4 v0, 0x0

    .line 1045
    :try_start_37
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_54

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_54

    .line 1046
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->parseAnimation()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_52} :catch_53

    goto :goto_54

    :catch_53
    nop

    .line 1053
    :cond_54
    :goto_54
    iget-object v1, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5c

    const/4 v1, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    :goto_5d
    if-eqz v1, :cond_60

    goto :goto_66

    .line 1056
    :cond_60
    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildrenLayoutTopOffset()I

    move-result v2

    :goto_66
    if-eqz v1, :cond_6e

    .line 1058
    new-instance v4, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v4}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    goto :goto_74

    :cond_6e
    iget-object v4, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXVContainer;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    :goto_74
    if-eqz v1, :cond_7c

    .line 1059
    new-instance v5, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v5}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    goto :goto_82

    :cond_7c
    iget-object v5, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXVContainer;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    .line 1061
    :goto_82
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v6

    float-to-int v6, v6

    .line 1062
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v7

    float-to-int v7, v7

    .line 1068
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v9

    if-eqz v9, :cond_c2

    .line 1069
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getRenderContainerPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 1070
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getRenderContainerPaddingTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    float-to-int v5, v5

    add-int/2addr v5, v2

    goto :goto_f3

    .line 1072
    :cond_c2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v9

    sget-object v10, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 1073
    invoke-virtual {v4, v10}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v10

    sub-float/2addr v9, v10

    sget-object v10, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v10}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v9, v9

    .line 1074
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v10

    sget-object v11, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 1075
    invoke-virtual {v4, v11}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sub-float/2addr v10, v4

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sub-float/2addr v10, v4

    float-to-int v4, v10

    add-int/2addr v4, v2

    move v5, v4

    move v4, v9

    .line 1078
    :goto_f3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    sget-object v9, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v9}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    float-to-int v9, v2

    .line 1079
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    sget-object v10, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v10}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    float-to-int v10, v2

    .line 1081
    new-instance v11, Landroid/graphics/Point;

    .line 1082
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v2

    float-to-int v2, v2

    .line 1083
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v12

    invoke-virtual {v12}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v12

    float-to-int v12, v12

    invoke-direct {v11, v2, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 1085
    iget v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    if-ne v2, v6, :cond_135

    iget v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    if-ne v2, v7, :cond_135

    iget v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    if-ne v2, v4, :cond_135

    iget v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    if-ne v2, v9, :cond_135

    iget v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    if-ne v2, v5, :cond_135

    return-void

    .line 1089
    :cond_135
    instance-of v2, v8, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v2, :cond_159

    sget v2, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_HEIGHT:I

    if-lt v7, v2, :cond_159

    sget v2, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_WIDTH:I

    if-lt v6, v2, :cond_159

    .line 1090
    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-string v14, "wxCellExceedNum"

    invoke-virtual {v2, v14, v12, v13}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    .line 1091
    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v2

    iget v12, v2, Lcom/taobao/weex/common/WXPerformance;->cellExceedNum:I

    add-int/2addr v12, v3

    iput v12, v2, Lcom/taobao/weex/common/WXPerformance;->cellExceedNum:I

    :cond_159
    if-eqz v1, :cond_15d

    const/4 v2, 0x0

    goto :goto_169

    .line 1094
    :cond_15d
    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getAbsoluteY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getCSSLayoutTop()F

    move-result v12

    add-float/2addr v2, v12

    :goto_169
    float-to-int v2, v2

    iput v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    if-eqz v1, :cond_16f

    goto :goto_17b

    .line 1095
    :cond_16f
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getAbsoluteX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getCSSLayoutLeft()F

    move-result v1

    add-float/2addr v0, v1

    :goto_17b
    float-to-int v0, v0

    iput v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteX:I

    .line 1097
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_183

    return-void

    .line 1102
    :cond_183
    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1b1

    iget v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    add-int/2addr v0, v7

    iget-object v1, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v1

    add-int/2addr v1, v3

    if-le v0, v1, :cond_1b1

    .line 1103
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-boolean v0, v0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_19e

    .line 1104
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onOldFsRenderTimeLogic()V

    .line 1106
    :cond_19e
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-boolean v0, v0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    if-nez v0, :cond_1b1

    .line 1107
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    iput-boolean v3, v0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 1108
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->arriveNewFsRenderTime()V

    .line 1112
    :cond_1b1
    invoke-virtual {p0, v6, v7}, Lcom/taobao/weex/ui/component/WXComponent;->measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    move-result-object v0

    .line 1113
    iget v1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 1114
    iget v2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v9

    move v6, v10

    move-object v7, v11

    .line 1116
    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setComponentLayoutParams(IIIIIILandroid/graphics/Point;)V

    return-void
.end method

.method public setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .registers 6

    .line 263
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 264
    instance-of p2, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_d

    .line 265
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x33

    .line 266
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_d
    return-void
.end method

.method public setNeedLayoutOnAnimation(Z)V
    .registers 2

    .line 2352
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mNeedLayoutOnAnimation:Z

    return-void
.end method

.method public setOpacity(F)V
    .registers 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_50

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_50

    .line 1837
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_50

    .line 1838
    invoke-static {}, Lcom/taobao/weex/ui/WXRenderManager;->getOpenGLRenderLimitValue()I

    move-result v0

    .line 1839
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 1840
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1842
    :cond_26
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->shouldCancelHardwareAccelerate()Z

    move-result v1

    if-eqz v1, :cond_4b

    if-lez v0, :cond_4b

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v1

    int-to-float v0, v0

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_45

    .line 1843
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4b

    .line 1844
    :cond_45
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1846
    :cond_4b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_50
    return-void
.end method

.method public setPadding(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;)V
    .registers 7

    .line 314
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 315
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 316
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2, v3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 317
    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2, v3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 319
    instance-of p2, p0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz p2, :cond_4e

    move-object p2, p0

    check-cast p2, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 320
    invoke-interface {p2}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object p2

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/taobao/weex/ui/flat/widget/Widget;->setContentBox(IIII)V

    goto :goto_55

    .line 321
    :cond_4e
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz p2, :cond_55

    .line 322
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_55
    :goto_55
    return-void
.end method

.method public setPreventGesture(Z)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "preventGesture"
    .end annotation

    .line 2713
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture:Z

    const-string p1, "preventGesture"

    .line 2714
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-eqz p1, :cond_3f2

    .line 799
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_3f2

    .line 802
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_3f4

    goto/16 :goto_32c

    :sswitch_19
    const-string v2, "marginLeft"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_32c

    :cond_23
    const/16 v1, 0x39

    goto/16 :goto_32c

    :sswitch_27
    const-string v2, "visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto/16 :goto_32c

    :cond_31
    const/16 v1, 0x38

    goto/16 :goto_32c

    :sswitch_35
    const-string v2, "justifyContent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto/16 :goto_32c

    :cond_3f
    const/16 v1, 0x37

    goto/16 :goto_32c

    :sswitch_43
    const-string v2, "alignSelf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    goto/16 :goto_32c

    :cond_4d
    const/16 v1, 0x36

    goto/16 :goto_32c

    :sswitch_51
    const-string v2, "flexWrap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    goto/16 :goto_32c

    :cond_5b
    const/16 v1, 0x35

    goto/16 :goto_32c

    :sswitch_5f
    const-string v2, "borderRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    goto/16 :goto_32c

    :cond_69
    const/16 v1, 0x34

    goto/16 :goto_32c

    :sswitch_6d
    const-string v2, "backgroundImage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    goto/16 :goto_32c

    :cond_77
    const/16 v1, 0x33

    goto/16 :goto_32c

    :sswitch_7b
    const-string v2, "backgroundColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    goto/16 :goto_32c

    :cond_85
    const/16 v1, 0x32

    goto/16 :goto_32c

    :sswitch_89
    const-string v2, "marginRight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    goto/16 :goto_32c

    :cond_93
    const/16 v1, 0x31

    goto/16 :goto_32c

    :sswitch_97
    const-string v2, "position"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    goto/16 :goto_32c

    :cond_a1
    const/16 v1, 0x30

    goto/16 :goto_32c

    :sswitch_a5
    const-string v2, "fixedSize"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    goto/16 :goto_32c

    :cond_af
    const/16 v1, 0x2f

    goto/16 :goto_32c

    :sswitch_b3
    const-string v2, "boxShadow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    goto/16 :goto_32c

    :cond_bd
    const/16 v1, 0x2e

    goto/16 :goto_32c

    :sswitch_c1
    const-string v2, "borderWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cb

    goto/16 :goto_32c

    :cond_cb
    const/16 v1, 0x2d

    goto/16 :goto_32c

    :sswitch_cf
    const-string v2, "borderStyle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d9

    goto/16 :goto_32c

    :cond_d9
    const/16 v1, 0x2c

    goto/16 :goto_32c

    :sswitch_dd
    const-string v2, "borderColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e7

    goto/16 :goto_32c

    :cond_e7
    const/16 v1, 0x2b

    goto/16 :goto_32c

    :sswitch_eb
    const-string v2, "preventMoveEvent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f5

    goto/16 :goto_32c

    :cond_f5
    const/16 v1, 0x2a

    goto/16 :goto_32c

    :sswitch_f9
    const-string v2, "paddingRight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_103

    goto/16 :goto_32c

    :cond_103
    const/16 v1, 0x29

    goto/16 :goto_32c

    :sswitch_107
    const-string v2, "borderBottomRightRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    goto/16 :goto_32c

    :cond_111
    const/16 v1, 0x28

    goto/16 :goto_32c

    :sswitch_115
    const-string v2, "borderBottomLeftRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11f

    goto/16 :goto_32c

    :cond_11f
    const/16 v1, 0x27

    goto/16 :goto_32c

    :sswitch_123
    const-string v2, "maxWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12d

    goto/16 :goto_32c

    :cond_12d
    const/16 v1, 0x26

    goto/16 :goto_32c

    :sswitch_131
    const-string v2, "borderTopRightRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13b

    goto/16 :goto_32c

    :cond_13b
    const/16 v1, 0x25

    goto/16 :goto_32c

    :sswitch_13f
    const-string v2, "disabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_149

    goto/16 :goto_32c

    :cond_149
    const/16 v1, 0x24

    goto/16 :goto_32c

    :sswitch_14d
    const-string v2, "paddingBottom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_157

    goto/16 :goto_32c

    :cond_157
    const/16 v1, 0x23

    goto/16 :goto_32c

    :sswitch_15b
    const-string v2, "width"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_165

    goto/16 :goto_32c

    :cond_165
    const/16 v1, 0x22

    goto/16 :goto_32c

    :sswitch_169
    const-string v2, "right"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_173

    goto/16 :goto_32c

    :cond_173
    const/16 v1, 0x21

    goto/16 :goto_32c

    :sswitch_177
    const-string v2, "paddingTop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_181

    goto/16 :goto_32c

    :cond_181
    const/16 v1, 0x20

    goto/16 :goto_32c

    :sswitch_185
    const-string v2, "role"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18f

    goto/16 :goto_32c

    :cond_18f
    const/16 v1, 0x1f

    goto/16 :goto_32c

    :sswitch_193
    const-string v2, "left"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19d

    goto/16 :goto_32c

    :cond_19d
    const/16 v1, 0x1e

    goto/16 :goto_32c

    :sswitch_1a1
    const-string v2, "flex"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ab

    goto/16 :goto_32c

    :cond_1ab
    const/16 v1, 0x1d

    goto/16 :goto_32c

    :sswitch_1af
    const-string v2, "top"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b9

    goto/16 :goto_32c

    :cond_1b9
    const/16 v1, 0x1c

    goto/16 :goto_32c

    :sswitch_1bd
    const-string v2, "minHeight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c7

    goto/16 :goto_32c

    :cond_1c7
    const/16 v1, 0x1b

    goto/16 :goto_32c

    :sswitch_1cb
    const-string v2, "borderLeftWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d5

    goto/16 :goto_32c

    :cond_1d5
    const/16 v1, 0x1a

    goto/16 :goto_32c

    :sswitch_1d9
    const-string v2, "borderLeftStyle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e3

    goto/16 :goto_32c

    :cond_1e3
    const/16 v1, 0x19

    goto/16 :goto_32c

    :sswitch_1e7
    const-string v2, "borderLeftColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f1

    goto/16 :goto_32c

    :cond_1f1
    const/16 v1, 0x18

    goto/16 :goto_32c

    :sswitch_1f5
    const-string v2, "marginBottom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ff

    goto/16 :goto_32c

    :cond_1ff
    const/16 v1, 0x17

    goto/16 :goto_32c

    :sswitch_203
    const-string v2, "padding"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20d

    goto/16 :goto_32c

    :cond_20d
    const/16 v1, 0x16

    goto/16 :goto_32c

    :sswitch_211
    const-string v2, "ariaLabel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21b

    goto/16 :goto_32c

    :cond_21b
    const/16 v1, 0x15

    goto/16 :goto_32c

    :sswitch_21f
    const-string v2, "maxHeight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_229

    goto/16 :goto_32c

    :cond_229
    const/16 v1, 0x14

    goto/16 :goto_32c

    :sswitch_22d
    const-string v2, "flexDirection"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_237

    goto/16 :goto_32c

    :cond_237
    const/16 v1, 0x13

    goto/16 :goto_32c

    :sswitch_23b
    const-string v2, "marginTop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_245

    goto/16 :goto_32c

    :cond_245
    const/16 v1, 0x12

    goto/16 :goto_32c

    :sswitch_249
    const-string v2, "alignItems"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_253

    goto/16 :goto_32c

    :cond_253
    const/16 v1, 0x11

    goto/16 :goto_32c

    :sswitch_257
    const-string v2, "margin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_261

    goto/16 :goto_32c

    :cond_261
    const/16 v1, 0x10

    goto/16 :goto_32c

    :sswitch_265
    const-string v2, "ariaHidden"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26f

    goto/16 :goto_32c

    :cond_26f
    const/16 v1, 0xf

    goto/16 :goto_32c

    :sswitch_273
    const-string v2, "height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27d

    goto/16 :goto_32c

    :cond_27d
    const/16 v1, 0xe

    goto/16 :goto_32c

    :sswitch_281
    const-string v2, "borderTopLeftRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28b

    goto/16 :goto_32c

    :cond_28b
    const/16 v1, 0xd

    goto/16 :goto_32c

    :sswitch_28f
    const-string v2, "opacity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_299

    goto/16 :goto_32c

    :cond_299
    const/16 v1, 0xc

    goto/16 :goto_32c

    :sswitch_29d
    const-string v2, "borderBottomWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a7

    goto/16 :goto_32c

    :cond_2a7
    const/16 v1, 0xb

    goto/16 :goto_32c

    :sswitch_2ab
    const-string v2, "borderBottomStyle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b5

    goto/16 :goto_32c

    :cond_2b5
    const/16 v1, 0xa

    goto/16 :goto_32c

    :sswitch_2b9
    const-string v2, "borderBottomColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c3

    goto/16 :goto_32c

    :cond_2c3
    const/16 v1, 0x9

    goto/16 :goto_32c

    :sswitch_2c7
    const-string v2, "minWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d1

    goto/16 :goto_32c

    :cond_2d1
    const/16 v1, 0x8

    goto/16 :goto_32c

    :sswitch_2d5
    const-string v2, "bottom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2de

    goto :goto_32c

    :cond_2de
    const/4 v1, 0x7

    goto :goto_32c

    :sswitch_2e0
    const-string v2, "borderTopWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e9

    goto :goto_32c

    :cond_2e9
    const/4 v1, 0x6

    goto :goto_32c

    :sswitch_2eb
    const-string v2, "borderTopStyle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f4

    goto :goto_32c

    :cond_2f4
    const/4 v1, 0x5

    goto :goto_32c

    :sswitch_2f6
    const-string v2, "borderTopColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ff

    goto :goto_32c

    :cond_2ff
    const/4 v1, 0x4

    goto :goto_32c

    :sswitch_301
    const-string v2, "paddingLeft"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30a

    goto :goto_32c

    :cond_30a
    const/4 v1, 0x3

    goto :goto_32c

    :sswitch_30c
    const-string v2, "borderRightWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_315

    goto :goto_32c

    :cond_315
    const/4 v1, 0x2

    goto :goto_32c

    :sswitch_317
    const-string v2, "borderRightStyle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_320

    goto :goto_32c

    :cond_320
    const/4 v1, 0x1

    goto :goto_32c

    :sswitch_322
    const-string v2, "borderRightColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32b

    goto :goto_32c

    :cond_32b
    const/4 v1, 0x0

    :goto_32c
    const-string v2, ""

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_4de

    return v3

    .line 864
    :pswitch_333
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_33c

    .line 866
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setVisibility(Ljava/lang/String;)V

    :cond_33c
    return v0

    .line 826
    :pswitch_33d
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_34a

    .line 827
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz p2, :cond_34a

    .line 828
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setBackgroundImage(Ljava/lang/String;)V

    :cond_34a
    return v0

    .line 821
    :pswitch_34b
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_354

    .line 823
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setBackgroundColor(Ljava/lang/String;)V

    :cond_354
    return v0

    .line 816
    :pswitch_355
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_35e

    .line 818
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setSticky(Ljava/lang/String;)V

    :cond_35e
    return v0

    :pswitch_35f
    const-string p1, "m"

    .line 874
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 875
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setFixedSize(Ljava/lang/String;)V

    return v0

    .line 919
    :pswitch_369
    :try_start_369
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->updateBoxShadow()V
    :try_end_36c
    .catchall {:try_start_369 .. :try_end_36c} :catchall_36d

    goto :goto_371

    :catchall_36d
    move-exception p1

    .line 921
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_371
    return v0

    .line 804
    :pswitch_372
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz p1, :cond_385

    .line 805
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->setPreventMoveEvent(Z)V

    :cond_385
    return v0

    .line 809
    :pswitch_386
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_39c

    .line 811
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setDisabled(Z)V

    .line 812
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, ":disabled"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setPseudoClassStatus(Ljava/lang/String;Z)V

    :cond_39c
    return v0

    .line 925
    :pswitch_39d
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setRole(Ljava/lang/String;)V

    return v0

    .line 878
    :pswitch_3a5
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 879
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setAriaLabel(Ljava/lang/String;)V

    return v0

    .line 882
    :pswitch_3ad
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 883
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setAriaHidden(Z)V

    return v0

    .line 841
    :pswitch_3bd
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_3ca

    .line 843
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderRadius(Ljava/lang/String;F)V

    :cond_3ca
    return v0

    :pswitch_3cb
    const/high16 p1, 0x3f800000    # 1.0f

    .line 832
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_3de

    .line 834
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setOpacity(F)V

    :cond_3de
    :pswitch_3de
    return v0

    .line 850
    :pswitch_3df
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3e8

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderStyle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e8
    return v0

    .line 859
    :pswitch_3e9
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3f2

    .line 861
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderColor(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f2
    :goto_3f2
    return v0

    nop

    :sswitch_data_3f4
    .sparse-switch
        -0x7696880d -> :sswitch_322
        -0x75b299bf -> :sswitch_317
        -0x757f89aa -> :sswitch_30c
        -0x597a2048 -> :sswitch_301
        -0x57ab08a6 -> :sswitch_2f6
        -0x56c71a58 -> :sswitch_2eb
        -0x56940a43 -> :sswitch_2e0
        -0x527265d5 -> :sswitch_2d5
        -0x5201456c -> :sswitch_2c7
        -0x4e0397d4 -> :sswitch_2b9
        -0x4d1fa986 -> :sswitch_2ab
        -0x4cec9971 -> :sswitch_29d
        -0x4b8807f5 -> :sswitch_28f
        -0x4932ce1e -> :sswitch_281
        -0x48c76ed9 -> :sswitch_273
        -0x42474fed -> :sswitch_265
        -0x40737a52 -> :sswitch_257
        -0x3f600445 -> :sswitch_249
        -0x3e464339 -> :sswitch_23b
        -0x3a1ff07a -> :sswitch_22d
        -0x36017855 -> :sswitch_21f
        -0x337b0495 -> :sswitch_211
        -0x300fc3ef -> :sswitch_203
        -0x113c6e87 -> :sswitch_1f5
        -0xe70d730 -> :sswitch_1e7
        -0xd8ce8e2 -> :sswitch_1d9
        -0xd59d8cd -> :sswitch_1cb
        -0x7f661e7 -> :sswitch_1bd
        0x1c155 -> :sswitch_1af
        0x2ffff9 -> :sswitch_1a1
        0x32a007 -> :sswitch_193
        0x358076 -> :sswitch_185
        0x55f4784 -> :sswitch_177
        0x677c21c -> :sswitch_169
        0x6be2dc6 -> :sswitch_15b
        0xc0fb19c -> :sswitch_14d
        0x10263a7c -> :sswitch_13f
        0x13dfc885 -> :sswitch_131
        0x17dd56c2 -> :sswitch_123
        0x22a57450 -> :sswitch_115
        0x230fd3d7 -> :sswitch_107
        0x2a8c788b -> :sswitch_f9
        0x2ac25e51 -> :sswitch_eb
        0x2b158697 -> :sswitch_dd
        0x2bf974e5 -> :sswitch_cf
        0x2c2c84fa -> :sswitch_c1
        0x2c4a1ecb -> :sswitch_b3
        0x2c8d6195 -> :sswitch_a5
        0x2c929929 -> :sswitch_97
        0x3a1ea90e -> :sswitch_89
        0x4cb7f6d5 -> :sswitch_7b
        0x4d0b70cd -> :sswitch_6d
        0x506afbde -> :sswitch_5f
        0x67f69fe3 -> :sswitch_51
        0x6953cff1 -> :sswitch_43
        0x6ee75fc9 -> :sswitch_35
        0x73b66312 -> :sswitch_27
        0x757a12d5 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_4de
    .packed-switch 0x0
        :pswitch_3e9
        :pswitch_3df
        :pswitch_3de
        :pswitch_3de
        :pswitch_3e9
        :pswitch_3df
        :pswitch_3de
        :pswitch_3de
        :pswitch_3de
        :pswitch_3e9
        :pswitch_3df
        :pswitch_3de
        :pswitch_3cb
        :pswitch_3bd
        :pswitch_3de
        :pswitch_3ad
        :pswitch_3de
        :pswitch_3de
        :pswitch_3de
        :pswitch_3de
        :pswitch_3de
        :pswitch_3a5
        :pswitch_3de
        :pswitch_3de
        :pswitch_3e9
        :pswitch_3df
        :pswitch_3de
        :pswitch_3de
        :pswitch_3de
        :pswitch_3de
        :pswitch_3de
        :pswitch_39d
        :pswitch_3de
        :pswitch_3de
        :pswitch_3de
        :pswitch_3de
        :pswitch_386
        :pswitch_3bd
        :pswitch_3de
        :pswitch_3bd
        :pswitch_3bd
        :pswitch_3de
        :pswitch_372
        :pswitch_3e9
        :pswitch_3df
        :pswitch_3de
        :pswitch_369
        :pswitch_35f
        :pswitch_355
        :pswitch_3de
        :pswitch_34b
        :pswitch_33d
        :pswitch_3bd
        :pswitch_3de
        :pswitch_3de
        :pswitch_3de
        :pswitch_333
        :pswitch_3de
    .end packed-switch
.end method

.method protected setPseudoClassStatus(Ljava/lang/String;Z)V
    .registers 7

    .line 2275
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    .line 2276
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getPesudoStyles()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_a0

    .line 2278
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_a0

    .line 2281
    :cond_12
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    if-nez v2, :cond_1d

    .line 2282
    new-instance v2, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    invoke-direct {v2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    .line 2284
    :cond_1d
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    .line 2288
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v3

    .line 2284
    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->updateStatusAndGetUpdateStyles(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_9d

    if-eqz p2, :cond_96

    .line 2292
    new-instance p2, Lcom/taobao/weex/ui/action/GraphicSize;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v2

    invoke-direct {p2, v1, v2}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    .line 2293
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string v1, "width"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 2294
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p2

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v0

    const-string v1, "width:active"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/action/GraphicSize;->setWidth(F)V

    goto :goto_9d

    .line 2295
    :cond_6c
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string v1, "height"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9d

    .line 2296
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p2

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v0

    const-string v1, "height:active"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/action/GraphicSize;->setHeight(F)V

    goto :goto_9d

    .line 2299
    :cond_96
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-eqz p2, :cond_9d

    .line 2300
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 2305
    :cond_9d
    :goto_9d
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyleByPesudo(Ljava/util/Map;)V

    :cond_a0
    :goto_a0
    return-void
.end method

.method protected setRole(Ljava/lang/String;)V
    .registers 4

    .line 1409
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1412
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAccessibilityRoleAdapter()Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1414
    invoke-interface {v1, p1}, Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;->getRole(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1417
    :cond_1a
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$5;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/WXComponent$5;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)V

    .line 1428
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_22
    return-void
.end method

.method public setSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1019
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1020
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1021
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_24

    .line 1024
    :cond_21
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public setSticky(Ljava/lang/String;)V
    .registers 3

    .line 1741
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "sticky"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1742
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 1744
    invoke-interface {p1, p0}, Lcom/taobao/weex/ui/component/Scrollable;->bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_17
    return-void
.end method

.method public setStickyOffset(I)V
    .registers 2

    .line 2336
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    return-void
.end method

.method public setTransition(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .registers 2

    .line 2490
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTransition:Lcom/taobao/weex/dom/transition/WXTransition;

    return-void
.end method

.method public setUsing(Z)V
    .registers 2

    .line 2179
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->isUsing:Z

    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .registers 4

    .line 1993
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v1, "visible"

    .line 1994
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 p1, 0x0

    .line 1995
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20

    :cond_13
    const-string v1, "hidden"

    .line 1996
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/16 p1, 0x8

    .line 1997
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    :goto_20
    return-void
.end method

.method public setWaste(Z)V
    .registers 4

    .line 2434
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    if-eq v0, p1, :cond_74

    .line 2435
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    .line 2436
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getComponentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recycle-list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2437
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeRenderObjectChildWaste(JZ)V

    :cond_1d
    const-string v0, "visibility"

    if-eqz p1, :cond_43

    .line 2442
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string v1, "hidden"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2444
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_39

    .line 2445
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    if-nez p1, :cond_74

    const/4 p1, 0x1

    .line 2446
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->lazy(Z)V

    goto :goto_74

    .line 2449
    :cond_39
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_74

    .line 2452
    :cond_43
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string v1, "visible"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_6d

    .line 2454
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    if-eqz p1, :cond_74

    .line 2455
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_67

    .line 2456
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->lazy(Z)V

    goto :goto_74

    .line 2458
    :cond_67
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-static {p0, p1}, Lcom/taobao/weex/ui/component/binding/Statements;->initLazyComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)V

    goto :goto_74

    .line 2462
    :cond_6d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_74
    :goto_74
    return-void
.end method

.method public updateActivePseudo(Z)V
    .registers 3

    .line 2266
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, ":active"

    .line 2267
    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setPseudoClassStatus(Ljava/lang/String;Z)V

    :cond_b
    return-void
.end method

.method public updateAttrs(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 2

    if-eqz p1, :cond_9

    .line 286
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getAttrs()Lio/dcloud/feature/uniapp/dom/AbsAttr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method public updateAttrs(Ljava/util/Map;)V
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

    if-eqz p1, :cond_5

    .line 292
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method protected updateBoxShadow()V
    .registers 13

    .line 1271
    invoke-static {}, Lcom/taobao/weex/utils/BoxShadowUtil;->isBoxShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_13b

    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    goto/16 :goto_13b

    .line 1276
    :cond_f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    if-eqz v0, :cond_136

    .line 1277
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v2, "boxShadow"

    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1278
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string v3, "shadowQuality"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_2c

    return-void

    .line 1283
    :cond_2c
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    .line 1284
    instance-of v4, p0, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v5, 0x0

    if-eqz v4, :cond_3a

    .line 1285
    move-object v3, p0

    check-cast v3, Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v3, v5}, Lcom/taobao/weex/ui/component/WXVContainer;->getBoxShadowHost(Z)Landroid/view/View;

    move-result-object v3

    :cond_3a
    if-nez v3, :cond_3d

    return-void

    :cond_3d
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1292
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1293
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v4

    .line 1294
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " / ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1299
    iget-object v7, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLastBoxShadowId:Ljava/lang/String;

    if-eqz v7, :cond_a1

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "box-shadow style was not modified. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxShadow"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a1
    const/16 v7, 0x8

    new-array v8, v7, [F

    .line 1304
    fill-array-data v8, :array_13c

    .line 1305
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v9

    if-eqz v9, :cond_12c

    const-string v10, "borderTopLeftRadius"

    .line 1307
    invoke-virtual {v9, v10}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v8, v5

    const/4 v11, 0x1

    aput v10, v8, v11

    const-string v10, "borderTopRightRadius"

    .line 1311
    invoke-virtual {v9, v10}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/4 v11, 0x2

    aput v10, v8, v11

    const/4 v11, 0x3

    aput v10, v8, v11

    const-string v10, "borderBottomRightRadius"

    .line 1315
    invoke-virtual {v9, v10}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/4 v11, 0x4

    aput v10, v8, v11

    const/4 v11, 0x5

    aput v10, v8, v11

    const-string v10, "borderBottomLeftRadius"

    .line 1319
    invoke-virtual {v9, v10}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/4 v11, 0x6

    aput v10, v8, v11

    const/4 v11, 0x7

    aput v10, v8, v11

    const-string v10, "borderRadius"

    .line 1323
    invoke-virtual {v9, v10}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12c

    .line 1324
    invoke-virtual {v9, v10}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_125
    if-ge v5, v7, :cond_12c

    .line 1326
    aput v1, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_125

    .line 1331
    :cond_12c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v8, v4, v2}, Lcom/taobao/weex/utils/BoxShadowUtil;->setBoxShadow(Landroid/view/View;Ljava/lang/String;[FFF)V

    .line 1332
    iput-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLastBoxShadowId:Ljava/lang/String;

    goto :goto_13b

    :cond_136
    const-string v0, "Can not resolve styles"

    .line 1334
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_13b
    :goto_13b
    return-void

    :array_13c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public updateDemission(FFFFFF)V
    .registers 8

    .line 724
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/action/GraphicPosition;->update(FFFF)V

    .line 725
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p1

    invoke-virtual {p1, p6, p5}, Lcom/taobao/weex/ui/action/GraphicSize;->update(FF)V

    return-void
.end method

.method public updateNativeAttr(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_7

    const-string p2, ""

    .line 2566
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/WXAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2567
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeUpdateRenderObjectAttr(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNativeStyle(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_7

    const-string p2, ""

    .line 2593
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2594
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeUpdateRenderObjectStyle(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNativeStyles(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2598
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 2602
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2603
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2604
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2605
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_8

    .line 2608
    :cond_1b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateNativeStyle(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_29
    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_f3

    .line 743
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v0

    if-eqz v0, :cond_f3

    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_14

    goto/16 :goto_f3

    .line 747
    :cond_14
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_ce

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 748
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 749
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    .line 750
    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_4c

    .line 753
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_NULL_KEY:Lcom/taobao/weex/common/WXErrorCode;

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_NULL_KEY:Lcom/taobao/weex/common/WXErrorCode;

    .line 755
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    const-string v4, "updateProperties"

    .line 753
    invoke-static {v0, v1, v4, v2, v3}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1c

    .line 757
    :cond_4c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 758
    invoke-virtual {p0, v2, v4}, Lcom/taobao/weex/ui/component/WXComponent;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 760
    :cond_56
    invoke-virtual {p0, v2, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 761
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    if-eqz v3, :cond_cd

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    if-nez v3, :cond_67

    goto :goto_cd

    .line 764
    :cond_67
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v3, v2}, Lcom/taobao/weex/ui/IFComponentHolder;->getPropertyInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 767
    :try_start_6f
    invoke-interface {v2}, Lcom/taobao/weex/bridge/Invoker;->getParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 768
    array-length v4, v3

    if-eq v4, v1, :cond_8b

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WXComponent] setX method only one parameter\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    :cond_8b
    const/4 v4, 0x0

    .line 772
    aget-object v3, v3, v4

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXReflectionUtils;->parseArgument(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 773
    invoke-interface {v2, p0, v1}, Lcom/taobao/weex/bridge/Invoker;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_99} :catch_9a

    goto :goto_1c

    :catch_9a
    move-exception v0

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WXComponent] updateProperties :class:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "method:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_cd
    :goto_cd
    return-void

    .line 781
    :cond_ce
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->readyToRender()V

    .line 782
    instance-of p1, p0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz p1, :cond_f3

    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz p1, :cond_f3

    .line 783
    move-object p1, p0

    check-cast p1, Lcom/taobao/weex/ui/flat/FlatComponent;

    .line 784
    invoke-interface {p1, v1}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v0

    if-nez v0, :cond_f3

    .line 785
    invoke-interface {p1}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    if-nez v0, :cond_f3

    .line 786
    invoke-interface {p1}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/flat/widget/Widget;->setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V

    :cond_f3
    :goto_f3
    return-void
.end method

.method public updateStyles(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 272
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 273
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->applyBorder(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    :cond_c
    return-void
.end method

.method public updateStyles(Ljava/util/Map;)V
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

    if-eqz p1, :cond_8

    .line 279
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 280
    invoke-direct {p0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyBorder(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    :cond_8
    return-void
.end method

.method public useFeature()Z
    .registers 3

    .line 1906
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass1 (com.taobao.weex.ui.component.WXComponent$1)
.class Lcom/taobao/weex/ui/component/WXComponent$1;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$1;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .registers 5

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timeStamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent$1;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_19

    const-string p1, "focus"

    goto :goto_1b

    :cond_19
    const-string p1, "blur"

    :goto_1b
    invoke-virtual {v1, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass2 (com.taobao.weex.ui.component.WXComponent$2)
.class Lcom/taobao/weex/ui/component/WXComponent$2;
.super Lcom/taobao/weex/bridge/EventResult;
.source "WXComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;

.field final synthetic val$waitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 562
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$2;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent$2;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/EventResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .registers 2

    .line 565
    invoke-super {p0, p1}, Lcom/taobao/weex/bridge/EventResult;->onCallback(Ljava/lang/Object;)V

    .line 566
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$2;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass3 (com.taobao.weex.ui.component.WXComponent$3)
.class Lcom/taobao/weex/ui/component/WXComponent$3;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 633
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$3;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    .line 636
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$3;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXComponent;->access$200(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    if-eqz v0, :cond_a

    .line 638
    invoke-interface {v0, p2}, Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;->onFocusChange(Z)V

    goto :goto_a

    :cond_1c
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass4 (com.taobao.weex.ui.component.WXComponent$4)
.class Lcom/taobao/weex/ui/component/WXComponent$4;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 664
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$4;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 667
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$4;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object p1, p1, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$4;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object p1, p1, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isTouchEventConsumedByAdvancedGesture()Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    .line 671
    :cond_11
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$4;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXComponent;->access$300(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    if-eqz v0, :cond_1b

    .line 673
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;->onHostViewClick()V

    goto :goto_1b

    :cond_2d
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass5 (com.taobao.weex.ui.component.WXComponent$5)
.class Lcom/taobao/weex/ui/component/WXComponent$5;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "WXComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->setRole(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;

.field final synthetic val$finalRole:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)V
    .registers 3

    .line 1417
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$5;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent$5;->val$finalRole:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    .line 1421
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1422
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$5;->val$finalRole:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_e

    :catchall_9
    const-string p1, "SetRole failed!"

    .line 1424
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_e
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass6 (com.taobao.weex.ui.component.WXComponent$6)
.class Lcom/taobao/weex/ui/component/WXComponent$6;
.super Landroid/graphics/drawable/RippleDrawable;
.source "WXComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1793
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$6;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0, p2, p3, p4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1796
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$6;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXComponent;->access$400(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1797
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$6;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXComponent;->access$400(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getContentPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    .line 1798
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1800
    :cond_25
    invoke-super {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass7 (com.taobao.weex.ui.component.WXComponent$7)
.class Lcom/taobao/weex/ui/component/WXComponent$7;
.super Landroid/view/ViewOutlineProvider;
.source "WXComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->initOutlineProvider(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;

.field final synthetic val$radius:F


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;F)V
    .registers 3

    .line 1877
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$7;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iput p2, p0, Lcom/taobao/weex/ui/component/WXComponent$7;->val$radius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 6

    .line 1881
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$7;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 1884
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz v0, :cond_4d

    if-nez p1, :cond_1a

    goto :goto_4d

    .line 1888
    :cond_1a
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent$7;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->isRounded()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1892
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    int-to-float p1, v0

    .line 1893
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent$7;->val$radius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    div-float/2addr p1, v0

    .line 1894
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_48

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_48

    .line 1895
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent$7;->val$radius:F

    mul-float p1, p1, v0

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_4d

    .line 1897
    :cond_48
    iget p1, p0, Lcom/taobao/weex/ui/component/WXComponent$7;->val$radius:F

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :cond_4d
    :goto_4d
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.MeasureOutput (com.taobao.weex.ui.component.WXComponent$MeasureOutput)
.class public Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
.super Ljava/lang/Object;
.source "WXComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureOutput"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.OnClickListener (com.taobao.weex.ui.component.WXComponent$OnClickListener)
.class public interface abstract Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;
.super Ljava/lang/Object;
.source "WXComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClickListener"
.end annotation


# virtual methods
.method public abstract onHostViewClick()V
.end method

###### Class com.taobao.weex.ui.component.WXComponent.OnClickListenerImp (com.taobao.weex.ui.component.WXComponent$OnClickListenerImp)
.class Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 475
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent$1;)V
    .registers 3

    .line 475
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method


# virtual methods
.method public onHostViewClick()V
    .registers 7

    const/4 v0, 0x1

    .line 478
    invoke-static {v0}, Lcom/taobao/weex/utils/WXDataStructureUtil;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x4

    .line 479
    invoke-static {v2}, Lcom/taobao/weex/utils/WXDataStructureUtil;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 481
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v4, v4, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    .line 482
    aget v4, v3, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v5}, Lcom/taobao/weex/ui/component/WXComponent;->access$100(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "x"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    aget v0, v3, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v3}, Lcom/taobao/weex/ui/component/WXComponent;->access$100(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v3, "y"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v0

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v3}, Lcom/taobao/weex/ui/component/WXComponent;->access$100(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v3, "width"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v0

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v3}, Lcom/taobao/weex/ui/component/WXComponent;->access$100(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v3, "height"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "position"

    .line 486
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    const-string v2, "click"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.OnFocusChangeListener (com.taobao.weex.ui.component.WXComponent$OnFocusChangeListener)
.class public interface abstract Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;
.super Ljava/lang/Object;
.source "WXComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFocusChangeListener"
.end annotation


# virtual methods
.method public abstract onFocusChange(Z)V
.end method

###### Class com.taobao.weex.ui.component.WXComponent.RenderState (com.taobao.weex.ui.component.WXComponent$RenderState)
.class public interface abstract annotation Lcom/taobao/weex/ui/component/WXComponent$RenderState;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RenderState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation
