###### Class io.dcloud.feature.nativeObj.NativeImageSlider (io.dcloud.feature.nativeObj.NativeImageSlider)
.class public Lio/dcloud/feature/nativeObj/NativeImageSlider;
.super Lio/dcloud/feature/nativeObj/NativeView;
.source "SourceFile"


# static fields
.field static final TF:Ljava/lang/String; = "{clientX:%d,clientY:%d,pageX:%d,pageY:%d,screenX:%d,screenY:%d,currentImageIndex:%d}"


# instance fields
.field defaultOptions:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

.field isAutoplay:Z

.field isFullscreen:Z

.field isLoop:Z

.field mBackgroundView:Landroid/view/View;

.field mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

.field mFistBitmapHeight:I

.field mFistBitmapWidth:I

.field mIndicator:Ljava/lang/String;

.field mInterval:I

.field mSliderHeight:I

.field measureTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/dcloud/feature/nativeObj/NativeView;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->isLoop:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->isFullscreen:Z

    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->isAutoplay:Z

    const/16 p3, 0xbb8

    .line 4
    iput p3, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mInterval:I

    .line 6
    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mSliderHeight:I

    .line 7
    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mFistBitmapWidth:I

    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mFistBitmapHeight:I

    .line 8
    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->measureTop:I

    const-string p3, "default"

    .line 9
    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mIndicator:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p2}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->addBannerView(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 16
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mIntercept:Z

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/nativeObj/NativeImageSlider;II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->updateSliderHeight(II)V

    return-void
.end method

.method private toArrayList(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/common/DHInterface/IWebview;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_6b

    .line 2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6b

    const/4 v1, 0x0

    .line 3
    :goto_e
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6b

    .line 4
    new-instance v2, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    invoke-direct {v2}, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;-><init>()V

    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "src"

    .line 7
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {p1, v4}, Lio/dcloud/common/util/PdrUtil;->convertAppPath(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v4}, Lio/dcloud/common/util/ImageLoaderUtil;->addNetIconDownloadUrl(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v4}, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->setUrl(Ljava/lang/String;)V

    const-string v4, "align"

    .line 11
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 12
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->align:Ljava/lang/String;

    :cond_3b
    const-string v4, "verticalAlign"

    .line 14
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 15
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->verticalAlign:Ljava/lang/String;

    :cond_49
    const-string v4, "height"

    .line 17
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 18
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->height:Ljava/lang/String;

    :cond_57
    const-string v4, "width"

    .line 20
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 21
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->width:Ljava/lang/String;

    .line 23
    :cond_65
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_6b
    return-object v0
.end method

.method private updateSliderHeight(II)V
    .registers 5

    .line 1
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    div-int/2addr v0, p1

    mul-int p2, p2, v0

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    if-eqz p1, :cond_2a

    .line 4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    invoke-direct {p1, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->measureTop:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 6
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mSliderHeight:I

    :cond_2a
    return-void
.end method


# virtual methods
.method public addBannerView(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    const-string v2, "images"

    .line 2
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v1, v0

    .line 8
    :cond_14
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v2, "loop"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->isLoop:Z

    .line 12
    :cond_26
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v2, "fullscreen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 13
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->isFullscreen:Z

    .line 15
    :cond_38
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v2, "autoplay"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->isAutoplay:Z

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v2, "interval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 18
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mInterval:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mInterval:I

    .line 21
    :cond_5e
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v2, "indicator"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 22
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mIndicator:Ljava/lang/String;

    .line 25
    :cond_70
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    .line 28
    new-instance v0, Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->isLoop:Z

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lio/dcloud/feature/nativeObj/BannerLayout;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    .line 29
    iget-boolean v2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->isAutoplay:Z

    if-eqz v2, :cond_89

    .line 30
    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mInterval:I

    invoke-virtual {v0, v2, v3}, Lio/dcloud/feature/nativeObj/BannerLayout;->setAutoPlay(ZI)V

    .line 33
    :cond_89
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v2, 0x1

    .line 34
    invoke-virtual {v0, v2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v2, Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->defaultOptions:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    .line 36
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeImageSlider$1;

    invoke-direct {v2, p0}, Lio/dcloud/feature/nativeObj/NativeImageSlider$1;-><init>(Lio/dcloud/feature/nativeObj/NativeImageSlider;)V

    invoke-virtual {v0, v2}, Lio/dcloud/feature/nativeObj/BannerLayout;->setImageLoader(Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;)V

    .line 78
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeImageSlider$2;

    invoke-direct {v2, p0}, Lio/dcloud/feature/nativeObj/NativeImageSlider$2;-><init>(Lio/dcloud/feature/nativeObj/NativeImageSlider;)V

    invoke-virtual {v0, v2}, Lio/dcloud/feature/nativeObj/BannerLayout;->setOnBannerItemClickListener(Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;)V

    .line 104
    iget-object v5, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    sget-object v6, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    iget-object v10, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mIndicator:Ljava/lang/String;

    const/16 v7, 0x14

    const/16 v8, 0xa

    const/16 v9, 0x12

    invoke-virtual/range {v5 .. v10}, Lio/dcloud/feature/nativeObj/BannerLayout;->setIndicatorContainerData(Lio/dcloud/feature/nativeObj/BannerLayout$Position;IIILjava/lang/String;)V

    .line 105
    invoke-direct {p0, p1, v1}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->toArrayList(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e4

    .line 107
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-virtual {v0, p1, v4}, Lio/dcloud/feature/nativeObj/BannerLayout;->setViewUrls(Ljava/util/ArrayList;I)V

    .line 109
    :cond_e4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget-boolean v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->isLayoutAdapt:Z

    if-eqz v1, :cond_ed

    goto :goto_ef

    :cond_ed
    iget v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    :goto_ef
    invoke-direct {p1, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 110
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->measureTop:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 111
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 112
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBackgroundView:Landroid/view/View;

    if-nez v0, :cond_10c

    .line 113
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBackgroundView:Landroid/view/View;

    .line 115
    :cond_10c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-super {p0}, Lio/dcloud/feature/nativeObj/NativeView;->attachCanvasView()V

    return-void
.end method

.method public addImages(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->toArrayList(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->addViewUrls(Ljava/util/ArrayList;I)V

    :cond_e
    return-void
.end method

.method protected attachCanvasView()V
    .registers 1

    return-void
.end method

.method public clearNativeViewData()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/nativeObj/NativeView;->clearNativeViewData()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mFistBitmapHeight:I

    .line 3
    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mFistBitmapWidth:I

    .line 4
    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mSliderHeight:I

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    if-eqz v0, :cond_11

    .line 6
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->clearBannerData()V

    :cond_11
    return-void
.end method

.method protected configurationCange()V
    .registers 4

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/nativeObj/NativeView;->configurationCange()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    if-eqz v0, :cond_38

    .line 3
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->isLayoutAdapt:Z

    if-eqz v0, :cond_15

    .line 4
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mFistBitmapHeight:I

    if-eqz v0, :cond_38

    .line 5
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mFistBitmapWidth:I

    invoke-direct {p0, v1, v0}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->updateSliderHeight(II)V

    goto :goto_38

    .line 8
    :cond_15
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 9
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->measureTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 10
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 11
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_38
    :goto_38
    return-void
.end method

.method public doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "setAllowImageDownload"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3
    check-cast p2, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    .line 5
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    if-eqz v0, :cond_2f

    .line 7
    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/nativeObj/BannerLayout;->setAllowImageDownload(ZZ)V

    goto :goto_2f

    .line 10
    :cond_2a
    invoke-super {p0, p1, p2}, Lio/dcloud/feature/nativeObj/NativeView;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2f
    :goto_2f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentImageIndex()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method getEventJSON()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchX:F

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchY:F

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchX:F

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchY:F

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchX:F

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchY:F

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->getCurrentImageIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "{clientX:%d,clientY:%d,pageX:%d,pageY:%d,screenX:%d,screenY:%d,currentImageIndex:%d}"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNViewContentHeight()I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    iput v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    .line 5
    iget-object v3, v2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestJson:Lorg/json/JSONObject;

    invoke-virtual {p0, p0, v3, v2}, Lio/dcloud/feature/nativeObj/NativeView;->makeRect(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Lio/dcloud/feature/nativeObj/NativeView$Overlay;)Landroid/graphics/Rect;

    move-result-object v2

    .line 6
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_d

    move v1, v2

    goto :goto_d

    .line 10
    :cond_25
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mSliderHeight:I

    if-le v0, v1, :cond_2a

    move v1, v0

    :cond_2a
    return v1

    .line 15
    :cond_2b
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    return v0
.end method

.method public getViewType()Ljava/lang/String;
    .registers 2

    const-string v0, "ImageSlider"

    return-object v0
.end method

.method protected init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/nativeObj/NativeView;->init()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBackgroundView:Landroid/view/View;

    if-nez v0, :cond_12

    .line 3
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBackgroundView:Landroid/view/View;

    .line 5
    :cond_12
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBackgroundView:Landroid/view/View;

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackGroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method interceptTouchEvent(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mIntercept:Z

    return-void
.end method

.method protected measureChildViewToTop(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/feature/nativeObj/NativeView;->measureChildViewToTop(I)V

    .line 2
    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->measureTop:I

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    if-eqz p1, :cond_c

    .line 4
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->configurationCange()V

    :cond_c
    return-void
.end method

.method public setImages(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->toArrayList(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->setViewUrls(Ljava/util/ArrayList;I)V

    :cond_e
    return-void
.end method

.method public setStyle(Lorg/json/JSONObject;Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/feature/nativeObj/NativeView;->setStyle(Lorg/json/JSONObject;Z)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    if-eqz p1, :cond_6e

    const/4 p1, 0x0

    .line 4
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    if-eqz p2, :cond_50

    const-string v0, "images"

    .line 5
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 8
    :cond_1a
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v0, "loop"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 9
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->isLoop:Z

    .line 11
    :cond_2c
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v0, "fullscreen"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 12
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->isFullscreen:Z

    .line 14
    :cond_3e
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v0, "indicator"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_50

    .line 15
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mIndicator:Ljava/lang/String;

    .line 18
    :cond_50
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0, p2, p1}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->toArrayList(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->isLoop:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->setImageLoop(Ljava/lang/Boolean;)V

    .line 20
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mIndicator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->setIndicatorType(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->setViewUrls(Ljava/util/ArrayList;I)V

    :cond_6e
    return-void
.end method

.method public setStyleBackgroundColor(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/feature/nativeObj/NativeView;->setStyleBackgroundColor(I)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBackgroundView:Landroid/view/View;

    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackGroundColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeImageSlider.AnonymousClass1 (io.dcloud.feature.nativeObj.NativeImageSlider$1)
.class Lio/dcloud/feature/nativeObj/NativeImageSlider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeImageSlider;->addBannerView(Lio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeImageSlider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;->getInstance()Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->defaultOptions:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    new-instance v1, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;

    invoke-direct {v1, p0, p4, p3}, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;-><init>(Lio/dcloud/feature/nativeObj/NativeImageSlider$1;ILandroid/view/View;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeImageSlider.AnonymousClass1.C00481 (io.dcloud.feature.nativeObj.NativeImageSlider$1$1)
.class Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeImageSlider$1;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field startTime:J

.field final synthetic this$1:Lio/dcloud/feature/nativeObj/NativeImageSlider$1;

.field final synthetic val$imageView:Landroid/view/View;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeImageSlider$1;ILandroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->this$1:Lio/dcloud/feature/nativeObj/NativeImageSlider$1;

    iput p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->val$pos:I

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->val$imageView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 7

    .line 1
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->this$1:Lio/dcloud/feature/nativeObj/NativeImageSlider$1;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeImageSlider$1;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    iget-boolean v0, p2, Lio/dcloud/feature/nativeObj/NativeView;->isLayoutAdapt:Z

    if-eqz v0, :cond_30

    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->val$pos:I

    if-nez v0, :cond_30

    .line 2
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p2, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mFistBitmapWidth:I

    .line 3
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->this$1:Lio/dcloud/feature/nativeObj/NativeImageSlider$1;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeImageSlider$1;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p2, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mFistBitmapHeight:I

    .line 4
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->this$1:Lio/dcloud/feature/nativeObj/NativeImageSlider$1;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeImageSlider$1;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    iget v0, p2, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mFistBitmapWidth:I

    iget v1, p2, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mFistBitmapHeight:I

    invoke-static {p2, v0, v1}, Lio/dcloud/feature/nativeObj/NativeImageSlider;->access$000(Lio/dcloud/feature/nativeObj/NativeImageSlider;II)V

    .line 5
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->this$1:Lio/dcloud/feature/nativeObj/NativeImageSlider$1;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeImageSlider$1;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 8
    :cond_30
    :try_start_30
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->startTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-lez v2, :cond_5c

    .line 9
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->val$imageView:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 p2, 0x3f000000    # 0.5f

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 12
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->val$imageView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_63

    .line 14
    :cond_5c
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->val$imageView:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_63} :catch_63

    :catch_63
    :goto_63
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/dcloudimageloader/core/assist/FailReason;)V
    .registers 4

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$1$1;->startTime:J

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeImageSlider.AnonymousClass2 (io.dcloud.feature.nativeObj.NativeImageSlider$2)
.class Lio/dcloud/feature/nativeObj/NativeImageSlider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeImageSlider;->addBannerView(Lio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeImageSlider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$2;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$2;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    iget-boolean v1, v0, Lio/dcloud/feature/nativeObj/NativeImageSlider;->isFullscreen:Z

    if-eqz v1, :cond_59

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$2;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    sget-object v1, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_URLS_KEY:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$2;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    iget-object v2, v2, Lio/dcloud/feature/nativeObj/NativeImageSlider;->mBannerLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-virtual {v2}, Lio/dcloud/feature/nativeObj/BannerLayout;->getUrls()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4
    sget-object v1, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_CURRENT_INDEX_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    sget-object p1, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_LOOP_KEY:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    sget-object p1, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_PHOTO_KEY:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    sget-object p1, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_PHOTO_TOP:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$2;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$2;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$2;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 10
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_6a

    .line 11
    check-cast p1, Landroid/app/Activity;

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_6a

    .line 13
    :cond_59
    iget-object p1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->listenClick()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 14
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeImageSlider$2;->this$0:Lio/dcloud/feature/nativeObj/NativeImageSlider;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    const-string v0, "click"

    invoke-virtual {p1, v0}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doTypeEvent(Ljava/lang/String;)Z

    :cond_6a
    :goto_6a
    return-void
.end method

.method public onItemLongClick(I)V
    .registers 2

    return-void
.end method
