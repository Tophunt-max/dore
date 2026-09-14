###### Class io.dcloud.feature.gallery.imageedit.IMGEditActivity (io.dcloud.feature.gallery.imageedit.IMGEditActivity)
.class public Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;
.super Lio/dcloud/feature/gallery/imageedit/a;
.source "SourceFile"


# instance fields
.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Ljava/lang/String;

.field p:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/a;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->j:Z

    .line 13
    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->k:I

    .line 14
    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->l:I

    const/16 v0, 0x50

    .line 15
    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->m:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->n:Z

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10

    .line 12
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->n:Z

    if-eqz v0, :cond_36

    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->l:I

    if-lez v0, :cond_36

    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->k:I

    if-lez v0, :cond_36

    .line 13
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->k:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->l:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_36
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "/"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 18
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget-object p1, p1, v0

    return-object p1
.end method

.method public a(I)V
    .registers 3

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->setPenColor(I)V

    return-void
.end method

.method public a(Lio/dcloud/feature/gallery/imageedit/c/b;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->getMode()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    if-ne v0, p1, :cond_a

    .line 5
    sget-object p1, Lio/dcloud/feature/gallery/imageedit/c/b;->a:Lio/dcloud/feature/gallery/imageedit/c/b;

    .line 7
    :cond_a
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->setMode(Lio/dcloud/feature/gallery/imageedit/c/b;)V

    .line 8
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->n()V

    .line 10
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne p1, v0, :cond_1a

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->b(I)V

    :cond_1a
    return-void
.end method

.method public a(Lio/dcloud/feature/gallery/imageedit/c/d;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Lio/dcloud/feature/gallery/imageedit/c/d;)V

    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .registers 9

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const-string v2, "IMAGE_URI"

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_13

    return-object v1

    .line 14
    :cond_13
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 16
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "asset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_41

    .line 18
    :cond_35
    new-instance v2, Lio/dcloud/feature/gallery/imageedit/c/h/a;

    invoke-direct {v2, p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/h/a;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_42

    .line 21
    :cond_3b
    new-instance v2, Lio/dcloud/feature/gallery/imageedit/c/h/c;

    invoke-direct {v2, v0}, Lio/dcloud/feature/gallery/imageedit/c/h/c;-><init>(Landroid/net/Uri;)V

    goto :goto_42

    :cond_41
    :goto_41
    move-object v2, v1

    :goto_42
    if-nez v2, :cond_45

    return-object v1

    .line 30
    :cond_45
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 31
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 32
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 34
    invoke-virtual {v2, v3}, Lio/dcloud/feature/gallery/imageedit/c/h/b;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 36
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/high16 v5, 0x44800000    # 1024.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x400

    if-le v4, v7, :cond_6a

    int-to-float v4, v4

    mul-float v4, v4, v6

    div-float/2addr v4, v5

    .line 37
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Lio/dcloud/feature/gallery/imageedit/c/k/a;->a(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 40
    :cond_6a
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v7, :cond_82

    .line 41
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v4, v4

    mul-float v4, v4, v6

    div-float/2addr v4, v5

    .line 42
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Lio/dcloud/feature/gallery/imageedit/c/k/a;->a(I)I

    move-result v4

    .line 43
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_82
    const/4 v4, 0x0

    .line 47
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 49
    invoke-virtual {v2, v3}, Lio/dcloud/feature/gallery/imageedit/c/h/b;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_ca

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "IMAGE_MEDIA_ID"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_99

    return-object v1

    :cond_99
    const/16 v4, -0x3e9

    if-ne v2, v4, :cond_b5

    if-nez v0, :cond_a0

    return-object v1

    .line 65
    :cond_a0
    :try_start_a0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_ae
    .catch Ljava/io/FileNotFoundException; {:try_start_a0 .. :try_end_ae} :catch_af

    goto :goto_b0

    :catch_af
    move-object v2, v1

    .line 68
    :goto_b0
    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 73
    :cond_b5
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 76
    :try_start_bc
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_c4
    .catch Ljava/io/FileNotFoundException; {:try_start_bc .. :try_end_c4} :catch_c5

    goto :goto_c6

    :catch_c5
    move-object v0, v1

    .line 79
    :goto_c6
    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_ca
    return-object v2
.end method

.method public e()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public f()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->o:Ljava/lang/String;

    const-string v2, "camera"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v1, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_41

    .line 7
    :cond_2a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_41

    .line 10
    :cond_2e
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a()V

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->getMode()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    sget-object v2, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v2, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    invoke-virtual {p0, v1}, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->b(I)V

    :goto_41
    return-void
.end method

.method public g()V
    .registers 6

    const-string v0, ""

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "IMAGE_CROP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "IMAGE_MEDIA_ID"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->p:I

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 8
    :try_start_1f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_26

    :catch_25
    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_85

    .line 11
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_85

    const-string v1, "[^0-9]"

    .line 12
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    :try_start_35
    const-string v4, "width"

    .line 14
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->k:I

    const-string v4, "height"

    .line 15
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->l:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5d} :catch_5e

    goto :goto_5f

    :catch_5e
    nop

    :goto_5f
    const/16 v0, 0x50

    const-string v1, "quality"

    .line 17
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->m:I

    const-string v0, "resize"

    .line 18
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->n:Z

    .line 19
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->k:I

    if-lez v0, :cond_7e

    iget v1, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->l:I

    if-lez v1, :cond_7e

    .line 20
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v2, v0, v1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b(II)V

    .line 22
    :cond_7e
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->a(Lio/dcloud/feature/gallery/imageedit/c/b;)V

    .line 23
    iput-boolean v3, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->j:Z

    .line 25
    :cond_85
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IMAGE_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->o:Ljava/lang/String;

    return-void
.end method

.method public h()V
    .registers 24

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "IMAGE_SAVE_PATH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x1d

    if-eqz v3, :cond_68

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "/DImage/"

    if-lt v0, v4, :cond_4c

    .line 5
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_68

    .line 8
    :cond_4c
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_68
    :goto_68
    move-object v3, v0

    .line 12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_233

    .line 13
    iget-object v0, v1, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_233

    .line 17
    iget v6, v1, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->p:I

    const/16 v7, -0x3e9

    const/16 v8, 0x50

    const/4 v9, -0x1

    const/16 v10, 0x64

    if-ne v6, v7, :cond_bc

    .line 19
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_91

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 24
    :cond_91
    :try_start_91
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 25
    invoke-direct {v1, v0}, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 26
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v4, v1, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->m:I

    if-le v4, v10, :cond_a3

    const/16 v8, 0x64

    goto :goto_a7

    :cond_a3
    if-gez v4, :cond_a6

    goto :goto_a7

    :cond_a6
    move v8, v4

    :goto_a7
    invoke-virtual {v0, v2, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_aa
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_aa} :catch_ab

    goto :goto_af

    :catch_ab
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 30
    :goto_af
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    invoke-virtual {v1, v9, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_232

    .line 35
    :cond_bc
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v7, "_data"

    const-string v11, "image/jpeg"

    const-string v12, "datetaken"

    const-string v13, "_display_name"

    const-string v14, "mime_type"

    if-lt v6, v4, :cond_134

    .line 36
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    invoke-virtual {v3, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_pending"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    invoke-virtual {v3, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/DImage"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "relative_path"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 45
    :try_start_10b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 46
    iget-boolean v4, v1, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->j:Z

    if-eqz v4, :cond_12c

    .line 47
    invoke-direct {v1, v0}, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, v1, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->m:I

    if-le v5, v10, :cond_124

    const/16 v8, 0x64

    goto :goto_128

    :cond_124
    if-gez v5, :cond_127

    goto :goto_128

    :cond_127
    move v8, v5

    :goto_128
    invoke-virtual {v0, v4, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_131

    .line 50
    :cond_12c
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v4, v10, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_131
    .catch Ljava/io/FileNotFoundException; {:try_start_10b .. :try_end_131} :catch_131

    :catch_131
    :goto_131
    move-object/from16 v16, v2

    goto :goto_19a

    .line 54
    :cond_134
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_151

    .line 57
    :try_start_13f
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_14e

    .line 58
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_14e

    .line 59
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_14e
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_151} :catch_151

    .line 65
    :catch_151
    :cond_151
    :try_start_151
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 66
    iget-boolean v2, v1, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->j:Z

    if-eqz v2, :cond_16f

    .line 67
    invoke-direct {v1, v0}, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, v1, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->m:I

    if-le v5, v10, :cond_167

    const/16 v8, 0x64

    goto :goto_16b

    :cond_167
    if-gez v5, :cond_16a

    goto :goto_16b

    :cond_16a
    move v8, v5

    :goto_16b
    invoke-virtual {v0, v2, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_179

    .line 70
    :cond_16f
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v2, v10, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_174
    .catch Ljava/io/FileNotFoundException; {:try_start_151 .. :try_end_174} :catch_175

    goto :goto_179

    :catch_175
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 75
    :goto_179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 76
    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    invoke-virtual {v0, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_131

    .line 83
    :goto_19a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "_display_name"

    const-string v18, "date_added"

    const-string v19, "mime_type"

    const-string v20, "_size"

    const-string v21, "_data"

    const-string v22, "_id"

    filled-new-array/range {v17 .. v22}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_22b

    .line 92
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 93
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "date_added"

    .line 94
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 95
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v10, "_size"

    .line 96
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v15, "_id"

    .line 97
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 98
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v17, v9

    .line 99
    invoke-virtual {v1, v7}, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 100
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 101
    invoke-virtual {v0, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 103
    invoke-virtual {v0, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move/from16 v2, v17

    .line 105
    invoke-virtual {v0, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "PARENTPATH"

    .line 106
    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "IMAGE_INDEX"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "PATH"

    .line 108
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_22c

    :cond_22b
    const/4 v4, -0x1

    .line 111
    :goto_22c
    invoke-virtual {v1, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    :goto_232
    return-void

    .line 124
    :cond_233
    invoke-virtual {v1, v5}, Landroid/app/Activity;->setResult(I)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b()V

    .line 2
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->j:Z

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->h()V

    goto :goto_1d

    .line 5
    :cond_d
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->getMode()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;->b(I)V

    :goto_1d
    return-void
.end method

.method public j()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h()V

    return-void
.end method

.method public k()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->c()V

    return-void
.end method

.method public m()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->getMode()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    .line 2
    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->b:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_10

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->k()V

    goto :goto_19

    .line 4
    :cond_10
    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_19

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->l()V

    :cond_19
    :goto_19
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/feature/gallery/imageedit/a;->onClick(Landroid/view/View;)V

    return-void
.end method
