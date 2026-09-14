###### Class io.dcloud.feature.nativeObj.photoview.PhotoActivity (io.dcloud.feature.nativeObj.photoview.PhotoActivity)
.class public Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;
.super Lio/src/dcloud/adapter/DCloudBaseActivity;
.source "SourceFile"


# static fields
.field public static IMAGE_BG_KEY:Ljava/lang/String; = "image_backgroud_color"

.field public static IMAGE_CURRENT_INDEX_KEY:Ljava/lang/String; = "image_current_index"

.field public static IMAGE_INDICATOR_KEY:Ljava/lang/String; = "image_indicator"

.field public static IMAGE_LOOP_KEY:Ljava/lang/String; = "image_loop"

.field public static IMAGE_PHOTO_KEY:Ljava/lang/String; = "image_photo"

.field public static IMAGE_PHOTO_TOP:Ljava/lang/String; = "image_photo_top"

.field public static IMAGE_URLLIST_KEY:Ljava/lang/String; = "image_urlList"

.field public static IMAGE_URLS_KEY:Ljava/lang/String; = "image_urls"


# instance fields
.field private callbackId:Ljava/lang/String;

.field public isBack:Z

.field private localImageUrls:[Ljava/lang/String;

.field mCurrentItmeIndex:I

.field private mDefOps:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

.field mImageUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mIndicatorType:Ljava/lang/String;

.field private originalImageUrls:Ljava/util/ArrayList;

.field private photoLayout:Lio/dcloud/feature/nativeObj/BannerLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mCurrentItmeIndex:I

    const-string v1, "default"

    .line 16
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mIndicatorType:Ljava/lang/String;

    .line 17
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->isBack:Z

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)[Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->localImageUrls:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->originalImageUrls:Ljava/util/ArrayList;

    return-object p0
.end method

.method private fullScreen(Landroid/app/Activity;)V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_33

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_33

    .line 10
    :cond_21
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 13
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private getIconDisplayOptions()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;
    .registers 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2
    new-instance v1, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    .line 6
    invoke-virtual {v1, v2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 7
    invoke-virtual {v1, v2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public listToNativeDataItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;

    invoke-direct {v2}, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Lio/dcloud/feature/nativeObj/data/NativeImageDataItem;->setUrl(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method public onBackPressed()V
    .registers 6

    .line 1
    invoke-static {}, Lio/dcloud/common/util/EventDispatchManager;->getInstance()Lio/dcloud/common/util/EventDispatchManager;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/EventDispatchManager;->dispatchEvent(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    .line 5
    :cond_1c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->callbackId:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 6
    invoke-static {}, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->getInstance()Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->removeOnLongClickListener(Ljava/lang/String;)V

    .line 8
    :cond_29
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/RuningAcitvityUtil;->removeRuningActivity(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 10
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    .line 1
    invoke-super {p0, p1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lio/dcloud/common/util/RuningAcitvityUtil;->putRuningActivity(Landroid/app/Activity;)V

    .line 3
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->getIconDisplayOptions()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mDefOps:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 5
    sget-object v0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_URLLIST_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 6
    sget-object v0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_URLLIST_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->listToNativeDataItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mImageUrls:Ljava/util/ArrayList;

    goto :goto_2d

    .line 8
    :cond_25
    sget-object v0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_URLS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mImageUrls:Ljava/util/ArrayList;

    .line 10
    :goto_2d
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mImageUrls:Ljava/util/ArrayList;

    if-nez v0, :cond_34

    .line 11
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->onBackPressed()V

    .line 13
    :cond_34
    sget-object v0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_CURRENT_INDEX_KEY:Ljava/lang/String;

    iget v1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mCurrentItmeIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mCurrentItmeIndex:I

    .line 14
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mImageUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_49

    .line 15
    iput v2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mCurrentItmeIndex:I

    :cond_49
    const-string v0, "preview_callback"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->callbackId:Ljava/lang/String;

    :cond_57
    const-string v0, "original_image_urlArray"

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->originalImageUrls:Ljava/util/ArrayList;

    :cond_65
    const-string v0, "screen_orientation"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_75

    .line 24
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 26
    :cond_75
    sget-object v0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_LOOP_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 27
    sget-object v1, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_PHOTO_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 29
    sget-object v2, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_INDICATOR_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 30
    sget-object v2, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_INDICATOR_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mIndicatorType:Ljava/lang/String;

    .line 32
    :cond_91
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    sget-object v4, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->IMAGE_BG_KEY:Ljava/lang/String;

    const/high16 v5, -0x1000000

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 34
    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 35
    new-instance p1, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$1;-><init>(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, p1, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mImageUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v4, -0x1

    if-lez p1, :cond_130

    if-eqz v0, :cond_c8

    .line 42
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mImageUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_c8

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mImageUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v3

    goto :goto_ce

    :cond_c8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mImageUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_ce
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->localImageUrls:[Ljava/lang/String;

    .line 43
    new-instance p1, Lio/dcloud/feature/nativeObj/BannerLayout;

    iget-object v5, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {p1, v5, v0, v1}, Lio/dcloud/feature/nativeObj/BannerLayout;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->photoLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    .line 44
    new-instance v1, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;

    invoke-direct {v1, p0}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;-><init>(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)V

    invoke-virtual {p1, v1}, Lio/dcloud/feature/nativeObj/BannerLayout;->setImageLoader(Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;)V

    .line 123
    iget-object v5, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->photoLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    iget-object v10, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mIndicatorType:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/16 v8, 0xa

    const/16 v9, 0x12

    invoke-virtual/range {v5 .. v10}, Lio/dcloud/feature/nativeObj/BannerLayout;->setIndicatorContainerData(Lio/dcloud/feature/nativeObj/BannerLayout$Position;IIILjava/lang/String;)V

    .line 124
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->photoLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    const/16 v1, 0x1f4

    invoke-virtual {p1, v1}, Lio/dcloud/feature/nativeObj/BannerLayout;->setScrollDuration(I)V

    .line 125
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->photoLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mImageUrls:Ljava/util/ArrayList;

    iget v5, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mCurrentItmeIndex:I

    invoke-virtual {p1, v1, v5}, Lio/dcloud/feature/nativeObj/BannerLayout;->setViewUrls(Ljava/util/ArrayList;I)V

    .line 126
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->mImageUrls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_11c

    if-eqz v0, :cond_11c

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->photoLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->getPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    if-eqz p1, :cond_11c

    .line 127
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->photoLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/BannerLayout;->getPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 129
    :cond_11c
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->photoLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    new-instance v0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$3;

    invoke-direct {v0, p0}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$3;-><init>(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)V

    invoke-virtual {p1, v0}, Lio/dcloud/feature/nativeObj/BannerLayout;->setOnBannerItemClickListener(Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;)V

    .line 151
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 163
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->photoLayout:Lio/dcloud/feature/nativeObj/BannerLayout;

    invoke-virtual {v2, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    :cond_130
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, p1}, Landroidx/fragment/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-direct {p0, p0}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->fullScreen(Landroid/app/Activity;)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.photoview.PhotoActivity.AnonymousClass1 (io.dcloud.feature.nativeObj.photoview.PhotoActivity$1)
.class Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$1;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$1;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->isBack:Z

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.photoview.PhotoActivity.AnonymousClass2 (io.dcloud.feature.nativeObj.photoview.PhotoActivity$2)
.class Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/nativeObj/BannerLayout$ImageLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V
    .registers 9

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v1, "file://"

    .line 3
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, ""

    .line 4
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_16
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5a

    const-string v1, "assets://"

    .line 7
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "file:///android_asset/"

    if-eqz v2, :cond_31

    .line 8
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5a

    :cond_31
    const-string v1, "/"

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_5a

    .line 12
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 15
    :cond_5a
    :goto_5a
    invoke-static {p1, p2}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 16
    invoke-static {p1, p2}, Lio/dcloud/common/util/FileUtil;->getImageFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    :cond_6a
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;

    invoke-direct {v1, p0, p3, p2, p4}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;-><init>(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 73
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.photoview.PhotoActivity.AnonymousClass2.AnonymousClass1 (io.dcloud.feature.nativeObj.photoview.PhotoActivity$2$1)
.class Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private bar:Landroid/widget/ProgressBar;

.field private subImageview:Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;

.field final synthetic this$1:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/view/View;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;Landroid/view/View;Ljava/lang/String;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->this$1:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->val$imageView:Landroid/view/View;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->val$finalPath:Ljava/lang/String;

    iput p4, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->val$pos:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->val$imageView:Landroid/view/View;

    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1e

    .line 3
    :try_start_6
    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->subImageview:Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->val$imageView:Landroid/view/View;

    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->bar:Landroid/widget/ProgressBar;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_1e
    return-void
.end method

.method public onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->val$imageView:Landroid/view/View;

    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4b

    :try_start_6
    const-string p2, "gif"

    .line 4
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->typeOf(Ljava/io/File;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_31

    const-string p2, "bmp"

    .line 6
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->typeOf(Ljava/io/File;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 8
    invoke-static {p2}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lio/dcloud/feature/nativeObj/photoview/subscaleview/ImageSource;

    move-result-object p2

    goto :goto_2b

    .line 10
    :cond_23
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/ImageSource;->uri(Ljava/lang/String;)Lio/dcloud/feature/nativeObj/photoview/subscaleview/ImageSource;

    move-result-object p2

    .line 12
    :goto_2b
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->subImageview:Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, p2}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;->setImage(Lio/dcloud/feature/nativeObj/photoview/subscaleview/ImageSource;)V

    goto :goto_41

    .line 14
    :cond_31
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->subImageview:Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Lpl/droidsonroids/gif/GifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 15
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->subImageview:Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Lpl/droidsonroids/gif/GifImageView;->setImageURI(Landroid/net/Uri;)V

    .line 17
    :goto_41
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->bar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_48} :catch_49

    goto :goto_54

    :catch_49
    nop

    goto :goto_54

    .line 20
    :cond_4b
    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 22
    :goto_54
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->val$finalPath:Ljava/lang/String;

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_83

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->this$1:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-static {p2}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->access$000(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_83

    iget p2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->val$pos:I

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->this$1:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->access$000(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_83

    .line 23
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->this$1:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-static {p2}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->access$000(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)[Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->val$pos:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    :cond_83
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$2$1;->onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

.method public typeOf(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget-object p1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    return v1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.feature.nativeObj.photoview.PhotoActivity.AnonymousClass3 (io.dcloud.feature.nativeObj.photoview.PhotoActivity$3)
.class Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/nativeObj/BannerLayout$OnBannerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$3;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$3;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    iget-boolean v0, p1, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->isBack:Z

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->onBackPressed()V

    :cond_9
    return-void
.end method

.method public onItemLongClick(I)V
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "index"

    .line 3
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$3;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-static {v1}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->access$100(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$3;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-static {v1}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->access$100(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1c} :catch_44

    if-eqz v1, :cond_2d

    const-string v1, "url"

    .line 5
    :try_start_20
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$3;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-static {v2}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->access$100(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    :cond_2d
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$3;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-static {v1}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->access$000(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_35} :catch_44

    if-eqz v1, :cond_44

    const-string v1, "path"

    .line 7
    :try_start_39
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity$3;->this$0:Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;

    invoke-static {v2}, Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;->access$000(Lio/dcloud/feature/nativeObj/photoview/PhotoActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object p1, v2, p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_44} :catch_44

    .line 10
    :catch_44
    :cond_44
    invoke-static {}, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->getInstance()Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->fireEvent(Lorg/json/JSONObject;)V

    return-void
.end method
