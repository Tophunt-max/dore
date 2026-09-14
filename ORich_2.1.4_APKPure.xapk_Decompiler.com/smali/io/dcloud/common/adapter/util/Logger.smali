###### Class io.dcloud.common.adapter.util.Logger (io.dcloud.common.adapter.util.Logger)
.class public Lio/dcloud/common/adapter/util/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/util/Logger$WriteLogToSdCardThreadHandler;
    }
.end annotation


# static fields
.field public static final ANIMATION_TAG:Ljava/lang/String; = "Animation_Path"

.field public static final AUTO_POP_PUSH_TAG:Ljava/lang/String; = "Auto_Pop_Push_Path"

.field public static final Android_System_TAG:Ljava/lang/String; = "Android_System_Path"

.field public static final AppMgr_TAG:Ljava/lang/String; = "appmgr"

.field public static final AutoGC_TAG:Ljava/lang/String; = "AutoGC_Path"

.field public static final Capture_TAG:Ljava/lang/String; = "Capture_Tag"

.field protected static D:Ljava/lang/String; = "D"

.field protected static E:Ljava/lang/String; = "E"

.field private static final EXCEPTION_TAG:Ljava/lang/String; = "DCloud_Exception"

.field public static final Event_TAG:Ljava/lang/String; = "Event_Tag"

.field protected static I:Ljava/lang/String; = "I"

.field public static final LAYOUT_TAG:Ljava/lang/String; = "Layout_Path"

.field private static final LOGTAG:Ljava/lang/String; = "DCloud_LOG"

.field private static LogPath:Ljava/lang/String; = ""

.field public static final MAIN_TAG:Ljava/lang/String; = "Main_Path"

.field public static final MAP_TAG:Ljava/lang/String; = "Map_Path"

.field private static MAX_CRASH_FILE_COUNT:I = 0x3

.field private static final MSC_TAG:Ljava/lang/String; = "DCloud_"

.field private static final STREAMSDKLOGTAG:Ljava/lang/String; = "DCLOUD_STREAMSDK_LOG"

.field public static final StreamApp_TAG:Ljava/lang/String; = "stream_manager"

.field private static TIMES:J = 0x19bfcc00L

.field public static final TIMESTAMP_HH_MM_SS_SSS:Ljava/lang/String; = "HH:mm:ss.SSS"

.field public static final TIMESTAMP_YYYY_MM_DD:Ljava/lang/String; = "yyyyMMdd"

.field public static final TIMESTAMP_YYYY_MM_DD_HH_MM_SS_SSS:Ljava/lang/String; = "yyyyMMdd HH:mm:ss.SSS"

.field public static final VIEW_VISIBLE_TAG:Ljava/lang/String; = "View_Visible_Path"

.field protected static W:Ljava/lang/String; = "W"

.field private static isHasDevFile:Z = false

.field private static isOpen:Z = true

.field private static isStoreLog:Z = false

.field private static mLogFile:Ljava/io/File; = null

.field private static mSimpleDateFormatCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static mWriteLogToSdCardThread:Landroid/os/HandlerThread; = null

.field private static mWriteLogToSdCardThreadHandler:Lio/dcloud/common/adapter/util/Logger$WriteLogToSdCardThreadHandler; = null

.field static pkg:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WriteExceptionToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    if-eqz p3, :cond_41

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCloud_Exception"

    .line 3
    invoke-static {p0, v1, v0}, Lio/dcloud/common/adapter/util/Logger;->generateLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p0, p1, v0}, Lio/dcloud/common/adapter/util/Logger;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    if-eqz p3, :cond_41

    .line 8
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/util/Logger;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 9
    array-length v0, p3

    :goto_1e
    if-ge p2, v0, :cond_41

    .line 11
    aget-object v2, p3, p2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {p0, v1, v2}, Lio/dcloud/common/adapter/util/Logger;->generateLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {p0, p1, v2}, Lio/dcloud/common/adapter/util/Logger;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1e

    :cond_41
    return-void
.end method

