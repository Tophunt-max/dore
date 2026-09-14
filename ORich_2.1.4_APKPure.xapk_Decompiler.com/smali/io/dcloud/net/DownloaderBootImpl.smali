###### Class io.dcloud.net.DownloaderBootImpl (io.dcloud.net.DownloaderBootImpl)
.class public Lio/dcloud/net/DownloaderBootImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IBoot;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/net/DownloadJSMgr;->getInstance()Lio/dcloud/net/DownloadJSMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/net/DownloadJSMgr;->dispose()V

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method
