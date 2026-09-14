###### Class com.appsflyer.AFLogger (com.appsflyer.AFLogger)
.class public final Lcom/appsflyer/AFLogger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AFLogger$LogLevel;
    }
.end annotation


# static fields
.field private static final AFInAppEventParameterName:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventParameterName(Ljava/lang/String;)V
    .registers 5

    .line 66
    sget-object v0, Lcom/appsflyer/AFLogger$LogLevel;->WARNING:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Lcom/appsflyer/AFLogger$LogLevel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 4029
    invoke-static {p0, v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppsFlyer_6.4.2"

    .line 67
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4037
    :cond_12
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_1d

    .line 4038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 4040
    :cond_1d
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v2, 0x1

    .line 70
    invoke-static {p0, v2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v1

    const-string p0, "W"

    .line 4157
    invoke-virtual {v0, v3, p0, v2}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static AFInAppEventParameterName(Lcom/appsflyer/AFLogger$LogLevel;)Z
    .registers 4

    .line 83
    invoke-virtual {p0}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result p0

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 6113
    sget-object v1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v1

    const-string v2, "logLevel"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt p0, v0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private static AFInAppEventType(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const-string p0, "null"

    :cond_4
    if-nez p1, :cond_20

    .line 35
    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->VERBOSE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result p1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 2113
    sget-object v1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v1

    const-string v2, "logLevel"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt p1, v0, :cond_1f

    goto :goto_20

    :cond_1f
    return-object p0

    .line 36
    :cond_20
    :goto_20
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static AFInAppEventType(Ljava/lang/String;)V
    .registers 5

    .line 8044
    sget-object v0, Lcom/appsflyer/AFLogger$LogLevel;->DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Lcom/appsflyer/AFLogger$LogLevel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 9029
    invoke-static {p0, v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppsFlyer_6.4.2"

    .line 8045
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9037
    :cond_12
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_1d

    .line 9038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 9040
    :cond_1d
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v2, 0x1

    .line 8048
    invoke-static {p0, v2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v1

    const-string p0, "D"

    .line 9157
    invoke-virtual {v0, v3, p0, v2}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static AFKeystoreWrapper(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x1

    .line 102
    invoke-static {p0, v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    return-void
.end method

.method public static AFKeystoreWrapper(Ljava/lang/String;Z)V
    .registers 5

    .line 19
    sget-object v0, Lcom/appsflyer/AFLogger$LogLevel;->INFO:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Lcom/appsflyer/AFLogger$LogLevel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 1029
    invoke-static {p0, v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppsFlyer_6.4.2"

    .line 20
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-eqz p1, :cond_30

    .line 1037
    sget-object p1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p1, :cond_1f

    .line 1038
    new-instance p1, Lcom/appsflyer/internal/ak;

    invoke-direct {p1}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 1040
    :cond_1f
    sget-object p1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v0, 0x1

    .line 23
    invoke-static {p0, v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v1

    const-string p0, "I"

    .line 1157
    invoke-virtual {p1, v2, p0, v0}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method public static AFKeystoreWrapper(Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-static {v0, p0, v1, v1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method private static AFKeystoreWrapper()Z
    .registers 1

    .line 94
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->isLogsDisabledCompletely()Z

    move-result v0

    return v0
.end method

.method public static init(Ljava/lang/String;)V
    .registers 1

    .line 118
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)V
    .registers 5

    .line 87
    invoke-static {}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 7029
    invoke-static {p0, v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppsFlyer_6.4.2"

    .line 88
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7037
    :cond_10
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_1b

    .line 7038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 7040
    :cond_1b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v1

    const-string p0, "F"

    .line 7157
    invoke-virtual {v0, v2, p0, v3}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-static {p0, p1, v0, v1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method private static valueOf(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .registers 8

    .line 53
    sget-object v0, Lcom/appsflyer/AFLogger$LogLevel;->ERROR:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Lcom/appsflyer/AFLogger$LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    if-nez p0, :cond_31

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3029
    :cond_31
    invoke-static {p0, v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppsFlyer_6.4.2"

    if-eqz p3, :cond_3d

    .line 58
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :cond_3d
    if-eqz p2, :cond_42

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    :cond_42
    :goto_42
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p0, :cond_4d

    .line 3038
    new-instance p0, Lcom/appsflyer/internal/ak;

    invoke-direct {p0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 3040
    :cond_4d
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 3140
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 3141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_62

    .line 3142
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    :cond_62
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_66
    if-nez p2, :cond_6d

    .line 3143
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    goto :goto_71

    :cond_6d
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 3144
    :goto_71
    invoke-static {v0, p1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "exception"

    .line 3145
    invoke-virtual {p0, p2, p3, p1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4019
    sget-object p0, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    if-eqz p0, :cond_a7

    .line 4020
    sget-object p0, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    invoke-static {p0}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 4021
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 4027
    sget-object p1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    const-string p2, "exception_number"

    if-nez p1, :cond_91

    const-wide/16 v0, -0x1

    goto :goto_9d

    .line 4028
    :cond_91
    sget-object p1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_9d
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 4022
    invoke-interface {p0, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 4023
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_a7
    return-void
.end method

.method public static values(Ljava/lang/String;)V
    .registers 5

    .line 75
    sget-object v0, Lcom/appsflyer/AFLogger$LogLevel;->VERBOSE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Lcom/appsflyer/AFLogger$LogLevel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 5029
    invoke-static {p0, v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppsFlyer_6.4.2"

    .line 76
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5037
    :cond_12
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_1d

    .line 5038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 5040
    :cond_1d
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v2, 0x1

    .line 79
    invoke-static {p0, v2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v1

    const-string p0, "V"

    .line 5157
    invoke-virtual {v0, v3, p0, v2}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static values(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x1

    .line 110
    invoke-static {p0, p1, v0, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

###### Class com.appsflyer.AFLogger.LogLevel (com.appsflyer.AFLogger$LogLevel)
.class public final enum Lcom/appsflyer/AFLogger$LogLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AFLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/AFLogger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic AFInAppEventType:[Lcom/appsflyer/AFLogger$LogLevel;

.field public static final enum DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

.field public static final enum ERROR:Lcom/appsflyer/AFLogger$LogLevel;

.field public static final enum INFO:Lcom/appsflyer/AFLogger$LogLevel;

.field public static final enum NONE:Lcom/appsflyer/AFLogger$LogLevel;

.field public static final enum VERBOSE:Lcom/appsflyer/AFLogger$LogLevel;

.field public static final enum WARNING:Lcom/appsflyer/AFLogger$LogLevel;


# instance fields
.field private AFInAppEventParameterName:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 123
    new-instance v0, Lcom/appsflyer/AFLogger$LogLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/appsflyer/AFLogger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    new-instance v1, Lcom/appsflyer/AFLogger$LogLevel;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/appsflyer/AFLogger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appsflyer/AFLogger$LogLevel;->ERROR:Lcom/appsflyer/AFLogger$LogLevel;

    new-instance v3, Lcom/appsflyer/AFLogger$LogLevel;

    const-string v5, "WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/appsflyer/AFLogger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/appsflyer/AFLogger$LogLevel;->WARNING:Lcom/appsflyer/AFLogger$LogLevel;

    new-instance v5, Lcom/appsflyer/AFLogger$LogLevel;

    const-string v7, "INFO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/appsflyer/AFLogger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/appsflyer/AFLogger$LogLevel;->INFO:Lcom/appsflyer/AFLogger$LogLevel;

    new-instance v7, Lcom/appsflyer/AFLogger$LogLevel;

    const-string v9, "DEBUG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/appsflyer/AFLogger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/appsflyer/AFLogger$LogLevel;->DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

    new-instance v9, Lcom/appsflyer/AFLogger$LogLevel;

    const-string v11, "VERBOSE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/appsflyer/AFLogger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/appsflyer/AFLogger$LogLevel;->VERBOSE:Lcom/appsflyer/AFLogger$LogLevel;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/appsflyer/AFLogger$LogLevel;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 121
    sput-object v11, Lcom/appsflyer/AFLogger$LogLevel;->AFInAppEventType:[Lcom/appsflyer/AFLogger$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput p3, p0, Lcom/appsflyer/AFLogger$LogLevel;->AFInAppEventParameterName:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/AFLogger$LogLevel;
    .registers 2

    .line 121
    const-class v0, Lcom/appsflyer/AFLogger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/AFLogger$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/AFLogger$LogLevel;
    .registers 1

    .line 121
    sget-object v0, Lcom/appsflyer/AFLogger$LogLevel;->AFInAppEventType:[Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v0}, [Lcom/appsflyer/AFLogger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/AFLogger$LogLevel;

    return-object v0
.end method


# virtual methods
.method public final getLevel()I
    .registers 2

    .line 132
    iget v0, p0, Lcom/appsflyer/AFLogger$LogLevel;->AFInAppEventParameterName:I

    return v0
.end method
