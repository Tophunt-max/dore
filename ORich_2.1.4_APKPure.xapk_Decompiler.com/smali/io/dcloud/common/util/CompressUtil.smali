###### Class io.dcloud.common.util.CompressUtil (io.dcloud.common.util.CompressUtil)
.class public Lio/dcloud/common/util/CompressUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressImage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p1

    const-string v1, ""

    .line 1
    :try_start_4
    invoke-static/range {p0 .. p0}, Lio/dcloud/common/util/CompressUtil;->inputStream2ByteArr(Ljava/lang/String;)[B

    move-result-object v2

    .line 2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 3
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-eqz p2, :cond_20

    .line 9
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_22

    :cond_20
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 10
    :goto_22
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v7, 0x4b

    const/16 v8, 0x438

    if-ge v6, v8, :cond_3d

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v9, v8, :cond_3d

    .line 11
    array-length v6, v2

    invoke-static {v2, v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 12
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    invoke-virtual {v2, v4, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto/16 :goto_cf

    .line 15
    :cond_3d
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/high16 v10, 0x44870000    # 1080.0f

    if-lt v9, v8, :cond_79

    if-lt v6, v8, :cond_79

    .line 16
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 18
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v7, v8, :cond_52

    int-to-float v7, v8

    goto :goto_53

    :cond_52
    int-to-float v7, v7

    :goto_53
    div-float/2addr v10, v7

    .line 23
    invoke-virtual {v6, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 24
    array-length v7, v2

    invoke-static {v2, v5, v7, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 25
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v17, 0x1

    move-object/from16 v16, v6

    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 26
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x46

    .line 27
    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_cf

    :cond_79
    int-to-float v6, v6

    const/high16 v8, 0x3f800000    # 1.0f

    int-to-float v9, v9

    mul-float v9, v9, v8

    div-float/2addr v6, v9

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v8, v6, v8

    if-gtz v8, :cond_c0

    float-to-double v8, v6

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v8, v11

    if-gez v6, :cond_8e

    goto :goto_c0

    .line 36
    :cond_8e
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 38
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v8, v9, :cond_9b

    int-to-float v8, v8

    goto :goto_9c

    :cond_9b
    int-to-float v8, v9

    :goto_9c
    div-float/2addr v10, v8

    .line 43
    invoke-virtual {v6, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 44
    array-length v8, v2

    invoke-static {v2, v5, v8, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 45
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v17, 0x1

    move-object/from16 v16, v6

    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 46
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    invoke-virtual {v2, v4, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_cf

    .line 48
    :cond_c0
    :goto_c0
    array-length v6, v2

    invoke-static {v2, v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 49
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x49

    .line 50
    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_cf} :catch_11b

    .line 70
    :goto_cf
    :try_start_cf
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 72
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_e8

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_e2} :catch_117
    .catchall {:try_start_cf .. :try_end_e2} :catchall_112

    if-nez v5, :cond_e8

    .line 85
    :try_start_e4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_e7

    :catch_e7
    return-object v1

    .line 86
    :cond_e8
    :try_start_e8
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f8

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_f2} :catch_117
    .catchall {:try_start_e8 .. :try_end_f2} :catchall_112

    if-nez v5, :cond_f8

    .line 96
    :try_start_f4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_f7} :catch_f7

    :catch_f7
    return-object v1

    .line 97
    :cond_f8
    :try_start_f8
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_107} :catch_117
    .catchall {:try_start_f8 .. :try_end_107} :catchall_112

    .line 104
    :try_start_107
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10a} :catch_10b

    goto :goto_10c

    :catch_10b
    nop

    :goto_10c
    if-eqz v2, :cond_111

    .line 108
    :try_start_10e
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_111} :catch_11b

    :cond_111
    return-object v0

    :catchall_112
    move-exception v0

    .line 109
    :try_start_113
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_116} :catch_116

    .line 111
    :catch_116
    :try_start_116
    throw v0
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_117} :catch_11b

    .line 112
    :catch_117
    :try_start_117
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11a} :catch_11a

    :catch_11a
    return-object v1

    :catch_11b
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static inputStream2ByteArr(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_30

    .line 4
    :try_start_b
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 8
    :goto_19
    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_19

    .line 11
    :cond_25
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 12
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method
