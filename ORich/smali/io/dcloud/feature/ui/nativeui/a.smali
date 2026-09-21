###### Class io.dcloud.feature.ui.nativeui.a (io.dcloud.feature.ui.nativeui.a)
.class public Lio/dcloud/feature/ui/nativeui/a;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/ui/nativeui/a$b;,
        Lio/dcloud/feature/ui/nativeui/a$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field public b:Lio/dcloud/feature/ui/nativeui/a$b;

.field private c:Landroid/view/View;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/View;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/ui/nativeui/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:F

.field private n:I

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->g:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->h:Ljava/lang/String;

    const/high16 v0, -0x1000000

    .line 4
    iput v0, p0, Lio/dcloud/feature/ui/nativeui/a;->i:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/a;->k:Z

    const/high16 v1, 0x41800000    # 16.0f

    .line 9
    iput v1, p0, Lio/dcloud/feature/ui/nativeui/a;->m:F

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lio/dcloud/feature/ui/nativeui/a;->n:I

    .line 12
    iput-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/a;->o:Z

    .line 14
    iput-boolean v1, p0, Lio/dcloud/feature/ui/nativeui/a;->p:Z

    .line 18
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/nativeui/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-string p2, ""

    .line 20
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/a;->g:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/a;->h:Ljava/lang/String;

    const/high16 p2, -0x1000000

    .line 22
    iput p2, p0, Lio/dcloud/feature/ui/nativeui/a;->i:I

    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lio/dcloud/feature/ui/nativeui/a;->k:Z

    const/high16 v0, 0x41800000    # 16.0f

    .line 27
    iput v0, p0, Lio/dcloud/feature/ui/nativeui/a;->m:F

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lio/dcloud/feature/ui/nativeui/a;->n:I

    .line 30
    iput-boolean p2, p0, Lio/dcloud/feature/ui/nativeui/a;->o:Z

    .line 32
    iput-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/a;->p:Z

    .line 41
    iput-boolean p2, p0, Lio/dcloud/feature/ui/nativeui/a;->p:Z

    .line 42
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/nativeui/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(IIZ)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 12
    iget-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/a;->o:Z

    if-nez v0, :cond_11

    .line 13
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_OTHER_BT_MIDDLE:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    if-eqz p3, :cond_23

    .line 17
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_OTHER_BT_BOTTOM:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 19
    :cond_23
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_OTHER_BT_SINGLE:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_30
    const/4 v1, 0x2

    if-ne p1, v1, :cond_61

    if-eqz p2, :cond_45

    if-eq p2, v0, :cond_38

    goto :goto_9e

    .line 30
    :cond_38
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_OTHER_BT_BOTTOM:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_45
    if-eqz p3, :cond_54

    .line 31
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_OTHER_BT_MIDDLE:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 33
    :cond_54
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_OTHER_BT_TOP:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_61
    if-le p1, v1, :cond_9e

    if-nez p2, :cond_81

    if-eqz p3, :cond_74

    .line 42
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_OTHER_BT_MIDDLE:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 44
    :cond_74
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_OTHER_BT_TOP:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_81
    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_91

    .line 47
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_OTHER_BT_BOTTOM:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 48
    :cond_91
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_OTHER_BT_MIDDLE:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_9e
    :goto_9e
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()Landroid/view/animation/Animation;
    .registers 4

    .line 10
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method static synthetic a(Lio/dcloud/feature/ui/nativeui/a;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/ui/nativeui/a;->l:Z

    return p1
.end method

.method private b(I)I
    .registers 4

    int-to-float p1, p1

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private b()Landroid/view/animation/Animation;
    .registers 4

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    return-object v0
.end method

.method private c(I)Z
    .registers 4

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->b:Lio/dcloud/feature/ui/nativeui/a$b;

    if-eqz v0, :cond_1d

    .line 3
    invoke-interface {v0, p1}, Lio/dcloud/feature/ui/nativeui/a$b;->onDismiss(I)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->d:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/a;->f()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->e:Landroid/view/View;

    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/a;->b()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :cond_1e
    :goto_1e
    return p1
.end method

.method private d()V
    .registers 16

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/a;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 4
    iget-object v3, p0, Lio/dcloud/feature/ui/nativeui/a;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 5
    iget-object v4, p0, Lio/dcloud/feature/ui/nativeui/a;->h:Ljava/lang/String;

    if-eqz v4, :cond_32

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 6
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/dcloud/feature/ui/nativeui/a;->h:Ljava/lang/String;

    const/4 v3, 0x1

    :cond_32
    const/16 v4, 0xc

    const/16 v5, 0x64

    const/16 v6, 0x11

    const/4 v7, 0x2

    const/4 v8, -0x2

    const/4 v9, -0x1

    if-eqz v3, :cond_a2

    .line 11
    new-instance v10, Landroid/widget/TextView;

    iget-object v11, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 13
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 14
    iget v11, p0, Lio/dcloud/feature/ui/nativeui/a;->m:F

    invoke-virtual {v10, v7, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setId(I)V

    .line 16
    iget-boolean v11, p0, Lio/dcloud/feature/ui/nativeui/a;->o:Z

    if-eqz v11, :cond_6a

    .line 17
    iget-object v11, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_CANCEL_BT:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_79

    .line 19
    :cond_6a
    iget-object v11, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_OTHER_BT_MIDDLE:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :goto_79
    iget-object v11, p0, Lio/dcloud/feature/ui/nativeui/a;->h:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget v11, p0, Lio/dcloud/feature/ui/nativeui/a;->i:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 25
    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    iget v12, p0, Lio/dcloud/feature/ui/nativeui/a;->n:I

    invoke-direct {p0, v12}, Lio/dcloud/feature/ui/nativeui/a;->b(I)I

    move-result v12

    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 27
    iget-object v12, p0, Lio/dcloud/feature/ui/nativeui/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v12, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object v11, p0, Lio/dcloud/feature/ui/nativeui/a;->b:Lio/dcloud/feature/ui/nativeui/a$b;

    if-eqz v11, :cond_a2

    .line 29
    invoke-interface {v11, v10}, Lio/dcloud/feature/ui/nativeui/a$b;->initCancelText(Landroid/widget/TextView;)V

    .line 33
    :cond_a2
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v11, Landroid/widget/ScrollView;

    iget-object v12, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v12, 0x12c

    .line 37
    invoke-virtual {v11, v12}, Landroid/widget/ScrollView;->setId(I)V

    .line 38
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v14, 0x0

    if-eqz v1, :cond_c1

    goto :goto_c2

    :cond_c1
    const/4 v0, 0x0

    .line 39
    :goto_c2
    invoke-virtual {v10, v14, v0, v14, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 40
    invoke-virtual {v11, v10, v13}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz v3, :cond_d3

    .line 43
    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_d6

    .line 45
    :cond_d3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47
    :goto_d6
    iget-object v3, p0, Lio/dcloud/feature/ui/nativeui/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_119

    .line 52
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v3, 0xc8

    .line 54
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 55
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/a;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v3, p0, Lio/dcloud/feature/ui/nativeui/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "#8C8C8C"

    .line 58
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget v3, p0, Lio/dcloud/feature/ui/nativeui/a;->m:F

    invoke-virtual {v0, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    iput v14, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v4, 0x6

    .line 62
    invoke-virtual {v3, v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 63
    iget-object v4, p0, Lio/dcloud/feature/ui/nativeui/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    :cond_119
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->f:Ljava/util/List;

    if-eqz v0, :cond_1bb

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1bb

    const/4 v0, 0x0

    .line 70
    :goto_124
    iget-object v3, p0, Lio/dcloud/feature/ui/nativeui/a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1bb

    .line 71
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    add-int/lit8 v4, v0, 0x64

    add-int/2addr v4, v2

    .line 73
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 74
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v4, p0, Lio/dcloud/feature/ui/nativeui/a;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4, v0, v1}, Lio/dcloud/feature/ui/nativeui/a;->a(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v4, p0, Lio/dcloud/feature/ui/nativeui/a;->f:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/feature/ui/nativeui/a$c;

    iget-object v4, v4, Lio/dcloud/feature/ui/nativeui/a$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v4, p0, Lio/dcloud/feature/ui/nativeui/a;->f:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/feature/ui/nativeui/a$c;

    iget-object v4, v4, Lio/dcloud/feature/ui/nativeui/a$c;->b:Ljava/lang/String;

    const-string v5, "destructive"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_175

    const-string v4, "#E8484A"

    .line 79
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_192

    .line 81
    :cond_175
    iget-object v4, p0, Lio/dcloud/feature/ui/nativeui/a;->f:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/feature/ui/nativeui/a$c;

    iget-object v4, v4, Lio/dcloud/feature/ui/nativeui/a$c;->c:Ljava/lang/String;

    .line 82
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v4

    if-eq v9, v4, :cond_189

    .line 84
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_192

    :cond_189
    const-string v4, "#000000"

    .line 86
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    :goto_192
    iget v4, p0, Lio/dcloud/feature/ui/nativeui/a;->m:F

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    if-lez v0, :cond_1a3

    .line 91
    invoke-virtual {p0}, Lio/dcloud/feature/ui/nativeui/a;->c()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 92
    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 93
    invoke-virtual {v10, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a6

    .line 95
    :cond_1a3
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    :goto_1a6
    iget-object v4, p0, Lio/dcloud/feature/ui/nativeui/a;->b:Lio/dcloud/feature/ui/nativeui/a$b;

    if-eqz v4, :cond_1b7

    .line 98
    iget-object v5, p0, Lio/dcloud/feature/ui/nativeui/a;->f:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/feature/ui/nativeui/a$c;

    iget-object v5, v5, Lio/dcloud/feature/ui/nativeui/a$c;->a:Ljava/lang/String;

    invoke-interface {v4, v0, v3, v5}, Lio/dcloud/feature/ui/nativeui/a$b;->initTextItem(ILandroid/widget/TextView;Ljava/lang/String;)V

    :cond_1b7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_124

    .line 103
    :cond_1bb
    iget v0, p0, Lio/dcloud/feature/ui/nativeui/a;->n:I

    invoke-direct {p0, v0}, Lio/dcloud/feature/ui/nativeui/a;->b(I)I

    move-result v0

    .line 104
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->d:Landroid/view/ViewGroup;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-boolean v1, p0, Lio/dcloud/feature/ui/nativeui/a;->p:Z

    if-eqz v1, :cond_1d5

    .line 106
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1da

    .line 108
    :cond_1d5
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v14, v0, v14, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_1da
    return-void
.end method

.method private e()Landroid/view/animation/Animation;
    .registers 11

    .line 1
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x12c

    .line 2
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-object v9
.end method

.method private f()Landroid/view/animation/Animation;
    .registers 11

    .line 1
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x12c

    .line 2
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {v9, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    return-object v9
.end method

.method private g()Landroid/view/View;
    .registers 7

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x50

    .line 3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->e:Landroid/view/View;

    .line 6
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-boolean v1, p0, Lio/dcloud/feature/ui/nativeui/a;->p:Z

    if-eqz v1, :cond_35

    .line 8
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->e:Landroid/view/View;

    const/16 v4, 0x88

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    :cond_35
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->e:Landroid/view/View;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 11
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->e:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->d:Landroid/view/ViewGroup;

    .line 14
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16
    iget-object v2, p0, Lio/dcloud/feature/ui/nativeui/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 18
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private h()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    sget v0, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_TITLE:I

    .line 2
    iget-boolean v1, p0, Lio/dcloud/feature/ui/nativeui/a;->o:Z

    if-nez v1, :cond_8

    .line 3
    sget v0, Lio/dcloud/feature/ui/nativeui/NativeUIR;->SLT_AS_IOS7_OTHER_BT_MIDDLE:I

    .line 5
    :cond_8
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(F)Lio/dcloud/feature/ui/nativeui/a;
    .registers 2

    .line 56
    iput p1, p0, Lio/dcloud/feature/ui/nativeui/a;->m:F

    return-object p0
.end method

.method public a(Lio/dcloud/feature/ui/nativeui/a$b;)Lio/dcloud/feature/ui/nativeui/a;
    .registers 2

    .line 78
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->b:Lio/dcloud/feature/ui/nativeui/a$b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lio/dcloud/feature/ui/nativeui/a;
    .registers 2

    .line 57
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lorg/json/JSONArray;)Lio/dcloud/feature/ui/nativeui/a;
    .registers 8

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->f:Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_38

    .line 65
    :try_start_e
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_35

    const-string v3, "title"

    .line 67
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "style"

    .line 68
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "color"

    .line 69
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v5, Lio/dcloud/feature/ui/nativeui/a$c;

    invoke-direct {v5, p0, v3, v4, v2}, Lio/dcloud/feature/ui/nativeui/a$c;-><init>(Lio/dcloud/feature/ui/nativeui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lio/dcloud/feature/ui/nativeui/a;->f:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v2

    .line 77
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_38
    return-object p0
.end method

.method public a(Z)Lio/dcloud/feature/ui/nativeui/a;
    .registers 2

    .line 58
    iput-boolean p1, p0, Lio/dcloud/feature/ui/nativeui/a;->j:Z

    return-object p0
.end method

.method public a(I)V
    .registers 3

    .line 49
    iget-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/a;->k:Z

    if-eqz v0, :cond_5

    return-void

    .line 51
    :cond_5
    invoke-direct {p0, p1}, Lio/dcloud/feature/ui/nativeui/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_18

    .line 52
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lio/dcloud/feature/ui/nativeui/a;->k:Z

    .line 54
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->f:Ljava/util/List;

    if-eqz p1, :cond_18

    .line 55
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_18
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    const/16 p1, 0xa

    .line 3
    iput p1, p0, Lio/dcloud/feature/ui/nativeui/a;->n:I

    .line 4
    invoke-virtual {p0}, Lio/dcloud/feature/ui/nativeui/a;->i()V

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 6
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    new-instance p1, Lio/dcloud/feature/ui/nativeui/a$a;

    invoke-direct {p1, p0}, Lio/dcloud/feature/ui/nativeui/a$a;-><init>(Lio/dcloud/feature/ui/nativeui/a;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lio/dcloud/feature/ui/nativeui/a;
    .registers 2

    .line 5
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lio/dcloud/feature/ui/nativeui/a;
    .registers 2

    .line 6
    iput-boolean p1, p0, Lio/dcloud/feature/ui/nativeui/a;->o:Z

    return-object p0
.end method

.method public c()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public d(I)Lio/dcloud/feature/ui/nativeui/a;
    .registers 2

    .line 109
    iput p1, p0, Lio/dcloud/feature/ui/nativeui/a;->i:I

    return-object p0
.end method

.method public e(I)Lio/dcloud/feature/ui/nativeui/a;
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lio/dcloud/feature/ui/nativeui/a;->b(I)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/ui/nativeui/a;->n:I

    return-object p0
.end method

.method public i()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7
    :cond_22
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/a;->g()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->e:Landroid/view/View;

    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/a;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->d:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/a;->e()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public j()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/a;->k:Z

    if-nez v0, :cond_5

    return-void

    .line 3
    :cond_5
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/a;->d()V

    .line 4
    invoke-virtual {p0}, Lio/dcloud/feature/ui/nativeui/a;->show()V

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/a;->k:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lio/dcloud/feature/ui/nativeui/a;->j:Z

    if-eqz v0, :cond_14

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_15

    :cond_14
    return-void

    .line 3
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v1, :cond_2c

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    add-int/lit8 p1, p1, -0x64

    .line 5
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/nativeui/a;->a(I)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->b:Lio/dcloud/feature/ui/nativeui/a$b;

    if-eqz v0, :cond_37

    .line 7
    invoke-interface {v0, p1}, Lio/dcloud/feature/ui/nativeui/a$b;->onItemClick(I)V

    goto :goto_37

    :cond_2c
    const/4 p1, -0x1

    .line 10
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/nativeui/a;->a(I)V

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/a;->b:Lio/dcloud/feature/ui/nativeui/a$b;

    if-eqz v0, :cond_37

    .line 12
    invoke-interface {v0, p1}, Lio/dcloud/feature/ui/nativeui/a$b;->onItemClick(I)V

    :cond_37
    :goto_37
    return-void
.end method

.method public show()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lio/dcloud/feature/ui/nativeui/a;->n:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.a.DialogInterfaceOnCancelListenerC0053a (io.dcloud.feature.ui.nativeui.a$a)
.class Lio/dcloud/feature/ui/nativeui/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/nativeui/a;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/a$a;->a:Lio/dcloud/feature/ui/nativeui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a$a;->a:Lio/dcloud/feature/ui/nativeui/a;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lio/dcloud/feature/ui/nativeui/a;->a(I)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a$a;->a:Lio/dcloud/feature/ui/nativeui/a;

    iget-object p1, p1, Lio/dcloud/feature/ui/nativeui/a;->b:Lio/dcloud/feature/ui/nativeui/a$b;

    if-eqz p1, :cond_f

    .line 3
    invoke-interface {p1, v0}, Lio/dcloud/feature/ui/nativeui/a$b;->onItemClick(I)V

    .line 4
    :cond_f
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/a$a;->a:Lio/dcloud/feature/ui/nativeui/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/feature/ui/nativeui/a;->a(Lio/dcloud/feature/ui/nativeui/a;Z)Z

    return-void
.end method

###### Class io.dcloud.feature.ui.nativeui.a.b (io.dcloud.feature.ui.nativeui.a$b)
.class public interface abstract Lio/dcloud/feature/ui/nativeui/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/ui/nativeui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract initCancelText(Landroid/widget/TextView;)V
.end method

.method public abstract initTextItem(ILandroid/widget/TextView;Ljava/lang/String;)V
.end method

.method public abstract onDismiss(I)Z
.end method

.method public abstract onItemClick(I)V
.end method

###### Class io.dcloud.feature.ui.nativeui.a.c (io.dcloud.feature.ui.nativeui.a$c)
.class public Lio/dcloud/feature/ui/nativeui/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/ui/nativeui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/ui/nativeui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_a

    const-string p1, "normal"

    .line 3
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/a$c;->b:Ljava/lang/String;

    goto :goto_c

    .line 5
    :cond_a
    iput-object p3, p0, Lio/dcloud/feature/ui/nativeui/a$c;->b:Ljava/lang/String;

    .line 6
    :goto_c
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/a$c;->a:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lio/dcloud/feature/ui/nativeui/a$c;->c:Ljava/lang/String;

    return-void
.end method
