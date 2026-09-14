###### Class com.dcloud.android.downloader.DownloadService (com.dcloud.android.downloader.DownloadService)
.class public Lcom/dcloud/android/downloader/DownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadService"

.field public static downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static getDownloadManager(Landroid/content/Context;)Lcom/dcloud/android/downloader/callback/DCDownloadManager;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/dcloud/android/downloader/DownloadService;->getDownloadManager(Landroid/content/Context;Lcom/dcloud/android/downloader/config/Config;)Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadManager(Landroid/content/Context;Lcom/dcloud/android/downloader/config/Config;)Lcom/dcloud/android/downloader/callback/DCDownloadManager;
    .registers 4

    .line 2
    invoke-static {p0}, Lcom/dcloud/android/downloader/DownloadService;->isServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dcloud/android/downloader/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6
    :cond_10
    sget-object v0, Lcom/dcloud/android/downloader/DownloadService;->downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    if-nez v0, :cond_1a

    .line 7
    invoke-static {p0, p1}, Lcom/dcloud/android/downloader/DownloadManagerImpl;->getInstance(Landroid/content/Context;Lcom/dcloud/android/downloader/config/Config;)Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    move-result-object p0

    sput-object p0, Lcom/dcloud/android/downloader/DownloadService;->downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    .line 9
    :cond_1a
    sget-object p0, Lcom/dcloud/android/downloader/DownloadService;->downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    return-object p0
.end method

.method private static isServiceRunning(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3d

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_19

    goto :goto_3d

    :cond_19
    const/4 v1, 0x0

    .line 9
    :goto_1a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 10
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 11
    const-class v3, Lcom/dcloud/android/downloader/DownloadService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3d
    :goto_3d
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/downloader/DownloadService;->downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->onDestroy()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/dcloud/android/downloader/DownloadService;->downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    .line 5
    :cond_a
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
