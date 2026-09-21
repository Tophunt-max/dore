###### Class io.dcloud.common.util.TestUtil (io.dcloud.common.util.TestUtil)
.class public Lio/dcloud/common/util/TestUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/TestUtil$DCErrorInfo;,
        Lio/dcloud/common/util/TestUtil$Timer;,
        Lio/dcloud/common/util/TestUtil$PointTime;
    }
.end annotation


# static fields
.field public static CREATE_NWINDOW:Ljava/lang/String; = "createNWindow une create"

.field public static CREATE_SHOW_WEBVIEW_ANIMATION:Ljava/lang/String; = "createShowWebviewAnimation"

.field public static CREATE_VIEW_OPTIONS:Ljava/lang/String; = "createViewOptions"

.field public static CREATE_WEBVIEW:Ljava/lang/String; = "createWebview"

.field static final DEBUG:Z = true

.field public static SHOW_WEBVIEW:Ljava/lang/String; = "showWebview"

.field public static START_APP_SET_ROOTVIEW:Ljava/lang/String; = "start_app_set_rootview"

.field public static START_SHOW_WEBVIEW_ANIMATION:Ljava/lang/String; = "startShowWebviewAnimation"

.field public static START_STREAM_APP:Ljava/lang/String; = "start_stream_app"

.field public static START_STREAM_APP_RETRY:Ljava/lang/String; = "r"

.field public static STREAM_APP_POINT:Ljava/lang/String; = "t"

.field private static final TAG:Ljava/lang/String; = "useTime"

.field public static WEBVIEW_INIT:Ljava/lang/String; = "webview_init"

.field private static mObjs:Ljava/util/HashMap;

.field private static mTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/util/TestUtil$Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lio/dcloud/common/util/TestUtil;->mTimers:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lio/dcloud/common/util/TestUtil;->mObjs:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTimers()V
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/TestUtil;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static debug(Landroid/view/ViewGroup;)V
    .registers 1

    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/TestUtil;->findTimer(Ljava/lang/String;)Lio/dcloud/common/util/TestUtil$Timer;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 3
    sget-object v0, Lio/dcloud/common/util/TestUtil;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method private static findTimer(Ljava/lang/String;)Lio/dcloud/common/util/TestUtil$Timer;
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/util/TestUtil;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 2
    sget-object v1, Lio/dcloud/common/util/TestUtil;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/util/TestUtil$Timer;

    .line 3
    iget-object v2, v1, Lio/dcloud/common/util/TestUtil$Timer;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1f

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return-object v1
.end method

