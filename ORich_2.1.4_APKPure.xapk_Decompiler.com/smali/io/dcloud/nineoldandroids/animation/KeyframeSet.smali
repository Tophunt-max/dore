###### Class io.dcloud.nineoldandroids.animation.KeyframeSet (io.dcloud.nineoldandroids.animation.KeyframeSet)
.class Lio/dcloud/nineoldandroids/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field mFirstKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mKeyframes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field mLastKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

.field mNumKeyframes:I


# direct methods
.method public varargs constructor <init>([Lio/dcloud/nineoldandroids/animation/Keyframe;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    iput v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/Keyframe;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

    .line 6
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/Keyframe;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

    .line 7
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static varargs ofFloat([F)Lio/dcloud/nineoldandroids/animation/KeyframeSet;
    .registers 7

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_22

    .line 4
    invoke-static {v2}, Lio/dcloud/nineoldandroids/animation/Keyframe;->ofFloat(F)Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v0, v1, v3

    .line 5
    aget p0, p0, v3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object p0

    check-cast p0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object p0, v1, v4

    goto :goto_2e

    .line 7
    :cond_22
    aget v5, p0, v3

    invoke-static {v2, v5}, Lio/dcloud/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v2, v1, v3

    :goto_2c
    if-lt v4, v0, :cond_34

    .line 12
    :goto_2e
    new-instance p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    invoke-direct {p0, v1}, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;-><init>([Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;)V

    return-object p0

    :cond_34
    int-to-float v2, v4

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 13
    aget v3, p0, v4

    invoke-static {v2, v3}, Lio/dcloud/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c
.end method

.method public static varargs ofInt([I)Lio/dcloud/nineoldandroids/animation/KeyframeSet;
    .registers 7

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_22

    .line 4
    invoke-static {v2}, Lio/dcloud/nineoldandroids/animation/Keyframe;->ofInt(F)Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v0, v1, v3

    .line 5
    aget p0, p0, v3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->ofInt(FI)Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object p0

    check-cast p0, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object p0, v1, v4

    goto :goto_2e

    .line 7
    :cond_22
    aget v5, p0, v3

    invoke-static {v2, v5}, Lio/dcloud/nineoldandroids/animation/Keyframe;->ofInt(FI)Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v2, v1, v3

    :goto_2c
    if-lt v4, v0, :cond_34

    .line 12
    :goto_2e
    new-instance p0, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {p0, v1}, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;-><init>([Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;)V

    return-object p0

    :cond_34
    int-to-float v2, v4

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 13
    aget v3, p0, v4

    invoke-static {v2, v3}, Lio/dcloud/nineoldandroids/animation/Keyframe;->ofInt(FI)Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c
.end method

.method public static varargs ofKeyframe([Lio/dcloud/nineoldandroids/animation/Keyframe;)Lio/dcloud/nineoldandroids/animation/KeyframeSet;
    .registers 9

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6
    if-lt v2, v0, :cond_40

    if-eqz v3, :cond_21

    if-nez v4, :cond_21

    if-nez v5, :cond_21

    .line 15
    new-array v2, v0, [Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    :goto_10
    if-lt v1, v0, :cond_18

    .line 19
    new-instance p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    invoke-direct {p0, v2}, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;-><init>([Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;)V

    return-object p0

    .line 20
    :cond_18
    aget-object v3, p0, v1

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_21
    if-eqz v4, :cond_3a

    if-nez v3, :cond_3a

    if-nez v5, :cond_3a

    .line 24
    new-array v2, v0, [Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;

    :goto_29
    if-lt v1, v0, :cond_31

    .line 28
    new-instance p0, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {p0, v2}, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;-><init>([Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;)V

    return-object p0

    .line 29
    :cond_31
    aget-object v3, p0, v1

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 33
    :cond_3a
    new-instance v0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-direct {v0, p0}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;-><init>([Lio/dcloud/nineoldandroids/animation/Keyframe;)V

    return-object v0

    .line 34
    :cond_40
    aget-object v6, p0, v2

    instance-of v6, v6, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    const/4 v7, 0x1

    if-eqz v6, :cond_49

    const/4 v3, 0x1

    goto :goto_52

    .line 36
    :cond_49
    aget-object v6, p0, v2

    instance-of v6, v6, Lio/dcloud/nineoldandroids/animation/Keyframe$IntKeyframe;

    if-eqz v6, :cond_51

    const/4 v4, 0x1

    goto :goto_52

    :cond_51
    const/4 v5, 0x1

    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public static varargs ofObject([Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/KeyframeSet;
    .registers 7

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_22

    .line 4
    invoke-static {v2}, Lio/dcloud/nineoldandroids/animation/Keyframe;->ofObject(F)Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    aput-object v0, v1, v3

    .line 5
    aget-object p0, p0, v3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->ofObject(FLjava/lang/Object;)Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object p0

    check-cast p0, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    aput-object p0, v1, v4

    goto :goto_2e

    .line 7
    :cond_22
    aget-object v5, p0, v3

    invoke-static {v2, v5}, Lio/dcloud/nineoldandroids/animation/Keyframe;->ofObject(FLjava/lang/Object;)Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    aput-object v2, v1, v3

    :goto_2c
    if-lt v4, v0, :cond_34

    .line 12
    :goto_2e
    new-instance p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-direct {p0, v1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;-><init>([Lio/dcloud/nineoldandroids/animation/Keyframe;)V

    return-object p0

    :cond_34
    int-to-float v2, v4

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 13
    aget-object v3, p0, v4

    invoke-static {v2, v3}, Lio/dcloud/nineoldandroids/animation/Keyframe;->ofObject(FLjava/lang/Object;)Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c
.end method


# virtual methods
.method public clone()Lio/dcloud/nineoldandroids/animation/KeyframeSet;
    .registers 6

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4
    new-array v2, v1, [Lio/dcloud/nineoldandroids/animation/Keyframe;

    const/4 v3, 0x0

    :goto_9
    if-lt v3, v1, :cond_11

    .line 8
    new-instance v0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-direct {v0, v2}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;-><init>([Lio/dcloud/nineoldandroids/animation/Keyframe;)V

    return-object v0

    .line 9
    :cond_11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/Keyframe;->clone()Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->clone()Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_d

    .line 3
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 5
    :cond_d
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-interface {v0, p1, v1, v2}, Lio/dcloud/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_20
    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_56

    .line 11
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe;

    .line 12
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 14
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 16
    :cond_38
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v1

    sub-float/2addr p1, v1

    .line 18
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v2

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    .line 19
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 20
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 21
    invoke-interface {v1, p1, v2, v0}, Lio/dcloud/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_56
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_8f

    .line 24
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe;

    .line 25
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 27
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 29
    :cond_71
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v1

    sub-float/2addr p1, v1

    .line 31
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v2

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    .line 32
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 33
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 34
    invoke-interface {v1, p1, v0, v2}, Lio/dcloud/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 37
    :cond_8f
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

    .line 38
    :goto_91
    iget v1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    if-lt v3, v1, :cond_9c

    .line 54
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 55
    :cond_9c
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Keyframe;

    .line 56
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_d0

    .line 57
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    if-eqz v2, :cond_b6

    .line 59
    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 61
    :cond_b6
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v2

    sub-float/2addr p1, v2

    .line 63
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v3

    sub-float/2addr v3, v2

    div-float/2addr p1, v3

    .line 64
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 65
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 66
    invoke-interface {v2, p1, v0, v1}, Lio/dcloud/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d0
    add-int/lit8 v3, v3, 0x1

    move-object v0, v1

    goto :goto_91
.end method

.method public setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, " "

    const/4 v1, 0x0

    .line 1
    :goto_3
    iget v2, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    if-lt v1, v2, :cond_8

    return-object v0

    .line 2
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
