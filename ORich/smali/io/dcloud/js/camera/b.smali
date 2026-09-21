###### Class io.dcloud.js.camera.b (io.dcloud.js.camera.b)
.class Lio/dcloud/js/camera/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 8

    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lio/dcloud/base/R$style;->dialog_transparent:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 67
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lio/dcloud/base/R$layout;->dcloud_dialog_loading:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    .line 68
    sget p0, Lio/dcloud/base/R$id;->loading_background:I

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 70
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 71
    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    return-object p0
.end method

.method public static a(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9

    .line 54
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p0

    .line 55
    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 58
    :try_start_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    const/4 p0, 0x0

    :goto_1b
    if-nez p0, :cond_1e

    move-object p0, p1

    :cond_1e
    if-eq p1, p0, :cond_23

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_23
    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1f
    .catchall {:try_start_1 .. :try_end_6} :catchall_1d

    .line 3
    :try_start_6
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_1b
    .catchall {:try_start_6 .. :try_end_d} :catchall_36

    .line 12
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p0, :cond_1a

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    :goto_1a
    return-object p1

    :catch_1b
    move-exception p1

    goto :goto_21

    :catchall_1d
    move-exception p1

    goto :goto_38

    :catch_1f
    move-exception p1

    move-object v1, v0

    .line 19
    :goto_21
    :try_start_21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_36

    if-eqz v1, :cond_2c

    .line 25
    :try_start_26
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2c

    :catch_2a
    move-exception p0

    goto :goto_32

    :cond_2c
    :goto_2c
    if-eqz p0, :cond_35

    .line 28
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_31} :catch_2a

    goto :goto_35

    .line 31
    :goto_32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    :goto_35
    return-object v0

    :catchall_36
    move-exception p1

    move-object v0, v1

    :goto_38
    if-eqz v0, :cond_40

    .line 32
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_40

    :catch_3e
    move-exception p0

    goto :goto_46

    :cond_40
    :goto_40
    if-eqz p0, :cond_49

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_45} :catch_3e

    goto :goto_49

    .line 38
    :goto_46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :cond_49
    :goto_49
    throw p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 41
    invoke-static {p0}, Lio/dcloud/js/camera/b;->c(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 46
    :cond_7
    invoke-static {p0}, Lio/dcloud/js/camera/b;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_f
    invoke-static {v0, v1}, Lio/dcloud/js/camera/b;->a(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    invoke-static {v0, p0}, Lio/dcloud/js/camera/b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)I
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x8

    if-eq p0, v0, :cond_17

    goto :goto_24

    :cond_17
    const/16 p0, 0x10e

    goto :goto_25

    :cond_1a
    const/16 p0, 0x5a

    goto :goto_25

    :cond_1d
    const/16 p0, 0xb4

    goto :goto_25

    :catch_20
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method
