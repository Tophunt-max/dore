###### Class io.dcloud.ads.base.service.DownloadService (io.dcloud.ads.base.service.DownloadService)
.class public Lio/dcloud/ads/base/service/DownloadService;
.super Landroidx/core/app/JobIntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/ads/base/service/DownloadService$b;,
        Lio/dcloud/ads/base/service/DownloadService$c;
    }
.end annotation


# instance fields
.field private a:Ldc/squareup/okhttp3/OkHttpClient;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/ads/base/service/DownloadService$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/ads/base/service/DownloadService;->a:Ldc/squareup/okhttp3/OkHttpClient;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/ads/base/service/DownloadService;->b:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/dcloud/ads/base/service/DownloadService;->c:Ljava/lang/Object;

    return-void
.end method

.method private a()V
    .registers 10

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    .line 3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/core/app/JobIntentService;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/dcloud_ad/apk/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 6
    array-length v3, v2

    if-lez v3, :cond_49

    .line 7
    array-length v3, v2

    const/4 v4, 0x0

    :goto_37
    if-ge v4, v3, :cond_49

    aget-object v5, v2, v4

    .line 8
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-gez v8, :cond_46

    .line 9
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_49

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :catch_49
    :cond_49
    return-void
.end method

.method public static a(Landroid/content/Context;Lio/dcloud/ads/base/entry/AdData;I)V
    .registers 5

    .line 29
    invoke-static {}, Lio/dcloud/f/a/d/f;->a()Lio/dcloud/f/a/d/f;

    move-result-object v0

    new-instance v1, Lio/dcloud/ads/base/service/DownloadService$a;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/ads/base/service/DownloadService$a;-><init>(Landroid/content/Context;Lio/dcloud/ads/base/entry/AdData;I)V

    invoke-virtual {v0, v1}, Lio/dcloud/f/a/d/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/ads/base/service/DownloadService;Ljava/lang/String;Lio/dcloud/ads/base/entry/AdData;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/ads/base/service/DownloadService;->a(Ljava/lang/String;Lio/dcloud/ads/base/entry/AdData;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lio/dcloud/ads/base/entry/AdData;)V
    .registers 7

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroidx/core/app/JobIntentService;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lio/dcloud/ads/base/service/DownloadService$c;

    invoke-virtual {p0}, Landroidx/core/app/JobIntentService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, p0, p2, v3}, Lio/dcloud/ads/base/service/DownloadService$c;-><init>(Lio/dcloud/ads/base/service/DownloadService;Lio/dcloud/ads/base/entry/AdData;Landroid/app/Application;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 16
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10000000

    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    .line 18
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "application/vnd.android.package-archive"

    const/16 v2, 0x18

    if-lt v0, v2, :cond_6e

    .line 21
    invoke-virtual {p0}, Landroidx/core/app/JobIntentService;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/core/app/JobIntentService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dc.fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7a

    .line 25
    :cond_6e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    :goto_7a
    invoke-virtual {p0}, Landroidx/core/app/JobIntentService;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onCreate()V

    return-void
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/ads/base/service/DownloadService;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "data"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/dcloud/ads/base/entry/AdData;

    .line 3
    iget-object v1, p0, Lio/dcloud/ads/base/service/DownloadService;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/ads/base/service/DownloadService$b;

    .line 4
    invoke-virtual {v2}, Lio/dcloud/ads/base/service/DownloadService$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/dcloud/ads/base/entry/AdData;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lio/dcloud/ads/base/service/DownloadService$b;->c()Z

    move-result v2

    if-nez v2, :cond_11

    .line 5
    monitor-exit v0

    return-void

    .line 8
    :cond_33
    new-instance v1, Lio/dcloud/ads/base/service/DownloadService$b;

    invoke-direct {v1, p0, p1}, Lio/dcloud/ads/base/service/DownloadService$b;-><init>(Lio/dcloud/ads/base/service/DownloadService;Lio/dcloud/ads/base/entry/AdData;)V

    .line 9
    iget-object v2, p0, Lio/dcloud/ads/base/service/DownloadService;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0}, Landroidx/core/app/JobIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-static {v2, p1, v3}, Lio/dcloud/ads/base/service/DownloadService;->a(Landroid/content/Context;Lio/dcloud/ads/base/entry/AdData;I)V

    .line 13
    iget-object p1, p0, Lio/dcloud/ads/base/service/DownloadService;->a:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lio/dcloud/ads/base/service/DownloadService$b;->b()Ldc/squareup/okhttp3/Request;

    move-result-object v2

    invoke-virtual {p1, v2}, Ldc/squareup/okhttp3/OkHttpClient;->newCall(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Call;

    move-result-object p1

    invoke-interface {p1, v1}, Ldc/squareup/okhttp3/Call;->enqueue(Ldc/squareup/okhttp3/Callback;)V

    .line 14
    invoke-direct {p0}, Lio/dcloud/ads/base/service/DownloadService;->a()V

    .line 16
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw p1
.end method

###### Class io.dcloud.ads.base.service.DownloadService.a (io.dcloud.ads.base.service.DownloadService$a)
.class final Lio/dcloud/ads/base/service/DownloadService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/ads/base/service/DownloadService;->a(Landroid/content/Context;Lio/dcloud/ads/base/entry/AdData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lio/dcloud/ads/base/entry/AdData;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/dcloud/ads/base/entry/AdData;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/ads/base/service/DownloadService$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/ads/base/service/DownloadService$a;->b:Lio/dcloud/ads/base/entry/AdData;

    iput p3, p0, Lio/dcloud/ads/base/service/DownloadService$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/ads/base/service/DownloadService$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/ads/base/service/DownloadService$a;->b:Lio/dcloud/ads/base/entry/AdData;

    invoke-virtual {v1}, Lio/dcloud/ads/base/entry/AdData;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/ads/base/service/DownloadService$a;->b:Lio/dcloud/ads/base/entry/AdData;

    invoke-virtual {v2}, Lio/dcloud/ads/base/entry/AdData;->i()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lio/dcloud/ads/base/service/DownloadService$a;->c:I

    iget-object v3, p0, Lio/dcloud/ads/base/service/DownloadService$a;->b:Lio/dcloud/ads/base/entry/AdData;

    invoke-virtual {v3}, Lio/dcloud/ads/base/entry/AdData;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lio/dcloud/ads/base/service/DownloadService$a;->b:Lio/dcloud/ads/base/entry/AdData;

    invoke-virtual {v3}, Lio/dcloud/ads/base/entry/AdData;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lio/dcloud/ads/base/service/DownloadService$a;->b:Lio/dcloud/ads/base/entry/AdData;

    invoke-virtual {v3}, Lio/dcloud/ads/base/entry/AdData;->d()Ljava/lang/String;

    move-result-object v7

    const-string v3, ""

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lio/dcloud/f/a/c/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

###### Class io.dcloud.ads.base.service.DownloadService.b (io.dcloud.ads.base.service.DownloadService$b)
.class Lio/dcloud/ads/base/service/DownloadService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/ads/base/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lio/dcloud/ads/base/entry/AdData;

.field private b:Z

.field final synthetic c:Lio/dcloud/ads/base/service/DownloadService;


# direct methods
.method public constructor <init>(Lio/dcloud/ads/base/service/DownloadService;Lio/dcloud/ads/base/entry/AdData;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/ads/base/service/DownloadService$b;->c:Lio/dcloud/ads/base/service/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/ads/base/service/DownloadService$b;->b:Z

    .line 5
    iput-object p2, p0, Lio/dcloud/ads/base/service/DownloadService$b;->a:Lio/dcloud/ads/base/entry/AdData;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/ads/base/service/DownloadService$b;->a:Lio/dcloud/ads/base/entry/AdData;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/dcloud/ads/base/entry/AdData;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public b()Ldc/squareup/okhttp3/Request;
    .registers 3

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lio/dcloud/ads/base/service/DownloadService$b;->a:Lio/dcloud/ads/base/entry/AdData;

    invoke-virtual {v1}, Lio/dcloud/ads/base/entry/AdData;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/ads/base/service/DownloadService$b;->b:Z

    return v0
.end method

.method public onFailure(Ldc/squareup/okhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lio/dcloud/ads/base/service/DownloadService$b;->b:Z

    .line 2
    iget-object p1, p0, Lio/dcloud/ads/base/service/DownloadService$b;->c:Lio/dcloud/ads/base/service/DownloadService;

    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/ads/base/service/DownloadService$b;->a:Lio/dcloud/ads/base/entry/AdData;

    const/16 v0, 0x20

    invoke-static {p1, p2, v0}, Lio/dcloud/ads/base/service/DownloadService;->a(Landroid/content/Context;Lio/dcloud/ads/base/entry/AdData;I)V

    return-void
.end method

.method public onResponse(Ldc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lio/dcloud/ads/base/service/DownloadService$b;->b:Z

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/ads/base/service/DownloadService$b;->c:Lio/dcloud/ads/base/service/DownloadService;

    invoke-virtual {v0}, Landroidx/core/app/JobIntentService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/dcloud_ad/apk/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_3f

    .line 5
    invoke-virtual {p2}, Ldc/squareup/okhttp3/ResponseBody;->bytes()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lio/dcloud/f/a/d/c;->a([BILjava/lang/String;)V

    .line 6
    iget-object p2, p0, Lio/dcloud/ads/base/service/DownloadService$b;->c:Lio/dcloud/ads/base/service/DownloadService;

    iget-object v0, p0, Lio/dcloud/ads/base/service/DownloadService$b;->a:Lio/dcloud/ads/base/entry/AdData;

    invoke-static {p2, p1, v0}, Lio/dcloud/ads/base/service/DownloadService;->a(Lio/dcloud/ads/base/service/DownloadService;Ljava/lang/String;Lio/dcloud/ads/base/entry/AdData;)V

    .line 8
    :cond_3f
    iget-object p1, p0, Lio/dcloud/ads/base/service/DownloadService$b;->c:Lio/dcloud/ads/base/service/DownloadService;

    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/ads/base/service/DownloadService$b;->a:Lio/dcloud/ads/base/entry/AdData;

    const/16 v0, 0x1e

    invoke-static {p1, p2, v0}, Lio/dcloud/ads/base/service/DownloadService;->a(Landroid/content/Context;Lio/dcloud/ads/base/entry/AdData;I)V

    return-void
.end method

###### Class io.dcloud.ads.base.service.DownloadService.c (io.dcloud.ads.base.service.DownloadService$c)
.class Lio/dcloud/ads/base/service/DownloadService$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/ads/base/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lio/dcloud/ads/base/entry/AdData;

.field private b:Landroid/app/Application;

.field private c:J

.field final synthetic d:Lio/dcloud/ads/base/service/DownloadService;


# direct methods
.method public constructor <init>(Lio/dcloud/ads/base/service/DownloadService;Lio/dcloud/ads/base/entry/AdData;Landroid/app/Application;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/ads/base/service/DownloadService$c;->d:Lio/dcloud/ads/base/service/DownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/ads/base/service/DownloadService$c;->a:Lio/dcloud/ads/base/entry/AdData;

    .line 3
    iput-object p3, p0, Lio/dcloud/ads/base/service/DownloadService$c;->b:Landroid/app/Application;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/dcloud/ads/base/service/DownloadService$c;->c:J

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lio/dcloud/ads/base/service/DownloadService$c;->c:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-gez v2, :cond_27

    .line 4
    iget-object p1, p0, Lio/dcloud/ads/base/service/DownloadService$c;->d:Lio/dcloud/ads/base/service/DownloadService;

    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/ads/base/service/DownloadService$c;->a:Lio/dcloud/ads/base/entry/AdData;

    const/16 v0, 0x1f

    invoke-static {p1, p2, v0}, Lio/dcloud/ads/base/service/DownloadService;->a(Landroid/content/Context;Lio/dcloud/ads/base/entry/AdData;I)V

    .line 6
    :cond_27
    iget-object p1, p0, Lio/dcloud/ads/base/service/DownloadService$c;->b:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2c
    return-void
.end method
