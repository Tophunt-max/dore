###### Class com.appsflyer.internal.y (com.appsflyer.internal.y)
.class final Lcom/appsflyer/internal/y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/y$c;,
        Lcom/appsflyer/internal/y$e;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/y$e;
    .registers 13

    const-string v0, "unknown"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "connectivity"

    .line 1069
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_94

    const-string v3, "MOBILE"

    const-string v4, "WIFI"

    if-eqz v2, :cond_6d

    const/16 v5, 0x15

    .line 1073
    :try_start_13
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gt v5, v6, :cond_3d

    .line 2034
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v5

    .line 2035
    array-length v6, v5

    :goto_1e
    if-ge v7, v6, :cond_6d

    aget-object v9, v5, v7

    .line 2036
    invoke-virtual {v2, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 2037
    invoke-static {v9}, Lcom/appsflyer/internal/y;->AFKeystoreWrapper(Landroid/net/NetworkInfo;)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 2038
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v8, v2, :cond_33

    goto :goto_47

    .line 2041
    :cond_33
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_53

    :cond_3a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 2051
    :cond_3d
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/internal/y;->AFKeystoreWrapper(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_49

    :goto_47
    move-object v0, v4

    goto :goto_6d

    .line 2054
    :cond_49
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/internal/y;->AFKeystoreWrapper(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_55

    :goto_53
    move-object v0, v3

    goto :goto_6d

    .line 2057
    :cond_55
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2058
    invoke-static {v2}, Lcom/appsflyer/internal/y;->AFKeystoreWrapper(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 2059
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v8, v5, :cond_66

    goto :goto_47

    .line 2061
    :cond_66
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_53

    :cond_6d
    :goto_6d
    const-string v2, "phone"

    .line 93
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 94
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2
    :try_end_79
    .catchall {:try_start_13 .. :try_end_79} :catchall_94

    .line 95
    :try_start_79
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9e

    :cond_85
    const/4 v3, 0x2

    .line 97
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    if-ne v3, p0, :cond_9e

    const-string v1, "CDMA"
    :try_end_8e
    .catchall {:try_start_79 .. :try_end_8e} :catchall_8f

    goto :goto_9e

    :catchall_8f
    move-exception p0

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_96

    :catchall_94
    move-exception p0

    move-object v2, v1

    :goto_96
    const-string v3, "Exception while collecting network info. "

    .line 103
    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 105
    :cond_9e
    :goto_9e
    new-instance p0, Lcom/appsflyer/internal/y$e;

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/y$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static AFKeystoreWrapper(Landroid/net/NetworkInfo;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 29
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

###### Class com.appsflyer.internal.y.c (com.appsflyer.internal.y$c)
.class final Lcom/appsflyer/internal/y$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# static fields
.field static final valueOf:Lcom/appsflyer/internal/y;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Lcom/appsflyer/internal/y;

    invoke-direct {v0}, Lcom/appsflyer/internal/y;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/y$c;->valueOf:Lcom/appsflyer/internal/y;

    return-void
.end method

###### Class com.appsflyer.internal.y.e (com.appsflyer.internal.y$e)
.class final Lcom/appsflyer/internal/y$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final AFInAppEventParameterName:Ljava/lang/String;

.field final AFKeystoreWrapper:Ljava/lang/String;

.field final values:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/appsflyer/internal/y$e;->values:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/appsflyer/internal/y$e;->AFInAppEventParameterName:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/appsflyer/internal/y$e;->AFKeystoreWrapper:Ljava/lang/String;

    return-void
.end method
