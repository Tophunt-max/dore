###### Class io.dcloud.feature.nativeObj.BannerLayout (io.dcloud.feature.nativeObj.BannerLayout)
.class public Lio/dcloud/feature/nativeObj/BannerLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;,
        Lio/dcloud/feature/nativeObj/BannerLayout$FixedSpeedScroller;,
        Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;,
        Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;,
        Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;,
        Lio/dcloud/feature/nativeObj/BannerLayout$Position;,
        Lio/dcloud/feature/nativeObj/BannerLayout$Shape;
    }
.end annotation


# static fields
.field public static final CIRCULAR_INDICATOR:Ljava/lang/String; = "default"

.field public static final NONE_INDICATOR:Ljava/lang/String; = "none"

.field public static final WORD_INDICATOR:Ljava/lang/String; = "number"


# instance fields
.field public MAX_VALUE:I

.field private WHAT_AUTO_PLAY:I

.field private autoPlayDuration:I

.field private currentPosition:I

.field private handler:Landroid/os/Handler;

.field private imageLoader:Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;

.field private indicatorContainer:Landroid/widget/LinearLayout;

.field private indicatorMargin:I

.field private indicatorPosition:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field private indicatorShape:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

.field private indicatorSpace:I

.field private isAllowImageDownload:Z

.field private isAutoPlay:Z

.field private isImageLoop:Z

.field private isImagePhoto:Z

.field private itemCount:I

.field private mIndicatorType:Ljava/lang/String;

.field private mUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private onBannerItemClickListener:Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;

.field private pager:Landroidx/viewpager/widget/ViewPager;

.field private ringIndicatorColor:I

.field private scrollDuration:I

.field private selectedDrawable:Landroid/graphics/drawable/Drawable;

.field private selectedIndicatorColor:I

.field private selectedIndicatorHeight:I

.field private selectedIndicatorWidth:I

.field private unSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private unSelectedIndicatorColor:I

.field private unSelectedIndicatorHeight:I

