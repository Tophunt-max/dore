###### Class io.dcloud.net.DownloadJSMgr (io.dcloud.net.DownloadJSMgr)
.class public Lio/dcloud/net/DownloadJSMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;
    }
.end annotation


# static fields
.field static final DELETE:I = 0x2

.field static final SAVE:I = 0x1

.field private static mDownloadJSMgr:Lio/dcloud/net/DownloadJSMgr;


# instance fields
.field curAppSharePref:Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

.field public mAppsDownloadTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHander:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/net/DownloadJSMgr;->mAppsDownloadTasks:Ljava/util/HashMap;

    .line 298
    iput-object v0, p0, Lio/dcloud/net/DownloadJSMgr;->curAppSharePref:Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    .line 301
    new-instance v0, Lio/dcloud/net/DownloadJSMgr$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/dcloud/net/DownloadJSMgr$1;-><init>(Lio/dcloud/net/DownloadJSMgr;Landroid/os/Looper;)V

    iput-object v0, p0, Lio/dcloud/net/DownloadJSMgr;->mHander:Landroid/os/Handler;

    .line 302
    iget-object v0, p0, Lio/dcloud/net/DownloadJSMgr;->mAppsDownloadTasks:Ljava/util/HashMap;

    if-nez v0, :cond_1e

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/net/DownloadJSMgr;->mAppsDownloadTasks:Ljava/util/HashMap;

    :cond_1e
    return-void
.end method

.method static synthetic access$000(Lio/dcloud/net/DownloadJSMgr;Ljava/lang/String;)Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/net/DownloadJSMgr;->getAppTaskList(Ljava/lang/String;)Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    move-result-object p0

    return-object p0
.end method

