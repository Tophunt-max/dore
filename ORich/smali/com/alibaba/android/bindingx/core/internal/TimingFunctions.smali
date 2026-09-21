###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions (com.alibaba.android.bindingx.core.internal.TimingFunctions)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.super Ljava/lang/Object;
.source "TimingFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;,
        Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;
    }
.end annotation


# static fields
.field private static final cache:Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache<",
            "Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static cubicBezier:Ljava/lang/Object;

.field private static easeInBack:Ljava/lang/Object;

.field private static easeInBounce:Ljava/lang/Object;

.field private static easeInCirc:Ljava/lang/Object;

.field private static easeInCubic:Ljava/lang/Object;

.field private static easeInElastic:Ljava/lang/Object;

.field private static easeInExpo:Ljava/lang/Object;

.field private static easeInOutBack:Ljava/lang/Object;

.field private static easeInOutBounce:Ljava/lang/Object;

.field private static easeInOutCirc:Ljava/lang/Object;

.field private static easeInOutCubic:Ljava/lang/Object;

.field private static easeInOutElastic:Ljava/lang/Object;

.field private static easeInOutExpo:Ljava/lang/Object;

.field private static easeInOutQuad:Ljava/lang/Object;

.field private static easeInOutQuart:Ljava/lang/Object;

.field private static easeInOutQuint:Ljava/lang/Object;

.field private static easeInOutSine:Ljava/lang/Object;

.field private static easeInQuad:Ljava/lang/Object;

.field private static easeInQuart:Ljava/lang/Object;

.field private static easeInQuint:Ljava/lang/Object;

.field private static easeInSine:Ljava/lang/Object;

.field private static easeOutBack:Ljava/lang/Object;

.field private static easeOutBounce:Ljava/lang/Object;

.field private static easeOutCirc:Ljava/lang/Object;

.field private static easeOutCubic:Ljava/lang/Object;

.field private static easeOutElastic:Ljava/lang/Object;

.field private static easeOutExpo:Ljava/lang/Object;

.field private static easeOutQuad:Ljava/lang/Object;

.field private static easeOutQuart:Ljava/lang/Object;

.field private static easeOutQuint:Ljava/lang/Object;

.field private static easeOutSine:Ljava/lang/Object;

.field private static linear:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 80
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$1;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->linear:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$2;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$2;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cubicBezier:Ljava/lang/Object;

    .line 126
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;-><init>(I)V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cache:Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    .line 142
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$3;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$3;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInQuad:Ljava/lang/Object;

    .line 155
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$4;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$4;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutQuad:Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$5;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$5;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutQuad:Ljava/lang/Object;

    .line 184
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$6;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$6;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInCubic:Ljava/lang/Object;

    .line 197
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$7;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$7;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutCubic:Ljava/lang/Object;

    .line 210
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$8;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$8;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutCubic:Ljava/lang/Object;

    .line 226
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$9;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$9;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInQuart:Ljava/lang/Object;

    .line 239
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$10;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$10;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutQuart:Ljava/lang/Object;

    .line 252
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$11;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$11;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutQuart:Ljava/lang/Object;

    .line 268
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$12;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$12;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInQuint:Ljava/lang/Object;

    .line 281
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$13;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$13;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutQuint:Ljava/lang/Object;

    .line 294
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$14;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$14;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutQuint:Ljava/lang/Object;

    .line 310
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$15;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$15;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInSine:Ljava/lang/Object;

    .line 323
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$16;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$16;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutSine:Ljava/lang/Object;

    .line 336
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$17;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$17;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutSine:Ljava/lang/Object;

    .line 349
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$18;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$18;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInExpo:Ljava/lang/Object;

    .line 362
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$19;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$19;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutExpo:Ljava/lang/Object;

    .line 375
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$20;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$20;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutExpo:Ljava/lang/Object;

    .line 397
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$21;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$21;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInCirc:Ljava/lang/Object;

    .line 410
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$22;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$22;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutCirc:Ljava/lang/Object;

    .line 423
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$23;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$23;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutCirc:Ljava/lang/Object;

    .line 440
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$24;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$24;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInElastic:Ljava/lang/Object;

    .line 469
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$25;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$25;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutElastic:Ljava/lang/Object;

    .line 497
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$26;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$26;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutElastic:Ljava/lang/Object;

    .line 528
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$27;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$27;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInBack:Ljava/lang/Object;

    .line 542
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$28;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$28;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBack:Ljava/lang/Object;

    .line 556
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$29;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$29;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutBack:Ljava/lang/Object;

    .line 573
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$30;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$30;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInBounce:Ljava/lang/Object;

    .line 586
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$31;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$31;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBounce:Ljava/lang/Object;

    .line 599
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$32;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$32;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutBounce:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(FFFF)Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;
    .registers 4

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->isCacheHit(FFFF)Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;
    .registers 1

    .line 38
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cache:Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    return-object v0
.end method

