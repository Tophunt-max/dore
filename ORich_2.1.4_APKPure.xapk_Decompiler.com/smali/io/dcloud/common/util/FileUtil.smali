###### Class io.dcloud.common.util.FileUtil (io.dcloud.common.util.FileUtil)
.class public Lio/dcloud/common/util/FileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFilePathLegalization(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 4
    :cond_8
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 6
    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19

    return v1

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 2
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_18

    aget-object v4, p1, v3

    .line 3
    invoke-static {p0, v4}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    const/4 v1, 0x0

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_18
    return v1
.end method

.method public static checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {p0}, Lio/dcloud/common/adapter/util/DeviceInfo;->initAppDir(Landroid/content/Context;)V

    :cond_b
    const-string p0, "file://"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, ""

    .line 5
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_19
    sget-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateExternalDir:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_38

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_38
    sget-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateDir:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_57

    sget-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateExternalDir:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_57

    .line 11
    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->isAssetFile(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_57

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1d

    if-ge p0, p1, :cond_55

    goto :goto_57

    :cond_55
    const/4 p0, 0x0

    return p0

    :cond_57
    :goto_57
    const/4 p0, 0x1

    return p0
.end method

.method private static copyMediaFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lio/dcloud/common/util/FileUtil;->getFileTypeForSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    .line 5
    :cond_c
    invoke-static {p3}, Lio/dcloud/common/util/FileUtil;->getContentUriForSuffix(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDCIMDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v3, ""

    .line 10
    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 13
    :goto_4b
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDCIMDir:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 17
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/2addr v8, v7

    move-object v5, v9

    goto :goto_4b

    .line 20
    :cond_8c
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_display_name"

    .line 21
    invoke-virtual {p3, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mime_type"

    .line 22
    invoke-virtual {p3, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    .line 23
    invoke-virtual {p3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "relative_path"

    invoke-virtual {p3, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v6, v1, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_bb

    return-object v2

    .line 29
    :cond_bb
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    const p3, 0x32000

    new-array p3, p3, [B

    if-eqz p0, :cond_db

    .line 34
    :goto_ca
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result p4

    if-lez p4, :cond_d8

    const/4 p5, 0x0

    .line 35
    invoke-virtual {p0, p3, p5, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 36
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    goto :goto_ca

    .line 38
    :cond_d8
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 40
    :cond_db
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object p2
.end method

.method public static copyMediaFileToDCIM(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Landroid/net/Uri;
    .registers 11

    .line 21
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    if-nez p1, :cond_a

    return-object v1

    .line 26
    :cond_a
    :try_start_a
    invoke-static {p2}, Lio/dcloud/common/util/FileUtil;->getFileNameWithSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-static {v5}, Lio/dcloud/common/util/FileUtil;->getFileTypeForSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object v1

    :cond_19
    const-string v6, "DCIM/"

    const-string v7, "Camera/"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 31
    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/FileUtil;->copyMediaFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_29
    return-object v1
.end method

.method public static copyMediaFileToDCIM(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 11

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 4
    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    return-object v1

    .line 8
    :cond_13
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 9
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_23

    .line 11
    :cond_1f
    invoke-static {p0, v0}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v2

    :goto_23
    move-object v4, v2

    if-nez v4, :cond_27

    return-object v1

    .line 16
    :cond_27
    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->getFileNameForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->getFileNameWithSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DCIM/"

    const-string v8, "Camera/"

    move-object v3, p0

    .line 18
    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/FileUtil;->copyMediaFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d
    return-object v1
.end method

.method public static createPublicDocumentsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    const-string v0, "external"

    .line 2
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDocumentsDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 7
    invoke-static {p0, v3, v0}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 9
    :cond_33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 10
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_display_name"

    .line 12
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mime_type"

    .line 13
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "title"

    .line 14
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "relative_path"

    const-string p2, "Documents/"

    .line 15
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :try_start_52
    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5b
    :goto_5b
    return-object v1
.end method

.method public static deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_15

    .line 1
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    return-void
.end method

.method public static getContentUriForSuffix(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_178

    goto/16 :goto_164

    :sswitch_10
    const-string v0, "MP2TS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_164

    :cond_1a
    const/16 p0, 0x19

    goto/16 :goto_165

    :sswitch_1e
    const-string v0, "3GPP2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_164

    :cond_28
    const/16 p0, 0x18

    goto/16 :goto_165

    :sswitch_2c
    const-string v0, "WEBP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto/16 :goto_164

    :cond_36
    const/16 p0, 0x17

    goto/16 :goto_165

    :sswitch_3a
    const-string v0, "WEBM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto/16 :goto_164

    :cond_44
    const/16 p0, 0x16

    goto/16 :goto_165

    :sswitch_48
    const-string v0, "WBMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto/16 :goto_164

    :cond_52
    const/16 p0, 0x15

    goto/16 :goto_165

    :sswitch_56
    const-string v0, "JPEG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    goto/16 :goto_164

    :cond_60
    const/16 p0, 0x14

    goto/16 :goto_165

    :sswitch_64
    const-string v0, "FLAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6e

    goto/16 :goto_164

    :cond_6e
    const/16 p0, 0x13

    goto/16 :goto_165

    :sswitch_72
    const-string v0, "3GPP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7c

    goto/16 :goto_164

    :cond_7c
    const/16 p0, 0x12

    goto/16 :goto_165

    :sswitch_80
    const-string v0, "WMV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8a

    goto/16 :goto_164

    :cond_8a
    const/16 p0, 0x11

    goto/16 :goto_165

    :sswitch_8e
    const-string v0, "WMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_98

    goto/16 :goto_164

    :cond_98
    const/16 p0, 0x10

    goto/16 :goto_165

    :sswitch_9c
    const-string v0, "WAV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a6

    goto/16 :goto_164

    :cond_a6
    const/16 p0, 0xf

    goto/16 :goto_165

    :sswitch_aa
    const-string v0, "PNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b4

    goto/16 :goto_164

    :cond_b4
    const/16 p0, 0xe

    goto/16 :goto_165

    :sswitch_b8
    const-string v0, "OGG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c2

    goto/16 :goto_164

    :cond_c2
    const/16 p0, 0xd

    goto/16 :goto_165

    :sswitch_c6
    const-string v0, "MP4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d0

    goto/16 :goto_164

    :cond_d0
    const/16 p0, 0xc

    goto/16 :goto_165

    :sswitch_d4
    const-string v0, "MP3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_de

    goto/16 :goto_164

    :cond_de
    const/16 p0, 0xb

    goto/16 :goto_165

    :sswitch_e2
    const-string v0, "MKV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ec

    goto/16 :goto_164

    :cond_ec
    const/16 p0, 0xa

    goto/16 :goto_165

    :sswitch_f0
    const-string v0, "MKA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fa

    goto/16 :goto_164

    :cond_fa
    const/16 p0, 0x9

    goto/16 :goto_165

    :sswitch_fe
    const-string v0, "M4V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_108

    goto/16 :goto_164

    :cond_108
    const/16 p0, 0x8

    goto/16 :goto_165

    :sswitch_10c
    const-string v0, "M4A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_115

    goto :goto_164

    :cond_115
    const/4 p0, 0x7

    goto :goto_165

    :sswitch_117
    const-string v0, "JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_120

    goto :goto_164

    :cond_120
    const/4 p0, 0x6

    goto :goto_165

    :sswitch_122
    const-string v0, "GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12b

    goto :goto_164

    :cond_12b
    const/4 p0, 0x5

    goto :goto_165

    :sswitch_12d
    const-string v0, "BMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_136

    goto :goto_164

    :cond_136
    const/4 p0, 0x4

    goto :goto_165

    :sswitch_138
    const-string v0, "AVI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_141

    goto :goto_164

    :cond_141
    const/4 p0, 0x3

    goto :goto_165

    :sswitch_143
    const-string v0, "ASF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14c

    goto :goto_164

    :cond_14c
    const/4 p0, 0x2

    goto :goto_165

    :sswitch_14e
    const-string v0, "AMR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_157

    goto :goto_164

    :cond_157
    const/4 p0, 0x1

    goto :goto_165

    :sswitch_159
    const-string v0, "AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_162

    goto :goto_164

    :cond_162
    const/4 p0, 0x0

    goto :goto_165

    :goto_164
    const/4 p0, -0x1

    :goto_165
    packed-switch p0, :pswitch_data_1e2

    const-string p0, "external"

    .line 39
    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 40
    :pswitch_16f
    sget-object p0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object p0

    .line 41
    :pswitch_172
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object p0

    .line 42
    :pswitch_175
    sget-object p0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object p0

    :sswitch_data_178
    .sparse-switch
        0xfc23 -> :sswitch_159
        0xfda6 -> :sswitch_14e
        0xfe54 -> :sswitch_143
        0xfeb4 -> :sswitch_138
        0x10165 -> :sswitch_12d
        0x113a4 -> :sswitch_122
        0x11fc1 -> :sswitch_117
        0x1279a -> :sswitch_10c
        0x127af -> :sswitch_fe
        0x12a63 -> :sswitch_f0
        0x12a78 -> :sswitch_e2
        0x12af0 -> :sswitch_d4
        0x12af1 -> :sswitch_c6
        0x1316f -> :sswitch_b8
        0x13609 -> :sswitch_aa
        0x14ecc -> :sswitch_9c
        0x1502b -> :sswitch_8e
        0x15040 -> :sswitch_80
        0x184374 -> :sswitch_72
        0x20f768 -> :sswitch_64
        0x22d868 -> :sswitch_56
        0x288dae -> :sswitch_48
        0x289799 -> :sswitch_3a
        0x28979c -> :sswitch_2c
        0x2f02b3e -> :sswitch_1e
        0x46235ae -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1e2
    .packed-switch 0x0
        :pswitch_175
        :pswitch_175
        :pswitch_172
        :pswitch_172
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_175
        :pswitch_172
        :pswitch_175
        :pswitch_172
        :pswitch_175
        :pswitch_172
        :pswitch_175
        :pswitch_16f
        :pswitch_175
        :pswitch_175
        :pswitch_172
        :pswitch_172
        :pswitch_175
        :pswitch_16f
        :pswitch_16f
        :pswitch_172
        :pswitch_16f
        :pswitch_172
        :pswitch_172
    .end packed-switch
.end method

.method public static getFileInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_13d

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_13d

    .line 10
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {p0, v1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 13
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0

    .line 15
    :cond_1f
    invoke-static {v1}, Lio/dcloud/common/util/FileUtil;->getFileNameWithSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 19
    invoke-static {v2}, Lio/dcloud/common/util/FileUtil;->getContentUriForSuffix(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_13d

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 24
    :cond_42
    invoke-static {v1}, Lio/dcloud/common/util/FileUtil;->getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13d

    const/4 v2, -0x1

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_13e

    goto :goto_9a

    :sswitch_55
    const-string v3, "Download"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    const/4 v2, 0x1

    goto :goto_9a

    :sswitch_5f
    const-string v3, "Music"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    const/4 v2, 0x3

    goto :goto_9a

    :sswitch_69
    const-string v3, "DCIM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    const/4 v2, 0x0

    goto :goto_9a

    :sswitch_73
    const-string v3, "Pictures"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    const/4 v2, 0x4

    goto :goto_9a

    :sswitch_7d
    const-string v3, "Documents"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    const/4 v2, 0x5

    goto :goto_9a

    :sswitch_87
    const-string v3, "Ringtones"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    const/4 v2, 0x6

    goto :goto_9a

    :sswitch_91
    const-string v3, "Movies"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_97
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_97} :catch_139

    if-eqz v1, :cond_9a

    const/4 v2, 0x2

    :cond_9a
    :goto_9a
    const-string v1, "external"

    packed-switch v2, :pswitch_data_15c

    goto/16 :goto_120

    .line 80
    :pswitch_a1
    :try_start_a1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_13d

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 83
    :pswitch_b2
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_13d

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 86
    :pswitch_c5
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_13d

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 89
    :pswitch_d6
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_13d

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 92
    :pswitch_e7
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_13d

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 95
    :pswitch_f8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_13d

    .line 96
    sget-object v1, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_13d

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 99
    :pswitch_10f
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_13d

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 79
    :goto_120
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 150
    invoke-static {p0, p1, v1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_13d

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 161
    :cond_133
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_138
    .catch Ljava/io/FileNotFoundException; {:try_start_a1 .. :try_end_138} :catch_139

    return-object p0

    :catch_139
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_13d
    :goto_13d
    return-object v0

    :sswitch_data_13e
    .sparse-switch
        -0x76476c9d -> :sswitch_91
        -0x7571a70f -> :sswitch_87
        -0x50508d68 -> :sswitch_7d
        -0x27aa58ab -> :sswitch_73
        0x1fede3 -> :sswitch_69
        0x473fe05 -> :sswitch_5f
        0x58f52ca8 -> :sswitch_55
    .end sparse-switch

    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_10f
        :pswitch_f8
        :pswitch_e7
        :pswitch_d6
        :pswitch_c5
        :pswitch_b2
        :pswitch_a1
    .end packed-switch
.end method

.method public static getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    const-string v0, "file://"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, ""

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v0}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNameForPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "/"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    return-object v1
.end method

.method public static getFileNameWithSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    const-string v0, "."

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileProviderUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10

    .line 1
    const-class v0, Landroidx/core/content/FileProvider;

    const-string v1, "getPathStrategy"

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_6
    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v6

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v7

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_66

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/core/content/FileProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$PathStrategy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_44} :catch_66

    const-string v1, "getFileForUri"

    :try_start_46
    new-array v3, v7, [Ljava/lang/Class;

    .line 9
    const-class v4, Landroid/net/Uri;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    .line 11
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 12
    instance-of p1, p0, Ljava/io/File;

    if-eqz p1, :cond_66

    .line 13
    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_65} :catch_66

    return-object p0

    :catch_66
    :cond_66
    return-object v2
.end method

.method public static getFileTypeForSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_174

    goto/16 :goto_164

    :sswitch_10
    const-string v0, "MP2TS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_164

    :cond_1a
    const/16 p0, 0x19

    goto/16 :goto_165

    :sswitch_1e
    const-string v0, "3GPP2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_164

    :cond_28
    const/16 p0, 0x18

    goto/16 :goto_165

    :sswitch_2c
    const-string v0, "WEBP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto/16 :goto_164

    :cond_36
    const/16 p0, 0x17

    goto/16 :goto_165

    :sswitch_3a
    const-string v0, "WEBM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto/16 :goto_164

    :cond_44
    const/16 p0, 0x16

    goto/16 :goto_165

    :sswitch_48
    const-string v0, "WBMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto/16 :goto_164

    :cond_52
    const/16 p0, 0x15

    goto/16 :goto_165

    :sswitch_56
    const-string v0, "JPEG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    goto/16 :goto_164

    :cond_60
    const/16 p0, 0x14

    goto/16 :goto_165

    :sswitch_64
    const-string v0, "FLAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6e

    goto/16 :goto_164

    :cond_6e
    const/16 p0, 0x13

    goto/16 :goto_165

    :sswitch_72
    const-string v0, "3GPP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7c

    goto/16 :goto_164

    :cond_7c
    const/16 p0, 0x12

    goto/16 :goto_165

    :sswitch_80
    const-string v0, "WMV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8a

    goto/16 :goto_164

    :cond_8a
    const/16 p0, 0x11

    goto/16 :goto_165

    :sswitch_8e
    const-string v0, "WMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_98

    goto/16 :goto_164

    :cond_98
    const/16 p0, 0x10

    goto/16 :goto_165

    :sswitch_9c
    const-string v0, "WAV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a6

    goto/16 :goto_164

    :cond_a6
    const/16 p0, 0xf

    goto/16 :goto_165

    :sswitch_aa
    const-string v0, "PNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b4

    goto/16 :goto_164

    :cond_b4
    const/16 p0, 0xe

    goto/16 :goto_165

    :sswitch_b8
    const-string v0, "OGG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c2

    goto/16 :goto_164

    :cond_c2
    const/16 p0, 0xd

    goto/16 :goto_165

    :sswitch_c6
    const-string v0, "MP4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d0

    goto/16 :goto_164

    :cond_d0
    const/16 p0, 0xc

    goto/16 :goto_165

    :sswitch_d4
    const-string v0, "MP3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_de

    goto/16 :goto_164

    :cond_de
    const/16 p0, 0xb

    goto/16 :goto_165

    :sswitch_e2
    const-string v0, "MKV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ec

    goto/16 :goto_164

    :cond_ec
    const/16 p0, 0xa

    goto/16 :goto_165

    :sswitch_f0
    const-string v0, "MKA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fa

    goto/16 :goto_164

    :cond_fa
    const/16 p0, 0x9

    goto/16 :goto_165

    :sswitch_fe
    const-string v0, "M4V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_108

    goto/16 :goto_164

    :cond_108
    const/16 p0, 0x8

    goto/16 :goto_165

    :sswitch_10c
    const-string v0, "M4A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_115

    goto :goto_164

    :cond_115
    const/4 p0, 0x7

    goto :goto_165

    :sswitch_117
    const-string v0, "JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_120

    goto :goto_164

    :cond_120
    const/4 p0, 0x6

    goto :goto_165

    :sswitch_122
    const-string v0, "GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12b

    goto :goto_164

    :cond_12b
    const/4 p0, 0x5

    goto :goto_165

    :sswitch_12d
    const-string v0, "BMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_136

    goto :goto_164

    :cond_136
    const/4 p0, 0x4

    goto :goto_165

    :sswitch_138
    const-string v0, "AVI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_141

    goto :goto_164

    :cond_141
    const/4 p0, 0x3

    goto :goto_165

    :sswitch_143
    const-string v0, "ASF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14c

    goto :goto_164

    :cond_14c
    const/4 p0, 0x2

    goto :goto_165

    :sswitch_14e
    const-string v0, "AMR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_157

    goto :goto_164

    :cond_157
    const/4 p0, 0x1

    goto :goto_165

    :sswitch_159
    const-string v0, "AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_162

    goto :goto_164

    :cond_162
    const/4 p0, 0x0

    goto :goto_165

    :goto_164
    const/4 p0, -0x1

    :goto_165
    packed-switch p0, :pswitch_data_1de

    const/4 p0, 0x0

    return-object p0

    :pswitch_16a
    const-string p0, "image/*"

    return-object p0

    :pswitch_16d
    const-string p0, "video/*"

    return-object p0

    :pswitch_170
    const-string p0, "audio/*"

    return-object p0

    nop

    :sswitch_data_174
    .sparse-switch
        0xfc23 -> :sswitch_159
        0xfda6 -> :sswitch_14e
        0xfe54 -> :sswitch_143
        0xfeb4 -> :sswitch_138
        0x10165 -> :sswitch_12d
        0x113a4 -> :sswitch_122
        0x11fc1 -> :sswitch_117
        0x1279a -> :sswitch_10c
        0x127af -> :sswitch_fe
        0x12a63 -> :sswitch_f0
        0x12a78 -> :sswitch_e2
        0x12af0 -> :sswitch_d4
        0x12af1 -> :sswitch_c6
        0x1316f -> :sswitch_b8
        0x13609 -> :sswitch_aa
        0x14ecc -> :sswitch_9c
        0x1502b -> :sswitch_8e
        0x15040 -> :sswitch_80
        0x184374 -> :sswitch_72
        0x20f768 -> :sswitch_64
        0x22d868 -> :sswitch_56
        0x288dae -> :sswitch_48
        0x289799 -> :sswitch_3a
        0x28979c -> :sswitch_2c
        0x2f02b3e -> :sswitch_1e
        0x46235ae -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_170
        :pswitch_170
        :pswitch_16d
        :pswitch_16d
        :pswitch_16a
        :pswitch_16a
        :pswitch_16a
        :pswitch_170
        :pswitch_16d
        :pswitch_170
        :pswitch_16d
        :pswitch_170
        :pswitch_16d
        :pswitch_170
        :pswitch_16a
        :pswitch_170
        :pswitch_170
        :pswitch_16d
        :pswitch_16d
        :pswitch_170
        :pswitch_16a
        :pswitch_16a
        :pswitch_16d
        :pswitch_16a
        :pswitch_16d
        :pswitch_16d
    .end packed-switch
.end method

.method public static getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string v3, "_data=? "

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 6
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_45
    if-eqz p1, :cond_4a

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getImageFileStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->getImageFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 4
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getImageFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .registers 3

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 6
    :cond_f
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getImageFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lio/dcloud/common/util/FileUtil;->getImageFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDCIMDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDownloadDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_16
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicMoviesDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6
    sget-object p0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    return-object p0

    .line 7
    :cond_21
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicMusicDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 8
    sget-object p0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    return-object p0

    .line 9
    :cond_2c
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicPicturesDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 10
    sget-object p0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    return-object p0

    .line 11
    :cond_37
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDocumentsDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 12
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    return-object p0

    .line 13
    :cond_42
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicRingtonesDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 14
    sget-object p0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    return-object p0

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_cd

    .line 2
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.externalstorage.documents"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, ":"

    if-eqz v2, :cond_5d

    .line 8
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 10
    aget-object p1, p0, v3

    const-string v0, "primary"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_4c

    .line 12
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aget-object p0, p0, v4

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4c
    const-string v0, "/storage/"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aget-object p0, p0, v4

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5d
    const-string v2, "com.android.providers.downloads.documents"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 20
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "raw:"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    const-string p0, ""

    .line 22
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_78
    const-string v0, "content://downloads/public_downloads"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->queryAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8b
    const-string v2, "com.android.providers.media.documents"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 30
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 32
    aget-object v1, p1, v3

    const-string v2, "image"

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 35
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_bd

    :cond_a8
    const-string v2, "video"

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 37
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_bd

    :cond_b3
    const-string v2, "audio"

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 39
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 43
    :goto_bd
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 44
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->queryAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_cc
    return-object v0

    .line 49
    :cond_cd
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 53
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->queryAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_ea

    :cond_de
    const-string p0, "file"

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ea

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_ea
    :goto_ea
    return-object v0
.end method

.method public static getShareImageUri(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Landroid/content/Intent;)Lio/dcloud/common/util/DCFileUriData;
    .registers 9

    .line 1
    new-instance v0, Lio/dcloud/common/util/DCFileUriData;

    invoke-direct {v0}, Lio/dcloud/common/util/DCFileUriData;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lio/dcloud/common/util/FileUtil;->isExternalPublicDir(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ".dc.fileprovider"

    if-nez v2, :cond_83

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_83

    invoke-static {v1}, Lio/dcloud/common/util/FileUtil;->getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_83

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/dcloud/common/util/FileUtil;->getFileNameWithSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 13
    iput-object p0, v0, Lio/dcloud/common/util/DCFileUriData;->fileUri:Landroid/net/Uri;

    const/4 p0, 0x1

    .line 14
    iput-boolean p0, v0, Lio/dcloud/common/util/DCFileUriData;->isReplace:Z

    .line 15
    iput-object p1, v0, Lio/dcloud/common/util/DCFileUriData;->fileReplacePath:Ljava/lang/String;

    if-eqz p3, :cond_b6

    .line 17
    invoke-virtual {p3, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_b6

    .line 19
    :cond_83
    invoke-static {v1}, Lio/dcloud/common/util/FileUtil;->isExternalPublicDir(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b0

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_96

    .line 22
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 24
    :cond_96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 25
    iput-object p0, v0, Lio/dcloud/common/util/DCFileUriData;->fileUri:Landroid/net/Uri;

    goto :goto_b6

    .line 27
    :cond_b0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 28
    iput-object p0, v0, Lio/dcloud/common/util/DCFileUriData;->fileUri:Landroid/net/Uri;

    :cond_b6
    :goto_b6
    return-object v0
.end method

.method public static getVideoFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 5
    :cond_10
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static isAssetFile(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "apps/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1c

    :cond_9
    const-string v0, "/android_asset/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    return p0
.end method

.method public static isExternalPublicDir(Ljava/lang/String;)Z
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateExternalDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public static isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "file://"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, ""

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 7
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_27

    return v2

    .line 10
    :cond_27
    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->getFileNameWithSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 12
    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->getContentUriForSuffix(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 13
    invoke-static {p0, v0, p1}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_3c

    return v2

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method public static needMediaStoreOpenFile(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge p0, v1, :cond_12

    :cond_e
    const/16 p0, 0x1e

    if-lt v0, p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private static queryAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10

    const-string v0, "_data"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 4
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_33
    .catchall {:try_start_7 .. :try_end_13} :catchall_31

    if-eqz p0, :cond_2e

    .line 5
    :try_start_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 6
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 7
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_2c
    .catchall {:try_start_15 .. :try_end_26} :catchall_3e

    if-eqz p0, :cond_2b

    .line 15
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2b
    return-object p1

    :catch_2c
    move-exception p1

    goto :goto_35

    :cond_2e
    if-eqz p0, :cond_3d

    goto :goto_3a

    :catchall_31
    move-exception p1

    goto :goto_40

    :catch_33
    move-exception p1

    move-object p0, v7

    .line 16
    :goto_35
    :try_start_35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3e

    if-eqz p0, :cond_3d

    .line 19
    :goto_3a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3d
    return-object v7

    :catchall_3e
    move-exception p1

    move-object v7, p0

    :goto_40
    if-eqz v7, :cond_45

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_45
    throw p1
.end method

.method public static readData4Disk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 4
    :try_start_9
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_2a
    .catchall {:try_start_9 .. :try_end_17} :catchall_25

    .line 5
    :try_start_17
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    .line 6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_2b
    .catchall {:try_start_17 .. :try_end_1e} :catchall_22

    .line 11
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return-object p0

    :catchall_22
    move-exception p0

    move-object v0, v1

    goto :goto_26

    :catchall_25
    move-exception p0

    :goto_26
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 12
    throw p0

    :catch_2a
    move-object v1, v0

    .line 13
    :catch_2b
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    :cond_2e
    return-object v0
.end method

.method public static saveData2Disk(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_3d

    if-eqz p1, :cond_3d

    .line 1
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_3d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    const/4 v0, 0x0

    .line 4
    :try_start_f
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 8
    :cond_1c
    new-instance p2, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_26} :catch_3a
    .catchall {:try_start_f .. :try_end_26} :catchall_35

    .line 9
    :try_start_26
    invoke-virtual {p2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2c} :catch_33
    .catchall {:try_start_26 .. :try_end_2c} :catchall_30

    .line 14
    invoke-static {p2}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    goto :goto_3d

    :catchall_30
    move-exception p0

    move-object v0, p2

    goto :goto_36

    :catch_33
    move-object v0, p2

    goto :goto_3a

    :catchall_35
    move-exception p0

    :goto_36
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 15
    throw p0

    .line 16
    :catch_3a
    :goto_3a
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public static writeStream2File(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_33

    .line 1
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_26
    .catchall {:try_start_3 .. :try_end_8} :catchall_2b

    const/16 p1, 0x400

    :try_start_a
    new-array p1, p1, [B

    .line 4
    :goto_c
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_c

    .line 7
    :cond_18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_23
    .catchall {:try_start_a .. :try_end_1e} :catchall_20

    move-object v0, v1

    goto :goto_33

    :catchall_20
    move-exception p1

    move-object v0, v1

    goto :goto_2c

    :catch_23
    move-exception p1

    move-object v0, v1

    goto :goto_27

    :catch_26
    move-exception p1

    .line 11
    :goto_27
    :try_start_27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_33

    :catchall_2b
    move-exception p1

    .line 14
    :goto_2c
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 15
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 16
    throw p1

    .line 17
    :cond_33
    :goto_33
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 18
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return-void
.end method
