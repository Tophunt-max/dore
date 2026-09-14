###### Class com.taobao.weex.ui.animation.WXAnimationBean (com.taobao.weex.ui.animation.WXAnimationBean)
.class public Lcom/taobao/weex/ui/animation/WXAnimationBean;
.super Ljava/lang/Object;
.source "WXAnimationBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;
    }
.end annotation


# static fields
.field public static final CUBIC_BEZIER:Ljava/lang/String; = "cubic-bezier"

.field public static final EASE_IN:Ljava/lang/String; = "ease-in"

.field public static final EASE_IN_OUT:Ljava/lang/String; = "ease-in-out"

.field public static final EASE_OUT:Ljava/lang/String; = "ease-out"

.field public static final LINEAR:Ljava/lang/String; = "linear"

.field public static final NUM_CUBIC_PARAM:I = 0x4


# instance fields
.field public delay:J

.field public duration:J

.field public needLayout:Z

.field public styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

.field public timingFunction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.taobao.weex.ui.animation.WXAnimationBean.Style (com.taobao.weex.ui.animation.WXAnimationBean$Style)
.class public Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;
.super Ljava/lang/Object;
.source "WXAnimationBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/animation/WXAnimationBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Style"
.end annotation


# static fields
.field public static final BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final BOTTOM:Ljava/lang/String; = "bottom"

.field public static final CENTER:Ljava/lang/String; = "center"

.field private static final DEG:Ljava/lang/String; = "deg"

.field private static final FULL:Ljava/lang/String; = "100%"

.field private static final HALF:Ljava/lang/String; = "50%"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final LEFT:Ljava/lang/String; = "left"

.field private static final PX:Ljava/lang/String; = "px"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final TOP:Ljava/lang/String; = "top"

.field public static final WIDTH:Ljava/lang/String; = "width"

.field public static final WX_ROTATE:Ljava/lang/String; = "rotate"

.field public static final WX_ROTATE_X:Ljava/lang/String; = "rotateX"

.field public static final WX_ROTATE_Y:Ljava/lang/String; = "rotateY"

.field public static final WX_SCALE:Ljava/lang/String; = "scale"

.field public static final WX_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final WX_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final WX_TRANSLATE:Ljava/lang/String; = "translate"

.field public static final WX_TRANSLATE_X:Ljava/lang/String; = "translateX"

.field public static final WX_TRANSLATE_Y:Ljava/lang/String; = "translateY"

.field private static final ZERO:Ljava/lang/String; = "0%"

.field private static defaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static wxToAndroidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field public backgroundColor:Ljava/lang/String;

.field private cameraDistance:F

.field public height:Ljava/lang/String;

.field private holders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field public opacity:Ljava/lang/String;

.field private pivot:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public transform:Ljava/lang/String;

.field private transformMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public transformOrigin:Ljava/lang/String;

.field public width:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 83
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    .line 84
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    .line 88
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/util/Property;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 89
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "translate"

    .line 88
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "translateX"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "translateY"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    sget-object v2, Landroid/view/View;->ROTATION:Landroid/util/Property;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "rotate"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    sget-object v2, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "rotateX"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    sget-object v2, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "rotateY"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    new-array v1, v1, [Landroid/util/Property;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    aput-object v2, v1, v4

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "scale"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "scaleX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "scaleY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    invoke-static {}, Lcom/taobao/weex/ui/animation/CameraDistanceProperty;->getInstance()Landroid/util/Property;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "perspective"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    .line 100
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->holders:Ljava/util/List;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 118
    iput v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->cameraDistance:F

    return-void
.end method

.method private initHolders()V
    .registers 7

    .line 223
    iget-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    iget-object v4, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->holders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Property;

    new-array v3, v3, [F

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v3, v2

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 226
    :cond_36
    iget-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->opacity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 227
    iget-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->holders:Ljava/util/List;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->opacity:Ljava/lang/String;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;F)F

    move-result v4

    aput v4, v3, v2

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    return-void
.end method

.method private static parsePercent(Ljava/lang/String;IF)F
    .registers 3

    .line 184
    invoke-static {p0, p2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;F)F

    move-result p0

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p0, p2

    int-to-float p1, p1

    mul-float p0, p0, p1

    return p0
.end method

.method private static parsePercentOrPx(Ljava/lang/String;IF)F
    .registers 7

    const/16 v0, 0x25

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v2, :cond_15

    .line 176
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v3}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePercent(Ljava/lang/String;IF)F

    move-result p0

    return p0

    :cond_15
    const-string p1, "px"

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_2a

    .line 178
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p0

    return p0

    .line 180
    :cond_2a
    invoke-static {p0, v3}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p0

    return p0
