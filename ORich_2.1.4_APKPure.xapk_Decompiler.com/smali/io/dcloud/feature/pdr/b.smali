###### Class io.dcloud.feature.pdr.b (io.dcloud.feature.pdr.b)
.class public Lio/dcloud/feature/pdr/b;
.super Lio/dcloud/common/adapter/util/Logger;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/io/File;

.field private static c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lio/dcloud/feature/pdr/b;->c:Ljava/lang/Boolean;

    return-void
.end method

.method private static WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/util/Logger;->generateLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object p1, Lio/dcloud/feature/pdr/b;->b:Ljava/io/File;

    if-eqz p1, :cond_43

    if-eqz p0, :cond_43

    const/4 p1, 0x0

    .line 5
    :try_start_b
    new-instance p2, Ljava/io/FileOutputStream;

    sget-object v0, Lio/dcloud/feature/pdr/b;->b:Ljava/io/File;

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_29
    .catchall {:try_start_b .. :try_end_13} :catchall_27

    .line 6
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 7
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 8
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_24
    .catchall {:try_start_13 .. :try_end_1d} :catchall_21

    .line 14
    :try_start_1d
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_33

    goto :goto_43

    :catchall_21
    move-exception p0

    move-object p1, p2

    goto :goto_38

    :catch_24
    move-exception p0

    move-object p1, p2

    goto :goto_2a

    :catchall_27
    move-exception p0

    goto :goto_38

    :catch_29
    move-exception p0

    .line 15
    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    if-eqz p1, :cond_43

    .line 19
    :try_start_2f
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_43

    :catch_33
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    :goto_38
    if-eqz p1, :cond_42

    .line 23
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    :cond_42
    :goto_42
    throw p0

    :cond_43
    :goto_43
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/feature/pdr/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    sput-object p0, Lio/dcloud/feature/pdr/b;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Lio/dcloud/feature/pdr/b;->storeLogToSDcard()V

    .line 4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lio/dcloud/feature/pdr/b;->c:Ljava/lang/Boolean;

    :cond_11
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->W:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lio/dcloud/feature/pdr/b;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->D:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lio/dcloud/feature/pdr/b;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->E:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lio/dcloud/feature/pdr/b;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->I:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lio/dcloud/feature/pdr/b;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static storeLogToSDcard()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    sget-object v1, Lio/dcloud/feature/pdr/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->generateTimeStamp(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    new-instance v1, Ljava/io/File;

    sget-object v2, Lio/dcloud/feature/pdr/b;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lio/dcloud/feature/pdr/b;->b:Ljava/io/File;

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_3c

    .line 9
    :cond_39
    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->deleteOldLog(Ljava/io/File;)V

    .line 12
    :goto_3c
    sget-object v0, Lio/dcloud/feature/pdr/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_51

    .line 14
    :try_start_44
    sget-object v0, Lio/dcloud/feature/pdr/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_4a

    goto :goto_51

    :catch_4a
    move-exception v0

    const/4 v1, 0x0

    .line 16
    sput-object v1, Lio/dcloud/feature/pdr/b;->b:Ljava/io/File;

    .line 17
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_51
    :goto_51
    return-void
.end method
