###### Class io.dcloud.feature.pdr.a (io.dcloud.feature.pdr.a)
.class public Lio/dcloud/feature/pdr/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/pdr/a$b;,
        Lio/dcloud/feature/pdr/a$c;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;FF)F
    .registers 4

    const-string v0, "auto"

    .line 192
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return p2

    .line 195
    :cond_9
    invoke-static {p0, p1, p2}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FF)F

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Bitmap;ZI)J
    .registers 12

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_22

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-gez v1, :cond_1b

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2d

    :cond_1b
    if-eqz p2, :cond_21

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2d

    :cond_21
    return-wide v2

    .line 155
    :cond_22
    invoke-static {p0}, Lio/dcloud/feature/pdr/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    :cond_2d
    :goto_2d
    :try_start_2d
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 161
    invoke-static {p0}, Lio/dcloud/feature/pdr/a;->c(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p0

    invoke-virtual {p1, p0, p3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 162
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 163
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_48

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_48} :catch_52
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_48} :catch_4d

    .line 176
    :cond_48
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    :catch_4d
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-wide v2

    :catch_52
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-wide v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 134
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 136
    invoke-static {p0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_19

    .line 140
    :cond_15
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_19
    :goto_19
    return-object v1
.end method

.method public static a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 143
    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    .line 141
    invoke-static {p3, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static declared-synchronized a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V
    .registers 22

    move-object/from16 v1, p0

    const-class v2, Lio/dcloud/feature/pdr/a;

    monitor-enter v2

    const/4 v0, 0x0

    .line 1
    :try_start_6
    aget-object v3, p1, v0

    const/4 v4, 0x1

    .line 2
    aget-object v5, p1, v4
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_20d

    const/4 v6, -0x1

    .line 5
    :try_start_c
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_202
    .catchall {:try_start_c .. :try_end_11} :catchall_20d

    .line 13
    :try_start_11
    new-instance v3, Lio/dcloud/feature/pdr/a$c;

    invoke-direct {v3}, Lio/dcloud/feature/pdr/a$c;-><init>()V

    .line 14
    invoke-virtual {v3, v7, v1, v5}, Lio/dcloud/feature/pdr/a$c;->a(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z

    move-result v7
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_20d

    if-nez v7, :cond_1e

    monitor-exit v2

    return-void

    .line 20
    :cond_1e
    :try_start_1e
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 21
    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    iget v8, v3, Lio/dcloud/feature/pdr/a$c;->d:I

    if-gez v8, :cond_2d

    const/16 v8, 0x32

    .line 24
    iput v8, v3, Lio/dcloud/feature/pdr/a$c;->d:I

    .line 26
    :cond_2d
    iget-wide v8, v3, Lio/dcloud/feature/pdr/a$c;->l:J

    const-wide/32 v10, 0x16e360

    const/4 v12, 0x2

    cmp-long v13, v8, v10

    if-lez v13, :cond_3a

    .line 27
    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_3c

    .line 29
    :cond_3a
    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 31
    :goto_3c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6587\u4ef6\u83b7\u53d6\u5b8c\u6bd5 \u521d\u59cb\u5316bitmap \u83b7\u53d6\u6587\u4ef6\u5927\u5c0f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Lio/dcloud/feature/pdr/a$c;->l:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CompressImage"

    invoke-static {v9, v8}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_1e .. :try_end_54} :catchall_20d

    const/4 v8, 0x0

    .line 34
    :try_start_55
    invoke-interface/range {p0 .. p0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lio/dcloud/feature/pdr/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_5f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_55 .. :try_end_5f} :catch_60
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5f} :catch_a1
    .catchall {:try_start_55 .. :try_end_5f} :catchall_20d

    goto :goto_a2

    .line 36
    :catch_60
    :try_start_60
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u83b7\u53d6bitmap \u5185\u5b58\u6ea2\u51fa\u7b2c\u4e00\u6b21  bitmap\u8def\u5f84"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CompressImage"

    invoke-static {v10, v9}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u83b7\u53d6bitmap \u5185\u5b58\u6ea2\u51fa\u7b2c\u4e00\u6b21 \u7b2c\u4e8c\u6b21\u83b7\u53d6bitmmap  bitmap\u8def\u5f84"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CompressImage"

    invoke-static {v10, v9}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_60 .. :try_end_96} :catchall_20d

    .line 40
    :try_start_96
    invoke-interface/range {p0 .. p0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lio/dcloud/feature/pdr/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a0} :catch_a1
    .catchall {:try_start_96 .. :try_end_a0} :catchall_20d

    goto :goto_a2

    :catch_a1
    move-object v9, v8

    :goto_a2
    if-nez v9, :cond_ab

    .line 47
    :try_start_a4
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    invoke-static {v1, v5, v0, v6}, Lio/dcloud/feature/pdr/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_20d

    monitor-exit v2

    return-void

    .line 52
    :cond_ab
    :try_start_ab
    iget-boolean v6, v3, Lio/dcloud/feature/pdr/a$c;->k:Z

    if-eqz v6, :cond_e8

    iget v6, v3, Lio/dcloud/feature/pdr/a$c;->e:F

    const/4 v10, 0x0

    cmpl-float v6, v6, v10

    if-lez v6, :cond_e8

    iget v6, v3, Lio/dcloud/feature/pdr/a$c;->f:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_e8

    .line 53
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 54
    iget v10, v3, Lio/dcloud/feature/pdr/a$c;->e:F

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 55
    iget v11, v3, Lio/dcloud/feature/pdr/a$c;->f:F

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v11, v13

    .line 56
    invoke-virtual {v6, v10, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 58
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object v13, v9

    move-object/from16 v18, v6

    .line 59
    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_e9

    :cond_e8
    move-object v6, v9

    .line 64
    :goto_e9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u7f29\u653e\u5b8c\u6bd5"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CompressImage"

    invoke-static {v11, v10}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget v10, v3, Lio/dcloud/feature/pdr/a$c;->g:I

    if-lez v10, :cond_110

    .line 68
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 69
    iget v10, v3, Lio/dcloud/feature/pdr/a$c;->g:I

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_110
    move-object/from16 v18, v8

    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u65cb\u8f6c\u5b8c\u6bd5"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "CompressImage"

    invoke-static {v10, v8}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v8, v3, Lio/dcloud/feature/pdr/a$c;->j:Lio/dcloud/feature/pdr/a$b;

    if-eqz v8, :cond_152

    .line 74
    iget v10, v8, Lio/dcloud/feature/pdr/a$b;->a:F

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v7, v7

    div-float/2addr v10, v7

    float-to-int v15, v10

    .line 75
    iget v10, v8, Lio/dcloud/feature/pdr/a$b;->b:F

    div-float/2addr v10, v7

    float-to-int v14, v10

    .line 76
    iget v10, v8, Lio/dcloud/feature/pdr/a$b;->c:F

    div-float/2addr v10, v7

    float-to-int v10, v10

    .line 77
    iget v8, v8, Lio/dcloud/feature/pdr/a$b;->d:F

    div-float/2addr v8, v7

    float-to-int v7, v8

    const/16 v19, 0x0

    move-object v13, v6

    move/from16 v16, v10

    move/from16 v17, v7

    .line 80
    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq v7, v6, :cond_16a

    .line 83
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_16a

    :cond_152
    if-eqz v18, :cond_16b

    .line 87
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 88
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object v13, v6

    .line 89
    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq v7, v6, :cond_16a

    .line 92
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_16a
    :goto_16a
    move-object v6, v7

    .line 95
    :cond_16b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u88c1\u526a\u5b8c\u6bd5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CompressImage"

    invoke-static {v8, v7}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 98
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 99
    iget-object v10, v3, Lio/dcloud/feature/pdr/a$c;->b:Ljava/lang/String;

    iget-boolean v11, v3, Lio/dcloud/feature/pdr/a$c;->c:Z

    iget v13, v3, Lio/dcloud/feature/pdr/a$c;->d:I

    invoke-static {v10, v6, v11, v13}, Lio/dcloud/feature/pdr/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;ZI)J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v15, v10, v13

    if-lez v15, :cond_1e0

    .line 101
    iget-object v6, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    iget-object v13, v3, Lio/dcloud/feature/pdr/a$c;->b:Ljava/lang/String;

    invoke-static {v6, v13}, Lio/dcloud/feature/pdr/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u5f00\u59cb\u4fdd\u5b58\u56fe\u7247"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "CompressImage"

    invoke-static {v13, v6}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    iget-object v3, v3, Lio/dcloud/feature/pdr/a$c;->b:Ljava/lang/String;

    aput-object v3, v13, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v13, v3

    const-string v0, "{path:\'file://%s\', w:%d, h:%d, size:%d}"

    invoke-static {v6, v0, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v1, v5, v0}, Lio/dcloud/feature/pdr/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f7

    .line 106
    :cond_1e0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1e9

    .line 107
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    :cond_1e9
    invoke-interface/range {p0 .. p0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_zip_image_output_failed:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x5

    invoke-static {v1, v5, v0, v3}, Lio/dcloud/feature/pdr/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    :goto_1f7
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_200

    .line 112
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_200
    .catchall {:try_start_ab .. :try_end_200} :catchall_20d

    :cond_200
    monitor-exit v2

    return-void

    :catch_202
    move-exception v0

    .line 113
    :try_start_203
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 114
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    invoke-static {v1, v5, v0, v6}, Lio/dcloud/feature/pdr/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_20b
    .catchall {:try_start_203 .. :try_end_20b} :catchall_20d

    monitor-exit v2

    return-void

    :catchall_20d
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 115
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 117
    const-class p1, Landroid/media/ExifInterface;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 119
    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_3e

    aget-object v4, v1, v3

    .line 120
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3b

    const-string v6, "TAG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 122
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 124
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v0, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 127
    invoke-virtual {p0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 132
    :cond_3e
    invoke-virtual {p0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_41

    :catch_41
    :catchall_41
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "/"

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_28

    if-nez v0, :cond_14

    goto :goto_28

    .line 188
    :cond_14
    :try_start_14
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 189
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_26

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_28

    :cond_26
    const/4 p0, 0x1

    return p0

    :catch_28
    :cond_28
    :goto_28
    return v1
.end method

.method public static b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/pdr/a$a;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/pdr/a$a;-><init>(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_19

    const-wide/16 v3, 0x5

    cmp-long p0, v1, v3

    if-gez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x1

    return p0

    :catch_19
    :cond_19
    :goto_19
    return v0
.end method

.method public static c(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    const-string v0, ".jpg"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_14

    .line 4
    :cond_11
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 5
    :cond_14
    :goto_14
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

###### Class io.dcloud.feature.pdr.a.RunnableC0049a (io.dcloud.feature.pdr.a$a)
.class final Lio/dcloud/feature/pdr/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/pdr/a;->b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/pdr/a$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p2, p0, Lio/dcloud/feature/pdr/a$a;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/pdr/a$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/pdr/a$a;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/feature/pdr/a;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.feature.pdr.a.b (io.dcloud.feature.pdr.a$b)
.class Lio/dcloud/feature/pdr/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/pdr/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p5, p0, Lio/dcloud/feature/pdr/a$b;->e:F

    .line 3
    iput p6, p0, Lio/dcloud/feature/pdr/a$b;->f:F

    const/4 p5, 0x0

    .line 4
    invoke-static {p1, p6, p5}, Lio/dcloud/feature/pdr/a;->a(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/pdr/a$b;->a:F

    .line 5
    iget p1, p0, Lio/dcloud/feature/pdr/a$b;->e:F

    invoke-static {p2, p1, p5}, Lio/dcloud/feature/pdr/a;->a(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/pdr/a$b;->b:F

    .line 6
    iget p2, p0, Lio/dcloud/feature/pdr/a$b;->e:F

    sub-float p1, p2, p1

    invoke-static {p3, p2, p1}, Lio/dcloud/feature/pdr/a;->a(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/pdr/a$b;->c:F

    .line 7
    iget p1, p0, Lio/dcloud/feature/pdr/a$b;->f:F

    iget p2, p0, Lio/dcloud/feature/pdr/a$b;->a:F

    sub-float p2, p1, p2

    invoke-static {p4, p1, p2}, Lio/dcloud/feature/pdr/a;->a(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/pdr/a$b;->d:F

    .line 8
    iget p2, p0, Lio/dcloud/feature/pdr/a$b;->c:F

    iget p3, p0, Lio/dcloud/feature/pdr/a$b;->b:F

    add-float/2addr p2, p3

    iget p4, p0, Lio/dcloud/feature/pdr/a$b;->e:F

    cmpl-float p2, p2, p4

    if-lez p2, :cond_3a

    sub-float/2addr p4, p3

    .line 9
    iput p4, p0, Lio/dcloud/feature/pdr/a$b;->c:F

    .line 11
    :cond_3a
    iget p2, p0, Lio/dcloud/feature/pdr/a$b;->a:F

    add-float/2addr p1, p2

    iget p3, p0, Lio/dcloud/feature/pdr/a$b;->f:F

    cmpl-float p1, p1, p3

    if-lez p1, :cond_46

    sub-float/2addr p3, p2

    .line 12
    iput p3, p0, Lio/dcloud/feature/pdr/a$b;->d:F

    :cond_46
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/feature/pdr/a$b;->a:F

    iget v1, p0, Lio/dcloud/feature/pdr/a$b;->f:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_13

    iget v0, p0, Lio/dcloud/feature/pdr/a$b;->b:F

    iget v1, p0, Lio/dcloud/feature/pdr/a$b;->e:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x1

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

###### Class io.dcloud.feature.pdr.a.c (io.dcloud.feature.pdr.a$c)
.class Lio/dcloud/feature/pdr/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/pdr/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:I

.field e:F

.field f:F

.field g:I

.field h:I

.field i:I

.field j:Lio/dcloud/feature/pdr/a$b;

.field k:Z

.field l:J


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lio/dcloud/feature/pdr/a$c;->k:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 28
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 32
    :try_start_8
    iget-object v2, p0, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lio/dcloud/feature/pdr/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 37
    :goto_12
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p1, p0, Lio/dcloud/feature/pdr/a$c;->h:I

    .line 38
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lio/dcloud/feature/pdr/a$c;->i:I

    if-lez v0, :cond_97

    if-gtz p1, :cond_20

    goto/16 :goto_97

    .line 44
    :cond_20
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lio/dcloud/feature/pdr/a$c;->l:J

    const-string p1, "auto"

    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lio/dcloud/feature/pdr/a$c;->k:Z

    .line 49
    iget p1, p0, Lio/dcloud/feature/pdr/a$c;->h:I

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/pdr/a$c;->e:F

    .line 50
    iget p1, p0, Lio/dcloud/feature/pdr/a$c;->i:I

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/pdr/a$c;->f:F

    goto :goto_97

    .line 51
    :cond_49
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 52
    iput-boolean v1, p0, Lio/dcloud/feature/pdr/a$c;->k:Z

    .line 53
    iget p1, p0, Lio/dcloud/feature/pdr/a$c;->i:I

    int-to-float p1, p1

    invoke-static {p3, p1, p1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/pdr/a$c;->f:F

    .line 54
    iget p2, p0, Lio/dcloud/feature/pdr/a$c;->h:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    iget p1, p0, Lio/dcloud/feature/pdr/a$c;->i:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lio/dcloud/feature/pdr/a$c;->e:F

    goto :goto_97

    .line 55
    :cond_66
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 56
    iput-boolean v1, p0, Lio/dcloud/feature/pdr/a$c;->k:Z

    .line 57
    iget p1, p0, Lio/dcloud/feature/pdr/a$c;->h:I

    int-to-float p1, p1

    invoke-static {p2, p1, p1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/pdr/a$c;->e:F

    .line 58
    iget p2, p0, Lio/dcloud/feature/pdr/a$c;->i:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    iget p1, p0, Lio/dcloud/feature/pdr/a$c;->h:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lio/dcloud/feature/pdr/a$c;->f:F

    goto :goto_97

    .line 60
    :cond_83
    iput-boolean v1, p0, Lio/dcloud/feature/pdr/a$c;->k:Z

    .line 61
    iget p1, p0, Lio/dcloud/feature/pdr/a$c;->h:I

    int-to-float p1, p1

    invoke-static {p2, p1, p1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/pdr/a$c;->e:F

    .line 62
    iget p1, p0, Lio/dcloud/feature/pdr/a$c;->i:I

    int-to-float p1, p1

    invoke-static {p3, p1, p1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/pdr/a$c;->f:F

    :cond_97
    :goto_97
    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z
    .registers 7

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_48

    iget-object v0, p0, Lio/dcloud/feature/pdr/a$c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 20
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lio/dcloud/feature/pdr/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 22
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    const/4 v2, -0x4

    invoke-static {p1, p2, v0, v2}, Lio/dcloud/feature/pdr/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 25
    :cond_32
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/pdr/a$c;->b:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/pdr/a$c;->b:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    .line 27
    :cond_48
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {p1, p2, v0, v2}, Lio/dcloud/feature/pdr/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V

    return v1
.end method

.method public a(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "src"

    .line 1
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    const-string v4, "dst"

    .line 2
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lio/dcloud/feature/pdr/a$c;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2, v3}, Lio/dcloud/feature/pdr/a$c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_20

    return v5

    :cond_20
    const-string v4, "overwrite"

    .line 6
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lio/dcloud/feature/pdr/a$c;->c:Z

    const-string v4, "format"

    .line 7
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "quality"

    const/4 v6, -0x1

    .line 8
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lio/dcloud/feature/pdr/a$c;->d:I

    .line 9
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "width"

    const-string v8, "auto"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "height"

    invoke-virtual {v1, v10, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v9, v8}, Lio/dcloud/feature/pdr/a$c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "rotate"

    .line 10
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lio/dcloud/feature/pdr/a$c;->g:I

    const-string v4, "clip"

    .line 12
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 14
    new-instance v4, Lio/dcloud/feature/pdr/a$b;

    const-string v8, "top"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v8, "left"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 15
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget v1, v0, Lio/dcloud/feature/pdr/a$c;->e:F

    iget v7, v0, Lio/dcloud/feature/pdr/a$c;->f:F

    move-object v11, v4

    move/from16 v16, v1

    move/from16 v17, v7

    invoke-direct/range {v11 .. v17}, Lio/dcloud/feature/pdr/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    iput-object v4, v0, Lio/dcloud/feature/pdr/a$c;->j:Lio/dcloud/feature/pdr/a$b;

    .line 17
    invoke-virtual {v4}, Lio/dcloud/feature/pdr/a$b;->a()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 18
    sget-object v1, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    invoke-static {v2, v3, v1, v6}, Lio/dcloud/feature/pdr/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V

    return v5

    :cond_8b
    const/4 v1, 0x1

    return v1
.end method
