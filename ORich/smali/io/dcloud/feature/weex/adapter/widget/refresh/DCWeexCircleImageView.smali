###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexCircleImageView (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexCircleImageView)
.class public Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;
.super Landroid/widget/ImageView;
.source "DCWeexCircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x5e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 2.5f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.0f


# instance fields
.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShadowRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .registers 8

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p3, p3, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    const/4 v1, 0x0

    mul-float v1, v1, p1

    float-to-int v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    mul-float v2, v2, p1

    float-to-int v2, v2

    .line 58
    iput v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    .line 61
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->elevationSupported()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 62
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    .line 63
    invoke-static {p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_67

    .line 65
    :cond_40
    new-instance p1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;

    iget v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    invoke-direct {p1, p0, v2, p3}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;-><init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;II)V

    .line 66
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/dcloud/android/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 68
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    int-to-float v2, v2

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v3, 0x5e000000

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 70
    iget p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    .line 72
    invoke-virtual {p0, p1, p1, p1, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setPadding(IIII)V

    .line 74
    :goto_67
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-virtual {p0, p3}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;)I
    .registers 1

    .line 39
    iget p0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    return p0
.end method

.method static synthetic access$002(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;I)I
    .registers 2

    .line 39
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    return p1
.end method

.method private elevationSupported()Z
    .registers 3

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 3

    .line 105
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 106
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_e

    .line 107
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_e
    return-void
.end method

.method public onAnimationStart()V
    .registers 3

    .line 97
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 98
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_e

    .line 99
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 85
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->elevationSupported()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 86
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setMeasuredDimension(II)V

    :cond_1e
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 122
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_15

    .line 123
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_15
    return-void
.end method

.method public setBackgroundColorRes(I)V
    .registers 3

    .line 117
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setBackgroundColor(I)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexCircleImageView.OvalShadow (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexCircleImageView$OvalShadow)
.class Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "DCWeexCircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleDiameter:I

.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;II)V
    .registers 12

    .line 132
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    .line 133
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 135
    invoke-static {p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->access$002(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;I)I

    .line 136
    iput p3, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;->mCircleDiameter:I

    .line 137
    new-instance p2, Landroid/graphics/RadialGradient;

    iget p3, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v0, p3, 0x2

    int-to-float v2, v0

    const/4 v0, 0x2

    div-int/2addr p3, v0

    int-to-float v3, p3

    .line 138
    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->access$000(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;)I

    move-result p1

    int-to-float v4, p1

    new-array v5, v0, [I

    fill-array-data v5, :array_34

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    .line 141
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_34
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 7

    .line 146
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getWidth()I

    move-result v0

    .line 147
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getHeight()I

    move-result v1

    .line 148
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-static {v3}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->access$000(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 150
    iget v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
