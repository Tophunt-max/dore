###### Class io.dcloud.common.adapter.util.DownloadUtil (io.dcloud.common.adapter.util.DownloadUtil)
.class public Lio/dcloud/common/adapter/util/DownloadUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;
    }
.end annotation


# static fields
.field private static mInstance:Lio/dcloud/common/adapter/util/DownloadUtil;


# instance fields
.field download_receiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mDownloader:Landroid/app/DownloadManager;

.field rs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->rs:Ljava/util/HashMap;

    .line 15
    new-instance v0, Lio/dcloud/common/adapter/util/DownloadUtil$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/util/DownloadUtil$1;-><init>(Lio/dcloud/common/adapter/util/DownloadUtil;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->download_receiver:Landroid/content/BroadcastReceiver;

    const-string v0, "download"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mDownloader:Landroid/app/DownloadManager;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->rs:Ljava/util/HashMap;

    .line 18
    iput-object p1, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mContext:Landroid/content/Context;

    .line 20
    :try_start_21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->download_receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_31} :catch_31

    :catch_31
    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/adapter/util/DownloadUtil;Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/util/DownloadUtil;->queryDownloadStatus(Landroid/content/Context;)V

    return-void
.end method

.method public static getAPKInstallIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_8
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x7

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_19
    const-string v1, "content://"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 10
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFilePathFromContentUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_31
    invoke-static {p0, p1, v0}, Lio/dcloud/common/util/LoadAppUtils;->getDataAndTypeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lio/dcloud/common/adapter/util/DownloadUtil;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DownloadUtil;->mInstance:Lio/dcloud/common/adapter/util/DownloadUtil;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/common/adapter/util/DownloadUtil;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/util/DownloadUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/dcloud/common/adapter/util/DownloadUtil;->mInstance:Lio/dcloud/common/adapter/util/DownloadUtil;

    .line 4
    :cond_b
    sget-object p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mInstance:Lio/dcloud/common/adapter/util/DownloadUtil;

    return-object p0
.end method