.field private unSelectedIndicatorWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZZ)V
    .registers 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "default"

    .line 4
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    const/16 p1, 0x3e8

    .line 15
    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->WHAT_AUTO_PLAY:I

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isAutoPlay:Z

    const/4 p2, -0x1

    .line 21
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedIndicatorColor:I

    const p2, -0x555556

    .line 22
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedIndicatorColor:I

    .line 23
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->ringIndicatorColor:I

    .line 25
    sget-object p2, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->oval:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorShape:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    const/16 p2, 0xf

    .line 26
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedIndicatorHeight:I

    .line 27
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedIndicatorWidth:I

    .line 28
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedIndicatorHeight:I

    .line 29
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedIndicatorWidth:I

    .line 31
    sget-object p2, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorPosition:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const/16 p2, 0xfa0

    .line 32
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->autoPlayDuration:I

    const/16 p2, 0x384

    .line 33
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->scrollDuration:I

    const/4 p2, 0x3

    .line 35
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorSpace:I

    const/16 p2, 0xa

    .line 36
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorMargin:I

    const/4 p2, 0x1

    .line 42
    iput-boolean p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isAllowImageDownload:Z

    .line 44
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isImagePhoto:Z

    .line 46
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isImageLoop:Z

    const/16 p1, 0x96

    .line 78
    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->MAX_VALUE:I

    .line 82
    new-instance p1, Landroid/os/Handler;

    new-instance p2, Lio/dcloud/feature/nativeObj/BannerLayout$1;

    invoke-direct {p2, p0}, Lio/dcloud/feature/nativeObj/BannerLayout$1;-><init>(Lio/dcloud/feature/nativeObj/BannerLayout;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->handler:Landroid/os/Handler;

    .line 120
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;->setPreferredBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    .line 121
    invoke-direct {p0, p4, p5}, Lio/dcloud/feature/nativeObj/BannerLayout;->init(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/nativeObj/BannerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p3}, Lio/dcloud/feature/nativeObj/BannerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/nativeObj/BannerLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->WHAT_AUTO_PLAY:I

    return p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/nativeObj/BannerLayout;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$1000(Lio/dcloud/feature/nativeObj/BannerLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isAllowImageDownload:Z

    return p0
.end method

.method static synthetic access$1100(Lio/dcloud/feature/nativeObj/BannerLayout;)Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->imageLoader:Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;

    return-object p0
.end method

.method static synthetic access$1200(Lio/dcloud/feature/nativeObj/BannerLayout;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->switchIndicator(I)V

    return-void
.end method

.method static synthetic access$200(Lio/dcloud/feature/nativeObj/BannerLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isAutoPlay:Z

    return p0
.end method

.method static synthetic access$300(Lio/dcloud/feature/nativeObj/BannerLayout;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mUrls:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lio/dcloud/feature/nativeObj/BannerLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isImageLoop:Z

    return p0
.end method

.method static synthetic access$500(Lio/dcloud/feature/nativeObj/BannerLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->autoPlayDuration:I

    return p0
.end method

.method static synthetic access$600(Lio/dcloud/feature/nativeObj/BannerLayout;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lio/dcloud/feature/nativeObj/BannerLayout;)Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->onBannerItemClickListener:Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lio/dcloud/feature/nativeObj/BannerLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->currentPosition:I

    return p0
.end method

.method static synthetic access$802(Lio/dcloud/feature/nativeObj/BannerLayout;I)I
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->currentPosition:I

    return p1
.end method

.method static synthetic access$900(Lio/dcloud/feature/nativeObj/BannerLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    return p0
.end method

.method private getImageView(Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;I)Landroid/view/View;
    .registers 6

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isImagePhoto:Z

    if-eqz v0, :cond_60

    .line 3
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 5
    new-instance v1, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v2, Lio/dcloud/feature/nativeObj/BannerLayout$2;

    invoke-direct {v2, p0, p2}, Lio/dcloud/feature/nativeObj/BannerLayout$2;-><init>(Lio/dcloud/feature/nativeObj/BannerLayout;I)V

    invoke-virtual {v1, v2}, Lpl/droidsonroids/gif/GifImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v2, Lio/dcloud/feature/nativeObj/BannerLayout$3;

    invoke-direct {v2, p0, p2}, Lio/dcloud/feature/nativeObj/BannerLayout$3;-><init>(Lio/dcloud/feature/nativeObj/BannerLayout;I)V

    invoke-virtual {v1, v2}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p2, -0x1

    .line 23
    invoke-virtual {v1, p2}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;->setOrientation(I)V

    .line 24
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    new-instance p2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 27
    :try_start_3f
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/dcloud/PdrR;->DRAWBLE_PROGRESSBAR_WHITE_CIRCLE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_50} :catch_50

    .line 29
    :catch_50
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x64

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    invoke-virtual {v0, p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_71

    .line 33
    :cond_60
    new-instance v0, Lio/dcloud/feature/nativeObj/BannerImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/dcloud/feature/nativeObj/BannerImageView;-><init>(Landroid/content/Context;Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;)V

    .line 34
    new-instance v1, Lio/dcloud/feature/nativeObj/BannerLayout$4;

    invoke-direct {v1, p0, p2}, Lio/dcloud/feature/nativeObj/BannerLayout$4;-><init>(Lio/dcloud/feature/nativeObj/BannerLayout;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :goto_71
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private getIndicatorTextView()Landroid/widget/TextView;
    .registers 5

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x11

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0xa

    const/4 v2, 0x5

    .line 5
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x28

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 11
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v2, "#7F333333"

    .line 12
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x42340000    # 45.0f

    .line 13
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private init(ZZ)V
    .registers 16

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 5
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 6
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 7
    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Shape:[I

    iget-object v4, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorShape:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2b

    if-eq v3, v4, :cond_21

    goto :goto_34

    .line 14
    :cond_21
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 15
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 16
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_34

    .line 17
    :cond_2b
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 18
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 19
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 27
    :goto_34
    iget v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedIndicatorWidth:I

    iget v7, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedIndicatorHeight:I

    invoke-virtual {v2, v3, v7}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 28
    iget v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->ringIndicatorColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 30
    iget v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedIndicatorColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 31
    iget v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedIndicatorWidth:I

    iget v7, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedIndicatorHeight:I

    invoke-virtual {v0, v3, v7}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 32
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v7, v5

    invoke-direct {v3, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 35
    iput-object v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    iget v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedIndicatorColor:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 39
    iget v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedIndicatorWidth:I

    iget v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedIndicatorHeight:I

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 41
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v5

    aput-object v1, v3, v6

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    .line 42
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    const/4 v12, 0x2

    .line 43
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 44
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-boolean p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isImagePhoto:Z

    .line 49
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isImageLoop:Z

    .line 50
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 51
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40a00000    # 5.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedIndicatorHeight:I

    .line 52
    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedIndicatorWidth:I

    .line 53
    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedIndicatorHeight:I

    .line 54
    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedIndicatorWidth:I

    return-void
.end method

.method private setViews(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 2
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;

    .line 3
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->getViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_22

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_22

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    goto :goto_25

    .line 8
    :cond_22
    invoke-virtual {v0, p1}, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->notifyItemsView(Ljava/util/List;)V

    .line 11
    :cond_25
    :goto_25
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_4f

    .line 13
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isImagePhoto:Z

    if-eqz v0, :cond_37

    new-instance v0, Lio/dcloud/feature/nativeObj/photoview/BounceBackViewPager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/dcloud/feature/nativeObj/photoview/BounceBackViewPager;-><init>(Landroid/content/Context;)V

    goto :goto_40

    :cond_37
    new-instance v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    :goto_40
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16
    new-instance v0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;

    invoke-direct {v0, p0, p1}, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;-><init>(Lio/dcloud/feature/nativeObj/BannerLayout;Ljava/util/List;)V

    .line 17
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 19
    :cond_4f
    iget v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->scrollDuration:I

    invoke-virtual {p0, v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->setSliderTransformDuration(I)V

    .line 21
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/BannerLayout;->initIndicatiorContainer()V

    .line 25
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isImageLoop:Z

    if-eqz v0, :cond_79

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_79

    .line 26
    iget p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->MAX_VALUE:I

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 27
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 28
    iget p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    rem-int/2addr p1, p2

    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->currentPosition:I

    .line 29
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->switchIndicator(I)V

    goto :goto_87

    :cond_79
    add-int/lit8 p2, p2, 0x0

    .line 31
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->currentPosition:I

    .line 32
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 33
    iget p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->currentPosition:I

    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->switchIndicator(I)V

    .line 35
    :goto_87
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    new-instance p2, Lio/dcloud/feature/nativeObj/BannerLayout$5;

    invoke-direct {p2, p0}, Lio/dcloud/feature/nativeObj/BannerLayout$5;-><init>(Lio/dcloud/feature/nativeObj/BannerLayout;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 60
    iget-boolean p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isAutoPlay:Z

    if-eqz p1, :cond_98

    .line 61
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/BannerLayout;->startAutoPlay()V

    :cond_98
    return-void
.end method

.method private startAutoPlay()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/BannerLayout;->stopAutoPlay()V

    .line 2
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isAutoPlay:Z

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->handler:Landroid/os/Handler;

    iget v1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->WHAT_AUTO_PLAY:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->autoPlayDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_11
    return-void
.end method

.method private stopAutoPlay()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 4
    :cond_c
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isAutoPlay:Z

    if-eqz v0, :cond_22

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->handler:Landroid/os/Handler;

    iget v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->WHAT_AUTO_PLAY:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_22

    .line 7
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_22
    return-void
.end method

.method private switchIndicator(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_5a

    .line 4
    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5a

    .line 6
    :cond_33
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 7
    :goto_3d
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5a

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-ne v1, p1, :cond_52

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_54

    :cond_52
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_54
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_5a
    :goto_5a
    return-void
.end method


# virtual methods
.method public addViewUrls(Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_8

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/nativeObj/BannerLayout;->setViewUrls(Ljava/util/ArrayList;I)V

    return-void

    .line 5
    :cond_8
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 14
    :cond_10
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mUrls:Ljava/util/ArrayList;

    .line 16
    :goto_12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    :goto_21
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 19
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/nativeObj/BannerLayout;->getImageView(Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 21
    :cond_3b
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/BannerLayout;->initIndicatiorContainer()V

    .line 22
    iget-boolean v1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isImageLoop:Z

    if-eqz v1, :cond_5b

    .line 23
    iget v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->MAX_VALUE:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    .line 24
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    add-int/2addr v0, p2

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 25
    iget p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    rem-int/2addr v0, p2

    iput v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->currentPosition:I

    .line 26
    rem-int/2addr v0, p2

    invoke-direct {p0, v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->switchIndicator(I)V

    goto :goto_68

    :cond_5b
    add-int/2addr p2, v0

    .line 28
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->currentPosition:I

    .line 29
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 30
    iget p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->currentPosition:I

    invoke-direct {p0, p2}, Lio/dcloud/feature/nativeObj/BannerLayout;->switchIndicator(I)V

    .line 35
    :goto_68
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p2

    check-cast p2, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;

    .line 36
    invoke-virtual {p2, p1}, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->notifyItemsView(Ljava/util/List;)V

    return-void
.end method

.method public clearBannerData()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->removeAllViews()V

    .line 4
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    :cond_f
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto :goto_14

    .line 7
    :cond_d
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/BannerLayout;->startAutoPlay()V

    goto :goto_14

    .line 8
    :cond_11
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/BannerLayout;->stopAutoPlay()V

    .line 15
    :goto_14
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCurrentPosition()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->currentPosition:I

    return v0
.end method

.method public getPager()Landroidx/viewpager/widget/ViewPager;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrls()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initIndicatiorContainer()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 5
    :cond_7
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorPosition:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x9

    const/16 v5, 0xe

    const/16 v6, 0xa

    const/16 v7, 0xc

    packed-switch v2, :pswitch_data_da

    goto :goto_60

    :pswitch_35
    const/4 v0, 0x0

    goto :goto_60

    .line 30
    :pswitch_37
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_60

    .line 32
    :pswitch_3e
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 33
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_60

    .line 34
    :pswitch_45
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_60

    .line 36
    :pswitch_4c
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 37
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_60

    .line 38
    :pswitch_53
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 39
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_60

    .line 40
    :pswitch_5a
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 41
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_60
    if-eqz v0, :cond_d8

    .line 69
    iget v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorMargin:I

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/DeviceInfo;->getStatusHeight(Landroid/content/Context;)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorMargin:I

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 71
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    const-string v2, "number"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9f

    .line 73
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/BannerLayout;->getIndicatorTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c7

    :cond_9f
    const/4 v0, 0x0

    .line 80
    :goto_a0
    iget v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    if-ge v0, v3, :cond_c7

    .line 81
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget v4, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorSpace:I

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 84
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a0

    .line 88
    :cond_c7
    :goto_c7
    iget v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d3

    .line 89
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d8

    .line 91
    :cond_d3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_d8
    :goto_d8
    return-void

    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_53
        :pswitch_4c
        :pswitch_45
        :pswitch_3e
        :pswitch_37
        :pswitch_35
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/BannerLayout;->startAutoPlay()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/BannerLayout;->stopAutoPlay()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    check-cast p1, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget p1, p1, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;->currentPosition:I

    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->currentPosition:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;

    invoke-direct {v1, v0}, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->currentPosition:I

    iput v0, v1, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;->currentPosition:I

    return-object v1
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_9

    .line 4
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/BannerLayout;->startAutoPlay()V

    goto :goto_c

    .line 6
    :cond_9
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/BannerLayout;->stopAutoPlay()V

    :goto_c
    return-void
.end method

.method public setAllowImageDownload(ZZ)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isAllowImageDownload:Z

    if-eqz p2, :cond_17

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_17
    return-void
.end method

.method public setAutoPlay(ZI)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isAutoPlay:Z

    .line 2
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->autoPlayDuration:I

    return-void
.end method

.method public setImageLoader(Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->imageLoader:Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;

    return-void
.end method

.method public setImageLoop(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isImageLoop:Z

    return-void
.end method

.method public setIndicatorContainerData(Lio/dcloud/feature/nativeObj/BannerLayout$Position;IIILjava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorPosition:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 3
    :cond_4
    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorMargin:I

    .line 4
    iput p3, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorSpace:I

    .line 5
    iput p4, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedIndicatorHeight:I

    .line 6
    iput p4, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->selectedIndicatorWidth:I

    .line 7
    iput p4, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedIndicatorHeight:I

    .line 8
    iput p4, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->unSelectedIndicatorWidth:I

    .line 9
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 10
    iput-object p5, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    .line 12
    :cond_18
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    const-string p2, "default"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 13
    sget-object p1, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorPosition:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    goto :goto_44

    .line 14
    :cond_27
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    const-string p2, "number"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 15
    sget-object p1, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorPosition:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    goto :goto_44

    .line 16
    :cond_36
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    const-string p2, "none"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 17
    sget-object p1, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->none:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorPosition:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    :cond_44
    :goto_44
    return-void
.end method

.method public setIndicatorType(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    .line 4
    :cond_8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 5
    sget-object p1, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorPosition:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    goto :goto_34

    .line 6
    :cond_17
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 7
    sget-object p1, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorPosition:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    goto :goto_34

    .line 8
    :cond_26
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 9
    sget-object p1, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->none:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->indicatorPosition:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    :cond_34
    :goto_34
    return-void
.end method

.method public setOnBannerItemClickListener(Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->onBannerItemClickListener:Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;

    return-void
.end method

.method public setScrollDuration(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->scrollDuration:I

    return-void
.end method

.method public setSliderTransformDuration(I)V
    .registers 6

    .line 1
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    new-instance v1, Lio/dcloud/feature/nativeObj/BannerLayout$FixedSpeedScroller;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lio/dcloud/feature/nativeObj/BannerLayout$FixedSpeedScroller;-><init>(Lio/dcloud/feature/nativeObj/BannerLayout;Landroid/content/Context;Landroid/view/animation/Interpolator;I)V

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    return-void
.end method

.method public setViewUrls(Ljava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    :cond_7
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mUrls:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->itemCount:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_6e

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_54

    .line 17
    iget-boolean v1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->isImageLoop:Z

    if-eqz v1, :cond_39

    .line 18
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    invoke-direct {p0, v1, v4}, Lio/dcloud/feature/nativeObj/BannerLayout;->getImageView(Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    invoke-direct {p0, v1, v2}, Lio/dcloud/feature/nativeObj/BannerLayout;->getImageView(Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_39
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    invoke-direct {p0, v1, v4}, Lio/dcloud/feature/nativeObj/BannerLayout;->getImageView(Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    invoke-direct {p0, p1, v2}, Lio/dcloud/feature/nativeObj/BannerLayout;->getImageView(Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;I)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 25
    :cond_54
    :goto_54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_6a

    .line 26
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    invoke-direct {p0, v1, v4}, Lio/dcloud/feature/nativeObj/BannerLayout;->getImageView(Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 32
    :cond_6a
    :goto_6a
    invoke-direct {p0, v0, p2}, Lio/dcloud/feature/nativeObj/BannerLayout;->setViews(Ljava/util/List;I)V

    return-void

    .line 33
    :cond_6e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "item count not equal zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setmIndicatorType(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout;->mIndicatorType:Ljava/lang/String;

    :cond_8
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.AnonymousClass1 (io.dcloud.feature.nativeObj.BannerLayout$1)
.class Lio/dcloud/feature/nativeObj/BannerLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/BannerLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/BannerLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$000(Lio/dcloud/feature/nativeObj/BannerLayout;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_84

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$100(Lio/dcloud/feature/nativeObj/BannerLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$200(Lio/dcloud/feature/nativeObj/BannerLayout;)Z

    move-result p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$300(Lio/dcloud/feature/nativeObj/BannerLayout;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$300(Lio/dcloud/feature/nativeObj/BannerLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_84

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$400(Lio/dcloud/feature/nativeObj/BannerLayout;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$100(Lio/dcloud/feature/nativeObj/BannerLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v2}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$100(Lio/dcloud/feature/nativeObj/BannerLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_6e

    .line 6
    :cond_4d
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$100(Lio/dcloud/feature/nativeObj/BannerLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v0

    .line 7
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v2}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$300(Lio/dcloud/feature/nativeObj/BannerLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_65

    return v1

    .line 11
    :cond_65
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v2}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$100(Lio/dcloud/feature/nativeObj/BannerLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 13
    :goto_6e
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$600(Lio/dcloud/feature/nativeObj/BannerLayout;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$000(Lio/dcloud/feature/nativeObj/BannerLayout;)I

    move-result v0

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout$1;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v2}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$500(Lio/dcloud/feature/nativeObj/BannerLayout;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_84
    return v1
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.AnonymousClass2 (io.dcloud.feature.nativeObj.BannerLayout$2)
.class Lio/dcloud/feature/nativeObj/BannerLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;->getImageView(Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/BannerLayout;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$2;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$2;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$700(Lio/dcloud/feature/nativeObj/BannerLayout;)Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$2;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$700(Lio/dcloud/feature/nativeObj/BannerLayout;)Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;

    move-result-object p1

    iget v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$2;->val$position:I

    invoke-interface {p1, v0}, Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;->onItemClick(I)V

    :cond_13
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.AnonymousClass3 (io.dcloud.feature.nativeObj.BannerLayout$3)
.class Lio/dcloud/feature/nativeObj/BannerLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;->getImageView(Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/BannerLayout;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$3;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$3;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$700(Lio/dcloud/feature/nativeObj/BannerLayout;)Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$3;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$700(Lio/dcloud/feature/nativeObj/BannerLayout;)Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;

    move-result-object p1

    iget v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$3;->val$position:I

    invoke-interface {p1, v0}, Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;->onItemLongClick(I)V

    :cond_13
    const/4 p1, 0x1

    return p1
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.AnonymousClass4 (io.dcloud.feature.nativeObj.BannerLayout$4)
.class Lio/dcloud/feature/nativeObj/BannerLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;->getImageView(Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/BannerLayout;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$4;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    iput p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$4;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$700(Lio/dcloud/feature/nativeObj/BannerLayout;)Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$4;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$700(Lio/dcloud/feature/nativeObj/BannerLayout;)Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;

    move-result-object p1

    iget v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$4;->val$position:I

    invoke-interface {p1, v0}, Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;->onItemClick(I)V

    :cond_13
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.AnonymousClass5 (io.dcloud.feature.nativeObj.BannerLayout$5)
.class Lio/dcloud/feature/nativeObj/BannerLayout$5;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;->setViews(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/BannerLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/BannerLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$5;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$5;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$400(Lio/dcloud/feature/nativeObj/BannerLayout;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$5;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$900(Lio/dcloud/feature/nativeObj/BannerLayout;)I

    move-result v1

    rem-int/2addr p1, v1

    :cond_f
    invoke-static {v0, p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$802(Lio/dcloud/feature/nativeObj/BannerLayout;I)I

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$5;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$1000(Lio/dcloud/feature/nativeObj/BannerLayout;)Z

    move-result p1

    if-nez p1, :cond_5f

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$5;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$1100(Lio/dcloud/feature/nativeObj/BannerLayout;)Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$5;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$100(Lio/dcloud/feature/nativeObj/BannerLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$5;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$800(Lio/dcloud/feature/nativeObj/BannerLayout;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5f

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$5;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$1100(Lio/dcloud/feature/nativeObj/BannerLayout;)Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout$5;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout$5;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v3}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$800(Lio/dcloud/feature/nativeObj/BannerLayout;)I

    move-result v3

    invoke-interface {v1, v2, v0, p1, v3}, Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V

    .line 10
    :cond_5f
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$5;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$800(Lio/dcloud/feature/nativeObj/BannerLayout;)I

    move-result v0

    invoke-static {p1, v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$1200(Lio/dcloud/feature/nativeObj/BannerLayout;I)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.AnonymousClass6 (io.dcloud.feature.nativeObj.BannerLayout$6)
.class synthetic Lio/dcloud/feature/nativeObj/BannerLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

.field static final synthetic $SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Shape:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->values()[Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->leftBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->leftTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->rightBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->rightTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->none:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    .line 2
    :catch_54
    invoke-static {}, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->values()[Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Shape:[I

    :try_start_5d
    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->rect:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    :catch_65
    :try_start_65
    sget-object v1, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Shape:[I

    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->oval:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_6f

    :catch_6f
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.FixedSpeedScroller (io.dcloud.feature.nativeObj.BannerLayout$FixedSpeedScroller)
.class public Lio/dcloud/feature/nativeObj/BannerLayout$FixedSpeedScroller;
.super Landroid/widget/Scroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedSpeedScroller"
.end annotation


# instance fields
.field private mDuration:I

.field final synthetic this$0:Lio/dcloud/feature/nativeObj/BannerLayout;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/nativeObj/BannerLayout;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$FixedSpeedScroller;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x3e8

    .line 3
    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$FixedSpeedScroller;->mDuration:I

    return-void
.end method

.method public constructor <init>(Lio/dcloud/feature/nativeObj/BannerLayout;Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4

    .line 4
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$FixedSpeedScroller;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    .line 5
    invoke-direct {p0, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x3e8

    .line 6
    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$FixedSpeedScroller;->mDuration:I

    return-void
.end method

.method public constructor <init>(Lio/dcloud/feature/nativeObj/BannerLayout;Landroid/content/Context;Landroid/view/animation/Interpolator;I)V
    .registers 5

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/nativeObj/BannerLayout$FixedSpeedScroller;-><init>(Lio/dcloud/feature/nativeObj/BannerLayout;Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 8
    iput p4, p0, Lio/dcloud/feature/nativeObj/BannerLayout$FixedSpeedScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method public startScroll(IIII)V
    .registers 11

    .line 2
    iget v5, p0, Lio/dcloud/feature/nativeObj/BannerLayout$FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .registers 12

    .line 1
    iget v5, p0, Lio/dcloud/feature/nativeObj/BannerLayout$FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.ImageLoader (io.dcloud.feature.nativeObj.BannerLayout$ImageLoader)
.class public interface abstract Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageLoader"
.end annotation


# virtual methods
.method public abstract displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.LoopPagerAdapter (io.dcloud.feature.nativeObj.BannerLayout$LoopPagerAdapter)
.class Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoopPagerAdapter"
.end annotation


# instance fields
.field private mChildCount:I

.field final synthetic this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/BannerLayout;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->mChildCount:I

    .line 4
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->views:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public getCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_17

    :cond_a
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$400(Lio/dcloud/feature/nativeObj/BannerLayout;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    iget v0, v0, Lio/dcloud/feature/nativeObj/BannerLayout;->MAX_VALUE:I

    goto :goto_1d

    :cond_17
    :goto_17
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1d
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->mChildCount:I

    if-lez v0, :cond_a

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->mChildCount:I

    const/4 p1, -0x2

    return p1

    .line 5
    :cond_a
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getViews()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->views:Ljava/util/List;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_59

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$400(Lio/dcloud/feature/nativeObj/BannerLayout;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    .line 4
    :cond_17
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_2c
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_55

    if-eqz p2, :cond_3c

    .line 9
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v1}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$1000(Lio/dcloud/feature/nativeObj/BannerLayout;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 10
    :cond_3c
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    .line 11
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-static {v2}, Lio/dcloud/feature/nativeObj/BannerLayout;->access$1100(Lio/dcloud/feature/nativeObj/BannerLayout;)Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->this$0:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v0, p2}, Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V

    .line 14
    :cond_55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    :cond_59
    const/4 p1, 0x0

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->mChildCount:I

    .line 2
    invoke-super {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemsView(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->views:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/BannerLayout$LoopPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.OnBannerItemClickListener (io.dcloud.feature.nativeObj.BannerLayout$OnBannerItemClickListener)
.class public interface abstract Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBannerItemClickListener"
.end annotation


# virtual methods
.method public abstract onItemClick(I)V
.end method

.method public abstract onItemLongClick(I)V
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.Position (io.dcloud.feature.nativeObj.BannerLayout$Position)
.class public final enum Lio/dcloud/feature/nativeObj/BannerLayout$Position;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/nativeObj/BannerLayout$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum centerBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum centerTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum leftBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum leftTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum none:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum rightBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum rightTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v1, "centerBottom"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 2
    new-instance v1, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v3, "rightBottom"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->rightBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 3
    new-instance v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v5, "leftBottom"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->leftBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 4
    new-instance v5, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v7, "centerTop"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 5
    new-instance v7, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v9, "rightTop"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->rightTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 6
    new-instance v9, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v11, "leftTop"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->leftTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 7
    new-instance v11, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v13, "none"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->none:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const/4 v13, 0x7

    new-array v13, v13, [Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->$VALUES:[Lio/dcloud/feature/nativeObj/BannerLayout$Position;

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

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/nativeObj/BannerLayout$Position;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/nativeObj/BannerLayout$Position;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->$VALUES:[Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v0}, [Lio/dcloud/feature/nativeObj/BannerLayout$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    return-object v0
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.SavedState (io.dcloud.feature.nativeObj.BannerLayout$SavedState)
.class Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState$1;

    invoke-direct {v0}, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState$1;-><init>()V

    sput-object v0, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;->currentPosition:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lio/dcloud/feature/nativeObj/BannerLayout$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;->currentPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.SavedState.AnonymousClass1 (io.dcloud.feature.nativeObj.BannerLayout$SavedState$1)
.class final Lio/dcloud/feature/nativeObj/BannerLayout$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;
    .registers 4

    .line 2
    new-instance v0, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;-><init>(Landroid/os/Parcel;Lio/dcloud/feature/nativeObj/BannerLayout$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;
    .registers 2

    .line 2
    new-array p1, p1, [Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/BannerLayout$SavedState$1;->newArray(I)[Lio/dcloud/feature/nativeObj/BannerLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.BannerLayout.Shape (io.dcloud.feature.nativeObj.BannerLayout$Shape)
.class final enum Lio/dcloud/feature/nativeObj/BannerLayout$Shape;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/nativeObj/BannerLayout$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

.field public static final enum oval:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

.field public static final enum rect:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    const-string v1, "rect"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->rect:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    new-instance v1, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    const-string v3, "oval"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->oval:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->$VALUES:[Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

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

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/nativeObj/BannerLayout$Shape;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/nativeObj/BannerLayout$Shape;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->$VALUES:[Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    invoke-virtual {v0}, [Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    return-object v0
.end method
