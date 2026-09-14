###### Class io.dcloud.feature.gg.dcloud.ADSim (io.dcloud.feature.gg.dcloud.ADSim)
.class public Lio/dcloud/feature/gg/dcloud/ADSim;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INTISPLSH:I = 0x2710


# instance fields
.field mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field private mContext:Landroid/content/Context;

.field mData:Lorg/json/JSONObject;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim;->mHandler:Landroid/os/Handler;

    .line 9
    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADSim;->mData:Lorg/json/JSONObject;

    .line 10
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADSim;->mContext:Landroid/content/Context;

    .line 11
    new-instance p2, Lio/dcloud/feature/gg/dcloud/ADSim$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lio/dcloud/feature/gg/dcloud/ADSim$1;-><init>(Lio/dcloud/feature/gg/dcloud/ADSim;Landroid/os/Looper;)V

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADSim;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/gg/dcloud/ADSim;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/ADSim;->initSimSplsh()V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/gg/dcloud/ADSim;Lorg/json/JSONObject;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/gg/dcloud/ADSim;->crateAdData(Lorg/json/JSONObject;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/gg/dcloud/ADSim;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADSim;->initAdImg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lio/dcloud/feature/gg/dcloud/ADSim;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/ADSim;->click()V

    return-void
.end method

.method private click()V
    .registers 4

    const-string v0, "shutao"

    const-string v1, "ADSim---click"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADSim;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    const-string v2, "adid"

    invoke-static {v0, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->click(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void
.end method

.method private crateAdData(Lorg/json/JSONObject;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;
    .registers 6

    .line 1
    new-instance v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-direct {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;-><init>()V

    const-string v1, "data"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3c

    const-string v2, "provider"

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mProvider:Ljava/lang/String;

    .line 5
    iput-object p1, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mJsonData:Lorg/json/JSONObject;

    const-string v2, "es"

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mEShow:I

    const-string v2, "ec"

    .line 7
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mEClick:I

    const-string p1, "src"

    .line 8
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iput-object p1, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgSrc:Ljava/lang/String;

    const-string p1, "000"

    .line 10
    iput-object p1, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    const-string p1, "appid"

    .line 11
    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    :cond_3c
    return-object v0
.end method

.method public static dwApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;Ljava/lang/String;)V
    .registers 16

    const/16 v4, 0x1d

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p7

    .line 1
    invoke-static/range {v0 .. v7}, Lio/dcloud/common/util/ADUtils;->downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Lcom/dcloud/android/downloader/DownloadService;->getDownloadManager(Landroid/content/Context;)Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    move-result-object p5

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ADSIM-INFO.io"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 10
    :cond_3a
    invoke-interface {p5}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->findAllDownloading()Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dcloud/android/downloader/domain/DownloadInfo;

    .line 12
    invoke-virtual {v2}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 13
    invoke-interface {p5, v2}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    goto :goto_42

    .line 16
    :cond_5c
    new-instance v1, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;

    invoke-direct {v1}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v1, p4}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->setPath(Ljava/lang/String;)Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;

    move-result-object p4

    invoke-virtual {p4, p0}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->build(Landroid/content/Context;)Lcom/dcloud/android/downloader/domain/DownloadInfo;

    move-result-object p4

    if-eqz p6, :cond_72

    .line 18
    invoke-virtual {p4, p6}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setTag(Ljava/lang/Object;)V

    .line 20
    :cond_72
    new-instance p6, Lio/dcloud/feature/gg/dcloud/ADSim$5;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p7

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/gg/dcloud/ADSim$5;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dcloud/android/downloader/callback/DCDownloadManager;)V

    invoke-virtual {p4, p6}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setDownloadListener(Lcom/dcloud/android/downloader/callback/DownloadListener;)V

    .line 70
    invoke-interface {p5, p4}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->download(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    return-void
.end method

.method public static getRandomInt(II)I
    .registers 6

    int-to-double v0, p0

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    int-to-double p0, p1

    mul-double v2, v2, p0

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method private initAdImg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADSim$3;

    invoke-direct {v1, p0, p2, p1}, Lio/dcloud/feature/gg/dcloud/ADSim$3;-><init>(Lio/dcloud/feature/gg/dcloud/ADSim;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initClick()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x320

    const/16 v1, 0x7d0

    .line 2
    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/ADSim;->getRandomInt(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADSim;->mHandler:Landroid/os/Handler;

    new-instance v2, Lio/dcloud/feature/gg/dcloud/ADSim$4;

    invoke-direct {v2, p0}, Lio/dcloud/feature/gg/dcloud/ADSim$4;-><init>(Lio/dcloud/feature/gg/dcloud/ADSim;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

.method private initSimSplsh()V
    .registers 4

    const-string v0, "shutao"

    const-string v1, "ADSim---view"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADSim;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    const-string v2, "adid"

    invoke-static {v0, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->view(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/ADSim;->initClick()V

    return-void
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "shutao"

    const-string v1, "ADSim---openUrl"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/dcloud/feature/gg/dcloud/ADWebView;

    invoke-direct {v0, p0}, Lio/dcloud/feature/gg/dcloud/ADWebView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Lio/dcloud/feature/gg/dcloud/ADWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public start()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADSim$2;

    invoke-direct {v1, p0}, Lio/dcloud/feature/gg/dcloud/ADSim$2;-><init>(Lio/dcloud/feature/gg/dcloud/ADSim;)V

    const/16 v2, 0xfa

    const/16 v3, 0x15e

    .line 13
    invoke-static {v2, v3}, Lio/dcloud/feature/gg/dcloud/ADSim;->getRandomInt(II)I

    move-result v2

    int-to-long v2, v2

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADSim.AnonymousClass1 (io.dcloud.feature.gg.dcloud.ADSim$1)
.class Lio/dcloud/feature/gg/dcloud/ADSim$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADSim;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/ADSim;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADSim;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADSim$1;->this$0:Lio/dcloud/feature/gg/dcloud/ADSim;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_a

    goto :goto_f

    .line 4
    :cond_a
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADSim$1;->this$0:Lio/dcloud/feature/gg/dcloud/ADSim;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/ADSim;->access$000(Lio/dcloud/feature/gg/dcloud/ADSim;)V

    :goto_f
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADSim.AnonymousClass2 (io.dcloud.feature.gg.dcloud.ADSim$2)
.class Lio/dcloud/feature/gg/dcloud/ADSim$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADSim;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/ADSim;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADSim;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADSim$2;->this$0:Lio/dcloud/feature/gg/dcloud/ADSim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim$2;->this$0:Lio/dcloud/feature/gg/dcloud/ADSim;

    iget-object v1, v0, Lio/dcloud/feature/gg/dcloud/ADSim;->mData:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/ADSim;->access$100(Lio/dcloud/feature/gg/dcloud/ADSim;Lorg/json/JSONObject;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/feature/gg/dcloud/ADSim;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim$2;->this$0:Lio/dcloud/feature/gg/dcloud/ADSim;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/ADSim;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    if-eqz v0, :cond_30

    .line 4
    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim$2;->this$0:Lio/dcloud/feature/gg/dcloud/ADSim;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/ADSim;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_25
    const-string v0, ""

    .line 7
    :goto_27
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADSim$2;->this$0:Lio/dcloud/feature/gg/dcloud/ADSim;

    iget-object v2, v1, Lio/dcloud/feature/gg/dcloud/ADSim;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgSrc:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/feature/gg/dcloud/ADSim;->access$200(Lio/dcloud/feature/gg/dcloud/ADSim;Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADSim.AnonymousClass3 (io.dcloud.feature.gg.dcloud.ADSim$3)
.class Lio/dcloud/feature/gg/dcloud/ADSim$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADSim;->initAdImg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/ADSim;

.field final synthetic val$src:Ljava/lang/String;

.field final synthetic val$ua:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADSim;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADSim$3;->this$0:Lio/dcloud/feature/gg/dcloud/ADSim;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADSim$3;->val$ua:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADSim$3;->val$src:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADSim$3;->val$ua:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADSim$3;->val$ua:Ljava/lang/String;

    const-string v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "ua-webview"

    .line 3
    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_22
    :try_start_22
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADSim$3;->val$src:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    move-result-object v0

    if-eqz v0, :cond_34

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim$3;->this$0:Lio/dcloud/feature/gg/dcloud/ADSim;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/ADSim;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADSim.AnonymousClass4 (io.dcloud.feature.gg.dcloud.ADSim$4)
.class Lio/dcloud/feature/gg/dcloud/ADSim$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADSim;->initClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/ADSim;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADSim;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADSim$4;->this$0:Lio/dcloud/feature/gg/dcloud/ADSim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim$4;->this$0:Lio/dcloud/feature/gg/dcloud/ADSim;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/ADSim;->access$300(Lio/dcloud/feature/gg/dcloud/ADSim;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADSim.AnonymousClass5 (io.dcloud.feature.gg.dcloud.ADSim$5)
.class final Lio/dcloud/feature/gg/dcloud/ADSim$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/downloader/callback/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADSim;->dwApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

.field final synthetic val$tid:Ljava/lang/String;

.field final synthetic val$ua:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dcloud/android/downloader/callback/DCDownloadManager;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$appid:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$tid:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$adid:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$ua:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Lcom/dcloud/android/downloader/domain/DownloadInfo;Lcom/dcloud/android/downloader/exception/DownloadException;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$appid:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$tid:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$adid:Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$ua:Ljava/lang/String;

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lio/dcloud/common/util/ADUtils;->downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 6
    :cond_23
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    invoke-interface {p2, p1}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    return-void
.end method

.method public onDownloadSuccess(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V
    .registers 14

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/common/DHInterface/ILoadCallBack;

    if-eqz v0, :cond_1d

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/ILoadCallBack;

    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lio/dcloud/common/DHInterface/ILoadCallBack;->onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1d
    iget-object v4, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$appid:Ljava/lang/String;

    iget-object v6, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$tid:Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$adid:Ljava/lang/String;

    iget-object v11, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$ua:Ljava/lang/String;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v11}, Lio/dcloud/common/util/ADUtils;->downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 10
    :cond_40
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADSim$5;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    invoke-interface {v0, p1}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    return-void
.end method

.method public onDownloading(JJ)V
    .registers 5

    return-void
.end method

.method public onPaused()V
    .registers 1

    return-void
.end method

.method public onRemoved()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onWaited()V
    .registers 1

    return-void
.end method