.end method

.method private static parsePivot(Ljava/lang/String;IIF)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIF)",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    const/16 v0, 0x20

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_52

    move v2, v1

    .line 127
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 128
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 132
    :cond_20
    :goto_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_52

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_52

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 134
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-static {v0, p1, p2, p3}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePivot(Ljava/util/List;IIF)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_52
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parsePivot(Ljava/util/List;IIF)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIF)",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    .line 145
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1, p3}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePivotX(Ljava/lang/String;IF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p2, p3}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePivotY(Ljava/lang/String;IF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static parsePivotX(Ljava/lang/String;IF)F
    .registers 4

    const-string v0, "left"

    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "0%"

    goto :goto_20

    :cond_b
    const-string v0, "right"

    .line 152
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "100%"

    goto :goto_20

    :cond_16
    const-string v0, "center"

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p0, "50%"

    .line 157
    :cond_20
    :goto_20
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePercentOrPx(Ljava/lang/String;IF)F

    move-result p0

    return p0
.end method

.method private static parsePivotY(Ljava/lang/String;IF)F
    .registers 4

    const-string v0, "top"

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "0%"

    goto :goto_20

    :cond_b
    const-string v0, "bottom"

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "100%"

    goto :goto_20

    :cond_16
    const-string v0, "center"

    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p0, "50%"

    .line 169
    :cond_20
    :goto_20
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePercentOrPx(Ljava/lang/String;IF)F

    move-result p0

    return p0
.end method

.method private resetToDefaultIfAbsent()V
    .registers 5

    .line 188
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    iget-object v2, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 190
    iget-object v2, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_30
    return-void
.end method


# virtual methods
.method public getCameraDistance()F
    .registers 2

    .line 236
    iget v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->cameraDistance:F

    return v0
.end method

.method public getHolders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->holders:Ljava/util/List;

    return-object v0
.end method

.method public getPivot()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->pivot:Landroid/util/Pair;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;IIFLcom/taobao/weex/WXSDKInstance;)V
    .registers 7

    .line 201
    invoke-static {p1, p3, p4, p5}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePivot(Ljava/lang/String;IIF)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->pivot:Landroid/util/Pair;

    .line 202
    iget-object p1, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    invoke-virtual {p6}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6, p2, p3, p4, p5}, Lcom/taobao/weex/ui/animation/TransformParser;->parseTransForm(Ljava/lang/String;Ljava/lang/String;IIF)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 203
    invoke-direct {p0}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->resetToDefaultIfAbsent()V

    .line 204
    iget-object p1, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    invoke-static {}, Lcom/taobao/weex/ui/animation/CameraDistanceProperty;->getInstance()Landroid/util/Property;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 205
    iget-object p1, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    invoke-static {}, Lcom/taobao/weex/ui/animation/CameraDistanceProperty;->getInstance()Landroid/util/Property;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->cameraDistance:F

    .line 207
    :cond_34
    invoke-direct {p0}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->initHolders()V

    return-void
.end method

.method public init(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 217
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    iget-object v1, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->holders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_49
    return-void
.end method
