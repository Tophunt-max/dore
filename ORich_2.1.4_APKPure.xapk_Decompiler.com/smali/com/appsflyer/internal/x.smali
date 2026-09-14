###### Class com.appsflyer.internal.x (com.appsflyer.internal.x)
.class final Lcom/appsflyer/internal/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final AFInAppEventParameterName:I

.field final AFInAppEventType:[J

.field AFKeystoreWrapper:J

.field private final AFVersionDeclaration:I

.field private final AppsFlyer2dXConversionCallback:Ljava/util/concurrent/Executor;

.field private final getLevel:Ljava/lang/String;

.field private final init:Ljava/lang/String;

.field final valueOf:[[F

.field values:D


# direct methods
.method constructor <init>(Landroid/hardware/Sensor;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [[F

    .line 31
    iput-object v1, p0, Lcom/appsflyer/internal/x;->valueOf:[[F

    new-array v0, v0, [J

    .line 32
    iput-object v0, p0, Lcom/appsflyer/internal/x;->AFInAppEventType:[J

    .line 39
    iput-object p2, p0, Lcom/appsflyer/internal/x;->AppsFlyer2dXConversionCallback:Ljava/util/concurrent/Executor;

    .line 40
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p2

    iput p2, p0, Lcom/appsflyer/internal/x;->AFInAppEventParameterName:I

    .line 41
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1d

    move-object v0, v1

    :cond_1d
    iput-object v0, p0, Lcom/appsflyer/internal/x;->getLevel:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_27

    :cond_26
    move-object v1, p1

    :goto_27
    iput-object v1, p0, Lcom/appsflyer/internal/x;->init:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x1f

    mul-int/lit8 p2, p2, 0x1f

    .line 2054
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x1f

    .line 2055
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    .line 43
    iput p2, p0, Lcom/appsflyer/internal/x;->AFVersionDeclaration:I

    return-void
.end method

.method static synthetic AFInAppEventType([F[F)D
    .registers 10

    .line 3064
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_1b

    .line 3067
    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 3069
    :cond_1b
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private AFInAppEventType()Z
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/appsflyer/internal/x;->valueOf:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    return v1
.end method

.method private AFInAppEventType(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 154
    iget v0, p0, Lcom/appsflyer/internal/x;->AFInAppEventParameterName:I

    if-ne v0, p1, :cond_16

    iget-object p1, p0, Lcom/appsflyer/internal/x;->getLevel:Ljava/lang/String;

    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/appsflyer/internal/x;->init:Ljava/lang/String;

    .line 156
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method private static valueOf([F)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v3, p0, v2

    .line 76
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method private valueOf()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 169
    iget v1, p0, Lcom/appsflyer/internal/x;->AFInAppEventParameterName:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/appsflyer/internal/x;->getLevel:Ljava/lang/String;

    const-string v2, "sN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/appsflyer/internal/x;->init:Ljava/lang/String;

    const-string v2, "sV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/appsflyer/internal/x;->valueOf:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_2f

    .line 174
    invoke-static {v1}, Lcom/appsflyer/internal/x;->valueOf([F)Ljava/util/List;

    move-result-object v1

    const-string v2, "sVS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2f
    iget-object v1, p0, Lcom/appsflyer/internal/x;->valueOf:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_3f

    .line 178
    invoke-static {v1}, Lcom/appsflyer/internal/x;->valueOf([F)Ljava/util/List;

    move-result-object v1

    const-string v2, "sVE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 221
    :cond_4
    instance-of v0, p1, Lcom/appsflyer/internal/x;

    if-eqz v0, :cond_15

    .line 222
    check-cast p1, Lcom/appsflyer/internal/x;

    .line 223
    iget v0, p1, Lcom/appsflyer/internal/x;->AFInAppEventParameterName:I

    iget-object v1, p1, Lcom/appsflyer/internal/x;->getLevel:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/x;->init:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/x;->AFInAppEventType(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 209
    iget v0, p0, Lcom/appsflyer/internal/x;->AFVersionDeclaration:I

    return v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    .line 83
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 84
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 85
    iget-object v2, p0, Lcom/appsflyer/internal/x;->AppsFlyer2dXConversionCallback:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/x$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/appsflyer/internal/x$3;-><init>(Lcom/appsflyer/internal/x;[FJ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final values(Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/x;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/appsflyer/internal/x;->AFInAppEventType()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 144
    invoke-direct {p0}, Lcom/appsflyer/internal/x;->valueOf()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_40

    .line 2188
    iget-object p1, p0, Lcom/appsflyer/internal/x;->valueOf:[[F

    array-length p1, p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_14
    if-ge v0, p1, :cond_1e

    .line 2189
    iget-object v1, p0, Lcom/appsflyer/internal/x;->valueOf:[[F

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2191
    :cond_1e
    iget-object p1, p0, Lcom/appsflyer/internal/x;->AFInAppEventType:[J

    array-length p1, p1

    :goto_21
    const-wide/16 v0, 0x0

    if-ge p2, p1, :cond_2c

    .line 2192
    iget-object v2, p0, Lcom/appsflyer/internal/x;->AFInAppEventType:[J

    aput-wide v0, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_21

    :cond_2c
    const-wide/16 p1, 0x0

    .line 2194
    iput-wide p1, p0, Lcom/appsflyer/internal/x;->values:D

    .line 2195
    iput-wide v0, p0, Lcom/appsflyer/internal/x;->AFKeystoreWrapper:J

    return-void

    .line 148
    :cond_33
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_40

    .line 149
    invoke-direct {p0}, Lcom/appsflyer/internal/x;->valueOf()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    return-void
.end method

###### Class com.appsflyer.internal.x.AnonymousClass3 (com.appsflyer.internal.x$3)
.class final Lcom/appsflyer/internal/x$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/x;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:[F

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/x;

.field private synthetic values:J


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/x;[FJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    iput-object p2, p0, Lcom/appsflyer/internal/x$3;->AFInAppEventType:[F

    iput-wide p3, p0, Lcom/appsflyer/internal/x$3;->values:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 90
    iget-object v2, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    .line 1018
    iget-object v2, v2, Lcom/appsflyer/internal/x;->valueOf:[[F

    const/4 v3, 0x0

    .line 90
    aget-object v2, v2, v3

    if-nez v2, :cond_21

    .line 92
    iget-object v2, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    .line 2018
    iget-object v2, v2, Lcom/appsflyer/internal/x;->valueOf:[[F

    .line 92
    iget-object v4, p0, Lcom/appsflyer/internal/x$3;->AFInAppEventType:[F

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    aput-object v4, v2, v3

    .line 93
    iget-object v2, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    .line 3018
    iget-object v2, v2, Lcom/appsflyer/internal/x;->AFInAppEventType:[J

    .line 93
    aput-wide v0, v2, v3

    return-void

    .line 95
    :cond_21
    iget-object v3, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    .line 4018
    iget-object v3, v3, Lcom/appsflyer/internal/x;->valueOf:[[F

    const/4 v4, 0x1

    .line 95
    aget-object v3, v3, v4

    if-nez v3, :cond_46

    .line 97
    iget-object v3, p0, Lcom/appsflyer/internal/x$3;->AFInAppEventType:[F

    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 98
    iget-object v5, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    .line 5018
    iget-object v5, v5, Lcom/appsflyer/internal/x;->valueOf:[[F

    .line 98
    aput-object v3, v5, v4

    .line 99
    iget-object v5, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    .line 6018
    iget-object v5, v5, Lcom/appsflyer/internal/x;->AFInAppEventType:[J

    .line 99
    aput-wide v0, v5, v4

    .line 100
    iget-object v0, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    invoke-static {v2, v3}, Lcom/appsflyer/internal/x;->AFInAppEventType([F[F)D

    move-result-wide v1

    .line 7018
    iput-wide v1, v0, Lcom/appsflyer/internal/x;->values:D

    return-void

    :cond_46
    const-wide/32 v5, 0x2faf080

    .line 104
    iget-wide v7, p0, Lcom/appsflyer/internal/x$3;->values:J

    iget-object v9, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    .line 8018
    iget-wide v9, v9, Lcom/appsflyer/internal/x;->AFKeystoreWrapper:J

    sub-long/2addr v7, v9

    cmp-long v9, v5, v7

    if-gtz v9, :cond_8e

    .line 105
    iget-object v5, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    iget-wide v6, p0, Lcom/appsflyer/internal/x$3;->values:J

    .line 9018
    iput-wide v6, v5, Lcom/appsflyer/internal/x;->AFKeystoreWrapper:J

    .line 106
    iget-object v5, p0, Lcom/appsflyer/internal/x$3;->AFInAppEventType:[F

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 108
    iget-object v2, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    .line 10018
    iget-object v2, v2, Lcom/appsflyer/internal/x;->AFInAppEventType:[J

    .line 108
    aput-wide v0, v2, v4

    return-void

    .line 110
    :cond_69
    iget-object v3, p0, Lcom/appsflyer/internal/x$3;->AFInAppEventType:[F

    invoke-static {v2, v3}, Lcom/appsflyer/internal/x;->AFInAppEventType([F[F)D

    move-result-wide v2

    .line 111
    iget-object v5, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    .line 11018
    iget-wide v5, v5, Lcom/appsflyer/internal/x;->values:D

    cmpl-double v7, v2, v5

    if-lez v7, :cond_8e

    .line 112
    iget-object v5, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    .line 12018
    iget-object v5, v5, Lcom/appsflyer/internal/x;->valueOf:[[F

    .line 112
    iget-object v6, p0, Lcom/appsflyer/internal/x$3;->AFInAppEventType:[F

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    aput-object v6, v5, v4

    .line 113
    iget-object v5, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    .line 13018
    iget-object v5, v5, Lcom/appsflyer/internal/x;->AFInAppEventType:[J

    .line 113
    aput-wide v0, v5, v4

    .line 114
    iget-object v0, p0, Lcom/appsflyer/internal/x$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/x;

    .line 14018
    iput-wide v2, v0, Lcom/appsflyer/internal/x;->values:D

    :cond_8e
    return-void
.end method
