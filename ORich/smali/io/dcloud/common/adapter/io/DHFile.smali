###### Class io.dcloud.common.adapter.io.DHFile (io.dcloud.common.adapter.io.DHFile)
.class public Lio/dcloud/common/adapter/io/DHFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUF_SIZE:I = 0x32000

.field public static final FS_JAR:B = 0x0t

.field public static final FS_NATIVE:B = 0x2t

.field public static final FS_RMS:B = 0x1t

.field public static final READ:I = 0x1

.field public static final READ_WRITE:I = 0x3

.field private static final ROOTPATH:Ljava/lang/String; = "/"

.field public static final WRITE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFile(Ljava/lang/String;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/io/DHFile;->getOutputStream(Ljava/lang/Object;Z)Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 6
    :try_start_e
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 7
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 8
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static canRead(Ljava/lang/String;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    return p0
.end method

.method private static checkIsNeedReload(Ljava/lang/String;)Z
    .registers 2

    const-string v0, ".png"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, ".jpg"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, ".xml"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, ".bmp"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method public static copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const-string v0, "PlatFU copyAssetsFile "

    const-string v1, " >"

    const-string v2, " > to < "

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1
    :try_start_8
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 4
    invoke-static {v4, p1}, Lio/dcloud/common/adapter/io/DHFile;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v3

    goto :goto_36

    .line 6
    :cond_13
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->checkIsNeedReload(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PlatFU copyAssetsFile fail \uff01\uff01\uff01\uff01  is = null < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 10
    :cond_36
    :goto_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PlatFU copyAssetsFile < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_53} :catch_59
    .catchall {:try_start_8 .. :try_end_53} :catchall_57

    .line 19
    invoke-static {v4}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    goto :goto_a9

    :catchall_57
    move-exception p0

    goto :goto_aa

    :catch_59
    move-exception v5

    .line 20
    :try_start_5a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " error!!!  is it a dir ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->checkIsNeedReload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlatFU copyAssetsFile fail \uff01\uff01\uff01\uff01 Exception< "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_5a .. :try_end_a6} :catchall_57

    .line 27
    :cond_a6
    invoke-static {v4}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    :goto_a9
    return v3

    :goto_aa
    invoke-static {v4}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 29
    throw p0
.end method

.method public static copyDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-eqz p0, :cond_b7

    if-nez p1, :cond_6

    goto/16 :goto_b7

    :cond_6
    const/4 v0, 0x0

    .line 1
    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    const/4 v3, 0x1

    if-ne v1, v2, :cond_18

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 7
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2c

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 11
    :cond_2c
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->listResFiles(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b7

    .line 17
    array-length v3, v1

    :goto_38
    if-ge v0, v3, :cond_b7

    .line 20
    aget-object v4, v1, v0

    .line 21
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 24
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 27
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-static {v5, v6}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b0

    .line 36
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->checkIsNeedReload(Ljava/lang/String;)Z

    move-result v4
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_67} :catch_b3

    const-string v7, "/"

    if-eqz v4, :cond_9e

    .line 37
    :try_start_6b
    invoke-static {v5, v6}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b0

    .line 38
    invoke-static {v5, v6}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b0

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PlatFU copyDir fail 3 times!!!!"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lio/dcloud/common/adapter/io/DHFile;->copyDir(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    .line 44
    :cond_9e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lio/dcloud/common/adapter/io/DHFile;->copyDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_b0} :catch_b3

    :cond_b0
    :goto_b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :catch_b3
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b7
    :goto_b7
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 315
    invoke-static {p0, p1, v0, v0}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I
    .registers 16

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, 0xa

    .line 7
    :try_start_c
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v4

    invoke-virtual {v4}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 8
    invoke-static {v4, v6}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    const/4 v8, -0x3

    const/16 v9, 0x1c

    if-nez v6, :cond_31

    sget v6, Lio/dcloud/common/adapter/util/AndroidResources;->sAppTargetSdkVersion:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_25} :catch_140
    .catchall {:try_start_c .. :try_end_25} :catchall_13d

    if-le v6, v9, :cond_31

    .line 66
    :try_start_27
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2a

    .line 70
    :catch_2a
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 71
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return v8

    .line 72
    :cond_31
    :try_start_31
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v6
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_140
    .catchall {:try_start_31 .. :try_end_35} :catchall_13d

    if-eqz v6, :cond_54

    if-eqz p3, :cond_44

    const/4 p0, -0x2

    .line 126
    :try_start_3a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3d

    .line 130
    :catch_3d
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 131
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return p0

    :cond_44
    if-eqz p2, :cond_54

    .line 132
    :try_start_46
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lio/dcloud/common/adapter/io/DHFile;->isDirectory(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 133
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 136
    :cond_54
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5d} :catch_140
    .catchall {:try_start_46 .. :try_end_5d} :catchall_13d

    if-nez v10, :cond_69

    .line 182
    :try_start_5f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_62

    .line 186
    :catch_62
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 187
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return v1

    .line 188
    :cond_69
    :try_start_69
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_e1

    .line 189
    invoke-static {v6}, Lio/dcloud/common/adapter/io/DHFile;->list(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v4

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_81} :catch_140
    .catchall {:try_start_69 .. :try_end_81} :catchall_13d

    const-string v9, ""

    if-eqz p0, :cond_87

    move-object p0, v9

    goto :goto_88

    :cond_87
    move-object p0, v8

    :goto_88
    :try_start_88
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9e

    move-object v8, v9

    :cond_9e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v6, -0x1

    .line 192
    :goto_a6
    array-length v8, v4

    if-ge v7, v8, :cond_de

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, p2, p3}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v6
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_cf} :catch_140
    .catchall {:try_start_88 .. :try_end_cf} :catchall_13d

    if-eq v6, v5, :cond_db

    .line 230
    :try_start_d1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_d4

    .line 234
    :catch_d4
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 235
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return v6

    :cond_db
    add-int/lit8 v7, v7, 0x1

    goto :goto_a6

    :cond_de
    move-object p0, v0

    move v1, v6

    goto :goto_132

    :cond_e1
    :try_start_e1
    new-array p2, v5, [Ljava/lang/String;

    aput-object p0, p2, v7

    .line 236
    invoke-static {v4, p2}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_104

    sget p2, Lio/dcloud/common/adapter/util/AndroidResources;->sAppTargetSdkVersion:I

    if-le p2, v9, :cond_104

    .line 237
    invoke-static {v4, p0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_fa

    .line 238
    invoke-static {v4, v6}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_f9} :catch_140
    .catchall {:try_start_e1 .. :try_end_f9} :catchall_13d

    goto :goto_109

    .line 267
    :cond_fa
    :try_start_fa
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fd} :catch_fd

    .line 271
    :catch_fd
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 272
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return v8

    .line 273
    :cond_104
    :try_start_104
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_109} :catch_140
    .catchall {:try_start_104 .. :try_end_109} :catchall_13d

    .line 275
    :goto_109
    :try_start_109
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 276
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_116

    .line 277
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    .line 279
    :cond_116
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->getOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v0

    const p1, 0x32000

    new-array p1, p1, [B

    if-eqz p0, :cond_12f

    .line 285
    :goto_121
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_12e

    .line 286
    invoke-virtual {v0, p1, v7, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 287
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_12d} :catch_138
    .catchall {:try_start_109 .. :try_end_12d} :catchall_136

    goto :goto_121

    :cond_12e
    const/4 v1, 0x1

    :cond_12f
    move-object v11, v0

    move-object v0, p0

    move-object p0, v11

    .line 297
    :goto_132
    :try_start_132
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_135} :catch_15a

    goto :goto_15a

    :catchall_136
    move-exception p1

    goto :goto_165

    :catch_138
    move-exception p1

    move-object v11, v0

    move-object v0, p0

    move-object p0, v11

    goto :goto_143

    :catchall_13d
    move-exception p0

    move-object p1, v0

    goto :goto_168

    :catch_140
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 298
    :goto_143
    :try_start_143
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "copyFile:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V
    :try_end_157
    .catchall {:try_start_143 .. :try_end_157} :catchall_161

    .line 302
    :try_start_157
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15a} :catch_15a

    .line 306
    :catch_15a
    :goto_15a
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 307
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return v1

    :catchall_161
    move-exception p1

    move-object v11, v0

    move-object v0, p0

    move-object p0, v11

    :goto_165
    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    .line 308
    :goto_168
    :try_start_168
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_16b} :catch_16b

    .line 312
    :catch_16b
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 313
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 314
    throw p0
