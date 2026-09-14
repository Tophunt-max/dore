###### Class com.appsflyer.internal.w (com.appsflyer.internal.w)
.class final Lcom/appsflyer/internal/w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/w$e;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static valueOf(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 6

    .line 22
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 23
    invoke-static {p0, v3}, Lcom/appsflyer/internal/aa;->valueOf(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method


# virtual methods
.method final AFInAppEventParameterName(Landroid/content/Context;)Landroid/location/Location;
    .registers 10

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "location"

    .line 39
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    const-string v3, "network"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1053
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 1093
    invoke-static {p1, v4}, Lcom/appsflyer/internal/w;->valueOf(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1094
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, v1

    :goto_1f
    const-string v4, "gps"

    .line 1055
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2093
    invoke-static {p1, v0}, Lcom/appsflyer/internal/w;->valueOf(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 2094
    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    goto :goto_31

    :cond_30
    move-object p1, v1

    :goto_31
    if-nez p1, :cond_37

    if-nez v3, :cond_37

    move-object v3, v1

    goto :goto_52

    :cond_37
    if-nez p1, :cond_3c

    if-eqz v3, :cond_3c

    goto :goto_52

    :cond_3c
    if-nez v3, :cond_40

    if-nez p1, :cond_51

    .line 3083
    :cond_40
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_55

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v0, v6, v4

    if-gez v0, :cond_51

    goto :goto_52

    :cond_51
    move-object v3, p1

    :goto_52
    if-eqz v3, :cond_55

    move-object v1, v3

    :catchall_55
    :cond_55
    return-object v1
.end method

###### Class com.appsflyer.internal.w.e (com.appsflyer.internal.w$e)
.class final Lcom/appsflyer/internal/w$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field static final values:Lcom/appsflyer/internal/w;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Lcom/appsflyer/internal/w;

    invoke-direct {v0}, Lcom/appsflyer/internal/w;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/w$e;->values:Lcom/appsflyer/internal/w;

    return-void
.end method
