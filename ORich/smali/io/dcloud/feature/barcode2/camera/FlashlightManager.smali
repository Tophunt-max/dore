###### Class io.dcloud.feature.barcode2.camera.FlashlightManager (io.dcloud.feature.barcode2.camera.FlashlightManager)
.class final Lio/dcloud/feature/barcode2/camera/FlashlightManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlashlightManager"

.field private static final iHardwareService:Ljava/lang/Object;

.field private static final setFlashEnabledMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-class v0, Lio/dcloud/feature/barcode2/camera/FlashlightManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->getHardwareService()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    .line 7
    invoke-static {v1}, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->getSetFlashEnabledMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->setFlashEnabledMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1a

    const-string v1, "This device does supports control of a flashlight"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_1a
    const-string v1, "This device does not support control of a flashlight"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disableFlashlight()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {v0}, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->setFlashlight(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method static enableFlashlight()V
    .registers 1

    const/4 v0, 0x1

    .line 1
    :try_start_1
    invoke-static {v0}, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->setFlashlight(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method private static getHardwareService()Ljava/lang/Object;
    .registers 7

    const-string v0, "android.os.ServiceManager"

    .line 1
    invoke-static {v0}, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->maybeForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 6
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "getService"

    invoke-static {v0, v4, v3}, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1b

    return-object v1

    :cond_1b
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "hardware"

    aput-object v4, v3, v5

    .line 11
    invoke-static {v0, v1, v3}, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    return-object v1

    :cond_28
    const-string v3, "android.os.IHardwareService$Stub"

    .line 16
    invoke-static {v3}, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->maybeForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_31

    return-object v1

    :cond_31
    new-array v4, v2, [Ljava/lang/Class;

    .line 21
    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    const-string v6, "asInterface"

    invoke-static {v3, v6, v4}, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_40

    return-object v1

    :cond_40
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    .line 26
    invoke-static {v3, v1, v2}, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getSetFlashEnabledMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setFlashlightEnabled"

    invoke-static {p0, v1, v0}, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-string v0, "Unexpected error while invoking "

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_7} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_7} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p1

    .line 9
    sget-object p2, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1e
    move-exception p1

    .line 10
    sget-object p2, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_38
    move-exception p1

    .line 11
    sget-object p2, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private static maybeForName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception v1

    .line 6
    sget-object v2, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while finding class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1d
    return-object v0
.end method

.method private static varargs maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_5} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    .line 6
    sget-object p2, Lio/dcloud/feature/barcode2/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error while finding method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1d
    return-object v0
.end method

.method private static setFlashlight(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getCameraHandler()Landroid/hardware/Camera;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz p0, :cond_14

    const-string p0, "torch"

    .line 5
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    const-string p0, "off"

    .line 7
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 9
    :goto_19
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 11
    sget-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBrand:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne p0, v1, :cond_3d

    .line 12
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 13
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 14
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getAutoFocusCallback()Lio/dcloud/feature/barcode2/camera/AutoFocusCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_3d
    return-void
.end method
