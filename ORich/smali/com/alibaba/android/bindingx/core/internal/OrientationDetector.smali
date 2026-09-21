###### Class com.alibaba.android.bindingx.core.internal.OrientationDetector (com.alibaba.android.bindingx.core.internal.OrientationDetector)
.class Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;
.super Ljava/lang/Object;
.source "OrientationDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/internal/OrientationDetector$OnOrientationChangedListener;
    }
.end annotation


# static fields
.field private static final DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSingleton:Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;

.field private static final sSingletonLock:Ljava/lang/Object;


# instance fields
.field private final mActiveSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private mDeviceOrientationIsActive:Z

.field private mDeviceOrientationIsActiveWithBackupSensors:Z

.field private mDeviceOrientationSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceRotationMatrix:[F

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/bindingx/core/internal/OrientationDetector$OnOrientationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMagneticFieldVector:[F

.field private mOrientationNotAvailable:Z

.field private final mOrientationSensorSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRotationAngles:[D

.field mSensorManagerProxy:Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxy;

.field private mThread:Landroid/os/HandlerThread;

.field private mTruncatedRotationVector:[F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->sSingletonLock:Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0xf

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 75
    invoke-static {v1}, Lcom/alibaba/android/bindingx/core/internal/Utils;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    sput-object v1, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;

    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0xb

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 77
    invoke-static {v1}, Lcom/alibaba/android/bindingx/core/internal/Utils;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    sput-object v1, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Integer;

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 80
    invoke-static {v2}, Lcom/alibaba/android/bindingx/core/internal/Utils;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mActiveSensors:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mListeners:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mAppContext:Landroid/content/Context;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/util/Set;

    .line 99
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/internal/Utils;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mOrientationSensorSets:Ljava/util/List;

    return-void
.end method

.method private static computeDeviceOrientationFromRotationMatrix([F[D)[D
    .registers 20

    move-object/from16 v0, p0

    .line 300
    array-length v1, v0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_8

    return-object p1

    :cond_8
    const/16 v1, 0x8

    .line 302
    aget v2, v0, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    cmpl-float v2, v2, v9

    if-lez v2, :cond_3e

    .line 303
    aget v2, v0, v11

    neg-float v2, v2

    float-to-double v12, v2

    aget v2, v0, v6

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    aput-wide v12, p1, v10

    .line 304
    aget v2, v0, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    aput-wide v8, p1, v11

    .line 305
    aget v2, v0, v5

    neg-float v2, v2

    float-to-double v5, v2

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    goto/16 :goto_f7

    .line 306
    :cond_3e
    aget v2, v0, v1

    cmpg-float v2, v2, v9

    if-gez v2, :cond_80

    .line 307
    aget v2, v0, v11

    float-to-double v12, v2

    aget v2, v0, v6

    neg-float v2, v2

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    aput-wide v12, p1, v10

    .line 308
    aget v2, v0, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    neg-double v8, v8

    aput-wide v8, p1, v11

    .line 309
    aget-wide v8, p1, v11

    aget-wide v12, p1, v11

    cmpl-double v2, v12, v3

    if-ltz v2, :cond_69

    const-wide v12, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_6e

    :cond_69
    const-wide v12, 0x400921fb54442d18L    # Math.PI

    :goto_6e
    add-double/2addr v8, v12

    aput-wide v8, p1, v11

    .line 310
    aget v2, v0, v5

    float-to-double v5, v2

    aget v0, v0, v1

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    goto/16 :goto_f7

    .line 312
    :cond_80
    aget v1, v0, v5

    const-wide v12, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-float v1, v1, v9

    if-lez v1, :cond_a4

    .line 313
    aget v1, v0, v11

    neg-float v1, v1

    float-to-double v1, v1

    aget v5, v0, v6

    float-to-double v5, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    aput-wide v1, p1, v10

    .line 314
    aget v0, v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v11

    .line 315
    aput-wide v12, p1, v7

    goto :goto_f7

    .line 316
    :cond_a4
    aget v1, v0, v5

    cmpg-float v1, v1, v9

    if-gez v1, :cond_db

    .line 317
    aget v1, v0, v11

    float-to-double v1, v1

    aget v5, v0, v6

    neg-float v5, v5

    float-to-double v5, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    aput-wide v1, p1, v10

    .line 318
    aget v0, v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v11

    .line 319
    aget-wide v0, p1, v11

    aget-wide v5, p1, v11

    cmpl-double v2, v5, v3

    if-ltz v2, :cond_cf

    const-wide v16, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_d4

    :cond_cf
    const-wide v16, 0x400921fb54442d18L    # Math.PI

    :goto_d4
    add-double v0, v0, v16

    aput-wide v0, p1, v11

    .line 320
    aput-wide v12, p1, v7

    goto :goto_f7

    :cond_db
    const/4 v1, 0x3

    .line 323
    aget v1, v0, v1

    float-to-double v1, v1

    aget v5, v0, v10

    float-to-double v5, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    aput-wide v1, p1, v10

    .line 324
    aget v0, v0, v8

    cmpl-float v0, v0, v9

    if-lez v0, :cond_f3

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    :cond_f3
    aput-wide v12, p1, v11

    .line 325
    aput-wide v3, p1, v7

    .line 330
    :goto_f7
    aget-wide v0, p1, v10

    cmpg-double v2, v0, v3

    if-gez v2, :cond_107

    .line 331
    aget-wide v0, p1, v10

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    aput-wide v0, p1, v10

    :cond_107
    return-object p1
.end method

.method private convertRotationVectorToAngles([F[D)V
    .registers 6

    .line 342
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-le v0, v1, :cond_12

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mTruncatedRotationVector:[F

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceRotationMatrix:[F

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mTruncatedRotationVector:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    goto :goto_17

    .line 351
    :cond_12
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceRotationMatrix:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 353
    :goto_17
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceRotationMatrix:[F

    invoke-static {p1, p2}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    :goto_1c
    const/4 p1, 0x3

    if-ge v2, p1, :cond_2a

    .line 355
    aget-wide v0, p2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    aput-wide v0, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2a
    return-void
.end method

.method private ensureRotationStructuresAllocated()V
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceRotationMatrix:[F

    if-nez v0, :cond_a

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 399
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceRotationMatrix:[F

    .line 401
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mRotationAngles:[D

    if-nez v0, :cond_13

    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 402
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mRotationAngles:[D

    .line 404
    :cond_13
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mTruncatedRotationVector:[F

    if-nez v0, :cond_1c

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 405
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mTruncatedRotationVector:[F

    :cond_1c
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 3

    .line 470
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1d

    .line 471
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceOrientation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mThread:Landroid/os/HandlerThread;

    .line 472
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 473
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mHandler:Landroid/os/Handler;

    .line 475
    :cond_1d
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;
    .registers 3

    .line 105
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->sSingleton:Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;

    if-nez v1, :cond_e

    .line 107
    new-instance v1, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->sSingleton:Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;

    .line 109
    :cond_e
    sget-object p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->sSingleton:Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 110
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private getOrientationFromGeomagneticVectors([F[F)V
    .registers 12

    if-eqz p1, :cond_35

    if-nez p2, :cond_5

    goto :goto_35

    .line 363
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 366
    :cond_f
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceRotationMatrix:[F

    iget-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mRotationAngles:[D

    invoke-static {p1, p2}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 368
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mRotationAngles:[D

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mRotationAngles:[D

    const/4 p2, 0x1

    aget-wide v0, p1, p2

    .line 369
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mRotationAngles:[D

    const/4 p2, 0x2

    aget-wide v0, p1, p2

    .line 370
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    move-object v2, p0

    .line 368
    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->gotOrientation(DDD)V

    :cond_35
    :goto_35
    return-void
.end method

.method private getOrientationSensorTypeUsed()Ljava/lang/String;
    .registers 4

    .line 169
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mOrientationNotAvailable:Z

    const-string v1, "NOT_AVAILABLE"

    if-eqz v0, :cond_7

    return-object v1

    .line 172
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v2, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;

    if-ne v0, v2, :cond_10

    const-string v0, "GAME_ROTATION_VECTOR"

    return-object v0

    .line 175
    :cond_10
    sget-object v2, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    if-ne v0, v2, :cond_17

    const-string v0, "ROTATION_VECTOR"

    return-object v0

    .line 178
    :cond_17
    sget-object v2, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    if-ne v0, v2, :cond_1e

    const-string v0, "ACCELEROMETER_MAGNETIC"

    return-object v0

    :cond_1e
    return-object v1
.end method

.method private getSensorManagerProxy()Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxy;
    .registers 3

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mSensorManagerProxy:Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxy;

    if-eqz v0, :cond_5

    return-object v0

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mAppContext:Landroid/content/Context;

    const-string v1, "sensor"

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_18

    .line 385
    new-instance v1, Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxyImpl;

    invoke-direct {v1, v0}, Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxyImpl;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mSensorManagerProxy:Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxy;

    .line 387
    :cond_18
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mSensorManagerProxy:Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxy;

    return-object v0
.end method

.method private registerForSensorType(II)Z
    .registers 5

    .line 448
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->getSensorManagerProxy()Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxy;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 452
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxy;->registerListener(Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method private registerOrientationSensorsWithFallback(I)Z
    .registers 7

    .line 144
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mOrientationNotAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationSensors:Ljava/util/Set;

    const-string v2, "[OrientationDetector] register sensor:"

    const/4 v3, 0x1

    if-eqz v0, :cond_2a

    .line 146
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->getOrientationSensorTypeUsed()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-direct {p0, v0, p1, v3}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->registerSensors(Ljava/util/Set;IZ)Z

    move-result p1

    return p1

    .line 150
    :cond_2a
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->ensureRotationStructuresAllocated()V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mOrientationSensorSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 153
    iput-object v4, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 154
    invoke-direct {p0, v4, p1, v3}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 155
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->getOrientationSensorTypeUsed()Ljava/lang/String;

    move-result-object p1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    return v3

    .line 161
    :cond_5e
    iput-boolean v3, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mOrientationNotAvailable:Z

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 163
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceRotationMatrix:[F

    .line 164
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mRotationAngles:[D

    return v1
.end method

.method private registerSensors(Ljava/util/Set;IZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;IZ)Z"
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 419
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 420
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_12

    return v1

    .line 423
    :cond_12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 424
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->registerForSensorType(II)Z

    move-result v5

    if-nez v5, :cond_34

    if-eqz p3, :cond_34

    .line 427
    invoke-direct {p0, v0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->unregisterSensors(Ljava/lang/Iterable;)V

    return v2

    :cond_34
    if-eqz v5, :cond_18

    .line 431
    iget-object v3, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_18

    :cond_3d
    return v3
.end method

.method private setEventTypeActive(Z)V
    .registers 3

    .line 392
    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationIsActive:Z

    if-eqz p1, :cond_c

    .line 393
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationIsActiveWithBackupSensors:Z

    return-void
.end method

.method private unregisterSensors(Ljava/lang/Iterable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 439
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 440
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 441
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->getSensorManagerProxy()Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxy;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxy;->unregisterListener(Landroid/hardware/SensorEventListener;I)V

    .line 442
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_29
    return-void
.end method


# virtual methods
.method addOrientationChangedListener(Lcom/alibaba/android/bindingx/core/internal/OrientationDetector$OnOrientationChangedListener;)V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method gotOrientation(DDD)V
    .registers 16

    .line 457
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 459
    :try_start_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector$OnOrientationChangedListener;

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    .line 460
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector$OnOrientationChangedListener;->onOrientationChanged(DDD)V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1c

    goto :goto_8

    :catchall_1c
    move-exception p1

    const-string p2, "[OrientationDetector] "

    .line 464
    invoke-static {p2, p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13

    .line 219
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 220
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    if-eq v0, v1, :cond_72

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5e

    const/16 v4, 0xb

    if-eq v0, v4, :cond_42

    const/16 v4, 0xf

    if-eq v0, v4, :cond_2c

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected sensor type:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    goto :goto_7b

    .line 237
    :cond_2c
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_7b

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mRotationAngles:[D

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->convertRotationVectorToAngles([F[D)V

    .line 239
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mRotationAngles:[D

    aget-wide v5, p1, v3

    aget-wide v7, p1, v1

    aget-wide v9, p1, v2

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->gotOrientation(DDD)V

    goto :goto_7b

    .line 229
    :cond_42
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v4, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    if-ne v0, v4, :cond_7b

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mRotationAngles:[D

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->convertRotationVectorToAngles([F[D)V

    .line 233
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mRotationAngles:[D

    aget-wide v5, p1, v3

    aget-wide v7, p1, v1

    aget-wide v9, p1, v2

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->gotOrientation(DDD)V

    goto :goto_7b

    .line 243
    :cond_5e
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationIsActiveWithBackupSensors:Z

    if-eqz v0, :cond_7b

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mMagneticFieldVector:[F

    if-nez v0, :cond_6b

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 245
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mMagneticFieldVector:[F

    .line 247
    :cond_6b
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mMagneticFieldVector:[F

    array-length v1, v0

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7b

    .line 224
    :cond_72
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mDeviceOrientationIsActiveWithBackupSensors:Z

    if-eqz v0, :cond_7b

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mMagneticFieldVector:[F

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->getOrientationFromGeomagneticVectors([F[F)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method removeOrientationChangedListener(Lcom/alibaba/android/bindingx/core/internal/OrientationDetector$OnOrientationChangedListener;)Z
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    if-nez p1, :cond_b

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x1

    return p1

    .line 125
    :cond_b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public start(I)Z
    .registers 3

    const-string v0, "[OrientationDetector] sensor started"

    .line 193
    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->registerOrientationSensorsWithFallback(I)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    .line 196
    invoke-direct {p0, v0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->setEventTypeActive(Z)V

    :cond_f
    return p1
.end method

.method stop()V
    .registers 3

    const-string v0, "[OrientationDetector] sensor stopped"

    .line 206
    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->mActiveSensors:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 208
    invoke-direct {p0, v0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->unregisterSensors(Ljava/lang/Iterable;)V

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, v0}, Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;->setEventTypeActive(Z)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.core.internal.OrientationDetector.OnOrientationChangedListener (com.alibaba.android.bindingx.core.internal.OrientationDetector$OnOrientationChangedListener)
.class interface abstract Lcom/alibaba/android/bindingx/core/internal/OrientationDetector$OnOrientationChangedListener;
.super Ljava/lang/Object;
.source "OrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/OrientationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnOrientationChangedListener"
.end annotation


# virtual methods
.method public abstract onOrientationChanged(DDD)V
.end method