.method private static WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->mLogFile:Ljava/io/File;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_32

    .line 5
    :cond_10
    invoke-static {}, Lio/dcloud/common/adapter/util/Logger;->initWriteLogToSdCardThread()V

    .line 6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    .line 7
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    sget-object p0, Lio/dcloud/common/adapter/util/Logger;->mWriteLogToSdCardThreadHandler:Lio/dcloud/common/adapter/util/Logger$WriteLogToSdCardThreadHandler;

    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    .line 9
    sget-object p0, Lio/dcloud/common/adapter/util/Logger;->mWriteLogToSdCardThreadHandler:Lio/dcloud/common/adapter/util/Logger$WriteLogToSdCardThreadHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_32
    :goto_32
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/Logger;->MAX_CRASH_FILE_COUNT:I

    return v0
.end method

.method static synthetic access$100()Ljava/io/File;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->mLogFile:Ljava/io/File;

    return-object v0
.end method

.method public static canStoreLogToSDcard()Z
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/common/adapter/util/Logger;->isSDcardExists()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    if-eqz v0, :cond_2a

    .line 3
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/dcloud/common/adapter/util/Logger;->LogPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_1b

    .line 8
    :cond_18
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->deleteOldLog(Ljava/io/File;)V

    .line 10
    :goto_1b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isStoreLog:Z

    .line 14
    :cond_2a
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isStoreLog:Z

    return v0
.end method

