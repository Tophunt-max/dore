###### Class io.dcloud.feature.pdr.ZipFeature (io.dcloud.feature.pdr.ZipFeature)
.class public Lio/dcloud/feature/pdr/ZipFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/pdr/ZipFeature$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lio/dcloud/feature/pdr/ZipFeature$a;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "compress"

    .line 1
    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6e

    .line 2
    new-instance p2, Lio/dcloud/feature/pdr/ZipFeature$a;

    invoke-direct {p2, p0}, Lio/dcloud/feature/pdr/ZipFeature$a;-><init>(Lio/dcloud/feature/pdr/ZipFeature;)V

    .line 3
    iput-object p1, p2, Lio/dcloud/feature/pdr/ZipFeature$a;->f:Lio/dcloud/common/DHInterface/IWebview;

    .line 4
    iput-boolean v2, p2, Lio/dcloud/feature/pdr/ZipFeature$a;->a:Z

    .line 5
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 6
    aget-object v4, p3, v3

    iput-object v4, p2, Lio/dcloud/feature/pdr/ZipFeature$a;->b:Ljava/lang/String;

    .line 7
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v4

    aget-object v3, p3, v3

    invoke-interface {v0, v4, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lio/dcloud/feature/pdr/ZipFeature$a;->d:Ljava/lang/String;

    .line 8
    aget-object v2, p3, v2

    if-nez v2, :cond_45

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_doc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_45
    const-string v3, ".zip"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    :cond_5c
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    iput-object p1, p2, Lio/dcloud/feature/pdr/ZipFeature$a;->c:Ljava/lang/String;

    .line 17
    aget-object p1, p3, v1

    iput-object p1, p2, Lio/dcloud/feature/pdr/ZipFeature$a;->e:Ljava/lang/String;

    .line 18
    invoke-direct {p0, p2}, Lio/dcloud/feature/pdr/ZipFeature;->a(Lio/dcloud/feature/pdr/ZipFeature$a;)V

    goto :goto_c6

    :cond_6e
    const-string v0, "decompress"

    .line 19
    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 20
    new-instance p2, Lio/dcloud/feature/pdr/ZipFeature$a;

    invoke-direct {p2, p0}, Lio/dcloud/feature/pdr/ZipFeature$a;-><init>(Lio/dcloud/feature/pdr/ZipFeature;)V

    .line 21
    iput-object p1, p2, Lio/dcloud/feature/pdr/ZipFeature$a;->f:Lio/dcloud/common/DHInterface/IWebview;

    .line 22
    iput-boolean v3, p2, Lio/dcloud/feature/pdr/ZipFeature$a;->a:Z

    .line 23
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 24
    aget-object v3, p3, v3

    invoke-interface {v0, v3}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lio/dcloud/feature/pdr/ZipFeature$a;->c:Ljava/lang/String;

    .line 26
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p1

    aget-object v2, p3, v2

    invoke-interface {v0, p1, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lio/dcloud/feature/pdr/ZipFeature$a;->d:Ljava/lang/String;

    .line 27
    aget-object p1, p3, v1

    iput-object p1, p2, Lio/dcloud/feature/pdr/ZipFeature$a;->e:Ljava/lang/String;

    .line 28
    invoke-direct {p0, p2}, Lio/dcloud/feature/pdr/ZipFeature;->a(Lio/dcloud/feature/pdr/ZipFeature$a;)V

    goto :goto_c6

    :cond_ab
    const-string v0, "compressImage"

    .line 29
    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 30
    invoke-static {p1, p3}, Lio/dcloud/feature/pdr/a;->b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V

    goto :goto_c6

    :cond_b7
    const-string v0, "compressVideo"

    .line 31
    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c6

    .line 33
    invoke-static {}, Landroidtranscoder/VideoCompressor;->getInstance()Landroidtranscoder/VideoCompressor;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Landroidtranscoder/VideoCompressor;->compressVideo(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V

    :cond_c6
    :goto_c6
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    return-void
.end method

###### Class io.dcloud.feature.pdr.ZipFeature.a (io.dcloud.feature.pdr.ZipFeature$a)
.class Lio/dcloud/feature/pdr/ZipFeature$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/pdr/ZipFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/pdr/ZipFeature;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->a:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v0, "{code:%d,message:\'%s\'}"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1
    :try_start_5
    iget-boolean v4, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->a:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7} :catch_15e

    const-string v5, " open failed:ENOENT (No such file or directory)"

    const-string v6, ";mZipFilePath"

    if-eqz v4, :cond_c0

    .line 2
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compress mUnZipDirPath="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 3
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->d:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5e

    new-array v6, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-static {v0, v6}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object v6, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->f:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v7, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->e:Ljava/lang/String;

    invoke-static {v6, v7, v5, v3}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    :cond_5e
    iget-object v5, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->f:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v6, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->e:Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->c:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lio/dcloud/common/util/JSUtil;->checkOperateDirErrorAndCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    return-void

    .line 12
    :cond_6b
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->c:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 15
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 16
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 18
    :cond_7d
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_85

    if-nez v6, :cond_89

    :cond_85
    new-array v6, v3, [Ljava/io/File;

    aput-object v4, v6, v1

    .line 23
    :cond_89
    iget-object v7, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->f:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-static {v7, v8}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bb

    new-array v4, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    sget-object v5, Lio/dcloud/common/constant/DOMException;->MSG_PATH_NOT_PRIVATE_ERROR:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 25
    iget-object v5, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->f:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v6, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->e:Ljava/lang/String;

    invoke-static {v5, v6, v4, v3}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 28
    :cond_bb
    invoke-static {v6, v5}, Lio/dcloud/common/util/ZipUtils;->zipFiles([Ljava/io/File;Ljava/io/File;)V

    goto/16 :goto_154

    .line 31
    :cond_c0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decompress mUnZipDirPath="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 32
    iget-object v4, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->f:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v6, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->e:Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->d:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lio/dcloud/common/util/JSUtil;->checkOperateDirErrorAndCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_eb

    return-void

    .line 35
    :cond_eb
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->c:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_11f

    new-array v4, v2, [Ljava/lang/Object;

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 38
    iget-object v5, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->f:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v6, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->e:Ljava/lang/String;

    invoke-static {v5, v6, v4, v3}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 42
    :cond_11f
    iget-object v5, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->f:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->d:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14f

    new-array v4, v2, [Ljava/lang/Object;

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    sget-object v5, Lio/dcloud/common/constant/DOMException;->MSG_PATH_NOT_PRIVATE_ERROR:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 44
    iget-object v5, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->f:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v6, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->e:Ljava/lang/String;

    invoke-static {v5, v6, v4, v3}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 47
    :cond_14f
    iget-object v5, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lio/dcloud/common/util/ZipUtils;->upZipFile(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    :goto_154
    iget-object v4, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->f:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v5, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->e:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lio/dcloud/common/util/JSUtil;->excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15d} :catch_15e

    goto :goto_178

    :catch_15e
    move-exception v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v0, v5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->f:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/pdr/ZipFeature$a;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_178
    return-void
.end method