.method private queryDownloadStatus(Landroid/content/Context;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->rs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Long;

    .line 3
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    :goto_11
    if-ltz v1, :cond_b4

    .line 5
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 6
    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v6, v0, [J

    const/4 v7, 0x0

    aput-wide v3, v6, v7

    .line 7
    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 8
    iget-object v6, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mDownloader:Landroid/app/DownloadManager;

    invoke-virtual {v6, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v5

    .line 9
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b0

    const-string v6, "status"

    .line 10
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "down"

    if-eq v5, v0, :cond_a6

    const/4 v8, 0x2

    if-eq v5, v8, :cond_ab

    const/4 v8, 0x4

    if-eq v5, v8, :cond_a1

    const/16 v8, 0x8

    if-eq v5, v8, :cond_67

    const/16 v8, 0x10

    if-eq v5, v8, :cond_4f

    goto :goto_b0

    :cond_4f
    const-string v5, "STATUS_FAILED"

    .line 42
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v5, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mDownloader:Landroid/app/DownloadManager;

    new-array v6, v0, [J

    aput-wide v3, v6, v7

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager;->remove([J)I

    .line 44
    iget-object v5, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->rs:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    :cond_67
    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 45
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 49
    :try_start_6d
    iget-object v6, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mDownloader:Landroid/app/DownloadManager;

    invoke-virtual {v6, v3, v4}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v6

    .line 50
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "content://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 51
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8d

    .line 53
    :cond_84
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception v6

    .line 56
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :goto_8d
    iget-object v6, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->rs:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;

    .line 59
    iget-object v3, v3, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;->callback:Lio/dcloud/common/DHInterface/ILoadCallBack;

    if-eqz v3, :cond_b0

    .line 60
    invoke-interface {v3, v7, p1, v5}, Lio/dcloud/common/DHInterface/ILoadCallBack;->onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    :cond_a1
    const-string v3, "STATUS_PAUSED"

    .line 61
    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    const-string v3, "STATUS_PENDING"

    .line 63
    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    const-string v3, "STATUS_RUNNING"

    .line 66
    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    :goto_b0
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_11

    :cond_b4
    return-void
.end method

.method private runCallBack(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ILoadCallBack;ILjava/lang/Object;)V
    .registers 12

    .line 1
    new-instance v6, Lio/dcloud/common/adapter/util/DownloadUtil$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/dcloud/common/adapter/util/DownloadUtil$2;-><init>(Lio/dcloud/common/adapter/util/DownloadUtil;Lio/dcloud/common/DHInterface/ILoadCallBack;ILandroid/app/Activity;Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addDownlaodCallBack(JLjava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->rs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->rs:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 4
    :cond_15
    new-instance v0, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;

    invoke-direct {v0, p0, p3, p4, p5}, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;-><init>(Lio/dcloud/common/adapter/util/DownloadUtil;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)V

    .line 5
    iget-object p3, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->rs:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkDownloadStatus(Landroid/app/Activity;JLio/dcloud/common/DHInterface/ILoadCallBack;)V
    .registers 10

    .line 1
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [J

    const/4 v3, 0x0

    aput-wide p2, v2, v3

    .line 2
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 3
    iget-object v2, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mDownloader:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_77

    const-string v2, "status"

    .line 5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_72

    const/4 v4, 0x2

    if-eq v0, v4, :cond_72

    const/4 v4, 0x4

    if-eq v0, v4, :cond_69

    const/16 v4, 0x8

    if-eq v0, v4, :cond_40

    const/16 v4, 0x10

    if-eq v0, v4, :cond_36

    goto :goto_72

    .line 36
    :cond_36
    iget-object v4, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mDownloader:Landroid/app/DownloadManager;

    new-array v1, v1, [J

    aput-wide p2, v1, v3

    invoke-virtual {v4, v1}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_72

    .line 37
    :cond_40
    :try_start_40
    iget-object v1, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mDownloader:Landroid/app/DownloadManager;

    invoke-virtual {v1, p2, p3}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object p2

    .line 38
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "content://"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_58

    .line 39
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_56
    move-object v2, p2

    goto :goto_61

    .line 41
    :cond_58
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5c} :catch_5d

    goto :goto_56

    :catch_5d
    move-exception p2

    .line 44
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :goto_61
    invoke-static {p1, v2}, Lio/dcloud/common/adapter/util/DownloadUtil;->getAPKInstallIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p1, p4, v0, p2}, Lio/dcloud/common/adapter/util/DownloadUtil;->runCallBack(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ILoadCallBack;ILjava/lang/Object;)V

    return-void

    .line 47
    :cond_69
    iget-object v4, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mDownloader:Landroid/app/DownloadManager;

    new-array v1, v1, [J

    aput-wide p2, v1, v3

    invoke-virtual {v4, v1}, Landroid/app/DownloadManager;->remove([J)I

    :cond_72
    :goto_72
    if-eqz p4, :cond_77

    .line 78
    invoke-direct {p0, p1, p4, v0, v2}, Lio/dcloud/common/adapter/util/DownloadUtil;->runCallBack(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ILoadCallBack;ILjava/lang/Object;)V

    :cond_77
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    return-void
.end method

.method public startRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)J
    .registers 7

    .line 1
    :try_start_0
    new-instance p1, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;

    invoke-direct {p1, p0, p2, p3, p6}, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;-><init>(Lio/dcloud/common/adapter/util/DownloadUtil;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5d

    .line 3
    :try_start_5
    invoke-static {p4}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_18

    .line 4
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_5d

    goto :goto_18

    :catch_14
    move-exception p2

    .line 7
    :try_start_15
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_18
    :goto_18
    const-string p2, "/"

    .line 9
    invoke-virtual {p4, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2b

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p4, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 12
    :cond_2b
    sget-object p2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 13
    sget-object p2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p4, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    .line 15
    :cond_3f
    iget-object p2, p1, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;->request:Landroid/app/DownloadManager$Request;

    invoke-virtual {p2, p5}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 16
    iget-object p2, p1, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;->request:Landroid/app/DownloadManager$Request;

    invoke-virtual {p2, p4, p5}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 17
    iget-object p2, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mDownloader:Landroid/app/DownloadManager;

    iget-object p3, p1, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;->request:Landroid/app/DownloadManager$Request;

    invoke-virtual {p2, p3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p2

    .line 18
    iput-wide p2, p1, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;->id:J

    .line 19
    iget-object p4, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->rs:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_5c} :catch_5d

    return-wide p2

    :catch_5d
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    const/4 p2, 0x0

    .line 23
    invoke-interface {p6, p1, p2, p2}, Lio/dcloud/common/DHInterface/ILoadCallBack;->onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public stop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    .line 3
    :try_start_4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->download_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lio/dcloud/common/adapter/util/DownloadUtil;->mInstance:Lio/dcloud/common/adapter/util/DownloadUtil;

    .line 5
    iput-object v0, p0, Lio/dcloud/common/adapter/util/DownloadUtil;->mContext:Landroid/content/Context;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17
    :goto_17
    return-void
.end method

###### Class io.dcloud.common.adapter.util.DownloadUtil.AnonymousClass1 (io.dcloud.common.adapter.util.DownloadUtil$1)
.class Lio/dcloud/common/adapter/util/DownloadUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/DownloadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/util/DownloadUtil;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/util/DownloadUtil;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/DownloadUtil$1;->this$0:Lio/dcloud/common/adapter/util/DownloadUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "extra_download_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "intent"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_1e
    iget-object p2, p0, Lio/dcloud/common/adapter/util/DownloadUtil$1;->this$0:Lio/dcloud/common/adapter/util/DownloadUtil;

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/DownloadUtil;->access$000(Lio/dcloud/common/adapter/util/DownloadUtil;Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_28
    return-void
.end method

###### Class io.dcloud.common.adapter.util.DownloadUtil.AnonymousClass2 (io.dcloud.common.adapter.util.DownloadUtil$2)
.class Lio/dcloud/common/adapter/util/DownloadUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/DownloadUtil;->runCallBack(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ILoadCallBack;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/util/DownloadUtil;

.field final synthetic val$as:Ljava/lang/Object;

.field final synthetic val$callBack:Lio/dcloud/common/DHInterface/ILoadCallBack;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/util/DownloadUtil;Lio/dcloud/common/DHInterface/ILoadCallBack;ILandroid/app/Activity;Ljava/lang/Object;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/DownloadUtil$2;->this$0:Lio/dcloud/common/adapter/util/DownloadUtil;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/DownloadUtil$2;->val$callBack:Lio/dcloud/common/DHInterface/ILoadCallBack;

    iput p3, p0, Lio/dcloud/common/adapter/util/DownloadUtil$2;->val$status:I

    iput-object p4, p0, Lio/dcloud/common/adapter/util/DownloadUtil$2;->val$context:Landroid/app/Activity;

    iput-object p5, p0, Lio/dcloud/common/adapter/util/DownloadUtil$2;->val$as:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/DownloadUtil$2;->val$callBack:Lio/dcloud/common/DHInterface/ILoadCallBack;

    iget v1, p0, Lio/dcloud/common/adapter/util/DownloadUtil$2;->val$status:I

    iget-object v2, p0, Lio/dcloud/common/adapter/util/DownloadUtil$2;->val$context:Landroid/app/Activity;

    iget-object v3, p0, Lio/dcloud/common/adapter/util/DownloadUtil$2;->val$as:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lio/dcloud/common/DHInterface/ILoadCallBack;->onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.common.adapter.util.DownloadUtil.MyRequest (io.dcloud.common.adapter.util.DownloadUtil$MyRequest)
.class Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/DownloadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRequest"
.end annotation


# instance fields
.field callback:Lio/dcloud/common/DHInterface/ILoadCallBack;

.field id:J

.field request:Landroid/app/DownloadManager$Request;

.field final synthetic this$0:Lio/dcloud/common/adapter/util/DownloadUtil;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/util/DownloadUtil;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;->this$0:Lio/dcloud/common/adapter/util/DownloadUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;->request:Landroid/app/DownloadManager$Request;

    .line 4
    iput-object p1, p0, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;->callback:Lio/dcloud/common/DHInterface/ILoadCallBack;

    .line 6
    new-instance p1, Landroid/app/DownloadManager$Request;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    iput-object p1, p0, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;->request:Landroid/app/DownloadManager$Request;

    .line 7
    invoke-virtual {p1, p3}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 8
    iput-object p4, p0, Lio/dcloud/common/adapter/util/DownloadUtil$MyRequest;->callback:Lio/dcloud/common/DHInterface/ILoadCallBack;

    return-void
.end method
