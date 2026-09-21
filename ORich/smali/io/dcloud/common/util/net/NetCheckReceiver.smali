###### Class io.dcloud.common.util.net.NetCheckReceiver (io.dcloud.common.util.net.NetCheckReceiver)
.class public Lio/dcloud/common/util/net/NetCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final netACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final simACTION:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"


# instance fields
.field mNetMgr:Lio/dcloud/common/DHInterface/AbsMgr;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/AbsMgr;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/util/net/NetCheckReceiver;->mNetMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 4
    iput-object p1, p0, Lio/dcloud/common/util/net/NetCheckReceiver;->mNetMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3e

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_25

    .line 4
    iget-object p1, p0, Lio/dcloud/common/util/net/NetCheckReceiver;->mNetMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v5, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onDeviceNetChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    aput-object v5, v2, v1

    aput-object v3, v2, v4

    aput-object v3, v2, v0

    invoke-interface {p1, p2, v4, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :cond_25
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 10
    iget-object p1, p0, Lio/dcloud/common/util/net/NetCheckReceiver;->mNetMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v5, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSimStateChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    aput-object v5, v2, v1

    aput-object v3, v2, v4

    aput-object v3, v2, v0

    invoke-interface {p1, p2, v4, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    :goto_3e
    return-void
.end method