.method static synthetic access$200(DDDD)D
    .registers 8

    .line 38
    invoke-static/range {p0 .. p7}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInBounce(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(DDDD)D
    .registers 8

    .line 38
    invoke-static/range {p0 .. p7}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBounce(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static applyToScope(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->linear:Ljava/lang/Object;

    const-string v1, "linear"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInQuad:Ljava/lang/Object;

    const-string v1, "easeInQuad"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutQuad:Ljava/lang/Object;

    const-string v1, "easeOutQuad"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutQuad:Ljava/lang/Object;

    const-string v1, "easeInOutQuad"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInCubic:Ljava/lang/Object;

    const-string v1, "easeInCubic"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutCubic:Ljava/lang/Object;

    const-string v1, "easeOutCubic"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutCubic:Ljava/lang/Object;

    const-string v1, "easeInOutCubic"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInQuart:Ljava/lang/Object;

    const-string v1, "easeInQuart"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutQuart:Ljava/lang/Object;

    const-string v1, "easeOutQuart"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutQuart:Ljava/lang/Object;

    const-string v1, "easeInOutQuart"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInQuint:Ljava/lang/Object;

    const-string v1, "easeInQuint"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutQuint:Ljava/lang/Object;

    const-string v1, "easeOutQuint"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutQuint:Ljava/lang/Object;

    const-string v1, "easeInOutQuint"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInSine:Ljava/lang/Object;

    const-string v1, "easeInSine"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutSine:Ljava/lang/Object;

    const-string v1, "easeOutSine"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutSine:Ljava/lang/Object;

    const-string v1, "easeInOutSine"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInExpo:Ljava/lang/Object;

    const-string v1, "easeInExpo"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutExpo:Ljava/lang/Object;

    const-string v1, "easeOutExpo"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutExpo:Ljava/lang/Object;

    const-string v1, "easeInOutExpo"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInCirc:Ljava/lang/Object;

    const-string v1, "easeInCirc"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutCirc:Ljava/lang/Object;

    const-string v1, "easeOutCirc"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutCirc:Ljava/lang/Object;

    const-string v1, "easeInOutCirc"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInElastic:Ljava/lang/Object;

    const-string v1, "easeInElastic"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutElastic:Ljava/lang/Object;

    const-string v1, "easeOutElastic"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutElastic:Ljava/lang/Object;

    const-string v1, "easeInOutElastic"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInBack:Ljava/lang/Object;

    const-string v1, "easeInBack"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBack:Ljava/lang/Object;

    const-string v1, "easeOutBack"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutBack:Ljava/lang/Object;

    const-string v1, "easeInOutBack"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInBounce:Ljava/lang/Object;

    const-string v1, "easeInBounce"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBounce:Ljava/lang/Object;

    const-string v1, "easeOutBounce"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutBounce:Ljava/lang/Object;

    const-string v1, "easeInOutBounce"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cubicBezier:Ljava/lang/Object;

    const-string v1, "cubicBezier"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static easeInBounce(DDDD)D
    .registers 16

    sub-double v0, p6, p0

    const-wide/16 v2, 0x0

    move-wide v4, p4

    move-wide v6, p6

    .line 616
    invoke-static/range {v0 .. v7}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBounce(DDDD)D

    move-result-wide p0

    sub-double/2addr p4, p0

    add-double/2addr p4, p2

    return-wide p4
.end method

.method private static easeOutBounce(DDDD)D
    .registers 11

    div-double/2addr p0, p6

    const-wide p6, 0x401e400000000000L    # 7.5625

    const-wide v0, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v2, p0, v0

    if-gez v2, :cond_17

    mul-double p6, p6, p0

    mul-double p6, p6, p0

    :goto_13
    mul-double p4, p4, p6

    add-double/2addr p4, p2

    return-wide p4

    :cond_17
    const-wide v0, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double v2, p0, v0

    if-gez v2, :cond_2e

    const-wide v0, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr p0, v0

    mul-double p6, p6, p0

    mul-double p6, p6, p0

    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    :goto_2c
    add-double/2addr p6, p0

    goto :goto_13

    :cond_2e
    const-wide v0, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v2, p0, v0

    if-gez v2, :cond_44

    const-wide v0, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr p0, v0

    mul-double p6, p6, p0

    mul-double p6, p6, p0

    const-wide/high16 p0, 0x3fee000000000000L    # 0.9375

    goto :goto_2c

    :cond_44
    const-wide v0, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr p0, v0

    mul-double p6, p6, p0

    mul-double p6, p6, p0

    const-wide p0, 0x3fef800000000000L    # 0.984375

    goto :goto_2c
.end method

.method private static isCacheHit(FFFF)Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;
    .registers 7

    .line 130
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cache:Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->getAll()Ljava/util/Deque;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;

    .line 132
    iget v2, v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->x1:F

    invoke-static {v2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_a

    iget v2, v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->x2:F

    invoke-static {v2, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_a

    iget v2, v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->y1:F

    .line 133
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_a

    iget v2, v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->y2:F

    invoke-static {v2, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_a

    return-object v1

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass1 (com.alibaba.android.bindingx.core.internal.TimingFunctions$1)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$1;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 84
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 85
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 86
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 88
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 90
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass10 (com.alibaba.android.bindingx.core.internal.TimingFunctions$10)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$10;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 243
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 244
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 245
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 246
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    neg-double v4, v4

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v8, v0, v0

    mul-double v8, v8, v0

    mul-double v8, v8, v0

    sub-double/2addr v8, v6

    mul-double v4, v4, v8

    add-double/2addr v4, v2

    .line 248
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass11 (com.alibaba.android.bindingx.core.internal.TimingFunctions$11)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$11;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 256
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 257
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 258
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 259
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v6

    if-gez p1, :cond_49

    div-double/2addr v4, v8

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 262
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_49
    neg-double v4, v4

    div-double/2addr v4, v8

    sub-double/2addr v0, v8

    mul-double v6, v0, v0

    mul-double v6, v6, v0

    mul-double v6, v6, v0

    sub-double/2addr v6, v8

    mul-double v4, v4, v6

    add-double/2addr v4, v2

    .line 264
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass12 (com.alibaba.android.bindingx.core.internal.TimingFunctions$12)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$12;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 272
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 273
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 274
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 275
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 277
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass13 (com.alibaba.android.bindingx.core.internal.TimingFunctions$13)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$13;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 285
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 286
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 287
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 288
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v8, v0, v0

    mul-double v8, v8, v0

    mul-double v8, v8, v0

    mul-double v8, v8, v0

    add-double/2addr v8, v6

    mul-double v4, v4, v8

    add-double/2addr v4, v2

    .line 290
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass14 (com.alibaba.android.bindingx.core.internal.TimingFunctions$14)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$14;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 298
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 299
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 300
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 301
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v6

    if-gez p1, :cond_4b

    div-double/2addr v4, v8

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 304
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_4b
    div-double/2addr v4, v8

    sub-double/2addr v0, v8

    mul-double v6, v0, v0

    mul-double v6, v6, v0

    mul-double v6, v6, v0

    mul-double v6, v6, v0

    add-double/2addr v6, v8

    mul-double v4, v4, v6

    add-double/2addr v4, v2

    .line 306
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass15 (com.alibaba.android.bindingx.core.internal.TimingFunctions$15)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$15;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 314
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 315
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 316
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 317
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    neg-double v8, v4

    div-double/2addr v0, v6

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v0, v0, v6

    .line 319
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v8, v8, v0

    add-double/2addr v8, v4

    add-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass16 (com.alibaba.android.bindingx.core.internal.TimingFunctions$16)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$16;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 327
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 328
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 329
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 330
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v0, v0, v6

    .line 332
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass17 (com.alibaba.android.bindingx.core.internal.TimingFunctions$17)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$17;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 339
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 340
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 341
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 342
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 343
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    neg-double v4, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v8

    div-double/2addr v0, v6

    .line 345
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass18 (com.alibaba.android.bindingx.core.internal.TimingFunctions$18)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$18;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 353
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 354
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 355
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 356
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmpl-double p1, v0, v8

    if-nez p1, :cond_37

    goto :goto_48

    :cond_37
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v0, v0, v10

    .line 358
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    :goto_48
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass19 (com.alibaba.android.bindingx.core.internal.TimingFunctions$19)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$19;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 366
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 367
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 368
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 369
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    cmpl-double p1, v0, v6

    if-nez p1, :cond_36

    add-double/2addr v2, v4

    goto :goto_48

    :cond_36
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, -0x3fdc000000000000L    # -10.0

    mul-double v0, v0, v10

    div-double/2addr v0, v6

    .line 371
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    :goto_48
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass2 (com.alibaba.android.bindingx.core.internal.TimingFunctions$2)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$2;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 99
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v7, 0x3

    .line 100
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v9, 0x4

    .line 102
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x5

    .line 103
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const/4 v13, 0x6

    .line 104
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const/4 v15, 0x7

    .line 105
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-wide v15, v13

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 107
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    cmpl-double v2, v0, v7

    if-nez v2, :cond_69

    add-double/2addr v3, v5

    .line 110
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_69
    double-to-float v2, v9

    double-to-float v9, v11

    move-wide v10, v15

    double-to-float v10, v10

    double-to-float v11, v13

    .line 114
    invoke-static {v2, v9, v10, v11}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->access$000(FFFF)Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;

    move-result-object v12

    if-nez v12, :cond_80

    .line 116
    new-instance v12, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;

    invoke-direct {v12, v2, v9, v10, v11}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;-><init>(FFFF)V

    .line 117
    invoke-static {}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->access$100()Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->add(Ljava/lang/Object;)V

    :cond_80
    div-double/2addr v0, v7

    double-to-float v0, v0

    .line 121
    invoke-virtual {v12, v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->getInterpolation(F)F

    move-result v0

    float-to-double v0, v0

    mul-double v5, v5, v0

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass20 (com.alibaba.android.bindingx.core.internal.TimingFunctions$20)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$20;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 379
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 380
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 381
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 382
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmpl-double p1, v0, v8

    if-nez p1, :cond_3b

    .line 385
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_3b
    cmpl-double p1, v0, v6

    if-nez p1, :cond_45

    add-double/2addr v2, v4

    .line 388
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_45
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v6

    if-gez p1, :cond_61

    div-double/2addr v4, v8

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    sub-double/2addr v0, v6

    mul-double v0, v0, v10

    .line 391
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_61
    div-double/2addr v4, v8

    const-wide/high16 v10, -0x3fdc000000000000L    # -10.0

    sub-double/2addr v0, v6

    mul-double v0, v0, v10

    .line 393
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v0, v8

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass21 (com.alibaba.android.bindingx.core.internal.TimingFunctions$21)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$21;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 401
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 402
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 403
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 404
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    neg-double v4, v4

    div-double/2addr v0, v6

    mul-double v0, v0, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v6, v0

    .line 406
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass22 (com.alibaba.android.bindingx.core.internal.TimingFunctions$22)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$22;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 414
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 415
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 416
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 417
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v0, v0, v0

    sub-double/2addr v6, v0

    .line 419
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass23 (com.alibaba.android.bindingx.core.internal.TimingFunctions$23)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$23;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 427
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 428
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 429
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 430
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v6

    if-gez p1, :cond_4d

    neg-double v4, v4

    div-double/2addr v4, v8

    mul-double v0, v0, v0

    sub-double v0, v6, v0

    .line 433
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_4d
    div-double/2addr v4, v8

    sub-double/2addr v0, v8

    mul-double v0, v0, v0

    sub-double v0, v6, v0

    .line 435
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass24 (com.alibaba.android.bindingx.core.internal.TimingFunctions$24)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$24;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 443
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 444
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 445
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v7, 0x3

    .line 446
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 447
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmpl-double v2, v0, v9

    if-nez v2, :cond_3d

    .line 453
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_3d
    div-double/2addr v0, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v9

    if-nez v2, :cond_4a

    add-double/2addr v3, v5

    .line 456
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_4a
    const-wide v11, 0x3fd3333333333333L    # 0.3

    mul-double v11, v11, v7

    .line 459
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v2, v5, v13

    if-gez v2, :cond_63

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    div-double v13, v11, v13

    goto :goto_6d

    :cond_63
    div-double v13, v11, v15

    div-double v17, v5, v5

    .line 463
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->asin(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    :goto_6d
    move-wide/from16 v17, v3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    sub-double/2addr v0, v9

    mul-double v9, v0, v19

    .line 465
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v5, v5, v2

    mul-double v0, v0, v7

    sub-double/2addr v0, v13

    mul-double v0, v0, v15

    div-double/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v5, v5, v0

    neg-double v0, v5

    add-double v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass25 (com.alibaba.android.bindingx.core.internal.TimingFunctions$25)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$25;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 471
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 472
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 473
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v7, 0x3

    .line 474
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 475
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmpl-double v2, v0, v9

    if-nez v2, :cond_3d

    .line 481
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_3d
    div-double/2addr v0, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v9

    if-nez v2, :cond_4a

    add-double/2addr v3, v5

    .line 484
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_4a
    const-wide v9, 0x3fd3333333333333L    # 0.3

    mul-double v9, v9, v7

    .line 487
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v2, v5, v11

    if-gez v2, :cond_63

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    div-double v11, v9, v11

    goto :goto_6d

    :cond_63
    div-double v11, v9, v13

    div-double v15, v5, v5

    .line 491
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->asin(D)D

    move-result-wide v15

    mul-double v11, v11, v15

    :goto_6d
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const-wide/high16 v17, -0x3fdc000000000000L    # -10.0

    move-wide/from16 v19, v3

    mul-double v2, v0, v17

    .line 493
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v5

    mul-double v0, v0, v7

    sub-double/2addr v0, v11

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v0, v0, v7

    div-double/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    add-double/2addr v2, v5

    add-double v2, v2, v19

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass26 (com.alibaba.android.bindingx.core.internal.TimingFunctions$26)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$26;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 499
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 500
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 501
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v7, 0x3

    .line 502
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 503
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmpl-double v2, v0, v9

    if-nez v2, :cond_3d

    .line 509
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_3d
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double v11, v7, v9

    div-double/2addr v0, v11

    cmpl-double v2, v0, v9

    if-nez v2, :cond_4c

    add-double/2addr v3, v5

    .line 512
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_4c
    const-wide v11, 0x3fdcccccccccccccL    # 0.44999999999999996

    mul-double v11, v11, v7

    .line 515
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v2, v5, v13

    if-gez v2, :cond_65

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    div-double v13, v11, v13

    goto :goto_6f

    :cond_65
    div-double v13, v11, v15

    div-double v17, v5, v5

    .line 519
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->asin(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    :goto_6f
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v17

    if-gez v2, :cond_9a

    const-wide/high16 v19, -0x4020000000000000L    # -0.5

    const-wide/high16 v21, 0x4024000000000000L    # 10.0

    sub-double v0, v0, v17

    move-wide/from16 v23, v3

    mul-double v2, v0, v21

    .line 522
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v5, v5, v2

    mul-double v0, v0, v7

    sub-double/2addr v0, v13

    mul-double v0, v0, v15

    div-double/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v5, v5, v0

    mul-double v5, v5, v19

    add-double v5, v5, v23

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_9a
    move-wide/from16 v23, v3

    const-wide/high16 v2, -0x3fdc000000000000L    # -10.0

    sub-double v0, v0, v17

    mul-double v2, v2, v0

    .line 524
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v5

    mul-double v0, v0, v7

    sub-double/2addr v0, v13

    mul-double v0, v0, v15

    div-double/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v0

    add-double/2addr v2, v5

    add-double v2, v2, v23

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass27 (com.alibaba.android.bindingx.core.internal.TimingFunctions$27)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$27;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 531
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 532
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 533
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 534
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 535
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    const-wide v6, 0x40059cd5f99c38b0L    # 2.70158

    mul-double v6, v6, v0

    const-wide v0, 0x3ffb39abf3387161L    # 1.70158

    sub-double/2addr v6, v0

    mul-double v4, v4, v6

    add-double/2addr v4, v2

    .line 538
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass28 (com.alibaba.android.bindingx.core.internal.TimingFunctions$28)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$28;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 545
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 546
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 547
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 548
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 549
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v8, v0, v0

    const-wide v10, 0x40059cd5f99c38b0L    # 2.70158

    mul-double v10, v10, v0

    const-wide v0, 0x3ffb39abf3387161L    # 1.70158

    add-double/2addr v10, v0

    mul-double v8, v8, v10

    add-double/2addr v8, v6

    mul-double v4, v4, v8

    add-double/2addr v4, v2

    .line 552
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass29 (com.alibaba.android.bindingx.core.internal.TimingFunctions$29)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$29;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 559
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 560
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 561
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 562
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 563
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide v6, 0x400cc25fe974a340L    # 3.5949095

    const-wide v10, 0x4004c25fe974a340L    # 2.5949095

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v12

    if-gez p1, :cond_54

    div-double/2addr v4, v8

    mul-double v8, v0, v0

    mul-double v6, v6, v0

    sub-double/2addr v6, v10

    mul-double v8, v8, v6

    mul-double v4, v4, v8

    add-double/2addr v4, v2

    .line 567
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_54
    div-double/2addr v4, v8

    sub-double/2addr v0, v8

    mul-double v12, v0, v0

    mul-double v6, v6, v0

    add-double/2addr v6, v10

    mul-double v12, v12, v6

    add-double/2addr v12, v8

    mul-double v4, v4, v12

    add-double/2addr v4, v2

    .line 569
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass3 (com.alibaba.android.bindingx.core.internal.TimingFunctions$3)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$3;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 146
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 147
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 148
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 149
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 151
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass30 (com.alibaba.android.bindingx.core.internal.TimingFunctions$30)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$30;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 576
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 577
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v2, 0x2

    .line 578
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v2, 0x3

    .line 579
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 580
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 582
    invoke-static/range {v3 .. v10}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->access$200(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass31 (com.alibaba.android.bindingx.core.internal.TimingFunctions$31)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$31;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 590
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v2, 0x2

    .line 591
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v2, 0x3

    .line 592
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 593
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 595
    invoke-static/range {v3 .. v10}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->access$300(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass32 (com.alibaba.android.bindingx.core.internal.TimingFunctions$32)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$32;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 602
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 603
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 604
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const/4 v5, 0x3

    .line 605
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 606
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v7, v12, v5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v0, v7

    if-gez v2, :cond_4d

    mul-double v6, v0, v5

    const-wide/16 v8, 0x0

    move-wide v10, v14

    .line 609
    invoke-static/range {v6 .. v13}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->access$200(DDDD)D

    move-result-wide v0

    mul-double v0, v0, v16

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_4d
    mul-double v0, v0, v5

    sub-double v6, v0, v12

    const-wide/16 v8, 0x0

    move-wide v10, v14

    .line 611
    invoke-static/range {v6 .. v13}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->access$300(DDDD)D

    move-result-wide v0

    mul-double v0, v0, v16

    mul-double v14, v14, v16

    add-double/2addr v0, v14

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass4 (com.alibaba.android.bindingx.core.internal.TimingFunctions$4)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$4;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 159
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 160
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 161
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 162
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    neg-double v4, v4

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 164
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass5 (com.alibaba.android.bindingx.core.internal.TimingFunctions$5)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$5;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 172
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 173
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 174
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 175
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v6

    if-gez p1, :cond_45

    div-double/2addr v4, v8

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 178
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_45
    neg-double v4, v4

    div-double/2addr v4, v8

    sub-double/2addr v0, v6

    sub-double v8, v0, v8

    mul-double v0, v0, v8

    sub-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 180
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass6 (com.alibaba.android.bindingx.core.internal.TimingFunctions$6)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$6;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 188
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 189
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 190
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 191
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 193
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass7 (com.alibaba.android.bindingx.core.internal.TimingFunctions$7)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$7;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 201
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 202
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 203
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 204
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v8, v0, v0

    mul-double v8, v8, v0

    add-double/2addr v8, v6

    mul-double v4, v4, v8

    add-double/2addr v4, v2

    .line 206
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass8 (com.alibaba.android.bindingx.core.internal.TimingFunctions$8)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$8;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 214
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 215
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 216
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 217
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v6

    if-gez p1, :cond_47

    div-double/2addr v4, v8

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 220
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_47
    div-double/2addr v4, v8

    sub-double/2addr v0, v8

    mul-double v6, v0, v0

    mul-double v6, v6, v0

    add-double/2addr v6, v8

    mul-double v4, v4, v6

    add-double/2addr v4, v2

    .line 222
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass9 (com.alibaba.android.bindingx.core.internal.TimingFunctions$9)
.class final Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$9;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 230
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 231
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 232
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 233
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 235
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.BezierInterpolatorWrapper (com.alibaba.android.bindingx.core.internal.TimingFunctions$BezierInterpolatorWrapper)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BezierInterpolatorWrapper"
.end annotation


# instance fields
.field private mInnerInterpolator:Landroid/view/animation/Interpolator;

.field x1:F

.field x2:F

.field y1:F

.field y2:F


# direct methods
.method constructor <init>(FFFF)V
    .registers 5

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->x1:F

    .line 659
    iput p2, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->y1:F

    .line 660
    iput p3, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->x2:F

    .line 661
    iput p4, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->y2:F

    .line 662
    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->mInnerInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3

    .line 667
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->mInnerInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.InnerCache (com.alibaba.android.bindingx.core.internal.TimingFunctions$InnerCache)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;
.super Ljava/lang/Object;
.source "TimingFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final deque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->deque:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->deque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_14

    .line 641
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->deque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 642
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->deque:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_19

    .line 644
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->deque:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_19
    return-void
.end method

.method getAll()Ljava/util/Deque;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "TT;>;"
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->deque:Ljava/util/ArrayDeque;

    return-object v0
.end method
