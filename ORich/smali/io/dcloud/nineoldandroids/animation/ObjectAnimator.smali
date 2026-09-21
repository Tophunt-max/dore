###### Class io.dcloud.nineoldandroids.animation.ObjectAnimator (io.dcloud.nineoldandroids.animation.ObjectAnimator)
.class public final Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
.super Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.source "SourceFile"


# static fields
.field private static final DBG:Z = false

.field private static final PROXY_PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/nineoldandroids/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mProperty:Lio/dcloud/nineoldandroids/util/Property;

.field private mPropertyName:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    .line 4
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->ALPHA:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "alpha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->PIVOT_X:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "pivotX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->PIVOT_Y:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "pivotY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->TRANSLATION_X:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "translationX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->TRANSLATION_Y:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "translationY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->ROTATION:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "rotation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->ROTATION_X:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "rotationX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->ROTATION_Y:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "rotationY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->SCALE_X:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "scaleX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->SCALE_Y:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "scaleY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->SCROLL_X:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "scrollX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->SCROLL_Y:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "scrollY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->X:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->Y:Lio/dcloud/nineoldandroids/util/Property;

    const-string v2, "y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lio/dcloud/nineoldandroids/util/Property;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/dcloud/nineoldandroids/util/Property<",
            "TT;*>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 6
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p2}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setProperty(Lio/dcloud/nineoldandroids/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 3
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p2}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Lio/dcloud/nineoldandroids/util/Property;[F)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/dcloud/nineoldandroids/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lio/dcloud/nineoldandroids/animation/ObjectAnimator;"
        }
    .end annotation

    .line 3
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Lio/dcloud/nineoldandroids/util/Property;)V

    .line 4
    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Lio/dcloud/nineoldandroids/util/Property;[I)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/dcloud/nineoldandroids/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lio/dcloud/nineoldandroids/animation/ObjectAnimator;"
        }
    .end annotation

    .line 3
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Lio/dcloud/nineoldandroids/util/Property;)V

    .line 4
    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/dcloud/nineoldandroids/util/Property<",
            "TT;TV;>;",
            "Lio/dcloud/nineoldandroids/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Lio/dcloud/nineoldandroids/animation/ObjectAnimator;"
        }
    .end annotation

    .line 4
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Lio/dcloud/nineoldandroids/util/Property;)V

    .line 5
    invoke-virtual {v0, p3}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
    .registers 5

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p3}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;-><init>()V

    .line 2
    iput-object p0, v0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    return-object v0
.end method


# virtual methods
.method animateValue(F)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    .line 2
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_7
    if-lt v0, p1, :cond_a

    return-void

    .line 4
    :cond_a
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v1, v1, v0

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
    .registers 2

    .line 2
    invoke-super {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->clone()Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    return-object v0
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->clone()Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method initAnimation()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_3d

    .line 4
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    if-nez v0, :cond_27

    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_27

    sget-object v0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 5
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/util/Property;

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setProperty(Lio/dcloud/nineoldandroids/util/Property;)V

    .line 7
    :cond_27
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_2b
    if-lt v1, v0, :cond_31

    .line 11
    invoke-super {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    goto :goto_3d

    .line 12
    :cond_31
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_3d
    :goto_3d
    return-void
.end method

.method public setDuration(J)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
    .registers 3

    .line 2
    invoke-super {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    return-object p0
.end method

.method public bridge synthetic setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public varargs setFloatValues([F)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_c

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_c

    .line 10
    :cond_8
    invoke-super {p0, p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2b

    .line 11
    :cond_c
    :goto_c
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    new-array v2, v2, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 12
    invoke-static {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofFloat(Lio/dcloud/nineoldandroids/util/Property;[F)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    goto :goto_2b

    :cond_1e
    new-array v0, v2, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 14
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v2, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    :goto_2b
    return-void
.end method

.method public varargs setIntValues([I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_c

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_c

    .line 10
    :cond_8
    invoke-super {p0, p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_2b

    .line 11
    :cond_c
    :goto_c
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    new-array v2, v2, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 12
    invoke-static {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Lio/dcloud/nineoldandroids/util/Property;[I)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    goto :goto_2b

    :cond_1e
    new-array v0, v2, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 14
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v2, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    :goto_2b
    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_c

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_c

    .line 10
    :cond_8
    invoke-super {p0, p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_2c

    .line 11
    :cond_c
    :goto_c
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1f

    new-array v3, v3, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 12
    invoke-static {v0, v2, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofObject(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v3}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    goto :goto_2c

    :cond_1f
    new-array v0, v3, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 14
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v3, v2, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    :goto_2c
    return-void
.end method

.method public setProperty(Lio/dcloud/nineoldandroids/util/Property;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 2
    aget-object v0, v0, v1

    .line 3
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setProperty(Lio/dcloud/nineoldandroids/util/Property;)V

    .line 5
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1a
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    if-eqz v0, :cond_24

    .line 9
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 11
    :cond_24
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    .line 13
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2
    aget-object v0, v0, v1

    .line 3
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_18
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    if-eq v0, p1, :cond_18

    .line 3
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_15

    return-void

    :cond_15
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    :cond_18
    return-void
.end method

.method public setupEndValues()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->initAnimation()V

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_7
    if-lt v1, v0, :cond_a

    return-void

    .line 4
    :cond_a
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupEndValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public setupStartValues()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->initAnimation()V

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_7
    if-lt v1, v0, :cond_a

    return-void

    .line 4
    :cond_a
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupStartValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public start()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    .line 6
    :goto_25
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v2

    if-lt v1, v2, :cond_2b

    goto :goto_4b

    .line 7
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_4b
    :goto_4b
    return-object v0
.end method