.method public static getRecord(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/TestUtil;->mObjs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getUseTime(Ljava/lang/String;Ljava/lang/String;)J
    .registers 2

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/TestUtil;->findTimer(Ljava/lang/String;)Lio/dcloud/common/util/TestUtil$Timer;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 3
    invoke-virtual {p0, p1}, Lio/dcloud/common/util/TestUtil$Timer;->pointTime(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_b
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static mark(Ljava/lang/String;)V
    .registers 2

    const-string v0, "useTime"

    .line 1
    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/TestUtil;->findTimer(Ljava/lang/String;)Lio/dcloud/common/util/TestUtil$Timer;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/util/TestUtil$Timer;->print()V

    :cond_9
    return-void
.end method

.method public static print(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 4
    invoke-static {p0}, Lio/dcloud/common/util/TestUtil;->findTimer(Ljava/lang/String;)Lio/dcloud/common/util/TestUtil$Timer;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 6
    invoke-virtual {p0, p1}, Lio/dcloud/common/util/TestUtil$Timer;->print(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static record(Ljava/lang/String;)V
    .registers 2

    const-string v0, ""

    .line 2
    invoke-static {p0, v0}, Lio/dcloud/common/util/TestUtil;->record0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static record(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/util/TestUtil;->mObjs:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static record(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 3
    invoke-static {p0, p1}, Lio/dcloud/common/util/TestUtil;->record0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static record0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/TestUtil;->findTimer(Ljava/lang/String;)Lio/dcloud/common/util/TestUtil$Timer;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    sget-object v1, Lio/dcloud/common/util/TestUtil;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_b
    sget-object v0, Lio/dcloud/common/util/TestUtil;->mTimers:Ljava/util/ArrayList;

    new-instance v1, Lio/dcloud/common/util/TestUtil$Timer;

    invoke-direct {v1, p0, p1}, Lio/dcloud/common/util/TestUtil$Timer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setRecordExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/TestUtil;->findTimer(Ljava/lang/String;)Lio/dcloud/common/util/TestUtil$Timer;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 3
    iput-object p1, p0, Lio/dcloud/common/util/TestUtil$Timer;->extra:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public static timePoints(Ljava/lang/String;I)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.common.util.TestUtil.DCErrorInfo (io.dcloud.common.util.TestUtil$DCErrorInfo)
.class public Lio/dcloud/common/util/TestUtil$DCErrorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/TestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCErrorInfo"
.end annotation


# instance fields
.field ec:I

.field et:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/dcloud/common/util/TestUtil$DCErrorInfo;->ec:I

    .line 3
    iput p2, p0, Lio/dcloud/common/util/TestUtil$DCErrorInfo;->et:I

    return-void
.end method

###### Class io.dcloud.common.util.TestUtil.PointTime (io.dcloud.common.util.TestUtil$PointTime)
.class public Lio/dcloud/common/util/TestUtil$PointTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/TestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointTime"
.end annotation


# static fields
.field public static final AC_TYPE_1:I = 0x1

.field public static final AC_TYPE_1_0:I = 0x3e8

.field public static final AC_TYPE_1_1:I = 0x44c

.field public static final AC_TYPE_1_2:I = 0x4b0

.field public static final AC_TYPE_1_3:I = 0x514

.field public static final AC_TYPE_1_4:I = 0x578

.field public static final AC_TYPE_2:I = 0x2

.field public static final AC_TYPE_3:I = 0x3

.field public static final AC_TYPE_4:I = 0x4

.field public static final AC_TYPE_5:I = 0x5

.field public static final AD_CLICK:I = 0x29

.field public static final AD_DL_COMPLETE:I = 0x1e

.field public static final AD_DL_FAILED:I = 0x20

.field public static final AD_DL_START:I = 0x1d

.field public static final AD_DPLK:I = 0x32

.field public static final AD_INSTALL:I = 0x1f

.field public static final AD_SIM_CLICK:I = 0x2e

.field public static final AD_SIM_VIEW:I = 0x2d

.field public static final AD_VIEW:I = 0x28

.field public static final BEGIN_APK:I = 0x1d

.field public static final CLICK_PUSH:I = 0x14

.field public static final CLOSE_WEBVIEW:I = 0xa

.field public static final CONNECT_TIMEOUT_ERROR:I = 0x7

.field public static final DATA_CACHE_PAGES:Ljava/lang/String; = "stream_app_cache_pages"

.field public static final DATA_DOWNLOAD_COMPLETED:Ljava/lang/String; = "stream_app_completed"

.field public static final DATA_IN_APP_COMMIT_DATA:Ljava/lang/String; = "in_app_commit_data"

.field public static final DATA_START_TIMES:Ljava/lang/String; = "stream_app_start_times"

.field public static final DATA_START_TIMES_ACTIVATE:Ljava/lang/String; = "stream_app_start_times_activate"

.field public static final DECOMPRESSION_ERROR:I = 0xf

.field public static final ERROR_TYPE_INDEXS:I = 0x3

.field public static final ERROR_TYPE_INDEX_ZIP:I = 0x2

.field public static final ERROR_TYPE_STREAM:I = 0x1

.field public static final ERROR_TYPE_WAP2APP_INDEX:I = 0x4

.field public static final FILE_CREATION_ERROR:I = 0xd

.field public static final FILE_DELETION_ERROR:I = 0xb

.field public static final FILE_EXIST:I = 0x1

.field public static final FILE_INPUT_READ:I = 0x10

.field public static final FILE_RENAME_ERROR:I = 0xc

.field public static final FINISH_APK:I = 0x1e

.field public static final IO_ERROR:I = 0xa

.field public static final NETWORK_ERROR:I = 0x2

.field public static final NOT_NETWORK:I = 0x14

.field public static final OTHER_ERROR:I = 0x6

.field public static final PARSE_ERROR:I = 0xe

.field static final PT:Ljava/lang/String; = "point_time_"

.field public static final QUIT_APP:I = 0x1

.field public static final RESUOURCE_NOT_FOUND:I = 0x5

.field public static final SDCARD_ERROR:I = 0x4

.field public static final SDCARD_SPACE_SHORTAGE:I = 0x9

.field public static final SOCKET_TIMEOUT_ERROR:I = 0x8

.field public static final STATUS_DOWNLOAD_COMPLETED:Ljava/lang/String; = "download_completed"

.field public static final STATUS_INSTALLED:Ljava/lang/String; = "installed"

.field public static final SUCCESS:I = 0x0

.field public static final S_TYPE_0:I = 0x0

.field public static final S_TYPE_1:I = 0x1

.field public static final S_TYPE_10:I = 0xa

.field public static final S_TYPE_11:I = 0xb

.field public static final S_TYPE_12:I = 0xc

.field public static final S_TYPE_2:I = 0x2

.field public static final S_TYPE_3:I = 0x3

.field public static final S_TYPE_4:I = 0x4

.field public static final S_TYPE_5:I = 0x5

.field public static final S_TYPE_6:I = 0x6

.field public static final S_TYPE_8:I = 0x8

.field public static final S_TYPE_9:I = 0x9

.field public static final T_0:I = 0x0

.field public static final T_1:I = 0x1

.field public static final T_2:I = 0x2

.field public static final T_3:I = 0x3

.field public static final T_4:I = 0x4

.field public static final T_5:I = 0x5

.field public static final T_6:I = 0x6

.field public static final UNKNOWN_HOST_ERROR:I = 0x15

.field public static final URL_ERROR:I = 0x3

.field private static arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/util/TestUtil$DCErrorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mEc:I

.field public static mEt:I

.field static sPoinTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/util/TestUtil$PointTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field appid:Ljava/lang/String;

.field index:I

.field lastPointTime:J

.field name:Ljava/lang/String;

.field points:[J

.field startTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/common/util/TestUtil$PointTime;->arrayList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 8
    sput v0, Lio/dcloud/common/util/TestUtil$PointTime;->mEc:I

    .line 9
    sput v0, Lio/dcloud/common/util/TestUtil$PointTime;->mEt:I

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/util/TestUtil$PointTime;->sPoinTimes:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->points:[J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->index:I

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->lastPointTime:J

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->startTime:J

    .line 11
    iput-object p1, p0, Lio/dcloud/common/util/TestUtil$PointTime;->name:Ljava/lang/String;

    .line 12
    new-array p1, p2, [J

    iput-object p1, p0, Lio/dcloud/common/util/TestUtil$PointTime;->points:[J

    return-void
.end method

.method public static declared-synchronized addErrorInfo(Lio/dcloud/common/util/TestUtil$DCErrorInfo;)V
    .registers 3

    const-class v0, Lio/dcloud/common/util/TestUtil$PointTime;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lio/dcloud/common/util/TestUtil$PointTime;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v1, p0, Lio/dcloud/common/util/TestUtil$DCErrorInfo;->ec:I

    sput v1, Lio/dcloud/common/util/TestUtil$PointTime;->mEc:I

    .line 3
    iget p0, p0, Lio/dcloud/common/util/TestUtil$DCErrorInfo;->et:I

    sput p0, Lio/dcloud/common/util/TestUtil$PointTime;->mEt:I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static checkCommitEnv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/AppStatus;->getAppStatus(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 2
    :cond_8
    invoke-static {p0}, Lio/dcloud/common/util/BaseInfo;->useStreamAppStatistic(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {p2}, Lio/dcloud/common/util/TestUtil$PointTime;->hasPointTime(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v0
.end method

.method public static commitRatio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p5}, Lio/dcloud/g/b/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-static/range {v0 .. v10}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v11, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p8

    .line 3
    invoke-static/range {v0 .. v12}, Lio/dcloud/g/b/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    const-string v11, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v12, p10

    .line 4
    invoke-static/range {v0 .. v12}, Lio/dcloud/g/b/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .registers 21

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 2
    invoke-static/range {v0 .. v12}, Lio/dcloud/g/b/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static createPointTime(Ljava/lang/String;I)Lio/dcloud/common/util/TestUtil$PointTime;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/common/util/TestUtil$PointTime;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/util/TestUtil$PointTime;-><init>(Ljava/lang/String;I)V

    .line 2
    sget-object p1, Lio/dcloud/common/util/TestUtil$PointTime;->sPoinTimes:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lio/dcloud/common/util/TestUtil$PointTime;->sPoinTimes:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static delData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "point_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static delPointData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "point_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    sget-object v1, Lio/dcloud/common/util/TestUtil;->START_STREAM_APP_RETRY:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_20
    if-ge v0, p0, :cond_39

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/TestUtil;->STREAM_APP_POINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 7
    :cond_39
    sget-object p0, Lio/dcloud/common/util/TestUtil;->START_STREAM_APP_RETRY:Ljava/lang/String;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static deleteStreamAppStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "point_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static destroyPointTime(Ljava/lang/String;)Lio/dcloud/common/util/TestUtil$PointTime;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/TestUtil$PointTime;->sPoinTimes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/util/TestUtil$PointTime;

    return-object p0
.end method

.method public static getAllCommitData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "point_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    sget-object p1, Lio/dcloud/common/util/TestUtil;->START_STREAM_APP_RETRY:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_20

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_20
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_25
    if-ge v0, p1, :cond_52

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/TestUtil;->STREAM_APP_POINT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    if-eqz v0, :cond_3a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3b

    :cond_3a
    move-object v4, v3

    :goto_3b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 11
    :cond_52
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseVer(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    const-string p0, "1.9.9.81128"

    return-object p0
.end method

.method public static getData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "point_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, ""

    .line 2
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorInfoString()Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Lio/dcloud/common/util/TestUtil$PointTime;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6e

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_15
    sget-object v3, Lio/dcloud/common/util/TestUtil$PointTime;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 5
    sget-object v3, Lio/dcloud/common/util/TestUtil$PointTime;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/util/TestUtil$DCErrorInfo;

    if-nez v2, :cond_32

    .line 7
    iget v4, v3, Lio/dcloud/common/util/TestUtil$DCErrorInfo;->ec:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 8
    iget v3, v3, Lio/dcloud/common/util/TestUtil$DCErrorInfo;->et:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_44

    :cond_32
    const-string v4, "%2c"

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v3, Lio/dcloud/common/util/TestUtil$DCErrorInfo;->ec:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, v3, Lio/dcloud/common/util/TestUtil$DCErrorInfo;->et:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 14
    :cond_47
    sget-object v2, Lio/dcloud/common/util/TestUtil$PointTime;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&ec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&et="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPointTime(Ljava/lang/String;)Lio/dcloud/common/util/TestUtil$PointTime;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/TestUtil$PointTime;->sPoinTimes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/util/TestUtil$PointTime;

    return-object p0
.end method

.method public static hasPointTime(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/TestUtil$PointTime;->sPoinTimes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hasStreamAppStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "point_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static pre(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/g/b/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "point_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static savePointData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15

    const-string v0, "&et"

    const-string v1, "&ec"

    const-string v2, "=%d"

    const-string v3, "=%s"

    .line 1
    :try_start_8
    sget-object v4, Lio/dcloud/common/util/TestUtil;->STREAM_APP_POINT:Ljava/lang/String;

    invoke-static {v4}, Lio/dcloud/common/util/TestUtil$PointTime;->getPointTime(Ljava/lang/String;)Lio/dcloud/common/util/TestUtil$PointTime;

    move-result-object v4

    .line 2
    sget-object v5, Lio/dcloud/common/util/TestUtil;->START_STREAM_APP_RETRY:Ljava/lang/String;

    invoke-static {v5}, Lio/dcloud/common/util/TestUtil$PointTime;->getPointTime(Ljava/lang/String;)Lio/dcloud/common/util/TestUtil$PointTime;

    move-result-object v5

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "point_time_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 5
    sget-object v8, Lio/dcloud/common/util/TestUtil;->START_STREAM_APP_RETRY:Ljava/lang/String;

    invoke-interface {p1, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz v5, :cond_3b

    .line 6
    invoke-virtual {v5}, Lio/dcloud/common/util/TestUtil$PointTime;->getIndex()I

    move-result v8

    goto :goto_3c

    :cond_3b
    const/4 v8, 0x0

    :goto_3c
    if-eqz v5, :cond_40

    .line 8
    iput v6, v5, Lio/dcloud/common/util/TestUtil$PointTime;->index:I

    .line 12
    :cond_40
    sget-object v5, Lio/dcloud/common/util/TestUtil;->STREAM_APP_POINT:Ljava/lang/String;

    if-eqz p1, :cond_bc

    .line 17
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "&t"

    .line 18
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "&d"

    .line 19
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "&r"

    .line 20
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "&c"

    .line 21
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "&net"

    .line 22
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&de"

    .line 23
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 27
    :cond_b7
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_bb} :catch_135

    goto :goto_be

    :cond_bc
    const-string v0, "&t=%s&d=%s&r=%d&c=%d&net=%d&de=%s"

    :goto_be
    if-lez p1, :cond_d1

    .line 30
    :try_start_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/TestUtil;->STREAM_APP_POINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_d1
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v4}, Lio/dcloud/common/util/TestUtil$PointTime;->getPointsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 34
    invoke-virtual {v4}, Lio/dcloud/common/util/TestUtil$PointTime;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    .line 35
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x4

    .line 37
    invoke-static {p0}, Lio/dcloud/common/util/NetworkTypeUtil;->getNetworkType(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, p2

    const/4 p0, 0x5

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p0

    .line 39
    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_128

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50
    :cond_128
    invoke-interface {v7, v5, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    sget-object p0, Lio/dcloud/common/util/TestUtil;->START_STREAM_APP_RETRY:Ljava/lang/String;

    add-int/2addr p1, v3

    invoke-interface {v7, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_134} :catch_135

    goto :goto_139

    :catch_135
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_139
    return-void
.end method

.method public static saveStreamAppStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "point_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x1

    .line 3
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static updatePointTime(Ljava/lang/String;)Lio/dcloud/common/util/TestUtil$PointTime;
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/util/TestUtil$PointTime;->sPoinTimes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/util/TestUtil$PointTime;

    if-eqz v0, :cond_20

    .line 4
    sget-object v1, Lio/dcloud/common/util/TestUtil$PointTime;->sPoinTimes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lio/dcloud/common/util/TestUtil$PointTime;

    iget-object v2, v0, Lio/dcloud/common/util/TestUtil$PointTime;->points:[J

    array-length v2, v2

    invoke-direct {v1, p0, v2}, Lio/dcloud/common/util/TestUtil$PointTime;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v1, v0}, Lio/dcloud/common/util/TestUtil$PointTime;->updateData(Lio/dcloud/common/util/TestUtil$PointTime;)V

    .line 7
    sget-object v0, Lio/dcloud/common/util/TestUtil$PointTime;->sPoinTimes:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_20
    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->index:I

    return v0
.end method

.method public getPoint(I)J
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->points:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getPointsString()Ljava/lang/String;
    .registers 2

    const-string v0, "|"

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/common/util/TestUtil$PointTime;->getPointsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPointsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    :goto_6
    iget-object v2, p0, Lio/dcloud/common/util/TestUtil$PointTime;->points:[J

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 4
    iget v3, p0, Lio/dcloud/common/util/TestUtil$PointTime;->index:I

    if-ge v1, v3, :cond_14

    .line 5
    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 7
    :cond_14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 9
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStartTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->startTime:J

    return-wide v0
.end method

.method public point()Lio/dcloud/common/util/TestUtil$PointTime;
    .registers 6

    .line 1
    iget-wide v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->lastPointTime:J

    .line 2
    iget v2, p0, Lio/dcloud/common/util/TestUtil$PointTime;->index:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lio/dcloud/common/util/TestUtil$PointTime;->point(IJ)Lio/dcloud/common/util/TestUtil$PointTime;

    return-object p0
.end method

.method public point(I)Lio/dcloud/common/util/TestUtil$PointTime;
    .registers 6

    .line 3
    iget-wide v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->lastPointTime:J

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, p1, v2, v3}, Lio/dcloud/common/util/TestUtil$PointTime;->point(IJ)Lio/dcloud/common/util/TestUtil$PointTime;

    return-object p0
.end method

.method public point(IJ)Lio/dcloud/common/util/TestUtil$PointTime;
    .registers 6

    .line 5
    iget-object v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->points:[J

    array-length v0, v0

    if-ge p1, v0, :cond_15

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->lastPointTime:J

    .line 7
    iget-object v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->points:[J

    aput-wide p2, v0, p1

    .line 8
    iget p1, p0, Lio/dcloud/common/util/TestUtil$PointTime;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/dcloud/common/util/TestUtil$PointTime;->index:I

    :cond_15
    return-object p0
.end method

.method public updateData(Lio/dcloud/common/util/TestUtil$PointTime;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lio/dcloud/common/util/TestUtil$PointTime;->appid:Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->appid:Ljava/lang/String;

    .line 2
    iget v0, p1, Lio/dcloud/common/util/TestUtil$PointTime;->index:I

    iput v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->index:I

    .line 3
    iget-wide v0, p1, Lio/dcloud/common/util/TestUtil$PointTime;->startTime:J

    iput-wide v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->startTime:J

    .line 5
    iget-object p1, p1, Lio/dcloud/common/util/TestUtil$PointTime;->points:[J

    iget-object v0, p0, Lio/dcloud/common/util/TestUtil$PointTime;->points:[J

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

###### Class io.dcloud.common.util.TestUtil.Timer (io.dcloud.common.util.TestUtil$Timer)
.class Lio/dcloud/common/util/TestUtil$Timer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/TestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Timer"
.end annotation


# instance fields
.field birthTime:J

.field extra:Ljava/lang/String;

.field lastPointTime:J

.field lastPrintTime:J

.field name:Ljava/lang/String;

.field wholeUseTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/util/TestUtil$Timer;->name:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/common/util/TestUtil$Timer;->birthTime:J

    iput-wide v0, p0, Lio/dcloud/common/util/TestUtil$Timer;->lastPrintTime:J

    iput-wide v0, p0, Lio/dcloud/common/util/TestUtil$Timer;->lastPointTime:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Lio/dcloud/common/util/TestUtil$Timer;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lio/dcloud/common/util/TestUtil$Timer;->extra:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method pointTime(Ljava/lang/String;)J
    .registers 6

    .line 1
    iget-wide v0, p0, Lio/dcloud/common/util/TestUtil$Timer;->lastPrintTime:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lio/dcloud/common/util/TestUtil$Timer;->lastPointTime:J

    sub-long/2addr v2, v0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/util/TestUtil$Timer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; <<-- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -->> pointTime = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "useTime"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2
.end method

.method print()V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/common/util/TestUtil$Timer;->lastPrintTime:J

    .line 2
    iget-wide v2, p0, Lio/dcloud/common/util/TestUtil$Timer;->birthTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/dcloud/common/util/TestUtil$Timer;->wholeUseTime:J

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/util/TestUtil$Timer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; <<-- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/util/TestUtil$Timer;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -->> wholeUseTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dcloud/common/util/TestUtil$Timer;->wholeUseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "useTime"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method print(Ljava/lang/String;)V
    .registers 6

    .line 5
    iget-wide v0, p0, Lio/dcloud/common/util/TestUtil$Timer;->lastPrintTime:J

    .line 6
    invoke-virtual {p0}, Lio/dcloud/common/util/TestUtil$Timer;->print()V

    .line 7
    iget-wide v2, p0, Lio/dcloud/common/util/TestUtil$Timer;->lastPrintTime:J

    sub-long/2addr v2, v0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/util/TestUtil$Timer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; <<-- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -->> useTime = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "useTime"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
