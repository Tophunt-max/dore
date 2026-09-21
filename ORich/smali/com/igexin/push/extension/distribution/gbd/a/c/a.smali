###### Class com.igexin.push.extension.distribution.gbd.a.c.a (com.igexin.push.extension.distribution.gbd.a.c.a)
.class public Lcom/igexin/push/extension/distribution/gbd/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/location/Location;

.field private b:Landroid/content/Context;

.field private c:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

.field private d:Landroid/location/LocationManager;

.field private e:J

.field private f:J

.field private g:I

.field private h:Landroid/location/GpsStatus$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->e:J

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->g:I

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;

    invoke-direct {v0, p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/b;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/a;)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->h:Landroid/location/GpsStatus$Listener;

    :try_start_13
    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->b:Landroid/content/Context;

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->d:Landroid/location/LocationManager;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/d/d;->a()Lcom/igexin/push/extension/distribution/gbd/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/d/d;->e()Z

    move-result p1

    const-string v0, "GBD_LA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationAction init checkSafeStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->d:Landroid/location/LocationManager;

    if-eqz p1, :cond_57

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->b()Z

    move-result p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->d:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->h:Landroid/location/GpsStatus$Listener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    :try_end_52
    .catchall {:try_start_13 .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_57
    :goto_57
    return-void
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/a/c/a;I)I
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->g:I

    return p1
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/a/c/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->e:J

    return-wide v0
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/a/c/a;J)J
    .registers 3

    iput-wide p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->e:J

    return-wide p1
.end method

.method private a(Landroid/location/Location;)Z
    .registers 7

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_26

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_26

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_26

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method

.method static synthetic b(Lcom/igexin/push/extension/distribution/gbd/a/c/a;)I
    .registers 1

    iget p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->g:I

    return p0
.end method

.method static synthetic b(Lcom/igexin/push/extension/distribution/gbd/a/c/a;J)J
    .registers 3

    iput-wide p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->f:J

    return-wide p1
.end method

.method private b()Z
    .registers 8

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->b:Landroid/content/Context;

    const-string v2, "com.huawei.android.hwouc"

    invoke-static {v2, v0}, Lcom/igexin/push/extension/distribution/gbd/i/k;->d(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_46

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/igexin/push/extension/distribution/gbd/c/c;->o:J

    sub-long/2addr v3, v5

    sget v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->Z:I

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->Y:Z

    if-eqz v0, :cond_47

    cmp-long v0, v3, v5

    if-lez v0, :cond_47

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->d:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->r(J)V

    return v1

    :cond_46
    return v2

    :cond_47
    return v1
.end method

.method static synthetic c(Lcom/igexin/push/extension/distribution/gbd/a/c/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->f:J

    return-wide v0
.end method

.method static synthetic d(Lcom/igexin/push/extension/distribution/gbd/a/c/a;)I
    .registers 3

    iget v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->g:I

    return v0
.end method

.method static synthetic e(Lcom/igexin/push/extension/distribution/gbd/a/c/a;)Lcom/igexin/push/extension/distribution/gbd/a/c/c;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->c:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    return-object p0
.end method


# virtual methods
.method protected a(Z)Landroid/location/Location;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->d:Landroid/location/LocationManager;

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->d:Landroid/location/LocationManager;

    const-string v1, "gps"

    :goto_11
    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_1b

    :cond_16
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->d:Landroid/location/LocationManager;

    const-string v1, "network"
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    goto :goto_11

    :cond_1b
    :goto_1b
    return-object v0

    :catchall_1c
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected a()Lcom/igexin/push/extension/distribution/gbd/b/c;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->b()Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v2, v3, :cond_86

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_37

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_9f

    goto :goto_39

    :cond_37
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_39
    :try_start_39
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    instance-of v6, v5, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v6, :cond_53

    move-object v6, v5

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v6
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_48} :catch_70
    .catchall {:try_start_39 .. :try_end_48} :catchall_9f

    :try_start_48
    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4e} :catch_51
    .catchall {:try_start_48 .. :try_end_4e} :catchall_9f

    :goto_4e
    move v5, v4

    move v4, v6

    goto :goto_6d

    :catch_51
    move-exception v5

    goto :goto_72

    :cond_53
    :try_start_53
    instance-of v6, v5, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v6, :cond_6c

    move-object v6, v5

    check-cast v6, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5e} :catch_70
    .catchall {:try_start_53 .. :try_end_5e} :catchall_9f

    :try_start_5e
    move-object v7, v5

    check-cast v7, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6b} :catch_51
    .catchall {:try_start_5e .. :try_end_6b} :catchall_9f

    goto :goto_4e

    :cond_6c
    const/4 v5, 0x0

    :goto_6d
    move v6, v4

    move v4, v2

    goto :goto_77

    :catch_70
    move-exception v5

    const/4 v6, 0x0

    :goto_72
    :try_start_72
    invoke-static {v5}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    move v4, v2

    const/4 v5, 0x0

    :goto_77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v2, v7, :cond_81

    move-object v1, v0

    :goto_7e
    move v2, v4

    move v4, v3

    goto :goto_8a

    :cond_81
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    goto :goto_7e

    :cond_86
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_8a
    new-instance v3, Lcom/igexin/push/extension/distribution/gbd/b/c;

    invoke-direct {v3}, Lcom/igexin/push/extension/distribution/gbd/b/c;-><init>()V

    invoke-virtual {v3, v4}, Lcom/igexin/push/extension/distribution/gbd/b/c;->a(I)V

    invoke-virtual {v3, v2}, Lcom/igexin/push/extension/distribution/gbd/b/c;->b(I)V

    invoke-virtual {v3, v6}, Lcom/igexin/push/extension/distribution/gbd/b/c;->c(I)V

    invoke-virtual {v3, v5}, Lcom/igexin/push/extension/distribution/gbd/b/c;->d(I)V

    invoke-virtual {v3, v1}, Lcom/igexin/push/extension/distribution/gbd/b/c;->a(Ljava/util/List;)V
    :try_end_9e
    .catchall {:try_start_72 .. :try_end_9e} :catchall_9f

    return-object v3

    :catchall_9f
    move-exception v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_a3
    return-object v0
.end method

.method public a(Lcom/igexin/push/extension/distribution/gbd/a/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->c:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    return-void
.end method
