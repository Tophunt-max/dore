###### Class com.dcloud.android.widget.CapsuleLayout (com.dcloud.android.widget.CapsuleLayout)
.class public Lcom/dcloud/android/widget/CapsuleLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;,
        Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;
    }
.end annotation


# static fields
.field public static final STYLE_DARK:I = 0x2

.field public static final STYLE_LIGHT:I = 0x1


# instance fields
.field public isDiy:Z

.field public mAngle:F

.field public mBackgroundColor:I

.field mDrawable:Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;

.field private mIntervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mPaint:Landroid/graphics/Paint;

.field private mSelectColor:I

.field public mStrokeColor:I

.field public mStrokeWidth:I

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStyle:I

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/dcloud/android/widget/CapsuleLayout;->isDiy:Z

    .line 15
    iput p2, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mAngle:F

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mIntervals:Ljava/util/List;

    const-string p2, "#ffffffff"

    .line 17
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const-string v0, "#ffe5e5e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/dcloud/android/widget/CapsuleLayout;->setRoundColor(III)V

    const-string p1, "#CBCCCD"

    .line 18
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mSelectColor:I

    return-void
.end method

.method private initButtonBackground(Landroid/view/View;Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 3
    new-instance v3, Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;-><init>(Lcom/dcloud/android/widget/CapsuleLayout;Lcom/dcloud/android/widget/CapsuleLayout$1;)V

    .line 4
    new-instance v5, Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;

    invoke-direct {v5, v0, v4}, Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;-><init>(Lcom/dcloud/android/widget/CapsuleLayout;Lcom/dcloud/android/widget/CapsuleLayout$1;)V

    const/4 v4, 0x0

    new-array v6, v4, [F

    .line 6
    sget-object v7, Lcom/dcloud/android/widget/CapsuleLayout$1;->$SwitchMap$com$dcloud$android$widget$CapsuleLayout$ButtonType:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/16 v13, 0x8

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eq v7, v15, :cond_51

    if-eq v7, v14, :cond_37

    if-eq v7, v12, :cond_31

    goto :goto_6a

    :cond_31
    new-array v6, v13, [F

    .line 29
    fill-array-data v6, :array_ba

    goto :goto_6a

    :cond_37
    new-array v6, v13, [F

    aput v16, v6, v4

    aput v16, v6, v15

    .line 30
    iget v7, v0, Lcom/dcloud/android/widget/CapsuleLayout;->mAngle:F

    aput v7, v6, v14

    aput v7, v6, v12

    aput v7, v6, v11

    aput v7, v6, v10

    aput v16, v6, v9

    aput v16, v6, v8

    .line 36
    iget v7, v0, Lcom/dcloud/android/widget/CapsuleLayout;->mStrokeWidth:I

    invoke-virtual {v5, v7, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_6a

    :cond_51
    new-array v6, v13, [F

    .line 37
    iget v7, v0, Lcom/dcloud/android/widget/CapsuleLayout;->mAngle:F

    aput v7, v6, v4

    aput v7, v6, v15

    aput v16, v6, v14

    aput v16, v6, v12

    aput v16, v6, v11

    aput v16, v6, v10

    aput v7, v6, v9

    aput v7, v6, v8

    .line 44
    iget v7, v0, Lcom/dcloud/android/widget/CapsuleLayout;->mStrokeWidth:I

    invoke-virtual {v5, v7, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 61
    :goto_6a
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 62
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 64
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 65
    iget v6, v0, Lcom/dcloud/android/widget/CapsuleLayout;->mSelectColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v6, v14, [I

    .line 67
    fill-array-data v6, :array_ce

    invoke-virtual {v2, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v6, v14, [I

    .line 69
    fill-array-data v6, :array_d6

    invoke-virtual {v2, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v6, v15, [I

    const v7, 0x101009e

    aput v7, v6, v4

    .line 71
    invoke-virtual {v2, v6, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v6, v15, [I

    const v7, 0x101009c

    aput v7, v6, v4

    .line 73
    invoke-virtual {v2, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v6, v15, [I

    const v7, 0x101009d

    aput v7, v6, v4

    .line 75
    invoke-virtual {v2, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v4, v4, [I

    .line 77
    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 79
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_b5

    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b8

    .line 82
    :cond_b5
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_b8
    return-void

    nop

    :array_ba
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

    :array_ce
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_d6
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method private updateBackground()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mDrawable:Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;

    if-nez v0, :cond_19

    .line 2
    new-instance v0, Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;-><init>(Lcom/dcloud/android/widget/CapsuleLayout;Lcom/dcloud/android/widget/CapsuleLayout$1;)V

    iput-object v0, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mDrawable:Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_16

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    .line 6
    :cond_16
    invoke-virtual {p0, v0}, Lcom/dcloud/android/widget/CapsuleLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mDrawable:Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;

    iget v1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mAngle:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 10
    iget-object v0, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mDrawable:Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;

    iget v1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStrokeWidth:I

    iget v2, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 11
    iget-object v0, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mDrawable:Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;

    iget v1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 12
    iget-object v0, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mDrawable:Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateIntervalColor()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mIntervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2
    iget v2, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_6

    :cond_18
    return-void
.end method


# virtual methods
.method public addButtonView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;Landroid/view/View$OnClickListener;)V
    .registers 8

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v1, 0x11

    .line 3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 5
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {v1, p4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-direct {p0, v1, p3}, Lcom/dcloud/android/widget/CapsuleLayout;->initButtonBackground(Landroid/view/View;Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;)V

    return-void
.end method

.method public addIntervalView(F)V
    .registers 6

    .line 1
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    iget v1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStrokeWidth:I

    const/high16 v3, 0x41900000    # 18.0f

    mul-float p1, p1, v3

    float-to-int p1, p1

    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mIntervals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkColorToStyle(I)I
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/widget/CapsuleLayout;->isDiy:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p1, p1, 0xff

    const/4 v3, 0x2

    const/16 v4, 0xeb

    if-le v0, v4, :cond_32

    if-le v2, v4, :cond_32

    if-le p1, v4, :cond_32

    .line 9
    iget p1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStyle:I

    if-ne p1, v3, :cond_4a

    .line 10
    iput v1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStyle:I

    const-string p1, "#ffffffff"

    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    const-string v0, "#ffe5e5e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/dcloud/android/widget/CapsuleLayout;->setRoundColor(III)V

    .line 12
    invoke-direct {p0}, Lcom/dcloud/android/widget/CapsuleLayout;->updateIntervalColor()V

    goto :goto_4a

    .line 15
    :cond_32
    iget p1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStyle:I

    if-ne p1, v1, :cond_4a

    .line 16
    iput v3, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStyle:I

    const-string p1, "#1a000000"

    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    const-string v0, "#4de5e5e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/dcloud/android/widget/CapsuleLayout;->setRoundColor(III)V

    .line 18
    invoke-direct {p0}, Lcom/dcloud/android/widget/CapsuleLayout;->updateIntervalColor()V

    .line 21
    :cond_4a
    :goto_4a
    iget p1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStyle:I

    return p1
.end method

.method public removeAllViews()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mIntervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setAngle(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mAngle:F

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/widget/CapsuleLayout;->updateBackground()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;

    if-eqz v0, :cond_7

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mBackgroundColor:I

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/widget/CapsuleLayout;->updateBackground()V

    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 2

    return-void
.end method

.method public setButtonSelectColor(Landroid/view/View;Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;I)V
    .registers 5

    if-eqz p1, :cond_13

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    iput p3, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mSelectColor:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/widget/CapsuleLayout;->initButtonBackground(Landroid/view/View;Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;)V

    :cond_13
    return-void
.end method

.method public setRoundColor(I)V
    .registers 2

    .line 5
    iput p1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStrokeColor:I

    .line 6
    invoke-direct {p0}, Lcom/dcloud/android/widget/CapsuleLayout;->updateBackground()V

    return-void
.end method

.method public setRoundColor(III)V
    .registers 4

    .line 1
    iput p1, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mBackgroundColor:I

    .line 2
    iput p2, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStrokeColor:I

    .line 3
    iput p3, p0, Lcom/dcloud/android/widget/CapsuleLayout;->mStrokeWidth:I

    .line 4
    invoke-direct {p0}, Lcom/dcloud/android/widget/CapsuleLayout;->updateBackground()V

    return-void
.end method

###### Class com.dcloud.android.widget.CapsuleLayout.AnonymousClass1 (com.dcloud.android.widget.CapsuleLayout$1)
.class synthetic Lcom/dcloud/android/widget/CapsuleLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/CapsuleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dcloud$android$widget$CapsuleLayout$ButtonType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->values()[Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dcloud/android/widget/CapsuleLayout$1;->$SwitchMap$com$dcloud$android$widget$CapsuleLayout$ButtonType:[I

    :try_start_9
    sget-object v1, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->LIFT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/dcloud/android/widget/CapsuleLayout$1;->$SwitchMap$com$dcloud$android$widget$CapsuleLayout$ButtonType:[I

    sget-object v1, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->RIGHT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/dcloud/android/widget/CapsuleLayout$1;->$SwitchMap$com$dcloud$android$widget$CapsuleLayout$ButtonType:[I

    sget-object v1, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->MIDDLE:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class com.dcloud.android.widget.CapsuleLayout.ButtonType (com.dcloud.android.widget.CapsuleLayout$ButtonType)
.class public final enum Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/CapsuleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

.field public static final enum LIFT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

.field public static final enum MIDDLE:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

.field public static final enum RIGHT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    const-string v1, "LIFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->LIFT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    .line 2
    new-instance v1, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->MIDDLE:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    .line 3
    new-instance v3, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->RIGHT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->$VALUES:[Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;
    .registers 2

    .line 1
    const-class v0, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;
    .registers 1

    .line 1
    sget-object v0, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->$VALUES:[Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    invoke-virtual {v0}, [Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    return-object v0
.end method

###### Class com.dcloud.android.widget.CapsuleLayout.CapsuleDrawable (com.dcloud.android.widget.CapsuleLayout$CapsuleDrawable)
.class Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/CapsuleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapsuleDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/CapsuleLayout;


# direct methods
.method private constructor <init>(Lcom/dcloud/android/widget/CapsuleLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;->this$0:Lcom/dcloud/android/widget/CapsuleLayout;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/android/widget/CapsuleLayout;Lcom/dcloud/android/widget/CapsuleLayout$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/CapsuleLayout$CapsuleDrawable;-><init>(Lcom/dcloud/android/widget/CapsuleLayout;)V

    return-void
.end method