.method private static concatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DCloud_LOG"

    .line 21
    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    if-eqz v0, :cond_14

    .line 2
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez v0, :cond_c

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 5
    :cond_c
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_f
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->D:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lio/dcloud/common/adapter/util/Logger;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 8
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    if-eqz v0, :cond_38

    .line 9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_1c

    .line 11
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1c

    aget-object v3, p1, v2

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 15
    :cond_1c
    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez p1, :cond_28

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 18
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_2f
    sget-object p1, Lio/dcloud/common/adapter/util/Logger;->D:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lio/dcloud/common/adapter/util/Logger;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method protected static deleteOldLog(Ljava/io/File;)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    if-eqz p0, :cond_47

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_47

    aget-object v4, p0, v3

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_44

    .line 6
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    :try_start_29
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 10
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sget-wide v8, Lio/dcloud/common/adapter/util/Logger;->TIMES:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_44

    .line 11
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3f
    .catch Ljava/text/ParseException; {:try_start_29 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v4

    .line 14
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_47
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DCloud_LOG"

    .line 4
    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->E:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lio/dcloud/common/adapter/util/Logger;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static es(Ljava/lang/String;)V
    .registers 2

    .line 4
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    if-eqz v0, :cond_9

    const-string v0, "DCLOUD_STREAMSDK_LOG"

    .line 5
    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->es(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static es(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->E:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lio/dcloud/common/adapter/util/Logger;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method protected static generateLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->generateTimeStamp(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateTimeStamp(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "HH:mm:ss.SSS"

    goto :goto_b

    :cond_9
    const-string p0, "yyyyMMdd"

    .line 8
    :goto_b
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/Logger;->generateTimeStamp(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateTimeStamp(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .line 9
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->getDateFormatFromCache(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDateFormatFromCache(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->mSimpleDateFormatCache:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/adapter/util/Logger;->mSimpleDateFormatCache:Ljava/util/HashMap;

    .line 5
    :cond_b
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->mSimpleDateFormatCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    sget-object v1, Lio/dcloud/common/adapter/util/Logger;->mSimpleDateFormatCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 9
    :cond_20
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->mSimpleDateFormatCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/text/SimpleDateFormat;

    :goto_29
    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DCloud_LOG"

    .line 4
    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->I:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lio/dcloud/common/adapter/util/Logger;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private static init(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/adapter/util/Logger$1;

    invoke-direct {v1, p0, p1}, Lio/dcloud/common/adapter/util/Logger$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method

.method public static initLogger(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/Logger;->pkg:Ljava/lang/String;

    .line 2
    invoke-static {}, Lio/dcloud/common/adapter/io/DHFile;->hasFile()Z

    move-result v0

    sput-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isHasDevFile:Z

    .line 3
    invoke-static {p0}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isHasDevFile:Z

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    sput-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    .line 4
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 9
    invoke-static {p0}, Lio/dcloud/common/util/BaseInfo;->getCrashLogsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/Logger;->LogPath:Ljava/lang/String;

    .line 11
    :cond_33
    sget-boolean p0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    if-eqz p0, :cond_55

    .line 12
    sget-object p0, Lio/dcloud/common/adapter/util/Logger;->LogPath:Ljava/lang/String;

    const-string v0, "crash"

    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/Logger;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->LogPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "crash/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/Logger;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_55
    sget-boolean p0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->setOpen(Z)V

    return-void
.end method

.method private static initWriteLogToSdCardThread()V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->mWriteLogToSdCardThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1d

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WriteLogToSdCardThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/common/adapter/util/Logger;->mWriteLogToSdCardThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Lio/dcloud/common/adapter/util/Logger$WriteLogToSdCardThreadHandler;

    sget-object v1, Lio/dcloud/common/adapter/util/Logger;->mWriteLogToSdCardThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/common/adapter/util/Logger$WriteLogToSdCardThreadHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/dcloud/common/adapter/util/Logger;->mWriteLogToSdCardThreadHandler:Lio/dcloud/common/adapter/util/Logger$WriteLogToSdCardThreadHandler;

    :cond_1d
    return-void
.end method

.method public static isOpen()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    return v0
.end method

.method protected static isSDcardExists()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTurnOn()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isStoreLog:Z

    return v0
.end method

.method public static p(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DCloud_LOG"

    .line 2
    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->privacyLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/common/adapter/util/Logger;->privacyLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static privacyLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isHasDevFile:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static setOpen(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    if-eqz p0, :cond_a

    .line 5
    invoke-static {}, Lio/dcloud/common/adapter/util/Logger;->canStoreLogToSDcard()Z

    .line 6
    invoke-static {}, Lio/dcloud/common/adapter/util/Logger;->storeLogToSDcard()V

    :cond_a
    return-void
.end method

.method public static stopWriteLogToSdCardThread()V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->mWriteLogToSdCardThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_21

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->mWriteLogToSdCardThreadHandler:Lio/dcloud/common/adapter/util/Logger$WriteLogToSdCardThreadHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_c
    sput-object v1, Lio/dcloud/common/adapter/util/Logger;->mWriteLogToSdCardThreadHandler:Lio/dcloud/common/adapter/util/Logger$WriteLogToSdCardThreadHandler;

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1a

    .line 7
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->mWriteLogToSdCardThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_1f

    .line 9
    :cond_1a
    sget-object v0, Lio/dcloud/common/adapter/util/Logger;->mWriteLogToSdCardThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 11
    :goto_1f
    sput-object v1, Lio/dcloud/common/adapter/util/Logger;->mWriteLogToSdCardThread:Landroid/os/HandlerThread;

    :cond_21
    return-void
.end method

.method public static storeLogToSDcard()V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isStoreLog:Z

    if-eqz v0, :cond_62

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lio/dcloud/common/adapter/util/Logger;->generateTimeStamp(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lio/dcloud/common/adapter/util/Logger;->LogPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lio/dcloud/common/adapter/util/Logger;->mLogFile:Ljava/io/File;

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_46

    .line 9
    :try_start_39
    sget-object v1, Lio/dcloud/common/adapter/util/Logger;->mLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_46

    :catch_3f
    move-exception v1

    const/4 v2, 0x0

    .line 11
    sput-object v2, Lio/dcloud/common/adapter/util/Logger;->mLogFile:Ljava/io/File;

    .line 12
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 15
    :cond_46
    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u65e5\u5fd7\u8def\u5f84:"

    const-string v2, "Logger"

    invoke-static {v1, v2, v0}, Lio/dcloud/common/adapter/util/Logger;->WriteLogToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    return-void
.end method

.method public static turnOff()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isStoreLog:Z

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/Logger;->isOpen:Z

    if-eqz v0, :cond_13

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    const-string v0, "DCloud_Exception"

    .line 4
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    sget-object v1, Lio/dcloud/common/adapter/util/Logger;->W:Ljava/lang/String;

    invoke-static {v1, v0, p0, p1}, Lio/dcloud/common/adapter/util/Logger;->WriteExceptionToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .registers 2

    const-string v0, ""

    .line 6
    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.Logger.AnonymousClass1 (io.dcloud.common.adapter.util.Logger$1)
.class final Lio/dcloud/common/adapter/util/Logger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/Logger;->init(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$exclude:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/Logger$1;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/Logger$1;->val$exclude:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/dcloud/common/adapter/util/Logger$1;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 3
    array-length v1, v0

    invoke-static {}, Lio/dcloud/common/adapter/util/Logger;->access$000()I

    move-result v2

    if-le v1, v2, :cond_69

    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2a

    const/4 v2, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    if-eqz v2, :cond_4b

    .line 6
    :goto_2d
    array-length v2, v0

    invoke-static {}, Lio/dcloud/common/adapter/util/Logger;->access$000()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_69

    .line 7
    iget-object v2, p0, Lio/dcloud/common/adapter/util/Logger$1;->val$exclude:Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 8
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 12
    :cond_4b
    array-length v1, v0

    sub-int/2addr v1, v3

    :goto_4d
    invoke-static {}, Lio/dcloud/common/adapter/util/Logger;->access$000()I

    move-result v2

    if-lt v1, v2, :cond_69

    .line 13
    iget-object v2, p0, Lio/dcloud/common/adapter/util/Logger$1;->val$exclude:Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 14
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_66
    add-int/lit8 v1, v1, -0x1

    goto :goto_4d

    :cond_69
    return-void
.end method

###### Class io.dcloud.common.adapter.util.Logger.WriteLogToSdCardThreadHandler (io.dcloud.common.adapter.util.Logger$WriteLogToSdCardThreadHandler)
.class Lio/dcloud/common/adapter/util/Logger$WriteLogToSdCardThreadHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WriteLogToSdCardThreadHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_6c

    instance-of v0, p1, [Ljava/lang/String;

    if-nez v0, :cond_c

    goto :goto_6c

    .line 5
    :cond_c
    check-cast p1, [Ljava/lang/String;

    .line 6
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x0

    .line 9
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 10
    aget-object v2, p1, v1

    const/4 v3, 0x2

    .line 11
    aget-object p1, p1, v3

    .line 12
    invoke-static {v0, v2, p1}, Lio/dcloud/common/adapter/util/Logger;->generateLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {}, Lio/dcloud/common/adapter/util/Logger;->access$100()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-static {}, Lio/dcloud/common/adapter/util/Logger;->access$100()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6c

    if-eqz p1, :cond_6c

    const/4 v0, 0x0

    .line 16
    :try_start_33
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {}, Lio/dcloud/common/adapter/util/Logger;->access$100()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3c} :catch_52
    .catchall {:try_start_33 .. :try_end_3c} :catchall_50

    .line 17
    :try_start_3c
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 18
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 19
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_46} :catch_4d
    .catchall {:try_start_3c .. :try_end_46} :catchall_4a

    .line 25
    :try_start_46
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_5c

    goto :goto_6c

    :catchall_4a
    move-exception p1

    move-object v0, v2

    goto :goto_61

    :catch_4d
    move-exception p1

    move-object v0, v2

    goto :goto_53

    :catchall_50
    move-exception p1

    goto :goto_61

    :catch_52
    move-exception p1

    .line 26
    :goto_53
    :try_start_53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_50

    if-eqz v0, :cond_6c

    .line 30
    :try_start_58
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_6c

    :catch_5c
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6c

    :goto_61
    if-eqz v0, :cond_6b

    .line 34
    :try_start_63
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 39
    :cond_6b
    :goto_6b
    throw p1

    :cond_6c
    :goto_6c
    return-void
.end method
