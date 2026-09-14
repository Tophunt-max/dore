###### Class io.dcloud.nineoldandroids.animation.AnimatorInflater (io.dcloud.nineoldandroids.animation.AnimatorInflater)
.class public Lio/dcloud/nineoldandroids/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Animator:[I

.field private static final AnimatorSet:[I

.field private static final AnimatorSet_ordering:I = 0x0

.field private static final Animator_duration:I = 0x1

.field private static final Animator_interpolator:I = 0x0

.field private static final Animator_repeatCount:I = 0x3

.field private static final Animator_repeatMode:I = 0x4

.field private static final Animator_startOffset:I = 0x2

.field private static final Animator_valueFrom:I = 0x5

.field private static final Animator_valueTo:I = 0x6

.field private static final Animator_valueType:I = 0x7

.field private static final PropertyAnimator:[I

.field private static final PropertyAnimator_propertyName:I

.field private static final TOGETHER:I

.field private static final VALUE_TYPE_FLOAT:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10102e2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 3
    sput-object v1, Lio/dcloud/nineoldandroids/animation/AnimatorInflater;->AnimatorSet:[I

    new-array v0, v0, [I

    const v1, 0x10102e1

    aput v1, v0, v3

    .line 10
    sput-object v0, Lio/dcloud/nineoldandroids/animation/AnimatorInflater;->PropertyAnimator:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_1e

    .line 24
    sput-object v0, Lio/dcloud/nineoldandroids/animation/AnimatorInflater;->Animator:[I

    return-void

    :array_1e
    .array-data 4
        0x1010141
        0x1010198
        0x10101be
        0x10101bf
        0x10101c0
        0x10102de
        0x10102df
        0x10102e0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lio/dcloud/nineoldandroids/animation/Animator;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet;I)Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet;I)Lio/dcloud/nineoldandroids/animation/Animator;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 4
    :cond_7
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v4, v5, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_18

    :cond_15
    const/4 v5, 0x1

    if-ne v4, v5, :cond_43

    :cond_18
    if-eqz p3, :cond_42

    if-eqz v2, :cond_42

    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lio/dcloud/nineoldandroids/animation/Animator;

    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_36

    if-nez p4, :cond_32

    .line 46
    invoke-virtual {p3, p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->playTogether([Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_42

    .line 48
    :cond_32
    invoke-virtual {p3, p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->playSequentially([Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_42

    .line 49
    :cond_36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/nineoldandroids/animation/Animator;

    add-int/lit8 v0, v6, 0x1

    .line 50
    aput-object p2, p0, v6

    move v6, v0

    goto :goto_26

    :cond_42
    :goto_42
    return-object v3

    :cond_43
    const/4 v5, 0x2

    if-eq v4, v5, :cond_47

    goto :goto_7

    .line 51
    :cond_47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "objectAnimator"

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 54
    invoke-static {p0, p2}, Lio/dcloud/nineoldandroids/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_8e

    :cond_58
    const-string v4, "animator"

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 56
    invoke-static {p0, p2, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lio/dcloud/nineoldandroids/animation/ValueAnimator;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    goto :goto_8e

    :cond_65
    const-string v4, "set"

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 58
    new-instance v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 60
    sget-object v4, Lio/dcloud/nineoldandroids/animation/AnimatorInflater;->AnimatorSet:[I

    .line 61
    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 64
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 65
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 66
    iget v7, v5, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x10

    if-ne v7, v8, :cond_88

    iget v6, v5, Landroid/util/TypedValue;->data:I

    .line 68
    :cond_88
    invoke-static {p0, p1, p2, v3, v6}, Lio/dcloud/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet;I)Lio/dcloud/nineoldandroids/animation/Animator;

    .line 69
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_8e
    if-eqz p3, :cond_7

    if-nez v2, :cond_97

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    :cond_97
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 79
    :cond_9c
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown animator name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Lio/dcloud/nineoldandroids/animation/Animator;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "Can\'t load animation resource ID #0x"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 2
    invoke-static {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object p0
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_f} :catch_31
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_17
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    if-eqz v1, :cond_14

    .line 16
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_14
    return-object p0

    :catchall_15
    move-exception p0

    goto :goto_4b

    :catch_17
    move-exception p0

    .line 17
    :try_start_18
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {v2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 22
    throw v2

    :catch_31
    move-exception p0

    .line 23
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {v2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 28
    throw v2
    :try_end_4b
    .catchall {:try_start_18 .. :try_end_4b} :catchall_15

    :goto_4b
    if-eqz v1, :cond_50

    .line 36
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 37
    :cond_50
    throw p0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lio/dcloud/nineoldandroids/animation/ValueAnimator;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 38
    sget-object v1, Lio/dcloud/nineoldandroids/animation/AnimatorInflater;->Animator:[I

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x2

    .line 42
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x7

    .line 44
    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    if-nez p2, :cond_24

    .line 48
    new-instance v10, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v10}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    goto :goto_26

    :cond_24
    move-object/from16 v10, p2

    :goto_26
    const/4 v11, 0x6

    if-nez v9, :cond_2b

    const/4 v9, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v9, 0x0

    :goto_2c
    const/4 v12, 0x5

    .line 57
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-eqz v13, :cond_35

    const/4 v14, 0x1

    goto :goto_36

    :cond_35
    const/4 v14, 0x0

    :goto_36
    if-eqz v14, :cond_3b

    .line 59
    iget v13, v13, Landroid/util/TypedValue;->type:I

    goto :goto_3c

    :cond_3b
    const/4 v13, 0x0

    .line 60
    :goto_3c
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    if-eqz v15, :cond_45

    const/16 v16, 0x1

    goto :goto_47

    :cond_45
    const/16 v16, 0x0

    :goto_47
    if-eqz v16, :cond_4c

    .line 62
    iget v15, v15, Landroid/util/TypedValue;->type:I

    goto :goto_4d

    :cond_4c
    const/4 v15, 0x0

    :goto_4d
    const/16 v2, 0x1f

    const/16 v3, 0x1c

    if-eqz v14, :cond_57

    if-lt v13, v3, :cond_57

    if-le v13, v2, :cond_5d

    :cond_57
    if-eqz v16, :cond_66

    if-lt v15, v3, :cond_66

    if-gt v15, v2, :cond_66

    .line 70
    :cond_5d
    new-instance v9, Lio/dcloud/nineoldandroids/animation/ArgbEvaluator;

    invoke-direct {v9}, Lio/dcloud/nineoldandroids/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v10, v9}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    const/4 v9, 0x0

    :cond_66
    const/4 v2, 0x0

    if-eqz v9, :cond_b1

    if-eqz v14, :cond_9b

    if-ne v13, v12, :cond_72

    .line 78
    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_76

    .line 80
    :cond_72
    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    :goto_76
    if-eqz v16, :cond_90

    if-ne v15, v12, :cond_7f

    .line 84
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_83

    .line 86
    :cond_7f
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :goto_83
    new-array v6, v6, [F

    const/4 v9, 0x0

    aput v3, v6, v9

    const/4 v13, 0x1

    aput v2, v6, v13

    .line 88
    invoke-virtual {v10, v6}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_11a

    :cond_90
    const/4 v9, 0x0

    const/4 v13, 0x1

    new-array v2, v13, [F

    aput v3, v2, v9

    .line 90
    invoke-virtual {v10, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_11a

    :cond_9b
    const/4 v9, 0x0

    const/4 v13, 0x1

    if-ne v15, v12, :cond_a4

    .line 94
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_a8

    .line 96
    :cond_a4
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :goto_a8
    new-array v3, v13, [F

    aput v2, v3, v9

    .line 98
    invoke-virtual {v10, v3}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_11a

    :cond_b1
    const/4 v9, 0x0

    if-eqz v14, :cond_f8

    if-ne v13, v12, :cond_bc

    .line 105
    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    float-to-int v13, v13

    goto :goto_cb

    :cond_bc
    if-lt v13, v3, :cond_c7

    const/16 v14, 0x1f

    if-gt v13, v14, :cond_c7

    .line 108
    invoke-virtual {v1, v12, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    goto :goto_cb

    .line 110
    :cond_c7
    invoke-virtual {v1, v12, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    :goto_cb
    if-eqz v16, :cond_ef

    if-ne v15, v12, :cond_d5

    .line 114
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    goto :goto_e4

    :cond_d5
    if-lt v15, v3, :cond_e0

    const/16 v2, 0x1f

    if-gt v15, v2, :cond_e0

    .line 117
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_e4

    .line 119
    :cond_e0
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :goto_e4
    new-array v3, v6, [I

    aput v13, v3, v9

    const/4 v6, 0x1

    aput v2, v3, v6

    .line 121
    invoke-virtual {v10, v3}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_11a

    :cond_ef
    const/4 v6, 0x1

    new-array v2, v6, [I

    aput v13, v2, v9

    .line 123
    invoke-virtual {v10, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_11a

    :cond_f8
    if-eqz v16, :cond_11a

    if-ne v15, v12, :cond_103

    .line 128
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    :goto_101
    const/4 v3, 0x1

    goto :goto_113

    :cond_103
    if-lt v15, v3, :cond_10e

    const/16 v2, 0x1f

    if-gt v15, v2, :cond_10e

    .line 131
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_101

    .line 133
    :cond_10e
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    goto :goto_101

    :goto_113
    new-array v6, v3, [I

    aput v2, v6, v9

    .line 135
    invoke-virtual {v10, v6}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    .line 140
    :cond_11a
    :goto_11a
    invoke-virtual {v10, v4, v5}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 141
    invoke-virtual {v10, v7, v8}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v2, 0x3

    .line 143
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 145
    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 146
    invoke-virtual {v10, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_12e
    const/4 v2, 0x4

    .line 149
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_13d

    const/4 v3, 0x1

    .line 151
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 152
    invoke-virtual {v10, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setRepeatMode(I)V

    .line 161
    :cond_13d
    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_14a

    .line 163
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v10, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 165
    :cond_14a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v10
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/nineoldandroids/animation/ObjectAnimator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;-><init>()V

    .line 3
    invoke-static {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lio/dcloud/nineoldandroids/animation/ValueAnimator;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 6
    sget-object v1, Lio/dcloud/nineoldandroids/animation/AnimatorInflater;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method
