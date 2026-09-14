###### Class com.dcloud.android.downloader.domain.DownloadInfo (com.dcloud.android.downloader.domain.DownloadInfo)
.class public Lcom/dcloud/android/downloader/domain/DownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;,
        Lcom/dcloud/android/downloader/domain/DownloadInfo$DownloadStatus;
    }
.end annotation


# static fields
.field public static final STATUS_COMPLETED:I = 0x5

.field public static final STATUS_DOWNLOADING:I = 0x2

.field public static final STATUS_ERROR:I = 0x6

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_PAUSED:I = 0x4

.field public static final STATUS_PREPARE_DOWNLOAD:I = 0x1

.field public static final STATUS_REMOVED:I = 0x7

.field public static final STATUS_WAIT:I = 0x3


# instance fields
.field private context:Landroid/content/Context;

.field private createAt:J

.field private transient downloadListener:Lcom/dcloud/android/downloader/callback/DownloadListener;

.field private downloadThreadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private exception:Lcom/dcloud/android/downloader/exception/DownloadException;

.field private id:I

.field private location:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private progress:J

.field private size:J

.field private status:I

.field private supportRanges:I

.field private tag:Ljava/lang/Object;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1d

    .line 5
    :cond_12
    check-cast p1, Lcom/dcloud/android/downloader/domain/DownloadInfo;

    .line 7
    iget v2, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->id:I

    iget p1, p1, Lcom/dcloud/android/downloader/domain/DownloadInfo;->id:I

    if-ne v2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCreateAt()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->createAt:J

    return-wide v0
.end method

.method public getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->downloadListener:Lcom/dcloud/android/downloader/callback/DownloadListener;

    return-object v0
.end method

.method public getDownloadThreadInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->downloadThreadInfos:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->location:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_d
    iget-object v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Lcom/dcloud/android/downloader/exception/DownloadException;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->exception:Lcom/dcloud/android/downloader/exception/DownloadException;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->id:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->progress:J

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->size:J

    return-wide v0
.end method

.method public getStatus()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->status:I

    return v0
.end method

.method public getSupportRanges()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->supportRanges:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->id:I

    return v0
.end method

.method public isPause()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_e

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public isSupportRanges()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->supportRanges:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setCreateAt(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->createAt:J

    return-void
.end method

.method public setDownloadListener(Lcom/dcloud/android/downloader/callback/DownloadListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->downloadListener:Lcom/dcloud/android/downloader/callback/DownloadListener;

    return-void
.end method

.method public setDownloadThreadInfos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->downloadThreadInfos:Ljava/util/List;

    return-void
.end method

.method public setException(Lcom/dcloud/android/downloader/exception/DownloadException;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->exception:Lcom/dcloud/android/downloader/exception/DownloadException;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->id:I

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->location:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setProgress(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->progress:J

    return-void
.end method

.method public setSize(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->size:J

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->status:I

    return-void
.end method

.method public setSupportRanges(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->supportRanges:I

    return-void
.end method

.method public setSupportRanges(Z)V
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    .line 2
    iput p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->supportRanges:I

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->tag:Ljava/lang/Object;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo;->uri:Ljava/lang/String;

    return-void
.end method

###### Class com.dcloud.android.downloader.domain.DownloadInfo.Builder (com.dcloud.android.downloader.domain.DownloadInfo$Builder)
.class public final Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/downloader/domain/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_ENCODE:Ljava/lang/String; = "utf-8"


# instance fields
.field private createAt:J

.field private id:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->createAt:J

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/dcloud/android/downloader/domain/DownloadInfo;
    .registers 7

    .line 1
    new-instance v0, Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-direct {v0, p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_52

    .line 7
    iget-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setUri(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->path:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49

    .line 13
    iget-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setPath(Ljava/lang/String;)V

    .line 15
    iget-wide v1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->createAt:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_2e

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->setCreateAt(J)Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;

    .line 19
    :cond_2e
    iget-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setId(I)V

    .line 21
    iget-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->id:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 22
    iget-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setId(I)V

    :cond_48
    return-object v0

    .line 23
    :cond_49
    new-instance p1, Lcom/dcloud/android/downloader/exception/DownloadException;

    const/4 v0, 0x1

    const-string v1, "path cannot be null."

    invoke-direct {p1, v0, v1}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 24
    :cond_52
    new-instance p1, Lcom/dcloud/android/downloader/exception/DownloadException;

    const/4 v0, 0x0

    const-string v1, "uri cannot be null."

    invoke-direct {p1, v0, v1}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public setCreateAt(J)Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->createAt:J

    return-object p0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->id:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

###### Class com.dcloud.android.downloader.domain.DownloadInfo.DownloadStatus (com.dcloud.android.downloader.domain.DownloadInfo$DownloadStatus)
.class public interface abstract annotation Lcom/dcloud/android/downloader/domain/DownloadInfo$DownloadStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/downloader/domain/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "DownloadStatus"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
