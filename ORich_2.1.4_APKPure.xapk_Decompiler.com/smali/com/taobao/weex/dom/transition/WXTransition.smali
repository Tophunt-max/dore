###### Class com.taobao.weex.dom.transition.WXTransition (com.taobao.weex.dom.transition.WXTransition)
.class public Lcom/taobao/weex/dom/transition/WXTransition;
.super Ljava/lang/Object;
.source "WXTransition.java"


# static fields
.field private static final LAYOUT_PROPERTIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TRANSFORM_PROPERTIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSITION_DELAY:Ljava/lang/String; = "transitionDelay"

.field public static final TRANSITION_DURATION:Ljava/lang/String; = "transitionDuration"

.field public static final TRANSITION_PROPERTY:Ljava/lang/String; = "transitionProperty"

.field public static final TRANSITION_TIMING_FUNCTION:Ljava/lang/String; = "transitionTimingFunction"


# instance fields
.field private animationRunnable:Ljava/lang/Runnable;

.field private delay:J

.field private duration:J

.field private handler:Landroid/os/Handler;

.field private interpolator:Landroid/view/animation/Interpolator;

.field private layoutPendingUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private layoutValueAnimator:Landroid/animation/ValueAnimator;

.field private volatile lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transformAnimationRunnable:Ljava/lang/Runnable;

.field private transformAnimator:Landroid/animation/ObjectAnimator;