.end method

.method public static createFileHandler(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createNewFile(Ljava/lang/Object;)B
    .registers 8

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p0, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_31

    .line 2
    check-cast p0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createNewFile 0:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    .line 5
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x1

    goto :goto_39

    :cond_2f
    :goto_2f
    const/4 p0, 0x0

    goto :goto_39

    .line 8
    :cond_31
    instance-of v1, p0, Ljava/io/File;

    if-eqz v1, :cond_78

    .line 9
    move-object v1, p0

    check-cast v1, Ljava/io/File;

    goto :goto_2f

    .line 15
    :goto_39
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5b

    .line 17
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createNewFile: parentPath mkdirs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 20
    :cond_5b
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_63

    const/4 p0, -0x2

    return p0

    :cond_63
    if-eqz p0, :cond_6a

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    goto :goto_75

    .line 30
    :cond_6a
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6e} :catch_6f

    goto :goto_75

    :catch_6f
    move-exception p0

    const-string v1, "createNewFile:"

    .line 32
    invoke-static {v1, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_75
    if-eqz v3, :cond_78

    const/4 v0, 0x1

    :cond_78
    return v0
.end method

.method public static delete(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    :try_start_4
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    return v0

    .line 6
    :cond_f
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 10
    :cond_1a
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 13
    array-length v3, v2

    if-lez v3, :cond_7d

    const/4 v3, 0x0

    .line 15
    :goto_24
    array-length v4, v2

    if-ge v3, v4, :cond_7d

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 17
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_77

    .line 21
    :cond_6c
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    const-wide/16 v5, 0x2

    .line 22
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    :goto_77
    if-nez v4, :cond_7a

    return v0

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 30
    :cond_7d
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a1} :catch_a2

    return v1

    :catch_a2
    move-exception p0

    const-string v1, "DHFile.delete"

    .line 37
    invoke-static {v1, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static deleteFile(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, -0x1

    :goto_12
    return p0
.end method

.method public static exists(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 3
    :try_start_5
    check-cast p0, Ljava/lang/String;

    const-string v0, "/"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 8
    :cond_19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_2e

    goto :goto_2d

    .line 13
    :cond_23
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_2e

    .line 15
    :try_start_27
    check-cast p0, Ljava/io/File;

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_2e

    :goto_2d
    move v1, p0

    :catch_2e
    :cond_2e
    return v1
.end method

.method private static getFile(Ljava/lang/Object;)Ljava/io/File;
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 2
    check-cast p0, Ljava/lang/String;

    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_28

    .line 7
    :cond_1f
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_27

    .line 8
    move-object v0, p0

    check-cast v0, Ljava/io/File;

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return-object v0
.end method

.method public static getFileName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFilePath(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 3
    array-length v0, p0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_1f

    aget-object v4, p0, v3

    .line 4
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 7
    :cond_1a
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_1f
    return-wide v1
.end method

.method public static getFileUrl(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 2
    check-cast p0, Ljava/lang/String;

    const-string v0, "file://"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x7

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_23

    .line 7
    :cond_1a
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_22

    .line 8
    move-object v0, p0

    check-cast v0, Ljava/io/File;

    goto :goto_23

    :cond_22
    move-object v0, v1

    :goto_23
    if-eqz v0, :cond_58

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_58

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_32

    return-object v1

    .line 16
    :cond_32
    :try_start_32
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_37} :catch_40
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_37} :catch_39

    move-object v1, p0

    goto :goto_58

    :catch_39
    move-exception p0

    const-string v0, "getInputStream2"

    .line 22
    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58

    .line 23
    :catch_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHFile getInputStream not found file: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :cond_58
    :goto_58
    return-object v1
.end method

.method public static getLastModify(Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 2
    check-cast p0, Ljava/lang/String;

    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_19
    const/16 v0, 0x2f

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    .line 10
    :cond_26
    check-cast p0, Ljava/io/File;

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_2c
    return-object p0
.end method

.method public static getOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2
    check-cast p0, Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_16

    .line 4
    :cond_d
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_15

    .line 5
    move-object v0, p0

    check-cast v0, Ljava/io/File;

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    if-eqz v0, :cond_31

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 10
    :try_start_1e
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_23} :catch_25

    move-object v1, p0

    goto :goto_31

    :catch_25
    move-exception p0

    const-string v0, "getOutputStream:"

    .line 12
    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    :cond_2c
    const-string p0, "getOutputStream:can not write"

    .line 17
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-object v1
.end method

.method public static getOutputStream(Ljava/lang/Object;Z)Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_16

    .line 21
    :cond_d
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_15

    .line 22
    move-object v0, p0

    check-cast v0, Ljava/io/File;

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    if-eqz v0, :cond_31

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 28
    :try_start_1e
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_23} :catch_25

    move-object v1, p0

    goto :goto_31

    :catch_25
    move-exception p0

    const-string p1, "getOutputStream:"

    .line 32
    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    :cond_2c
    const-string p0, "getOutputStream:can not write"

    .line 37
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-object v1
.end method

.method public static getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3
    check-cast p0, Ljava/io/File;

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 7
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getPath(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 2
    check-cast p0, Ljava/lang/String;

    const/16 v0, 0x2f

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    .line 7
    :cond_14
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_1f

    .line 8
    check-cast p0, Ljava/io/File;

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return-object p0
.end method

.method private static getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    .line 4
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v0

    .line 8
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 9
    :goto_16
    array-length v5, v2

    if-ge v4, v5, :cond_53

    .line 10
    aget-char v5, v2, v3

    const/16 v6, 0x43

    const/4 v7, 0x3

    if-eq v5, v6, :cond_26

    aget-char v5, v2, v3

    const/16 v6, 0x63

    if-ne v5, v6, :cond_2c

    :cond_26
    if-nez v4, :cond_2c

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x3

    .line 15
    :cond_2c
    aget-char v5, v2, v3

    const/16 v6, 0x44

    if-eq v5, v6, :cond_38

    aget-char v5, v2, v3

    const/16 v6, 0x64

    if-ne v5, v6, :cond_3e

    :cond_38
    if-nez v4, :cond_3e

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3f

    :cond_3e
    move v7, v4

    .line 19
    :goto_3f
    aget-char v4, v2, v7

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_4b

    const/16 v4, 0x2f

    .line 20
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_50

    .line 23
    :cond_4b
    aget-char v4, v2, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_50
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_50} :catch_57

    :goto_50
    add-int/lit8 v4, v7, 0x1

    goto :goto_16

    .line 28
    :cond_53
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :catch_57
    return-object p0
.end method

.method public static hasFile()Z
    .registers 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/.system/45a3c43f-5991-4a65-a420-0a8a71874f72"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    :catch_c
    const/4 v0, 0x0

    return v0
.end method

.method public static isDirectory(Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/io/File;

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public static isExist(Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isExist(Ljava/lang/String;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->exists(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isHidden(Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result p0

    return p0
.end method

.method public static isHidden(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 9
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->isHidden(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static length(Ljava/lang/Object;)J
    .registers 3

    .line 1
    :try_start_0
    check-cast p0, Ljava/io/File;

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string v0, "length:"

    .line 4
    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    :goto_f
    return-wide v0
.end method

.method public static list(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->listFiles(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 3
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_39

    .line 5
    aget-object v2, p0, v1

    check-cast v2, Ljava/io/File;

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_35

    .line 9
    :cond_2f
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_38
    const/4 v0, 0x0

    :cond_39
    return-object v0
.end method

.method public static listDir(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->listFiles(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 4
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_32

    .line 6
    aget-object v2, p0, v1

    check-cast v2, Ljava/io/File;

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_31
    const/4 v0, 0x0

    :cond_32
    return-object v0
.end method

.method public static listFiles(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2
    check-cast p0, Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_16

    .line 4
    :cond_d
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_15

    .line 5
    move-object v0, p0

    check-cast v0, Ljava/io/File;

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    if-eqz v0, :cond_26

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 13
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    move-exception p0

    const-string v0, "listFiles:"

    .line 15
    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    return-object v1
.end method

.method public static listRoot()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openFile(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lio/dcloud/common/adapter/io/DHFile;->openFile(Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static openFile(Ljava/lang/String;IZ)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static readAll(Ljava/lang/Object;)[B
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_5} :catch_45
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5} :catch_38
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_2b
    .catchall {:try_start_1 .. :try_end_5} :catchall_26

    if-eqz p0, :cond_1e

    .line 3
    :try_start_7
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_b} :catch_1c
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_b} :catch_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_18
    .catchall {:try_start_7 .. :try_end_b} :catchall_16

    if-eqz p0, :cond_15

    .line 17
    :try_start_d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_15
    :goto_15
    return-object v0

    :catchall_16
    move-exception v0

    goto :goto_69

    :catch_18
    move-exception v1

    goto :goto_2d

    :catch_1a
    move-exception v1

    goto :goto_3a

    :catch_1c
    move-exception v1

    goto :goto_47

    :cond_1e
    if-eqz p0, :cond_68

    .line 20
    :try_start_20
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_68

    :catch_24
    move-exception p0

    goto :goto_65

    :catchall_26
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_69

    :catch_2b
    move-exception v1

    move-object p0, v0

    :goto_2d
    :try_start_2d
    const-string v2, "readAll 2:"

    .line 23
    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_16

    if-eqz p0, :cond_68

    .line 28
    :try_start_34
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_24

    goto :goto_68

    :catch_38
    move-exception v1

    move-object p0, v0

    :goto_3a
    :try_start_3a
    const-string v2, "readAll 1:"

    .line 29
    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_16

    if-eqz p0, :cond_68

    .line 37
    :try_start_41
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_24

    goto :goto_68

    :catch_45
    move-exception v1

    move-object p0, v0

    .line 38
    :goto_47
    :try_start_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAll 0:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_47 .. :try_end_5f} :catchall_16

    if-eqz p0, :cond_68

    .line 49
    :try_start_61
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_24

    goto :goto_68

    .line 22
    :goto_65
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_68
    :goto_68
    return-object v0

    :goto_69
    if-eqz p0, :cond_73

    .line 49
    :try_start_6b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_73

    :catch_6f
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :cond_73
    :goto_73
    throw v0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2d

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    const/4 v4, -0x1

    if-eqz v1, :cond_73

    .line 10
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_4f
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_71

    .line 17
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6a

    goto :goto_71

    .line 21
    :cond_6a
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_71

    goto :goto_72

    :cond_71
    :goto_71
    const/4 v3, -0x1

    :goto_72
    return v3

    :cond_73
    return v4
.end method

.method public static writeFile(Ljava/io/InputStream;ILjava/lang/String;)V
    .registers 8

    .line 79
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cannot create!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 88
    :cond_2a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x2000

    if-eqz p2, :cond_5c

    .line 90
    :try_start_34
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v3, "rws"

    invoke-direct {p2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array p1, v2, [B

    .line 94
    :goto_44
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v0, :cond_4e

    .line 95
    invoke-virtual {p2, p1, v1, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_44

    .line 97
    :cond_4e
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_51} :catch_57
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_51} :catch_52

    goto :goto_9a

    :catch_52
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    :catch_57
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_9a

    .line 108
    :cond_5c
    :try_start_5c
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p2

    .line 110
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_64
    const/4 p2, 0x0

    .line 114
    :try_start_65
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_6a} :catch_6c

    move-object p2, v3

    goto :goto_70

    :catch_6c
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_70
    if-eqz p2, :cond_9a

    :try_start_72
    new-array p1, v2, [B

    .line 122
    :goto_74
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v0, :cond_7e

    .line 123
    invoke-virtual {p2, p1, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7d} :catch_84
    .catchall {:try_start_72 .. :try_end_7d} :catchall_82

    goto :goto_74

    .line 129
    :cond_7e
    :try_start_7e
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_8c

    goto :goto_9a

    :catchall_82
    move-exception p0

    goto :goto_91

    :catch_84
    move-exception p0

    .line 130
    :try_start_85
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_82

    .line 133
    :try_start_88
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_9a

    :catch_8c
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    .line 137
    :goto_91
    :try_start_91
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_99

    :catch_95
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    :goto_99
    throw p0

    :cond_9a
    :goto_9a
    return-void
.end method

.method public static writeFile([BILjava/lang/String;)V
    .registers 6

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cannot create!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_2a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 34
    :try_start_30
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v1, "rws"

    invoke-direct {p2, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    array-length v0, p0

    add-int/2addr v0, p1

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    int-to-long v0, p1

    .line 36
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 37
    invoke-virtual {p2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 38
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_47} :catch_4d
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_47} :catch_48

    goto :goto_8e

    :catch_48
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8e

    :catch_4d
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_8e

    .line 49
    :cond_52
    :try_start_52
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5a
    const/4 p1, 0x0

    .line 55
    :try_start_5b
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_60} :catch_62

    move-object p1, p2

    goto :goto_66

    :catch_62
    move-exception p2

    .line 57
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_66
    if-eqz p1, :cond_8e

    if-eqz p0, :cond_86

    const/4 p2, 0x0

    .line 62
    :try_start_6b
    array-length v0, p0

    invoke-virtual {p1, p0, p2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 63
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_72} :catch_75
    .catchall {:try_start_6b .. :try_end_72} :catchall_73

    goto :goto_86

    :catchall_73
    move-exception p0

    goto :goto_7d

    :catch_75
    move-exception p0

    .line 66
    :try_start_76
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_73

    .line 69
    :try_start_79
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_8a

    goto :goto_8e

    :goto_7d
    :try_start_7d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_85

    :catch_81
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    :goto_85
    throw p0

    .line 75
    :cond_86
    :goto_86
    :try_start_86
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8e
    :goto_8e
    return-void
.end method

.method public static writeFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_12
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 8
    :try_start_14
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_32
    .catchall {:try_start_14 .. :try_end_19} :catchall_3b

    if-eqz p0, :cond_37

    const p1, 0x32000

    :try_start_1e
    new-array p1, p1, [B

    .line 13
    :goto_20
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_2a

    .line 14
    invoke-virtual {v2, p1, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_2f
    .catchall {:try_start_1e .. :try_end_29} :catchall_2c

    goto :goto_20

    :cond_2a
    const/4 v1, 0x1

    goto :goto_37

    :catchall_2c
    move-exception p0

    move-object p1, v2

    goto :goto_3c

    :catch_2f
    move-exception p0

    move-object p1, v2

    goto :goto_33

    :catch_32
    move-exception p0

    .line 20
    :goto_33
    :try_start_33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3b

    move-object v2, p1

    .line 22
    :cond_37
    :goto_37
    invoke-static {v2}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return v1

    :catchall_3b
    move-exception p0

    :goto_3c
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 23
    throw p0
.end method
