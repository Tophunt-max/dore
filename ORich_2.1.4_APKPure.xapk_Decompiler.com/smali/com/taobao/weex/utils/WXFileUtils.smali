###### Class com.taobao.weex.utils.WXFileUtils (com.taobao.weex.utils.WXFileUtils)
.class public Lcom/taobao/weex/utils/WXFileUtils;
.super Ljava/lang/Object;
.source "WXFileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    const-string v1, "UTF-8"

    .line 200
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXFileUtils;->base64Md5([B)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    return-object v0
.end method

.method public static base64Md5([B)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "MD5"

    .line 208
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 209
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 210
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    const-string p0, ""

    return-object p0
.end method

.method public static closeIo(Ljava/io/Closeable;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    .line 358
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7

    const/4 v0, 0x0

    .line 307
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_27

    const/16 v2, 0x400

    :try_start_8
    new-array v2, v2, [B

    .line 309
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_23

    .line 310
    :goto_f
    :try_start_f
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1a

    .line 311
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_f

    .line 313
    :cond_1a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 314
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_21

    goto :goto_6d

    :catch_21
    move-exception v0

    goto :goto_2b

    :catch_23
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_2b

    :catch_27
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 316
    :goto_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    if-eqz v1, :cond_63

    .line 319
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p0

    .line 321
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_63
    :goto_63
    if-eqz v3, :cond_6d

    .line 327
    :try_start_65
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception p0

    .line 329
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public static copyFileWithException(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 339
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_30
    .catchall {:try_start_1 .. :try_end_6} :catchall_2d

    const/16 p0, 0x400

    :try_start_8
    new-array p0, p0, [B

    .line 341
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_29
    .catchall {:try_start_8 .. :try_end_f} :catchall_25

    .line 342
    :goto_f
    :try_start_f
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1a

    .line 343
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_23
    .catchall {:try_start_f .. :try_end_19} :catchall_21

    goto :goto_f

    .line 348
    :cond_1a
    invoke-static {v1}, Lcom/taobao/weex/utils/WXFileUtils;->closeIo(Ljava/io/Closeable;)V

    .line 349
    invoke-static {v2}, Lcom/taobao/weex/utils/WXFileUtils;->closeIo(Ljava/io/Closeable;)V

    return-void

    :catchall_21
    move-exception p0

    goto :goto_27

    :catch_23
    move-exception p0

    goto :goto_2b

    :catchall_25
    move-exception p0

    move-object v2, v0

    :goto_27
    move-object v0, v1

    goto :goto_34

    :catch_29
    move-exception p0

    move-object v2, v0

    :goto_2b
    move-object v0, v1

    goto :goto_32

    :catchall_2d
    move-exception p0

    move-object v2, v0

    goto :goto_34

    :catch_30
    move-exception p0

    move-object v2, v0

    .line 346
    :goto_32
    :try_start_32
    throw p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    .line 348
    :goto_34
    invoke-static {v0}, Lcom/taobao/weex/utils/WXFileUtils;->closeIo(Ljava/io/Closeable;)V

    .line 349
    invoke-static {v2}, Lcom/taobao/weex/utils/WXFileUtils;->closeIo(Ljava/io/Closeable;)V

    .line 350
    throw p0
.end method

.method public static extractSo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isSafeEntryName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d7

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isSafeEntryName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_d7

    .line 262
    :cond_f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 264
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 265
    new-instance p0, Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 266
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    const/4 v4, 0x1

    .line 267
    :cond_2d
    :goto_2d
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 268
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 269
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_40

    goto :goto_2d

    .line 272
    :cond_40
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/utils/WXFileUtils;->validLibPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 273
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "weex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6e

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libjsc.so"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libJavaScriptCore.so"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 275
    :cond_6e
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 276
    array-length v7, v1

    sub-int/2addr v7, v4

    aget-object v1, v1, v7

    .line 277
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 279
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/taobao/weex/utils/WXFileUtils;->replaceLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a5

    :goto_a3
    const/4 v1, 0x1

    goto :goto_2d

    .line 282
    :cond_a5
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 284
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 286
    :cond_b5
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 289
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 291
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 292
    :goto_c5
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_d0

    .line 293
    invoke-virtual {v6, v5}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_c5

    .line 295
    :cond_d0
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a3

    .line 299
    :cond_d4
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    :cond_d7
    :goto_d7
    return v1
.end method

.method public static loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_23

    .line 81
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_23

    .line 86
    :cond_9
    :try_start_9
    invoke-static {p0}, Lio/dcloud/weex/DCFileUtils;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-static {p0, p1}, Lio/dcloud/weex/DCFileUtils;->loadWeexAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 91
    :cond_1b
    invoke-static {v0}, Lcom/taobao/weex/utils/WXFileUtils;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    const-string p0, ""

    return-object p0

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadFileOrAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 62
    :try_start_11
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 63
    invoke-static {p0}, Lcom/taobao/weex/utils/WXFileUtils;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_25

    .line 68
    :cond_20
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    :goto_25
    const-string p0, ""

    return-object p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    const-string v1, "UTF-8"

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXFileUtils;->md5([B)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    return-object v0
.end method

.method public static md5([B)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "MD5"

    .line 186
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 188
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    .line 189
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    const-string p0, ""

    return-object p0
.end method

.method public static readBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_27

    .line 137
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 139
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    .line 140
    new-array v1, p0, [B

    const/4 v2, 0x0

    .line 141
    invoke-static {p1, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    move-exception p0

    const-string p1, ""

    .line 145
    invoke-static {p1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    return-object v0
.end method

.method private static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    const-string v1, "WXFileUtils loadAsset: "

    const/4 v2, 0x0

    .line 101
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_44
    .catchall {:try_start_5 .. :try_end_1a} :catchall_42

    const/16 v2, 0x1000

    :try_start_1c
    new-array v2, v2, [C

    .line 105
    :goto_1e
    invoke-virtual {v4, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-lez v5, :cond_29

    const/4 v6, 0x0

    .line 106
    invoke-virtual {v3, v2, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 109
    :cond_29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2d} :catch_40
    .catchall {:try_start_1c .. :try_end_2d} :catchall_5f

    .line 116
    :try_start_2d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v2

    .line 118
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_35
    if-eqz p0, :cond_3f

    .line 122
    :try_start_37
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p0

    .line 124
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3f
    :goto_3f
    return-object v0

    :catch_40
    move-exception v2

    goto :goto_47

    :catchall_42
    move-exception v0

    goto :goto_61

    :catch_44
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    .line 112
    :goto_47
    :try_start_47
    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5f

    if-eqz v4, :cond_54

    .line 116
    :try_start_4c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception v2

    .line 118
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    if-eqz p0, :cond_5e

    .line 122
    :try_start_56
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p0

    .line 124
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    return-object v0

    :catchall_5f
    move-exception v0

    move-object v2, v4

    :goto_61
    if-eqz v2, :cond_6b

    .line 116
    :try_start_63
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception v2

    .line 118
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6b
    :goto_6b
    if-eqz p0, :cond_75

    .line 122
    :try_start_6d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception p0

    .line 124
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_75
    :goto_75
    throw v0
.end method

.method private static replaceLib(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    .line 241
    invoke-static {}, Lcom/taobao/weex/utils/WXFileUtils;->validCPUABIS()[Ljava/lang/String;

    move-result-object v1

    .line 242
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v4, v2, :cond_24

    aget-object v6, v1, v4

    .line 243
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a

    if-eqz v5, :cond_1a

    return v0

    .line 248
    :cond_1a
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_21

    const/4 v5, 0x1

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_24
    return v3

    :cond_25
    return v0
.end method

.method public static saveFile(Ljava/lang/String;[BLandroid/content/Context;)Z
    .registers 5

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_56

    if-eqz p1, :cond_56

    if-nez p2, :cond_c

    goto :goto_56

    :cond_c
    const/4 p2, 0x0

    .line 156
    :try_start_d
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_27
    .catchall {:try_start_d .. :try_end_12} :catchall_25

    .line 157
    :try_start_12
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_22
    .catchall {:try_start_12 .. :try_end_15} :catchall_1f

    const/4 p0, 0x1

    .line 164
    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1e
    return p0

    :catchall_1f
    move-exception p0

    move-object p2, v0

    goto :goto_4b

    :catch_22
    move-exception p0

    move-object p2, v0

    goto :goto_28

    :catchall_25
    move-exception p0

    goto :goto_4b

    :catch_27
    move-exception p0

    .line 160
    :goto_28
    :try_start_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WXFileUtils saveFile: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_25

    if-eqz p2, :cond_4a

    .line 164
    :try_start_42
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4a
    :goto_4a
    return v1

    :goto_4b
    if-eqz p2, :cond_55

    .line 164
    :try_start_4d
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    :cond_55
    :goto_55
    throw p0

    :cond_56
    :goto_56
    return v1
.end method

.method private static validCPUABIS()[Ljava/lang/String;
    .registers 3

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 219
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_f

    .line 221
    array-length v1, v0

    if-nez v1, :cond_17

    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 223
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v0, v1

    :cond_17
    return-object v0
.end method

.method private static validLibPath(Ljava/lang/String;)Z
    .registers 6

    .line 229
    invoke-static {}, Lcom/taobao/weex/utils/WXFileUtils;->validCPUABIS()[Ljava/lang/String;

    move-result-object v0

    .line 230
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 231
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_16
    return v2
.end method
