###### Class pl.droidsonroids.gif.GifViewUtils (pl.droidsonroids.gif.GifViewUtils)
.class final Lpl/droidsonroids/gif/GifViewUtils;
.super Ljava/lang/Object;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;,
        Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;
    }
.end annotation


# static fields
.field static final ANDROID_NS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field static final SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "raw"

    const-string v1, "drawable"

    const-string v2, "mipmap"

    .line 22
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lpl/droidsonroids/gif/GifViewUtils;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyLoopCount(ILandroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 41
    instance-of v0, p1, Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_9

    .line 42
    check-cast p1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p1, p0}, Lpl/droidsonroids/gif/GifDrawable;->setLoopCount(I)V

    :cond_9
    return-void
.end method

.method static getDensityScale(Landroid/content/res/Resources;I)F
    .registers 4

    .line 82
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 83
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 84
    iget p1, v0, Landroid/util/TypedValue;->density:I

    if-nez p1, :cond_10

    const/16 p1, 0xa0

    goto :goto_17

    :cond_10
    const v0, 0xffff

    if-eq p1, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 93
    :goto_17
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lez p1, :cond_25

    if-lez p0, :cond_25

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0

    :cond_25
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method static initImageView(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;
    .registers 5

    if-eqz p1, :cond_20

    .line 28
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_20

    .line 29
    new-instance v0, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;

    invoke-direct {v0, p0, p1, p2, p3}, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;-><init>(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)V

    .line 30
    iget p1, v0, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->mLoopCount:I

    if-ltz p1, :cond_1f

    .line 32
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lpl/droidsonroids/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    .line 33
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p1, p0}, Lpl/droidsonroids/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    :cond_1f
    return-object v0

    .line 37
    :cond_20
    new-instance p0, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;

    invoke-direct {p0}, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;-><init>()V

    return-object p0
.end method

.method static setGifImageUri(Landroid/widget/ImageView;Landroid/net/Uri;)Z
    .registers 4

    if-eqz p1, :cond_14

    .line 72
    :try_start_2
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method static setResource(Landroid/widget/ImageView;ZI)Z
    .registers 7

    .line 48
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 51
    :try_start_7
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    sget-object v3, Lpl/droidsonroids/gif/GifViewUtils;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 55
    :cond_14
    new-instance v2, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v2, v0, p2}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V

    if-eqz p1, :cond_1f

    .line 57
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 59
    :cond_1f
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_22} :catch_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_22} :catch_24

    :goto_22
    const/4 p0, 0x1

    return p0

    :catch_24
    :cond_24
    return v1
.end method

###### Class pl.droidsonroids.gif.GifViewUtils.GifImageViewAttributes (pl.droidsonroids.gif.GifViewUtils$GifImageViewAttributes)
.class Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;
.super Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifImageViewAttributes"
.end annotation


# instance fields
.field final mBackgroundResId:I

.field final mSourceResId:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->mSourceResId:I

    .line 131
    iput v0, p0, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->mBackgroundResId:I

    return-void
.end method

.method constructor <init>(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    .line 124
    invoke-static {p1, p2, p3}, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result p3

    iput p3, p0, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->mSourceResId:I

    const/4 p3, 0x0

    .line 125
    invoke-static {p1, p2, p3}, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->mBackgroundResId:I

    return-void
.end method

.method private static getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I
    .registers 6

    if-eqz p2, :cond_5

    const-string v0, "src"

    goto :goto_7

    :cond_5
    const-string v0, "background"

    :goto_7
    const-string v1, "http://schemas.android.com/apk/res/android"

    const/4 v2, 0x0

    .line 135
    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_27

    .line 137
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v1, Lpl/droidsonroids/gif/GifViewUtils;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0, p2, p1}, Lpl/droidsonroids/gif/GifViewUtils;->setResource(Landroid/widget/ImageView;ZI)Z

    move-result p0

    if-nez p0, :cond_27

    return p1

    :cond_27
    return v2
.end method

###### Class pl.droidsonroids.gif.GifViewUtils.GifViewAttributes (pl.droidsonroids.gif.GifViewUtils$GifViewAttributes)
.class Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;
.super Ljava/lang/Object;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifViewAttributes"
.end annotation


# instance fields
.field freezesAnimation:Z

.field final mLoopCount:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    const/4 v0, -0x1

    .line 114
    iput v0, p0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lpl/droidsonroids/gif/R$styleable;->GifView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 107
    sget p2, Lpl/droidsonroids/gif/R$styleable;->GifView_freezesAnimation:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    .line 108
    sget p2, Lpl/droidsonroids/gif/R$styleable;->GifView_loopCount:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
