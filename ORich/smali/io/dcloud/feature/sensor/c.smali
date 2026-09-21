###### Class io.dcloud.feature.sensor.c (io.dcloud.feature.sensor.c)
.class public Lio/dcloud/feature/sensor/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Lio/dcloud/common/DHInterface/IWebview;

.field private c:Landroid/hardware/SensorManager;

.field private d:Landroid/hardware/Sensor;

.field private e:Landroid/hardware/Sensor;

.field private f:Landroid/hardware/Sensor;

.field private g:[F

.field private h:[F

.field private i:[F

.field private j:[F

.field private k:Z


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/feature/sensor/c;->k:Z

    .line 15
    iput-object p2, p0, Lio/dcloud/feature/sensor/c;->a:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lio/dcloud/feature/sensor/c;->b:Lio/dcloud/common/DHInterface/IWebview;

    const/4 p2, 0x3

    new-array v0, p2, [F

    .line 17
    iput-object v0, p0, Lio/dcloud/feature/sensor/c;->g:[F

    new-array v0, p2, [F

    .line 18
    iput-object v0, p0, Lio/dcloud/feature/sensor/c;->h:[F

    new-array v0, p2, [F

    .line 19
    iput-object v0, p0, Lio/dcloud/feature/sensor/c;->i:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 20
    iput-object v0, p0, Lio/dcloud/feature/sensor/c;->j:[F

    .line 21
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lio/dcloud/feature/sensor/c;->c:Landroid/hardware/SensorManager;

    const/4 v0, 0x2

    .line 22
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/sensor/c;->d:Landroid/hardware/Sensor;

    .line 23
    iget-object p1, p0, Lio/dcloud/feature/sensor/c;->c:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/sensor/c;->e:Landroid/hardware/Sensor;

    .line 24
    iget-object p1, p0, Lio/dcloud/feature/sensor/c;->c:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/sensor/c;->f:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/sensor/c;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/dcloud/feature/sensor/c;->d:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/sensor/c;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/dcloud/feature/sensor/c;->e:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/sensor/c;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/dcloud/feature/sensor/c;->f:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method a(FFF)V
    .registers 8

    .line 4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    neg-float p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    const-string p1, "{alpha:%f,beta:%f,gamma:%f,magneticHeading:%f,trueHeading:%f,headingAccuracy:%f}"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lio/dcloud/feature/sensor/c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object p3, p0, Lio/dcloud/feature/sensor/c;->a:Ljava/lang/String;

    invoke-static {p2, p3, p1, v2, v2}, Lio/dcloud/common/util/JSUtil;->excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method a(ILjava/lang/String;)V
    .registers 5

    .line 6
    invoke-virtual {p0}, Lio/dcloud/feature/sensor/c;->b()V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/sensor/c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/sensor/c;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {v0, v1, p1, p2}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/sensor/c;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/sensor/c;->d:Landroid/hardware/Sensor;

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/sensor/c;->e:Landroid/hardware/Sensor;

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const-string v1, "NO Accelerometer Message"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_55

    if-eq v0, v2, :cond_46

    const/4 v5, 0x3

    if-eq v0, v5, :cond_14

    goto/16 :goto_ad

    .line 3
    :cond_14
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_42

    .line 4
    aget v0, v0, v3

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 5
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 6
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 7
    iput-boolean v4, p0, Lio/dcloud/feature/sensor/c;->k:Z

    .line 8
    invoke-virtual {p0, v0, v3, p1}, Lio/dcloud/feature/sensor/c;->a(FFF)V

    goto :goto_ad

    .line 11
    :cond_42
    invoke-virtual {p0, v3, v1}, Lio/dcloud/feature/sensor/c;->a(ILjava/lang/String;)V

    goto :goto_ad

    .line 16
    :cond_46
    iget-boolean v0, p0, Lio/dcloud/feature/sensor/c;->k:Z

    if-nez v0, :cond_ad

    .line 17
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lio/dcloud/feature/sensor/c;->g:[F

    goto :goto_ad

    .line 22
    :cond_55
    iget-boolean v0, p0, Lio/dcloud/feature/sensor/c;->k:Z

    if-nez v0, :cond_ad

    .line 23
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lio/dcloud/feature/sensor/c;->h:[F

    .line 24
    iget-object v0, p0, Lio/dcloud/feature/sensor/c;->g:[F

    if-nez v0, :cond_68

    return-void

    .line 28
    :cond_68
    iget-object v5, p0, Lio/dcloud/feature/sensor/c;->j:[F

    const/4 v6, 0x0

    invoke-static {v5, v6, p1, v0}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 29
    iget-object p1, p0, Lio/dcloud/feature/sensor/c;->j:[F

    iget-object v0, p0, Lio/dcloud/feature/sensor/c;->i:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 30
    iget-object p1, p0, Lio/dcloud/feature/sensor/c;->i:[F

    if-eqz p1, :cond_aa

    .line 31
    aget p1, p1, v3

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_89

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr p1, v1

    .line 35
    :cond_89
    iget-object v1, p0, Lio/dcloud/feature/sensor/c;->i:[F

    aget v1, v1, v4

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 36
    iget-object v3, p0, Lio/dcloud/feature/sensor/c;->i:[F

    aget v2, v3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    neg-float v2, v2

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_ad

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_ad

    .line 38
    invoke-virtual {p0, p1, v1, v2}, Lio/dcloud/feature/sensor/c;->a(FFF)V

    goto :goto_ad

    .line 42
    :cond_aa
    invoke-virtual {p0, v3, v1}, Lio/dcloud/feature/sensor/c;->a(ILjava/lang/String;)V

    :cond_ad
    :goto_ad
    return-void
.end method