.field private transformPendingUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transitionEndEvent:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "\\||,"

    .line 81
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->PROPERTY_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string v1, "width"

    .line 89
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "height"

    .line 90
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "marginTop"

    .line 91
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "marginBottom"

    .line 92
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "marginLeft"

    .line 93
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "marginRight"

    .line 94
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "left"

    .line 95
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "right"

    .line 96
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "top"

    .line 97
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "bottom"

    .line 98
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "paddingLeft"

    .line 99
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "paddingRight"

    .line 100
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "paddingTop"

    .line 101
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "paddingBottom"

    .line 102
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    const-string v1, "opacity"

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "backgroundColor"

    .line 111
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "transform"

    .line 112
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->handler:Landroid/os/Handler;

    .line 136
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    .line 137
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    .line 138
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/dom/transition/WXTransition;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/dom/transition/WXTransition;I)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition;->doTransitionAnimation(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->animationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/taobao/weex/dom/transition/WXTransition;)J
    .registers 3

    .line 74
    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/taobao/weex/dom/transition/WXTransition;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/dom/transition/WXTransition;I)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition;->doPendingTransformAnimation(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->onTransitionAnimationEnd()V

    return-void
.end method

.method public static asynchronouslyUpdateLayout(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;F)V
    .registers 6

    if-eqz p0, :cond_2e

    .line 565
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2e

    .line 568
    :cond_9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object p0

    .line 570
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_2e

    .line 574
    :cond_1e
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXBridgeManager()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/dom/transition/WXTransition$7;

    invoke-direct {v2, p1, p0, v0, p2}, Lcom/taobao/weex/dom/transition/WXTransition$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private createLayoutPropertyValueHolder(Ljava/lang/String;Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 443
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "marginLeft"

    const-string v5, "marginRight"

    const-string v6, "paddingRight"

    const-string v7, "paddingBottom"

    const-string v8, "width"

    const-string v9, "right"

    const-string v10, "paddingTop"

    const-string v11, "left"

    const-string v12, "top"

    const-string v13, "marginBottom"

    const-string v14, "marginTop"

    const-string v15, "height"

    const-string v2, "bottom"

    const-string v0, "paddingLeft"

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v18, v0

    const/4 v0, 0x2

    const/16 v19, -0x1

    sparse-switch v3, :sswitch_data_370

    :goto_35
    move-object/from16 v3, v18

    goto/16 :goto_cb

    :sswitch_39
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto :goto_35

    :cond_40
    const/16 v19, 0xd

    goto :goto_35

    :sswitch_43
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_35

    :cond_4a
    const/16 v19, 0xc

    goto :goto_35

    :sswitch_4d
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    goto :goto_35

    :cond_54
    const/16 v19, 0xb

    goto :goto_35

    :sswitch_57
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    goto :goto_35

    :cond_5e
    const/16 v19, 0xa

    goto :goto_35

    :sswitch_61
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    goto :goto_35

    :cond_68
    const/16 v19, 0x9

    goto :goto_35

    :sswitch_6b
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    goto :goto_35

    :cond_72
    const/16 v19, 0x8

    goto :goto_35

    :sswitch_75
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    goto :goto_35

    :cond_7c
    const/16 v19, 0x7

    goto :goto_35

    :sswitch_7f
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    goto :goto_35

    :cond_86
    const/16 v19, 0x6

    goto :goto_35

    :sswitch_89
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_90

    goto :goto_35

    :cond_90
    const/16 v19, 0x5

    goto :goto_35

    :sswitch_93
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    goto :goto_35

    :cond_9a
    const/16 v19, 0x4

    goto :goto_35

    :sswitch_9d
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4

    goto :goto_35

    :cond_a4
    const/16 v19, 0x3

    goto :goto_35

    :sswitch_a7
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ae

    goto :goto_35

    :cond_ae
    move-object/from16 v3, v18

    const/16 v19, 0x2

    goto :goto_cb

    :sswitch_b3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    goto/16 :goto_35

    :cond_bb
    move-object/from16 v3, v18

    const/16 v19, 0x1

    goto :goto_cb

    :sswitch_c0
    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c9

    goto :goto_cb

    :cond_c9
    const/16 v19, 0x0

    :goto_cb
    const/16 v18, 0x0

    packed-switch v19, :pswitch_data_3aa

    const/4 v2, 0x0

    move-object/from16 v3, p0

    goto/16 :goto_363

    :pswitch_d5
    new-array v2, v0, [F

    move-object/from16 v3, p0

    .line 460
    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    aput v5, v2, v17

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 461
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    move-object/from16 v15, p2

    invoke-static {v15, v5}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v5

    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v5

    aput v5, v2, v16

    .line 460
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_363

    :pswitch_105
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 465
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 466
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v4, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 465
    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_363

    :pswitch_135
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 510
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 511
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 510
    invoke-static {v6, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_363

    :pswitch_165
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 500
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 501
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 500
    invoke-static {v7, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_363

    :pswitch_195
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 445
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v4

    aput v4, v2, v17

    .line 446
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 445
    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_363

    :pswitch_1c1
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 480
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/GraphicPosition;->getRight()F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 481
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 480
    invoke-static {v9, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_363

    :pswitch_1ef
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 495
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 496
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 495
    invoke-static {v10, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_363

    :pswitch_21f
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 475
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 476
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 475
    invoke-static {v11, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_363

    :pswitch_24d
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 490
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 491
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 490
    invoke-static {v12, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_363

    :pswitch_27b
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 470
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 471
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 470
    invoke-static {v13, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_363

    :pswitch_2ab
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 455
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 456
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 455
    invoke-static {v14, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_363

    :pswitch_2db
    move-object/from16 v3, p0

    move-object/from16 v2, p2

    new-array v4, v0, [F

    .line 450
    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v5

    aput v5, v4, v17

    .line 451
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v2, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v2

    aput v2, v4, v16

    .line 450
    invoke-static {v15, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto :goto_363

    :pswitch_306
    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v2, p2

    new-array v5, v0, [F

    .line 485
    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/ui/action/GraphicPosition;->getBottom()F

    move-result v6

    aput v6, v5, v17

    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 486
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v2

    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v2

    aput v2, v5, v16

    .line 485
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto :goto_363

    :pswitch_334
    move-object/from16 v2, p2

    move-object v4, v3

    move-object/from16 v3, p0

    new-array v5, v0, [F

    .line 505
    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v6

    aput v6, v5, v17

    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 506
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v2

    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v2

    aput v2, v5, v16

    .line 505
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    :goto_363
    if-nez v2, :cond_36e

    new-array v0, v0, [F

    .line 518
    fill-array-data v0, :array_3ca

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    :cond_36e
    return-object v2

    nop

    :sswitch_data_370
    .sparse-switch
        -0x597a2048 -> :sswitch_c0
        -0x527265d5 -> :sswitch_b3
        -0x48c76ed9 -> :sswitch_a7
        -0x3e464339 -> :sswitch_9d
        -0x113c6e87 -> :sswitch_93
        0x1c155 -> :sswitch_89
        0x32a007 -> :sswitch_7f
        0x55f4784 -> :sswitch_75
        0x677c21c -> :sswitch_6b
        0x6be2dc6 -> :sswitch_61
        0xc0fb19c -> :sswitch_57
        0x2a8c788b -> :sswitch_4d
        0x3a1ea90e -> :sswitch_43
        0x757a12d5 -> :sswitch_39
    .end sparse-switch

    :pswitch_data_3aa
    .packed-switch 0x0
        :pswitch_334
        :pswitch_306
        :pswitch_2db
        :pswitch_2ab
        :pswitch_27b
        :pswitch_24d
        :pswitch_21f
        :pswitch_1ef
        :pswitch_1c1
        :pswitch_195
        :pswitch_165
        :pswitch_135
        :pswitch_105
        :pswitch_d5
    .end packed-switch

    :array_3ca
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .registers 13

    .line 700
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_c9

    .line 701
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v4, :sswitch_data_ce

    goto :goto_54

    :sswitch_1e
    const-string v4, "ease"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_54

    :cond_27
    const/4 v0, 0x4

    goto :goto_54

    :sswitch_29
    const-string v4, "ease-in-out"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    goto :goto_54

    :cond_32
    const/4 v0, 0x3

    goto :goto_54

    :sswitch_34
    const-string v4, "ease-out"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_54

    :cond_3d
    const/4 v0, 0x2

    goto :goto_54

    :sswitch_3f
    const-string v4, "linear"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    goto :goto_54

    :cond_48
    const/4 v0, 0x1

    goto :goto_54

    :sswitch_4a
    const-string v4, "ease-in"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    const v4, 0x3f147ae1    # 0.58f

    const v10, 0x3ed70a3d    # 0.42f

    const/4 v11, 0x0

    packed-switch v0, :pswitch_data_e4

    .line 715
    :try_start_5e
    new-instance v0, Lcom/taobao/weex/utils/SingleFunctionParser;

    new-instance v4, Lcom/taobao/weex/dom/transition/WXTransition$8;

    invoke-direct {v4}, Lcom/taobao/weex/dom/transition/WXTransition$8;-><init>()V

    invoke-direct {v0, p0, v4}, Lcom/taobao/weex/utils/SingleFunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V

    const-string p0, "cubic-bezier"

    .line 723
    invoke-virtual {v0, p0}, Lcom/taobao/weex/utils/SingleFunctionParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_c9

    .line 724
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_c9

    .line 726
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 725
    invoke-static {v0, v4, v5, p0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0
    :try_end_a2
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_a2} :catch_a3

    return-object p0

    :catch_a3
    move-exception p0

    .line 729
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_c9

    const-string v0, "WXTransition"

    .line 730
    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c9

    .line 709
    :pswitch_b0
    invoke-static {v2, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 707
    :pswitch_b5
    invoke-static {v10, v11, v4, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 705
    :pswitch_ba
    invoke-static {v11, v11, v4, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 711
    :pswitch_bf
    invoke-static {v11, v11, v3, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 703
    :pswitch_c4
    invoke-static {v10, v11, v3, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 735
    :cond_c9
    :goto_c9
    invoke-static {v2, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    :sswitch_data_ce
    .sparse-switch
        -0x75215c9c -> :sswitch_4a
        -0x41b970db -> :sswitch_3f
        -0x2f0a1f11 -> :sswitch_34
        -0x15938a9b -> :sswitch_29
        0x2f63ee -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_bf
        :pswitch_ba
        :pswitch_b5
        :pswitch_b0
    .end packed-switch
.end method

.method private doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V
    .registers 4

    .line 524
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    .line 525
    new-instance v0, Lcom/taobao/weex/dom/transition/WXTransition$5;

    invoke-direct {v0, p0}, Lcom/taobao/weex/dom/transition/WXTransition$5;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 537
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/taobao/weex/dom/transition/WXTransition$6;

    invoke-direct {v0, p0}, Lcom/taobao/weex/dom/transition/WXTransition$6;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 555
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_21

    .line 556
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    :cond_21
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 559
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 560
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private doPendingTransformAnimation(I)V
    .registers 13

    .line 321
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 322
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 323
    iput-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    .line 325
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 328
    :cond_13
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->getTargetView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1a

    return-void

    .line 332
    :cond_1a
    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    if-nez v2, :cond_23

    return-void

    .line 335
    :cond_23
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 336
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    const-string v4, "transform"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_7a

    .line 338
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v7}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v8

    invoke-static {v4, v3, v6, v7, v8}, Lcom/taobao/weex/ui/animation/TransformParser;->parseTransForm(Ljava/lang/String;Ljava/lang/String;IIF)Ljava/util/Map;

    move-result-object v4

    .line 339
    invoke-static {v4}, Lcom/taobao/weex/ui/animation/TransformParser;->toHolders(Ljava/util/Map;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 340
    array-length v6, v4

    const/4 v7, 0x0

    :goto_61
    if-ge v7, v6, :cond_6b

    aget-object v8, v4, v7

    .line 341
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    .line 343
    :cond_6b
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v4

    .line 344
    :try_start_6e
    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    const-string v7, "transform"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit v4

    goto :goto_7a

    :catchall_77
    move-exception p1

    monitor-exit v4
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_77

    throw p1

    .line 348
    :cond_7a
    :goto_7a
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_80
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_148

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 349
    sget-object v6, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_95

    goto :goto_80

    .line 352
    :cond_95
    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9e

    goto :goto_80

    .line 355
    :cond_9e
    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 356
    iget-object v7, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v7

    .line 357
    :try_start_a7
    iget-object v8, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v8, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    monitor-exit v7
    :try_end_ad
    .catchall {:try_start_a7 .. :try_end_ad} :catchall_145

    .line 359
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v7, "opacity"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v7, :cond_11f

    const-string v7, "backgroundColor"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c3

    goto :goto_80

    .line 366
    :cond_c3
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/dom/WXStyle;->getBackgroundColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v4

    .line 367
    invoke-static {v6, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v6

    .line 368
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v7

    if-eqz v7, :cond_ec

    .line 369
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getColor()I

    move-result v4

    goto :goto_fe

    .line 370
    :cond_ec
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_fe

    .line 371
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    .line 373
    :cond_fe
    :goto_fe
    new-instance v7, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;

    invoke-direct {v7}, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;-><init>()V

    new-instance v10, Landroid/animation/ArgbEvaluator;

    invoke-direct {v10}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v7, v10, v8}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_80

    .line 361
    :cond_11f
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v7, v9

    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {v0, v9, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_80

    :catchall_145
    move-exception p1

    .line 358
    :try_start_146
    monitor-exit v7
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_145

    throw p1

    .line 380
    :cond_148
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne p1, v1, :cond_155

    .line 381
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 383
    :cond_155
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    .line 384
    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 385
    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_179

    .line 386
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 388
    :cond_179
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_182

    .line 389
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 391
    :cond_182
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/taobao/weex/dom/transition/WXTransition$4;

    invoke-direct {v0, p0}, Lcom/taobao/weex/dom/transition/WXTransition$4;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private doTransitionAnimation(I)V
    .registers 8

    .line 250
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->getTargetView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 254
    :cond_7
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_63

    .line 255
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    sget-object v3, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    sget-object v3, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_15

    .line 259
    :cond_32
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_15

    .line 262
    :cond_3b
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_15

    .line 265
    :cond_44
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v3

    .line 266
    :try_start_47
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 268
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 269
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_5e
    monitor-exit v3

    goto :goto_15

    :catchall_60
    move-exception p1

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_47 .. :try_end_62} :catchall_60

    throw p1

    .line 282
    :cond_63
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    if-eqz v1, :cond_6a

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 285
    :cond_6a
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    if-nez v1, :cond_7e

    iget-wide v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    long-to-float v1, v1

    const/high16 v2, 0x800000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7e

    .line 286
    new-instance v1, Lcom/taobao/weex/dom/transition/WXTransition$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/dom/transition/WXTransition$2;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;)V

    iput-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    .line 299
    :cond_7e
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_85

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 302
    :cond_85
    new-instance v1, Lcom/taobao/weex/dom/transition/WXTransition$3;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition$3;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;I)V

    iput-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimationRunnable:Ljava/lang/Runnable;

    .line 312
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 313
    invoke-virtual {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->doPendingLayoutAnimation()V

    return-void
.end method

.method public static fromMap(Ljava/util/Map;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/dom/transition/WXTransition;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ")",
            "Lcom/taobao/weex/dom/transition/WXTransition;"
        }
    .end annotation

    const-string v0, "transitionProperty"

    .line 145
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 148
    :cond_a
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    return-object v2

    .line 152
    :cond_15
    new-instance v1, Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-direct {v1}, Lcom/taobao/weex/dom/transition/WXTransition;-><init>()V

    .line 153
    invoke-static {v1, v0}, Lcom/taobao/weex/dom/transition/WXTransition;->updateTransitionProperties(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/String;)V

    .line 154
    iget-object v0, v1, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    return-object v2

    :cond_26
    const-string v0, "transitionDuration"

    const-wide/16 v3, 0x0

    .line 157
    invoke-static {p0, v0, v3, v4}, Lcom/taobao/weex/dom/transition/WXTransition;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    const-string v0, "transitionDelay"

    .line 158
    invoke-static {p0, v0, v3, v4}, Lcom/taobao/weex/dom/transition/WXTransition;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    const-string v0, "transitionTimingFunction"

    .line 159
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;

    move-result-object p0

    iput-object p0, v1, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    .line 160
    iput-object p1, v1, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-object v1
.end method

.method private getTargetView()Landroid/view/View;
    .registers 2

    .line 665
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method private declared-synchronized onTransitionAnimationEnd()V
    .registers 6

    monitor-enter p0

    .line 642
    :try_start_1
    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1d

    .line 643
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    if-eqz v0, :cond_1d

    .line 644
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->getTargetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 645
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    if-eqz v1, :cond_1a

    .line 646
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    const/4 v0, 0x0

    .line 648
    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    .line 651
    :cond_1d
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_5d

    .line 652
    :try_start_20
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_57

    .line 653
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 654
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 655
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 656
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 659
    :cond_52
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 661
    :cond_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_20 .. :try_end_58} :catchall_5a

    .line 662
    monitor-exit p0

    return-void

    :catchall_5a
    move-exception v1

    .line 661
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)J"
        }
    .end annotation

    .line 673
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_13

    const-string v0, "ms"

    .line 675
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_13
    if-eqz p0, :cond_40

    .line 678
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    const-string v1, "px"

    if-eqz v0, :cond_3c

    .line 679
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition Duration Unit Only Support ms, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not ms Unit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 683
    :cond_3c
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 685
    :cond_40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_47

    return-wide p2

    .line 689
    :cond_47
    :try_start_47
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_4b} :catch_4d

    float-to-long p0, p0

    return-wide p0

    :catch_4d
    return-wide p2
.end method

.method private static updateTransitionProperties(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/String;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 742
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 743
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->PROPERTY_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 744
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_5a

    aget-object v3, v0, v2

    .line 745
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_57

    .line 749
    :cond_1f
    sget-object v4, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    sget-object v4, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 750
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 751
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WXTransition Property Not Supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_57

    .line 755
    :cond_52
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_5a
    return-void
.end method


# virtual methods
.method public doPendingLayoutAnimation()V
    .registers 8

    .line 413
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 414
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    .line 417
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 420
    :cond_13
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    .line 422
    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_25

    return-void

    .line 423
    :cond_25
    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 424
    sget-object v4, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    goto :goto_2b

    .line 427
    :cond_40
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 428
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 429
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v5

    .line 430
    :try_start_51
    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_60

    .line 432
    invoke-direct {p0, v3, v4}, Lcom/taobao/weex/dom/transition/WXTransition;->createLayoutPropertyValueHolder(Ljava/lang/String;Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :catchall_60
    move-exception v0

    .line 431
    :try_start_61
    monitor-exit v5
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0

    .line 436
    :cond_63
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 437
    invoke-direct {p0, v0}, Lcom/taobao/weex/dom/transition/WXTransition;->doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V

    return-void
.end method

.method public getProperties()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    return-object v0
.end method

.method public hasTransitionProperty(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public startTransition(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    .line 204
    :try_start_3
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->getTargetView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    .line 206
    monitor-exit v0

    return-void

    .line 208
    :cond_b
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 209
    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 210
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 211
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 212
    sget-object v5, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 213
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 214
    :cond_3b
    sget-object v5, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 215
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 220
    :cond_49
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v2, "actionDelay"

    invoke-virtual {p1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result p1

    int-to-long v2, p1

    .line 221
    iget-wide v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_63

    long-to-int p1, v4

    .line 224
    :cond_63
    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->animationRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_6c

    .line 225
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    :cond_6c
    new-instance v2, Lcom/taobao/weex/dom/transition/WXTransition$1;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/dom/transition/WXTransition$1;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;I)V

    iput-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->animationRunnable:Ljava/lang/Runnable;

    if-lez p1, :cond_7c

    .line 237
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->handler:Landroid/os/Handler;

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7f

    .line 239
    :cond_7c
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 241
    :goto_7f
    monitor-exit v0

    return-void

    :catchall_81
    move-exception p1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_81

    throw p1
.end method

.method public updateTranstionParams(Ljava/util/Map;)V
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

    const-string v0, "transitionDelay"

    .line 177
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_23

    .line 178
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-static {v1, v0, v2, v3}, Lcom/taobao/weex/dom/transition/WXTransition;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    :cond_23
    const-string v0, "transitionTimingFunction"

    .line 182
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 183
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/dom/transition/WXTransition;->createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    :cond_52
    const-string v0, "transitionDuration"

    .line 187
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 188
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-static {v1, v0, v2, v3}, Lcom/taobao/weex/dom/transition/WXTransition;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    :cond_73
    const-string v0, "transitionProperty"

    .line 192
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 193
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition;->updateTransitionProperties(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/String;)V

    :cond_9a
    return-void
.end method

###### Class com.taobao.weex.dom.transition.WXTransition.AnonymousClass1 (com.taobao.weex.dom.transition.WXTransition$1)
.class Lcom/taobao/weex/dom/transition/WXTransition$1;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->startTransition(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/dom/transition/WXTransition;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/dom/transition/WXTransition;I)V
    .registers 3

    .line 227
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    iput p2, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 230
    iget v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->val$token:I

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v1}, Lcom/taobao/weex/dom/transition/WXTransition;->access$000(Lcom/taobao/weex/dom/transition/WXTransition;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 231
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    iget v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->val$token:I

    invoke-static {v0, v1}, Lcom/taobao/weex/dom/transition/WXTransition;->access$100(Lcom/taobao/weex/dom/transition/WXTransition;I)V

    .line 233
    :cond_15
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/dom/transition/WXTransition;->access$202(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

###### Class com.taobao.weex.dom.transition.WXTransition.AnonymousClass2 (com.taobao.weex.dom.transition.WXTransition$2)
.class Lcom/taobao/weex/dom/transition/WXTransition$2;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->doTransitionAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/dom/transition/WXTransition;


# direct methods
.method constructor <init>(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$2;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$2;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/dom/transition/WXTransition;->access$302(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 290
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$2;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v0}, Lcom/taobao/weex/dom/transition/WXTransition;->access$400(Lcom/taobao/weex/dom/transition/WXTransition;)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x800000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    return-void

    .line 293
    :cond_14
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$2;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v0}, Lcom/taobao/weex/dom/transition/WXTransition;->access$500(Lcom/taobao/weex/dom/transition/WXTransition;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$2;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v0}, Lcom/taobao/weex/dom/transition/WXTransition;->access$500(Lcom/taobao/weex/dom/transition/WXTransition;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "transitionEnd"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 294
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$2;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v0}, Lcom/taobao/weex/dom/transition/WXTransition;->access$500(Lcom/taobao/weex/dom/transition/WXTransition;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    :cond_37
    return-void
.end method

###### Class com.taobao.weex.dom.transition.WXTransition.AnonymousClass3 (com.taobao.weex.dom.transition.WXTransition$3)
.class Lcom/taobao/weex/dom/transition/WXTransition$3;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->doTransitionAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/dom/transition/WXTransition;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/dom/transition/WXTransition;I)V
    .registers 3

    .line 302
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    iput p2, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v0}, Lcom/taobao/weex/dom/transition/WXTransition;->access$000(Lcom/taobao/weex/dom/transition/WXTransition;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    monitor-enter v0

    .line 306
    :try_start_7
    iget v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->val$token:I

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v2}, Lcom/taobao/weex/dom/transition/WXTransition;->access$000(Lcom/taobao/weex/dom/transition/WXTransition;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_1c

    .line 307
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    iget v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->val$token:I

    invoke-static {v1, v2}, Lcom/taobao/weex/dom/transition/WXTransition;->access$600(Lcom/taobao/weex/dom/transition/WXTransition;I)V

    .line 309
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method

###### Class com.taobao.weex.dom.transition.WXTransition.AnonymousClass4 (com.taobao.weex.dom.transition.WXTransition$4)
.class Lcom/taobao/weex/dom/transition/WXTransition$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WXTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->doPendingTransformAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasCancel:Z

.field final synthetic this$0:Lcom/taobao/weex/dom/transition/WXTransition;


# direct methods
.method constructor <init>(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->hasCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 395
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 396
    iput-boolean p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->hasCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 401
    iget-boolean v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->hasCancel:Z

    if-eqz v0, :cond_5

    return-void

    .line 404
    :cond_5
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 405
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {p1}, Lcom/taobao/weex/dom/transition/WXTransition;->access$700(Lcom/taobao/weex/dom/transition/WXTransition;)V

    return-void
.end method

###### Class com.taobao.weex.dom.transition.WXTransition.AnonymousClass5 (com.taobao.weex.dom.transition.WXTransition$5)
.class Lcom/taobao/weex/dom/transition/WXTransition$5;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/dom/transition/WXTransition;


# direct methods
.method constructor <init>(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .registers 2

    .line 525
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$5;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 528
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 529
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 531
    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    .line 532
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$5;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v4}, Lcom/taobao/weex/dom/transition/WXTransition;->access$500(Lcom/taobao/weex/dom/transition/WXTransition;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/taobao/weex/dom/transition/WXTransition;->asynchronouslyUpdateLayout(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_24
    return-void
.end method

###### Class com.taobao.weex.dom.transition.WXTransition.AnonymousClass6 (com.taobao.weex.dom.transition.WXTransition$6)
.class Lcom/taobao/weex/dom/transition/WXTransition$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WXTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasCancel:Z

.field final synthetic this$0:Lcom/taobao/weex/dom/transition/WXTransition;


# direct methods
.method constructor <init>(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .registers 2

    .line 537
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$6;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 539
    iput-boolean p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$6;->hasCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 542
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 543
    iput-boolean p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$6;->hasCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 548
    iget-boolean v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$6;->hasCancel:Z

    if-eqz v0, :cond_5

    return-void

    .line 551
    :cond_5
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 552
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$6;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {p1}, Lcom/taobao/weex/dom/transition/WXTransition;->access$700(Lcom/taobao/weex/dom/transition/WXTransition;)V

    return-void
.end method

###### Class com.taobao.weex.dom.transition.WXTransition.AnonymousClass7 (com.taobao.weex.dom.transition.WXTransition$7)
.class final Lcom/taobao/weex/dom/transition/WXTransition$7;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->asynchronouslyUpdateLayout(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$propertyName:Ljava/lang/String;

.field final synthetic val$propertyValue:F

.field final synthetic val$ref:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5

    .line 574
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyName:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    iput p4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 577
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_1a2

    goto/16 :goto_ba

    :sswitch_f
    const-string v1, "marginLeft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_ba

    :cond_19
    const/16 v2, 0xd

    goto/16 :goto_ba

    :sswitch_1d
    const-string v1, "marginRight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_ba

    :cond_27
    const/16 v2, 0xc

    goto/16 :goto_ba

    :sswitch_2b
    const-string v1, "paddingRight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_ba

    :cond_35
    const/16 v2, 0xb

    goto/16 :goto_ba

    :sswitch_39
    const-string v1, "paddingBottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_ba

    :cond_43
    const/16 v2, 0xa

    goto/16 :goto_ba

    :sswitch_47
    const-string v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_ba

    :cond_51
    const/16 v2, 0x9

    goto/16 :goto_ba

    :sswitch_55
    const-string v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_ba

    :cond_5f
    const/16 v2, 0x8

    goto/16 :goto_ba

    :sswitch_63
    const-string v1, "paddingTop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto :goto_ba

    :cond_6c
    const/4 v2, 0x7

    goto :goto_ba

    :sswitch_6e
    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto :goto_ba

    :cond_77
    const/4 v2, 0x6

    goto :goto_ba

    :sswitch_79
    const-string v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto :goto_ba

    :cond_82
    const/4 v2, 0x5

    goto :goto_ba

    :sswitch_84
    const-string v1, "marginBottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto :goto_ba

    :cond_8d
    const/4 v2, 0x4

    goto :goto_ba

    :sswitch_8f
    const-string v1, "marginTop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_ba

    :cond_98
    const/4 v2, 0x3

    goto :goto_ba

    :sswitch_9a
    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    goto :goto_ba

    :cond_a3
    const/4 v2, 0x2

    goto :goto_ba

    :sswitch_a5
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    goto :goto_ba

    :cond_ae
    const/4 v2, 0x1

    goto :goto_ba

    :sswitch_b0
    const-string v1, "paddingLeft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    goto :goto_ba

    :cond_b9
    const/4 v2, 0x0

    :goto_ba
    packed-switch v2, :pswitch_data_1dc

    goto/16 :goto_1a0

    .line 591
    :pswitch_bf
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1a0

    .line 595
    :pswitch_d0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1a0

    .line 631
    :pswitch_e1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1a0

    .line 623
    :pswitch_f2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1a0

    .line 579
    :pswitch_103
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    goto/16 :goto_1a0

    .line 607
    :pswitch_112
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_1a0

    .line 619
    :pswitch_123
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1a0

    .line 603
    :pswitch_133
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1a0

    .line 615
    :pswitch_143
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1a0

    .line 599
    :pswitch_153
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1a0

    .line 587
    :pswitch_163
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1a0

    .line 583
    :pswitch_173
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    goto :goto_1a0

    .line 611
    :pswitch_181
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1a0

    .line 627
    :pswitch_191
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$ref:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    iget v4, p0, Lcom/taobao/weex/dom/transition/WXTransition$7;->val$propertyValue:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    :goto_1a0
    return-void

    nop

    :sswitch_data_1a2
    .sparse-switch
        -0x597a2048 -> :sswitch_b0
        -0x527265d5 -> :sswitch_a5
        -0x48c76ed9 -> :sswitch_9a
        -0x3e464339 -> :sswitch_8f
        -0x113c6e87 -> :sswitch_84
        0x1c155 -> :sswitch_79
        0x32a007 -> :sswitch_6e
        0x55f4784 -> :sswitch_63
        0x677c21c -> :sswitch_55
        0x6be2dc6 -> :sswitch_47
        0xc0fb19c -> :sswitch_39
        0x2a8c788b -> :sswitch_2b
        0x3a1ea90e -> :sswitch_1d
        0x757a12d5 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1dc
    .packed-switch 0x0
        :pswitch_191
        :pswitch_181
        :pswitch_173
        :pswitch_163
        :pswitch_153
        :pswitch_143
        :pswitch_133
        :pswitch_123
        :pswitch_112
        :pswitch_103
        :pswitch_f2
        :pswitch_e1
        :pswitch_d0
        :pswitch_bf
    .end packed-switch
.end method

###### Class com.taobao.weex.dom.transition.WXTransition.AnonymousClass8 (com.taobao.weex.dom.transition.WXTransition$8)
.class final Lcom/taobao/weex/dom/transition/WXTransition$8;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2

    .line 720
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 717
    invoke-virtual {p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition$8;->map(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
