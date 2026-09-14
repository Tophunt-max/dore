###### Class com.alibaba.android.bindingx.core.internal.SensorManagerProxyImpl (com.alibaba.android.bindingx.core.internal.SensorManagerProxyImpl)
.class Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxyImpl;
.super Ljava/lang/Object;
.source "SensorManagerProxyImpl.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxy;


# instance fields
.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxyImpl;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method


# virtual methods
.method public registerListener(Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)Z
    .registers 7

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxyImpl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p2

    .line 38
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 41
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxyImpl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/Sensor;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;I)V
    .registers 6

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxyImpl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p2

    .line 47
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 51
    :try_start_e
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/SensorManagerProxyImpl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v1, p1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1a

    goto :goto_38

    .line 55
    :catchall_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to unregister device sensor "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/Sensor;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->w(Ljava/lang/String;)V

    :goto_38
    return-void
.end method
