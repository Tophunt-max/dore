###### Class io.dcloud.feature.device.DeviceFeatureImpl (io.dcloud.feature.device.DeviceFeatureImpl)
.class public Lio/dcloud/feature/device/DeviceFeatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# static fields
.field static g:I = 0xff


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/os/PowerManager$WakeLock;

.field private c:Landroid/hardware/Sensor;

.field private d:Landroid/content/Context;

.field e:I

.field private final f:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_screenBrightnessSettingMaximum"

    const-string v2, "integer"

    const-string v3, "android"

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1b

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lio/dcloud/feature/device/DeviceFeatureImpl;->g:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    const/16 v0, 0xff

    .line 7
    sput v0, Lio/dcloud/feature/device/DeviceFeatureImpl;->g:I

    :cond_1b
    :goto_1b
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Landroid/os/PowerManager$WakeLock;

    const/4 v0, -0x1

    .line 336
    iput v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I

    .line 398
    new-instance v0, Lio/dcloud/feature/device/DeviceFeatureImpl$e;

    invoke-direct {v0, p0}, Lio/dcloud/feature/device/DeviceFeatureImpl$e;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;)V

    iput-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->f:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private a(F)I
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_13

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    goto :goto_13

    .line 63
    :cond_c
    iget v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/app/Activity;)I
    .registers 3

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 48
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    sget v0, Lio/dcloud/feature/device/DeviceFeatureImpl;->g:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;F)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    .line 4
    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p1

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_f
    const-string v2, "width"

    .line 7
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "height"

    .line 8
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    int-to-float v0, v0

    div-float/2addr v0, p2

    float-to-double v2, v0

    const-string v0, "resolutionWidth"

    .line 9
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-string v0, "resolutionHeight"

    .line 10
    invoke-virtual {v1, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 14
    :goto_2e
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;F)V
    .registers 8

    .line 49
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_1c

    cmpl-float v4, p2, v1

    if-lez v4, :cond_1c

    .line 52
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1e

    .line 54
    :cond_1c
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_1e
    cmpl-float v4, p2, v2

    if-nez v4, :cond_28

    .line 58
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_33

    :cond_28
    if-gtz v3, :cond_33

    cmpl-float v1, p2, v1

    if-lez v1, :cond_33

    .line 61
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "\\|"

    .line 15
    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 17
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x483826f

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_31

    const v1, -0x47d253d

    if-eq v0, v1, :cond_27

    const v1, -0x479f6a4

    if-eq v0, v1, :cond_1d

    goto :goto_3b

    :cond_1d
    const-string v0, "getVAID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    const/4 p2, 0x1

    goto :goto_3c

    :cond_27
    const-string v0, "getOAID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    const/4 p2, 0x0

    goto :goto_3c

    :cond_31
    const-string v0, "getAAID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_b4

    if-eqz p2, :cond_3b

    const/4 p2, 0x2

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 p2, -0x1

    :goto_3c
    const-string v0, "\'}"

    const-string v1, ""

    if-eqz p2, :cond_90

    if-eq p2, v2, :cond_6c

    if-eq p2, v3, :cond_48

    goto/16 :goto_c8

    .line 27
    :cond_48
    :try_start_48
    array-length p2, p4

    if-le p2, v3, :cond_4d

    aget-object v1, p4, v3

    .line 28
    :cond_4d
    new-instance p2, Lorg/json/JSONObject;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\'aaid\':\'"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget p4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, p3, p2, p4, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_c8

    .line 29
    :cond_6c
    array-length p2, p4

    if-le p2, v2, :cond_71

    aget-object v1, p4, v2

    .line 30
    :cond_71
    new-instance p2, Lorg/json/JSONObject;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\'vaid\':\'"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget p4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, p3, p2, p4, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_c8

    .line 31
    :cond_90
    array-length p2, p4

    if-lez p2, :cond_95

    aget-object v1, p4, v4

    .line 32
    :cond_95
    new-instance p2, Lorg/json/JSONObject;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\'oaid\':\'"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget p4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, p3, p2, p4, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_b3} :catch_b4

    goto :goto_c8

    :catch_b4
    move-exception p2

    .line 44
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0x191

    invoke-static {p4, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_c8
    return-void
.end method

.method static synthetic a(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;F)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;F)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lio/dcloud/common/DHInterface/IWebview;F)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenBrightness  ---   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dqqdo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/device/DeviceFeatureImpl$d;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/feature/device/DeviceFeatureImpl$d;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Z)V
    .registers 6

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-nez p3, :cond_1a

    const-string p3, "android.intent.action.CALL"

    goto :goto_1c

    :cond_1a
    const-string p3, "android.intent.action.DIAL"

    .line 69
    :goto_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/16 v6, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    sparse-switch v2, :sswitch_data_3a4

    goto/16 :goto_152

    :sswitch_1a
    const-string v2, "lockOrientation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_152

    :cond_24
    const/16 v2, 0x17

    goto/16 :goto_153

    :sswitch_28
    const-string v2, "s.resolutionWidth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto/16 :goto_152

    :cond_32
    const/16 v2, 0x16

    goto/16 :goto_153

    :sswitch_36
    const-string v2, "setBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto/16 :goto_152

    :cond_40
    const/16 v2, 0x15

    goto/16 :goto_153

    :sswitch_44
    const-string v2, "getVolume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    goto/16 :goto_152

    :cond_4e
    const/16 v2, 0x14

    goto/16 :goto_153

    :sswitch_52
    const-string v2, "setVolume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    goto/16 :goto_152

    :cond_5c
    const/16 v2, 0x13

    goto/16 :goto_153

    :sswitch_60
    const-string v2, "isSetProxy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    goto/16 :goto_152

    :cond_6a
    const/16 v2, 0x12

    goto/16 :goto_153

    :sswitch_6e
    const-string v2, "unlockOrientation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    goto/16 :goto_152

    :cond_78
    const/16 v2, 0x11

    goto/16 :goto_153

    :sswitch_7c
    const-string v2, "d.resolutionHeight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    goto/16 :goto_152

    :cond_86
    const/16 v2, 0x10

    goto/16 :goto_153

    :sswitch_8a
    const-string v2, "vibrate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    goto/16 :goto_152

    :cond_94
    const/16 v2, 0xf

    goto/16 :goto_153

    :sswitch_98
    const-string v2, "__isWakelockNative__"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    goto/16 :goto_152

    :cond_a2
    const/16 v2, 0xe

    goto/16 :goto_153

    :sswitch_a6
    const-string v2, "getBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    goto/16 :goto_152

    :cond_b0
    const/16 v2, 0xd

    goto/16 :goto_153

    :sswitch_b4
    const-string v2, "dial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_be

    goto/16 :goto_152

    :cond_be
    const/16 v2, 0xc

    goto/16 :goto_153

    :sswitch_c2
    const-string v2, "beep"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    goto/16 :goto_152

    :cond_cc
    const/16 v2, 0xb

    goto/16 :goto_153

    :sswitch_d0
    const-string v2, "getCurrentType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_da

    goto/16 :goto_152

    :cond_da
    const/16 v2, 0xa

    goto/16 :goto_153

    :sswitch_de
    const-string v2, "getCurrentSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e8

    goto/16 :goto_152

    :cond_e8
    const/16 v2, 0x9

    goto/16 :goto_153

    :sswitch_ec
    const-string v2, "getVAID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f6

    goto/16 :goto_152

    :cond_f6
    const/16 v2, 0x8

    goto/16 :goto_153

    :sswitch_fa
    const-string v2, "getOAID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_103

    goto :goto_152

    :cond_103
    const/4 v2, 0x7

    goto :goto_153

    :sswitch_105
    const-string v2, "getInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10e

    goto :goto_152

    :cond_10e
    const/4 v2, 0x6

    goto :goto_153

    :sswitch_110
    const-string v2, "getAAID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_119

    goto :goto_152

    :cond_119
    const/4 v2, 0x5

    goto :goto_153

    :sswitch_11b
    const-string v2, "isWakelock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_124

    goto :goto_152

    :cond_124
    const/4 v2, 0x4

    goto :goto_153

    :sswitch_126
    const-string v2, "getCurrentAPN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12f

    goto :goto_152

    :cond_12f
    const/4 v2, 0x3

    goto :goto_153

    :sswitch_131
    const-string v2, "s.resolutionHeight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13a

    goto :goto_152

    :cond_13a
    const/4 v2, 0x2

    goto :goto_153

    :sswitch_13c
    const-string v2, "d.resolutionWidth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_145

    goto :goto_152

    :cond_145
    const/4 v2, 0x1

    goto :goto_153

    :sswitch_147
    const-string v2, "setWakelock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_150

    goto :goto_152

    :cond_150
    const/4 v2, 0x0

    goto :goto_153

    :goto_152
    const/4 v2, -0x1

    :goto_153
    const-string v11, "audio"

    const-string v12, "Device"

    const-wide/16 v13, 0x1f4

    const/4 v15, 0x0

    packed-switch v2, :pswitch_data_406

    goto/16 :goto_3a3

    .line 13
    :pswitch_15f
    aget-object v1, p3, v10

    .line 14
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->setRequestedOrientation(Ljava/lang/String;)V

    goto/16 :goto_3a3

    .line 111
    :pswitch_16a
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    .line 112
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 113
    invoke-interface {v1, v10}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 114
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :pswitch_181
    aget-object v1, p3, v10

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 130
    invoke-direct {v7, v0, v1}, Lio/dcloud/feature/device/DeviceFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;F)V

    goto/16 :goto_3a3

    .line 131
    :pswitch_18c
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 132
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    .line 133
    iget v1, v7, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :pswitch_1a8
    aget-object v1, p3, v10

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 135
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 136
    invoke-direct {v7, v1}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(F)I

    move-result v1

    .line 137
    invoke-virtual {v0, v3, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 138
    invoke-virtual {v0, v6, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 139
    invoke-virtual {v0, v5, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 140
    invoke-virtual {v0, v4, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 141
    invoke-virtual {v0, v8, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 142
    invoke-virtual {v0, v9, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 143
    invoke-virtual {v0, v10, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_3a3

    .line 144
    :pswitch_1d3
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/NetworkTypeUtil;->isWifiProxy(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :pswitch_1e0
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v15}, Lio/dcloud/common/DHInterface/IAppInfo;->setRequestedOrientation(Ljava/lang/String;)V

    goto/16 :goto_3a3

    .line 255
    :pswitch_1e9
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    .line 256
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 257
    invoke-interface {v1, v9}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 258
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 259
    :pswitch_200
    :try_start_200
    aget-object v0, p3, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_206
    .catch Ljava/lang/NumberFormatException; {:try_start_200 .. :try_end_206} :catch_20f

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_20d

    goto :goto_213

    :cond_20d
    move-wide v13, v0

    goto :goto_213

    :catch_20f
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 266
    :goto_213
    iget-object v0, v7, Lio/dcloud/feature/device/DeviceFeatureImpl;->d:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 267
    invoke-virtual {v0, v13, v14}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_3a3

    .line 268
    :pswitch_222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 333
    :pswitch_23a
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    .line 334
    sget v1, Lio/dcloud/feature/device/DeviceFeatureImpl;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :pswitch_250
    aget-object v1, p3, v9

    invoke-static {v1, v9, v10}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v6

    .line 336
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lio/dcloud/feature/device/DeviceFeatureImpl$a;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/device/DeviceFeatureImpl$a;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Z)V

    const-string v0, "PHONE"

    invoke-static {v9, v12, v0, v8, v10}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto/16 :goto_3a3

    .line 352
    :pswitch_271
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v0, 0x64

    invoke-direct {v1, v4, v0}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 355
    :try_start_278
    aget-object v0, p3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_27e
    .catch Ljava/lang/NumberFormatException; {:try_start_278 .. :try_end_27e} :catch_283

    if-gtz v0, :cond_281

    goto :goto_287

    :cond_281
    move v9, v0

    goto :goto_287

    :catch_283
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_287
    if-ge v10, v9, :cond_3a3

    const/16 v0, 0x58

    .line 363
    invoke-virtual {v1, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 365
    :try_start_28e
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_291
    .catch Ljava/lang/InterruptedException; {:try_start_28e .. :try_end_291} :catch_292

    goto :goto_297

    :catch_292
    move-exception v0

    move-object v2, v0

    .line 367
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_297
    add-int/lit8 v10, v10, 0x1

    goto :goto_287

    .line 368
    :pswitch_29a
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->getNetWorkType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 504
    :pswitch_29f
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    invoke-direct {v7, v1, v0}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IApp;F)Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 524
    :pswitch_2b0
    aget-object v1, p3, v10

    .line 525
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lio/dcloud/feature/device/DeviceFeatureImpl$b;

    invoke-direct {v3, v7, v0, v1}, Lio/dcloud/feature/device/DeviceFeatureImpl$b;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v12, v0, v8, v3}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto/16 :goto_3a3

    .line 545
    :pswitch_2c2
    aget-object v2, p3, v10

    .line 546
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    if-eqz v3, :cond_2d8

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d1

    goto :goto_2d8

    .line 571
    :cond_2d1
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2, v3}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a3

    :cond_2d8
    :goto_2d8
    :try_start_2d8
    const-string v3, "com.bun.miitmdid.core.JLibrary"

    .line 572
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2de
    .catch Ljava/lang/Exception; {:try_start_2d8 .. :try_end_2de} :catch_2fb

    const-string v4, "InitEntry"

    :try_start_2e0
    new-array v5, v9, [Ljava/lang/Class;

    .line 573
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2fc

    .line 575
    invoke-virtual {v3, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v9, [Ljava/lang/Object;

    .line 576
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v3, v15, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2fa
    .catch Ljava/lang/Exception; {:try_start_2e0 .. :try_end_2fa} :catch_2fb

    goto :goto_2fc

    :catch_2fb
    nop

    .line 579
    :cond_2fc
    :goto_2fc
    new-instance v3, Lio/dcloud/g/c/a;

    new-instance v4, Lio/dcloud/feature/device/DeviceFeatureImpl$c;

    invoke-direct {v4, v7, v0, v1, v2}, Lio/dcloud/feature/device/DeviceFeatureImpl$c;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lio/dcloud/g/c/a;-><init>(Lio/dcloud/g/c/a$b;)V

    .line 589
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v3, v1}, Lio/dcloud/g/c/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3a3

    const/16 v1, 0x191

    const-string v3, "not support"

    .line 591
    invoke-static {v1, v3}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_3a3

    .line 592
    :pswitch_323
    iget-object v0, v7, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 593
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 669
    :pswitch_332
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->getCurrentAPN()Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33d

    return-object v15

    .line 673
    :cond_33d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    :try_start_353
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 677
    invoke-static {v1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_35c
    .catch Lorg/json/JSONException; {:try_start_353 .. :try_end_35c} :catch_35d

    return-object v0

    :catch_35d
    move-exception v0

    .line 680
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v15

    .line 681
    :pswitch_362
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    .line 682
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 683
    invoke-interface {v1, v8}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 684
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 699
    :pswitch_379
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    .line 700
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 701
    invoke-interface {v1, v10}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 702
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 703
    :pswitch_390
    aget-object v0, p3, v10

    invoke-static {v0, v10, v10}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_39e

    .line 705
    iget-object v0, v7, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_3a3

    .line 707
    :cond_39e
    iget-object v0, v7, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3a3
    :goto_3a3
    return-object v15

    :sswitch_data_3a4
    .sparse-switch
        -0x782c7caf -> :sswitch_147
        -0x69691910 -> :sswitch_13c
        -0x58fcc2f2 -> :sswitch_131
        -0x52a82624 -> :sswitch_126
        -0x1e0773e7 -> :sswitch_11b
        -0x483826f -> :sswitch_110
        -0x47f32dc -> :sswitch_105
        -0x47d253d -> :sswitch_fa
        -0x479f6a4 -> :sswitch_ec
        -0x2540c1c -> :sswitch_de
        -0x2535ce3 -> :sswitch_d0
        0x2e142e -> :sswitch_c2
        0x2f0b70 -> :sswitch_b4
        0x14e2e447 -> :sswitch_a6
        0x166d4d50 -> :sswitch_98
        0x1ae6756f -> :sswitch_8a
        0x2276fd3d -> :sswitch_7c
        0x23934bec -> :sswitch_6e
        0x24433276 -> :sswitch_60
        0x27f73e1c -> :sswitch_52
        0x34c20a10 -> :sswitch_44
        0x43073253 -> :sswitch_36
        0x508ae8ff -> :sswitch_28
        0x59437fa5 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_406
    .packed-switch 0x0
        :pswitch_390
        :pswitch_379
        :pswitch_362
        :pswitch_332
        :pswitch_323
        :pswitch_2c2
        :pswitch_2b0
        :pswitch_2c2
        :pswitch_2c2
        :pswitch_29f
        :pswitch_29a
        :pswitch_271
        :pswitch_250
        :pswitch_23a
        :pswitch_222
        :pswitch_200
        :pswitch_1e9
        :pswitch_1e0
        :pswitch_1d3
        :pswitch_1a8
        :pswitch_18c
        :pswitch_181
        :pswitch_16a
        :pswitch_15f
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "sensor"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->c:Landroid/hardware/Sensor;

    .line 4
    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->d:Landroid/content/Context;

    const-string v0, "power"

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/16 v0, 0xa

    const-string v1, "My Lock"

    .line 7
    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 11
    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 p2, 0x3

    .line 12
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I

    return-void
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_f

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:Landroid/hardware/SensorManager;

    iget-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->f:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->c:Landroid/hardware/Sensor;

    invoke-virtual {p1, p2, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1a

    .line 4
    :cond_f
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_1a

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:Landroid/hardware/SensorManager;

    iget-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->f:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1a
    :goto_1a
    return v0
.end method

###### Class io.dcloud.feature.device.DeviceFeatureImpl.a (io.dcloud.feature.device.DeviceFeatureImpl$a)
.class Lio/dcloud/feature/device/DeviceFeatureImpl$a;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/device/DeviceFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lio/dcloud/feature/device/DeviceFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Z)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->d:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iput-object p3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->b:[Ljava/lang/String;

    iput-boolean p5, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->c:Z

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->d:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iget-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-boolean v2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$a;->c:Z

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Z)V

    return-void
.end method

###### Class io.dcloud.feature.device.DeviceFeatureImpl.b (io.dcloud.feature.device.DeviceFeatureImpl$b)
.class Lio/dcloud/feature/device/DeviceFeatureImpl$b;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/device/DeviceFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\'imei\':\'\',\'imsi\':[],\'uuid\':\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/TelephonyUtil;->getIMEI(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->b:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->updateIMEI()V

    .line 2
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->getUpdateIMSI()Ljava/lang/String;

    .line 3
    sget-object p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMEI:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lio/dcloud/common/util/TelephonyUtil;->getIMEI(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_1b
    sget-object p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMEI:Ljava/lang/String;

    :goto_1d
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMEI:Ljava/lang/String;

    aput-object v3, v2, v1

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMSI:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "{\'imei\':\'%s\',\'imsi\':[\'%s\'],\'uuid\':\'%s\'}"

    invoke-static {p1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$b;->b:Ljava/lang/String;

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.feature.device.DeviceFeatureImpl.c (io.dcloud.feature.device.DeviceFeatureImpl$c)
.class Lio/dcloud/feature/device/DeviceFeatureImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/g/c/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/device/DeviceFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/feature/device/DeviceFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->d:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .registers 12

    if-eqz p2, :cond_e

    .line 1
    iget-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->d:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iget-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->c:Ljava/lang/String;

    invoke-static {p2, v0, v1, v2, p1}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 3
    :cond_e
    iget-object v3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$c;->c:Ljava/lang/String;

    const/16 p1, 0x191

    const-string p2, "not support"

    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_21
    return-void
.end method

###### Class io.dcloud.feature.device.DeviceFeatureImpl.d (io.dcloud.feature.device.DeviceFeatureImpl$d)
.class Lio/dcloud/feature/device/DeviceFeatureImpl$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/device/DeviceFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:F

.field final synthetic c:Lio/dcloud/feature/device/DeviceFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;F)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$d;->c:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$d;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput p3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$d;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$d;->c:Lio/dcloud/feature/device/DeviceFeatureImpl;

    iget-object v1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$d;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget v2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$d;->b:F

    invoke-static {v0, v1, v2}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;F)V

    return-void
.end method

###### Class io.dcloud.feature.device.DeviceFeatureImpl.e (io.dcloud.feature.device.DeviceFeatureImpl$e)
.class Lio/dcloud/feature/device/DeviceFeatureImpl$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/device/DeviceFeatureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:[F

.field private b:[F

.field private c:J


# direct methods
.method constructor <init>(Lio/dcloud/feature/device/DeviceFeatureImpl;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array v0, p1, [F

    .line 3
    fill-array-data v0, :array_10

    iput-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$e;->a:[F

    new-array p1, p1, [F

    .line 4
    iput-object p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$e;->b:[F

    return-void

    :array_10
    .array-data 4
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x3f000000    # 0.5f
    .end array-data
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13

    const/4 v0, 0x3

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v0, :cond_3b

    .line 4
    iget-object v7, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$e;->a:[F

    aget v7, v7, v3

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v3

    iget-object v9, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$e;->b:[F

    aget v9, v9, v3

    sub-float/2addr v8, v9

    mul-float v7, v7, v8

    const v8, 0x3ee66666    # 0.45f

    mul-float v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v1, v3

    .line 6
    aget v7, v1, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v7, v5

    if-lez v5, :cond_30

    const/4 v4, 0x1

    .line 9
    :cond_30
    iget-object v5, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$e;->b:[F

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v3

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_3b
    if-eqz v4, :cond_9b

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sensorChanged "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ") diff("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    .line 21
    :cond_9b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 22
    iget-wide v7, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$e;->c:J

    sub-long v7, v3, v7

    const-wide/16 v9, 0x3e8

    cmp-long p1, v7, v9

    if-lez p1, :cond_f6

    const-wide/16 v7, 0x0

    .line 23
    iput-wide v7, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$e;->c:J

    .line 25
    aget p1, v1, v2

    .line 26
    aget v0, v1, v6

    .line 27
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v1, v1, v7

    if-lez v1, :cond_bd

    const/4 v1, 0x1

    goto :goto_be

    :cond_bd
    const/4 v1, 0x0

    .line 28
    :goto_be
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v8, v7

    if-lez v7, :cond_c7

    const/4 v2, 0x1

    :cond_c7
    if-nez v1, :cond_cb

    if-eqz v2, :cond_f6

    :cond_cb
    if-eqz v1, :cond_cf

    if-nez v2, :cond_f6

    :cond_cf
    const-string v2, "test"

    if-eqz v1, :cond_e3

    cmpg-float p1, p1, v5

    if-gez p1, :cond_dd

    const-string p1, "<<<<<<<< LEFT <<<<<<<<<<<<"

    .line 33
    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    :cond_dd
    const-string p1, ">>>>>>>>> RITE >>>>>>>>>>>"

    .line 35
    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    :cond_e3
    const/high16 p1, -0x40000000    # -2.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_ef

    const-string p1, "<<<<<<<< UP <<<<<<<<<<<<"

    .line 39
    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    :cond_ef
    const-string p1, ">>>>>>>>> DOWN >>>>>>>>>>>"

    .line 41
    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_f4
    iput-wide v3, p0, Lio/dcloud/feature/device/DeviceFeatureImpl$e;->c:J

    :cond_f6
    return-void
.end method