.method private createDownloadTask(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/net/JsDownload;
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/net/JsDownload;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/net/JsDownload;-><init>(Lio/dcloud/net/DownloadJSMgr;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private enumerate(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1
    invoke-direct {p0, p4}, Lio/dcloud/net/DownloadJSMgr;->getAppTaskList(Ljava/lang/String;)Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    move-result-object p4

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 4
    :try_start_6
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_22

    const/4 v2, 0x1

    if-eq p3, v2, :cond_22

    const/4 v2, 0x2

    if-eq p3, v2, :cond_22

    const/4 v2, 0x3

    if-eq p3, v2, :cond_22

    if-eq p3, v0, :cond_22

    const/4 v2, 0x5

    if-ne p3, v2, :cond_1b

    goto :goto_22

    .line 22
    :cond_1b
    iget-object p3, p4, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p3}, Lio/dcloud/net/DownloadJSMgr;->enumerateArr(Lio/dcloud/common/DHInterface/IWebview;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p3

    goto :goto_8b

    .line 23
    :cond_22
    :goto_22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_56

    .line 24
    iget-object v3, p4, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_56

    .line 25
    iget-object v3, p4, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_38
    if-ge v4, v3, :cond_56

    .line 27
    iget-object v5, p4, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/net/JsDownload;

    .line 28
    iget-object v6, v5, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    if-nez v6, :cond_4c

    .line 29
    iput-object p1, v5, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 31
    :cond_4c
    iget v6, v5, Lio/dcloud/net/JsDownload;->mState:I

    if-ne p3, v6, :cond_53

    .line 32
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 36
    :cond_56
    invoke-direct {p0, p1, v2}, Lio/dcloud/net/DownloadJSMgr;->enumerateArr(Lio/dcloud/common/DHInterface/IWebview;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p3
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5a} :catch_5b

    goto :goto_8b

    :catch_5b
    nop

    .line 41
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_87

    .line 42
    iget-object v2, p4, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_87

    .line 43
    iget-object v2, p4, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_71
    if-ge v1, v2, :cond_87

    .line 45
    iget-object v3, p4, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/net/JsDownload;

    .line 46
    iput-object p1, v3, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 47
    iget v4, v3, Lio/dcloud/net/JsDownload;->mState:I

    if-eq v4, v0, :cond_84

    .line 48
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 52
    :cond_87
    invoke-direct {p0, p1, p3}, Lio/dcloud/net/DownloadJSMgr;->enumerateArr(Lio/dcloud/common/DHInterface/IWebview;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p3

    :goto_8b
    move-object v2, p3

    .line 54
    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private enumerateArr(Lio/dcloud/common/DHInterface/IWebview;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/common/DHInterface/IWebview;",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/net/JsDownload;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_35

    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_35

    .line 6
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/net/JsDownload;

    .line 7
    invoke-virtual {v3}, Lio/dcloud/net/JsDownload;->toSaveJSON()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v3, p1}, Lio/dcloud/net/JsDownload;->addRelWebview(Lio/dcloud/common/DHInterface/IWebview;)V

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_32

    const-string v3, ","

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_35
    const-string p1, "]"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findDownloadTask(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/net/JsDownload;
    .registers 8

    .line 1
    invoke-direct {p0, p2}, Lio/dcloud/net/DownloadJSMgr;->getAppTaskList(Ljava/lang/String;)Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    move-result-object p2

    if-eqz p2, :cond_2d

    .line 3
    iget-object v0, p2, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_2d

    .line 5
    iget-object v2, p2, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/net/JsDownload;

    .line 6
    iget-object v3, v2, Lio/dcloud/net/JsDownload;->mUUID:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 7
    iget-object p2, v2, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    if-nez p2, :cond_2e

    .line 8
    iput-object p1, v2, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    goto :goto_2e

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2d
    const/4 v2, 0x0

    :cond_2e
    :goto_2e
    return-object v2
.end method

.method private getAppTaskList(Ljava/lang/String;)Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/net/DownloadJSMgr;->mAppsDownloadTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    return-object p1
.end method

.method protected static getInstance()Lio/dcloud/net/DownloadJSMgr;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/net/DownloadJSMgr;->mDownloadJSMgr:Lio/dcloud/net/DownloadJSMgr;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/net/DownloadJSMgr;

    invoke-direct {v0}, Lio/dcloud/net/DownloadJSMgr;-><init>()V

    sput-object v0, Lio/dcloud/net/DownloadJSMgr;->mDownloadJSMgr:Lio/dcloud/net/DownloadJSMgr;

    .line 4
    :cond_b
    sget-object v0, Lio/dcloud/net/DownloadJSMgr;->mDownloadJSMgr:Lio/dcloud/net/DownloadJSMgr;

    return-object v0
.end method

.method private initAppDownloadList(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/net/DownloadJSMgr;->mAppsDownloadTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 4
    :cond_9
    iget-object v0, p0, Lio/dcloud/net/DownloadJSMgr;->mAppsDownloadTasks:Ljava/util/HashMap;

    new-instance v1, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;-><init>(Lio/dcloud/net/DownloadJSMgr;Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private pushDownloadTask(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/net/JsDownload;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/net/DownloadJSMgr;->mAppsDownloadTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    if-nez v0, :cond_18

    .line 3
    new-instance v0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;-><init>(Lio/dcloud/net/DownloadJSMgr;Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lio/dcloud/net/DownloadJSMgr;->mAppsDownloadTasks:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_18
    iget-object p1, v0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method deleteDownloadTaskInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 3
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lio/dcloud/net/DownloadJSMgr;->mHander:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispose()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/net/DownloadJSMgr;->mAppsDownloadTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-direct {p0, v1}, Lio/dcloud/net/DownloadJSMgr;->getAppTaskList(Ljava/lang/String;)Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/net/JsDownload;

    .line 6
    invoke-virtual {v2}, Lio/dcloud/net/JsDownload;->saveInDatabase()V

    goto :goto_20

    :cond_30
    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, v0}, Lio/dcloud/net/DownloadJSMgr;->initAppDownloadList(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_14c

    goto :goto_6b

    :sswitch_1b
    const-string v1, "startAll"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6b

    const/4 p2, 0x5

    goto :goto_6c

    :sswitch_25
    const-string v1, "enumerate"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6b

    const/4 p2, 0x6

    goto :goto_6c

    :sswitch_2f
    const-string v1, "start"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6b

    const/4 p2, 0x0

    goto :goto_6c

    :sswitch_39
    const-string v1, "pause"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6b

    const/4 p2, 0x2

    goto :goto_6c

    :sswitch_43
    const-string v1, "clear"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6b

    const/4 p2, 0x4

    goto :goto_6c

    :sswitch_4d
    const-string v1, "abort"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6b

    const/4 p2, 0x3

    goto :goto_6c

    :sswitch_57
    const-string v1, "resume"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6b

    const/4 p2, 0x1

    goto :goto_6c

    :sswitch_61
    const-string v1, "createDownload"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6b

    const/4 p2, 0x7

    goto :goto_6c

    :cond_6b
    :goto_6b
    const/4 p2, -0x1

    :goto_6c
    packed-switch p2, :pswitch_data_16e

    goto/16 :goto_14a

    .line 76
    :pswitch_71
    new-instance p2, Lorg/json/JSONObject;

    aget-object p3, p3, v5

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1, p2}, Lio/dcloud/net/DownloadJSMgr;->createDownloadTask(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/net/JsDownload;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/net/DownloadJSMgr;->pushDownloadTask(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/net/JsDownload;)V

    goto/16 :goto_14a

    .line 78
    :pswitch_81
    aget-object p2, p3, v5

    aget-object p3, p3, v4

    invoke-direct {p0, p1, p2, p3, v0}, Lio/dcloud/net/DownloadJSMgr;->enumerate(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14a

    .line 79
    :pswitch_8a
    invoke-direct {p0, v0}, Lio/dcloud/net/DownloadJSMgr;->getAppTaskList(Ljava/lang/String;)Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    move-result-object p1

    .line 80
    iget-object p2, p1, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    if-eqz p2, :cond_14a

    .line 81
    :goto_92
    iget-object p2, p1, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v5, p2, :cond_14a

    .line 82
    iget-object p2, p1, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/net/JsDownload;

    invoke-virtual {p2}, Lio/dcloud/net/JsDownload;->start()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_92

    .line 83
    :pswitch_a8
    invoke-direct {p0, v0}, Lio/dcloud/net/DownloadJSMgr;->getAppTaskList(Ljava/lang/String;)Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    move-result-object p1

    .line 84
    aget-object p2, p3, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_14a

    .line 86
    iget-object p3, p1, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v4

    :goto_bb
    if-ltz p3, :cond_14a

    .line 88
    iget-object v0, p1, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/net/JsDownload;

    if-eq p2, v3, :cond_d1

    .line 89
    iget v1, v0, Lio/dcloud/net/JsDownload;->mState:I

    if-eq p2, v1, :cond_d1

    const/16 v4, -0x2710

    if-ne p2, v4, :cond_d9

    if-eq v1, v2, :cond_d9

    .line 93
    :cond_d1
    invoke-virtual {v0}, Lio/dcloud/net/JsDownload;->abort()V

    .line 94
    iget-object v0, p1, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d9
    add-int/lit8 p3, p3, -0x1

    goto :goto_bb

    .line 95
    :pswitch_dc
    aget-object p2, p3, v5

    .line 96
    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/net/DownloadJSMgr;->findDownloadTask(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/net/JsDownload;

    move-result-object p1

    .line 97
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14a

    .line 98
    invoke-direct {p0, v0}, Lio/dcloud/net/DownloadJSMgr;->getAppTaskList(Ljava/lang/String;)Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    move-result-object p2

    .line 99
    iget-object p2, p2, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    iput-boolean v4, p1, Lio/dcloud/net/JsDownload;->mPause:Z

    .line 101
    invoke-static {}, Lio/dcloud/common/util/net/DownloadMgr;->getDownloadMgr()Lio/dcloud/common/util/net/DownloadMgr;

    move-result-object p2

    iget-object p3, p1, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    invoke-virtual {p2, p3}, Lio/dcloud/common/util/net/DownloadMgr;->removeTask(Lio/dcloud/common/util/net/NetWork;)V

    .line 102
    invoke-virtual {p1}, Lio/dcloud/net/JsDownload;->abort()V

    goto :goto_14a

    .line 103
    :pswitch_100
    aget-object p2, p3, v5

    .line 104
    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/net/DownloadJSMgr;->findDownloadTask(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/net/JsDownload;

    move-result-object p1

    .line 105
    iput-boolean v4, p1, Lio/dcloud/net/JsDownload;->mPause:Z

    .line 107
    invoke-static {}, Lio/dcloud/common/util/net/DownloadMgr;->getDownloadMgr()Lio/dcloud/common/util/net/DownloadMgr;

    move-result-object p2

    iget-object p1, p1, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    invoke-virtual {p2, p1}, Lio/dcloud/common/util/net/DownloadMgr;->removeTask(Lio/dcloud/common/util/net/NetWork;)V

    goto :goto_14a

    .line 108
    :pswitch_112
    aget-object p2, p3, v5

    .line 109
    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/net/DownloadJSMgr;->findDownloadTask(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/net/JsDownload;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lio/dcloud/net/JsDownload;->start()V

    .line 111
    aget-object p2, p3, v4

    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_14a

    .line 113
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_14a

    .line 115
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 116
    :goto_132
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 117
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p1, v0, v1}, Lio/dcloud/net/JsDownload;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_145} :catch_146

    goto :goto_132

    :catch_146
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14a
    :goto_14a
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_14c
    .sparse-switch
        -0x73e7ee5c -> :sswitch_61
        -0x37b237d3 -> :sswitch_57
        0x5852330 -> :sswitch_4d
        0x5a5b64d -> :sswitch_43
        0x65825f6 -> :sswitch_39
        0x68ac462 -> :sswitch_2f
        0xebef664 -> :sswitch_25
        0x4e7c49df -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_112
        :pswitch_112
        :pswitch_100
        :pswitch_dc
        :pswitch_a8
        :pswitch_8a
        :pswitch_81
        :pswitch_71
    .end packed-switch
.end method

.method saveDownloadTaskInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    .line 3
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lio/dcloud/net/DownloadJSMgr;->mHander:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

###### Class io.dcloud.net.DownloadJSMgr.AnonymousClass1 (io.dcloud.net.DownloadJSMgr$1)
.class Lio/dcloud/net/DownloadJSMgr$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/net/DownloadJSMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/net/DownloadJSMgr;


# direct methods
.method constructor <init>(Lio/dcloud/net/DownloadJSMgr;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/net/DownloadJSMgr$1;->this$0:Lio/dcloud/net/DownloadJSMgr;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_24

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 3
    aget-object v0, p1, v1

    .line 4
    aget-object v1, p1, v3

    .line 5
    aget-object p1, p1, v2

    .line 6
    iget-object v2, p0, Lio/dcloud/net/DownloadJSMgr$1;->this$0:Lio/dcloud/net/DownloadJSMgr;

    invoke-static {v2, v0}, Lio/dcloud/net/DownloadJSMgr;->access$000(Lio/dcloud/net/DownloadJSMgr;Ljava/lang/String;)Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->sharePref:Landroid/content/SharedPreferences;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4d

    :cond_24
    if-ne v0, v2, :cond_4d

    .line 12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 13
    aget-object v0, p1, v1

    .line 14
    aget-object p1, p1, v3

    .line 15
    iget-object v1, p0, Lio/dcloud/net/DownloadJSMgr$1;->this$0:Lio/dcloud/net/DownloadJSMgr;

    invoke-static {v1, v0}, Lio/dcloud/net/DownloadJSMgr;->access$000(Lio/dcloud/net/DownloadJSMgr;Ljava/lang/String;)Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->sharePref:Landroid/content/SharedPreferences;

    const-string v1, ""

    .line 16
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4d
    :goto_4d
    return-void
.end method

###### Class io.dcloud.net.DownloadJSMgr.AppDownloadInfo (io.dcloud.net.DownloadJSMgr$AppDownloadInfo)
.class Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/net/DownloadJSMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppDownloadInfo"
.end annotation


# instance fields
.field appid:Ljava/lang/String;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/net/JsDownload;",
            ">;"
        }
    .end annotation
.end field

.field sharePref:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lio/dcloud/net/DownloadJSMgr;


# direct methods
.method constructor <init>(Lio/dcloud/net/DownloadJSMgr;Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 9

    .line 1
    iput-object p1, p0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->this$0:Lio/dcloud/net/DownloadJSMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    .line 5
    iput-object p4, p0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->appid:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_download_dcloud"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p2, p4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->sharePref:Landroid/content/SharedPreferences;

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    .line 10
    iget-object p2, p0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->sharePref:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_5f

    .line 12
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 13
    iget-object v0, p0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    .line 14
    :goto_3b
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 15
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    :try_start_4d
    new-instance v2, Lio/dcloud/net/JsDownload;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p1, p3, v3}, Lio/dcloud/net/JsDownload;-><init>(Lio/dcloud/net/DownloadJSMgr;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_5a} :catch_5b

    goto :goto_3b

    :catch_5b
    nop

    goto :goto_3b

    .line 30
    :cond_5d
    iput-object v0, p0, Lio/dcloud/net/DownloadJSMgr$AppDownloadInfo;->mList:Ljava/util/ArrayList;

    :cond_5f
    return-void
.end method
