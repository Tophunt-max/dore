###### Class io.dcloud.feature.gallery.imageedit.c.h.a (io.dcloud.feature.gallery.imageedit.c.h.a)
.class public Lio/dcloud/feature/gallery/imageedit/c/h/a;
.super Lio/dcloud/feature/gallery/imageedit/c/h/b;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lio/dcloud/feature/gallery/imageedit/c/h/b;-><init>(Landroid/net/Uri;)V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/h/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/h/b;->a()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 6
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v1

    :cond_13
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    :try_start_18
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/h/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_26} :catch_27

    return-object p1

    :catch_27
    return-object v1
.end method
