###### Class com.dcloud.android.downloader.core.DownloadResponseImpl (com.dcloud.android.downloader.core.DownloadResponseImpl)
.class public Lcom/dcloud/android/downloader/core/DownloadResponseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/downloader/core/DownloadResponse;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadResponseImpl"


# instance fields
.field private final downloadDBController:Lcom/dcloud/android/downloader/db/DownloadDBController;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/dcloud/android/downloader/db/DownloadDBController;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/downloader/core/DownloadResponseImpl;->downloadDBController:Lcom/dcloud/android/downloader/db/DownloadDBController;

    .line 4
    new-instance p1, Lcom/dcloud/android/downloader/core/DownloadResponseImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/dcloud/android/downloader/core/DownloadResponseImpl$1;-><init>(Lcom/dcloud/android/downloader/core/DownloadResponseImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/dcloud/android/downloader/core/DownloadResponseImpl;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleException(Lcom/dcloud/android/downloader/exception/DownloadException;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2c

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/downloader/core/DownloadResponseImpl;->downloadDBController:Lcom/dcloud/android/downloader/db/DownloadDBController;

    invoke-interface {v0, p1}, Lcom/dcloud/android/downloader/db/DownloadDBController;->createOrUpdate(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    .line 3
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadThreadInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 4
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadThreadInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    .line 5
    iget-object v2, p0, Lcom/dcloud/android/downloader/core/DownloadResponseImpl;->downloadDBController:Lcom/dcloud/android/downloader/db/DownloadDBController;

    invoke-interface {v2, v1}, Lcom/dcloud/android/downloader/db/DownloadDBController;->createOrUpdate(Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;)V

    goto :goto_1a

    .line 10
    :cond_2c
    iget-object v0, p0, Lcom/dcloud/android/downloader/core/DownloadResponseImpl;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 11
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadResponseImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

###### Class com.dcloud.android.downloader.core.DownloadResponseImpl.AnonymousClass1 (com.dcloud.android.downloader.core.DownloadResponseImpl$1)
.class Lcom/dcloud/android/downloader/core/DownloadResponseImpl$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/downloader/core/DownloadResponseImpl;-><init>(Lcom/dcloud/android/downloader/db/DownloadDBController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/downloader/core/DownloadResponseImpl;


# direct methods
.method constructor <init>(Lcom/dcloud/android/downloader/core/DownloadResponseImpl;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/downloader/core/DownloadResponseImpl$1;->this$0:Lcom/dcloud/android/downloader/core/DownloadResponseImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/dcloud/android/downloader/domain/DownloadInfo;

    .line 3
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_7e

    goto/16 :goto_7d

    .line 39
    :pswitch_10
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 40
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/dcloud/android/downloader/callback/DownloadListener;->onRemoved()V

    goto :goto_7d

    .line 41
    :pswitch_1e
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 42
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getException()Lcom/dcloud/android/downloader/exception/DownloadException;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dcloud/android/downloader/callback/DownloadListener;->onDownloadFailed(Lcom/dcloud/android/downloader/domain/DownloadInfo;Lcom/dcloud/android/downloader/exception/DownloadException;)V

    goto :goto_7d

    .line 43
    :pswitch_30
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 44
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dcloud/android/downloader/callback/DownloadListener;->onDownloadSuccess(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    goto :goto_7d

    .line 45
    :pswitch_3e
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 46
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/dcloud/android/downloader/callback/DownloadListener;->onPaused()V

    goto :goto_7d

    .line 47
    :pswitch_4c
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 48
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/dcloud/android/downloader/callback/DownloadListener;->onWaited()V

    goto :goto_7d

    .line 49
    :pswitch_5a
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 50
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getProgress()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getSize()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/dcloud/android/downloader/callback/DownloadListener;->onDownloading(JJ)V

    goto :goto_7d

    .line 56
    :pswitch_70
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 57
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getDownloadListener()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/dcloud/android/downloader/callback/DownloadListener;->onStart()V

    :cond_7d
    :goto_7d
    return-void

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_70
        :pswitch_5a
        :pswitch_4c
        :pswitch_3e
        :pswitch_30
        :pswitch_1e
        :pswitch_10
    .end packed-switch
.end method
