###### Class io.dcloud.common.util.net.NetMgr (io.dcloud.common.util.net.NetMgr)
.class public Lio/dcloud/common/util/net/NetMgr;
.super Lio/dcloud/common/DHInterface/AbsMgr;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IMgr$NetEvent;


# instance fields
.field mDownloadMgr:Lio/dcloud/common/util/net/DownloadMgr;

.field mLocalServer:Lio/dcloud/common/util/net/http/IServer;

.field mNetCheckReceiver:Lio/dcloud/common/util/net/NetCheckReceiver;

.field mUploadMgr:Lio/dcloud/common/util/net/UploadMgr;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/ICore;)V
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->NetMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const-string v1, "netmgr"

    invoke-direct {p0, p1, v1, v0}, Lio/dcloud/common/DHInterface/AbsMgr;-><init>(Lio/dcloud/common/DHInterface/ICore;Ljava/lang/String;Lio/dcloud/common/DHInterface/IMgr$MgrType;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lio/dcloud/common/util/net/NetMgr;->mNetCheckReceiver:Lio/dcloud/common/util/net/NetCheckReceiver;

    .line 12
    iput-object p1, p0, Lio/dcloud/common/util/net/NetMgr;->mLocalServer:Lio/dcloud/common/util/net/http/IServer;

    .line 13
    invoke-virtual {p0}, Lio/dcloud/common/util/net/NetMgr;->startMiniServer()V

    .line 14
    invoke-static {}, Lio/dcloud/common/util/net/UploadMgr;->getUploadMgr()Lio/dcloud/common/util/net/UploadMgr;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/util/net/NetMgr;->mUploadMgr:Lio/dcloud/common/util/net/UploadMgr;

    .line 15
    invoke-static {}, Lio/dcloud/common/util/net/DownloadMgr;->getDownloadMgr()Lio/dcloud/common/util/net/DownloadMgr;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/util/net/NetMgr;->mDownloadMgr:Lio/dcloud/common/util/net/DownloadMgr;

    .line 16
    new-instance p1, Lio/dcloud/common/util/net/NetCheckReceiver;

    invoke-direct {p1, p0}, Lio/dcloud/common/util/net/NetCheckReceiver;-><init>(Lio/dcloud/common/DHInterface/AbsMgr;)V

    iput-object p1, p0, Lio/dcloud/common/util/net/NetMgr;->mNetCheckReceiver:Lio/dcloud/common/util/net/NetCheckReceiver;

    .line 17
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/util/net/NetMgr;->mNetCheckReceiver:Lio/dcloud/common/util/net/NetCheckReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initLocalServer()Lio/dcloud/common/util/net/http/IServer;
    .registers 6

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 2
    const-class v2, Lio/dcloud/common/DHInterface/AbsMgr;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const/16 v2, 0x334b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "io.dcloud.common.util.net.http.LocalServer"

    invoke-static {v2, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 3
    instance-of v1, v0, Lio/dcloud/common/util/net/http/IServer;

    if-eqz v1, :cond_2c

    .line 4
    check-cast v0, Lio/dcloud/common/util/net/http/IServer;

    return-object v0

    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/NetMgr;->mLocalServer:Lio/dcloud/common/util/net/http/IServer;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/util/net/http/IServer;->stop()V

    .line 4
    :cond_7
    iget-object v0, p0, Lio/dcloud/common/util/net/NetMgr;->mUploadMgr:Lio/dcloud/common/util/net/UploadMgr;

    if-eqz v0, :cond_e

    .line 5
    invoke-virtual {v0}, Lio/dcloud/common/util/net/UploadMgr;->dispose()V

    .line 11
    :cond_e
    invoke-virtual {p0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/util/net/NetMgr;->mNetCheckReceiver:Lio/dcloud/common/util/net/NetCheckReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V
    .registers 3

    .line 1
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_f

    .line 2
    iget-object p1, p0, Lio/dcloud/common/util/net/NetMgr;->mLocalServer:Lio/dcloud/common/util/net/http/IServer;

    if-eqz p1, :cond_27

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/util/net/http/IServer;->stop()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/dcloud/common/util/net/NetMgr;->mLocalServer:Lio/dcloud/common/util/net/http/IServer;

    goto :goto_27

    .line 6
    :cond_f
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_27

    .line 7
    iget-object p1, p0, Lio/dcloud/common/util/net/NetMgr;->mLocalServer:Lio/dcloud/common/util/net/http/IServer;

    if-nez p1, :cond_27

    .line 8
    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez p1, :cond_1c

    return-void

    .line 11
    :cond_1c
    invoke-direct {p0}, Lio/dcloud/common/util/net/NetMgr;->initLocalServer()Lio/dcloud/common/util/net/http/IServer;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/util/net/NetMgr;->mLocalServer:Lio/dcloud/common/util/net/http/IServer;

    if-eqz p1, :cond_27

    .line 13
    invoke-interface {p1}, Lio/dcloud/common/util/net/http/IServer;->start()V

    :cond_27
    :goto_27
    return-void
.end method

.method public processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lio/dcloud/common/DHInterface/AbsMgr;->checkMgrId(Lio/dcloud/common/DHInterface/IMgr$MgrType;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lio/dcloud/common/DHInterface/AbsMgr;->mCore:Lio/dcloud/common/DHInterface/ICore;

    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_14

    :catchall_d
    move-exception p1

    const-string p2, "NetMgr.processEvent"

    .line 11
    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return-object p1
.end method

.method protected startMiniServer()V
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-direct {p0}, Lio/dcloud/common/util/net/NetMgr;->initLocalServer()Lio/dcloud/common/util/net/http/IServer;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/util/net/NetMgr;->mLocalServer:Lio/dcloud/common/util/net/http/IServer;

    if-eqz v0, :cond_10

    .line 6
    invoke-interface {v0}, Lio/dcloud/common/util/net/http/IServer;->start()V

    :cond_10
    return-void
.end method
