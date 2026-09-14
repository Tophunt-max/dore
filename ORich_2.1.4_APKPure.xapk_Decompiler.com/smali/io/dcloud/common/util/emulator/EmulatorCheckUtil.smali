###### Class io.dcloud.common.util.emulator.EmulatorCheckUtil (io.dcloud.common.util.emulator.EmulatorCheckUtil)
.class public Lio/dcloud/common/util/emulator/EmulatorCheckUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/emulator/EmulatorCheckUtil$SingletonHolder;
    }
.end annotation


# static fields
.field public static final RESULT_EMULATOR:I = 0x1

.field public static final RESULT_MAYBE_EMULATOR:I = 0x0

.field public static final RESULT_UNKNOWN:I = 0x2

.field private static known_pkgNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "sdcard/Android/data/com.bluestacks.home"

    const-string v1, "sdcard/Android/data/com.bluestacks.settings"

    const-string v2, "sdcard/Android/data/com.microvirt.guide"

    const-string v3, "sdcard/Android/data/com.microvirt.launcher2"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->known_pkgNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/common/util/emulator/EmulatorCheckUtil$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;-><init>()V

    return-void
.end method

.method private checkFeaturesByBaseBand()Lio/dcloud/common/util/emulator/CheckResult;
    .registers 4

    const-string v0, "gsm.version.baseband"

    .line 1
    invoke-direct {p0, v0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Lio/dcloud/common/util/emulator/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_10
    const-string v1, "1.0.0.0"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x2

    .line 6
    :goto_1b
    new-instance v2, Lio/dcloud/common/util/emulator/CheckResult;

    invoke-direct {v2, v1, v0}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private checkFeaturesByBoard()Lio/dcloud/common/util/emulator/CheckResult;
    .registers 4

    const-string v0, "ro.product.board"

    .line 1
    invoke-direct {p0, v0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Lio/dcloud/common/util/emulator/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 4
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_25

    :cond_1d
    const-string v2, "goldfish"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    :goto_25
    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x2

    .line 8
    :goto_28
    new-instance v2, Lio/dcloud/common/util/emulator/CheckResult;

    invoke-direct {v2, v1, v0}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private checkFeaturesByFlavor()Lio/dcloud/common/util/emulator/CheckResult;
    .registers 4

    const-string v0, "ro.build.flavor"

    .line 1
    invoke-direct {p0, v0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Lio/dcloud/common/util/emulator/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 4
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vbox"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_25

    :cond_1d
    const-string v2, "sdk_gphone"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    :goto_25
    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x2

    .line 8
    :goto_28
    new-instance v2, Lio/dcloud/common/util/emulator/CheckResult;

    invoke-direct {v2, v1, v0}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private checkFeaturesByHardware()Lio/dcloud/common/util/emulator/CheckResult;
    .registers 8

    const-string v0, "ro.hardware"

    .line 1
    invoke-direct {p0, v0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Lio/dcloud/common/util/emulator/CheckResult;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 4
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_7c

    :goto_24
    const/4 v1, -0x1

    goto :goto_71

    :sswitch_26
    const-string v1, "android_x86"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_24

    :cond_2f
    const/4 v1, 0x6

    goto :goto_71

    :sswitch_31
    const-string v1, "intel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_24

    :cond_3a
    const/4 v1, 0x5

    goto :goto_71

    :sswitch_3c
    const-string v1, "vbox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_24

    :cond_45
    const/4 v1, 0x4

    goto :goto_71

    :sswitch_47
    const-string v1, "ttvm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    goto :goto_24

    :cond_50
    const/4 v1, 0x3

    goto :goto_71

    :sswitch_52
    const-string v1, "nox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_24

    :cond_5b
    const/4 v1, 0x2

    goto :goto_71

    :sswitch_5d
    const-string v1, "vbox86"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    goto :goto_24

    :cond_66
    const/4 v1, 0x1

    goto :goto_71

    :sswitch_68
    const-string v4, "cancro"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    goto :goto_24

    :cond_71
    :goto_71
    packed-switch v1, :pswitch_data_9a

    goto :goto_76

    :pswitch_75
    const/4 v5, 0x1

    .line 19
    :goto_76
    new-instance v1, Lio/dcloud/common/util/emulator/CheckResult;

    invoke-direct {v1, v5, v0}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1

    :sswitch_data_7c
    .sparse-switch
        -0x5185cff0 -> :sswitch_68
        -0x310ae8ad -> :sswitch_5d
        0x1aad7 -> :sswitch_52
        0x367d37 -> :sswitch_47
        0x372195 -> :sswitch_3c
        0x5fb64d6 -> :sswitch_31
        0x37e65fa6 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
    .end packed-switch
.end method

.method private checkFeaturesByManufacturer()Lio/dcloud/common/util/emulator/CheckResult;
    .registers 4

    const-string v0, "ro.product.manufacturer"

    .line 1
    invoke-direct {p0, v0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Lio/dcloud/common/util/emulator/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 4
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "genymotion"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_25

    :cond_1d
    const-string v2, "netease"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    :goto_25
    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x2

    .line 8
    :goto_28
    new-instance v2, Lio/dcloud/common/util/emulator/CheckResult;

    invoke-direct {v2, v1, v0}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private checkFeaturesByModel()Lio/dcloud/common/util/emulator/CheckResult;
    .registers 4

    const-string v0, "ro.product.model"

    .line 1
    invoke-direct {p0, v0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Lio/dcloud/common/util/emulator/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 4
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_sdk"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_2e

    :cond_1d
    const-string v2, "emulator"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_2e

    :cond_26
    const-string v2, "android sdk built for x86"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    :goto_2e
    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x2

    .line 9
    :goto_31
    new-instance v2, Lio/dcloud/common/util/emulator/CheckResult;

    invoke-direct {v2, v1, v0}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private checkFeaturesByPlatform()Lio/dcloud/common/util/emulator/CheckResult;
    .registers 4

    const-string v0, "ro.board.platform"

    .line 1
    invoke-direct {p0, v0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Lio/dcloud/common/util/emulator/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 4
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x2

    .line 7
    :goto_1f
    new-instance v2, Lio/dcloud/common/util/emulator/CheckResult;

    invoke-direct {v2, v1, v0}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public static checkPkgNameForEmulator()Lio/dcloud/common/util/emulator/CheckResult;
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 1
    :goto_5
    sget-object v5, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->known_pkgNames:[Ljava/lang/String;

    array-length v6, v5

    if-ge v2, v6, :cond_21

    .line 2
    aget-object v5, v5, v2

    .line 3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1a

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    if-le v3, v0, :cond_1e

    goto :goto_21

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_21
    :goto_21
    const/4 v2, 0x1

    if-eq v3, v2, :cond_29

    if-eq v3, v0, :cond_28

    move v1, v4

    goto :goto_29

    :cond_28
    const/4 v1, 0x1

    .line 23
    :cond_29
    :goto_29
    new-instance v0, Lio/dcloud/common/util/emulator/CheckResult;

    const-string v2, "PkgName"

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/emulator/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/util/emulator/CommandUtil;->getSingleInstance()Lio/dcloud/common/util/emulator/CommandUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/common/util/emulator/CommandUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p1, 0x0

    :cond_f
    return-object p1
.end method

.method private getSensorNumber(Landroid/content/Context;)I
    .registers 3

    const-string v0, "sensor"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public static final getSingleInstance()Lio/dcloud/common/util/emulator/EmulatorCheckUtil;
    .registers 1

    .line 1
    invoke-static {}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil$SingletonHolder;->access$100()Lio/dcloud/common/util/emulator/EmulatorCheckUtil;

    move-result-object v0

    return-object v0
.end method

.method private getUserAppNum(Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const-string v0, "package:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length p1, p1

    return p1
.end method

.method private hasLightSensor(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "sensor"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_11

    const/4 p1, 0x0

    return p1

    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method private supportBluetooth(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private supportCameraFlash(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.camera.flash"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public emulatorCheck(Landroid/content/Context;)Z
    .registers 7

    if-eqz p1, :cond_9a

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->checkFeaturesByHardware()Lio/dcloud/common/util/emulator/CheckResult;

    move-result-object v0

    .line 2
    iget v0, v0, Lio/dcloud/common/util/emulator/CheckResult;->result:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    if-eq v0, v2, :cond_10

    const/4 v0, 0x0

    goto :goto_12

    :cond_10
    return v2

    :cond_11
    const/4 v0, 0x1

    .line 11
    :goto_12
    invoke-static {}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->checkPkgNameForEmulator()Lio/dcloud/common/util/emulator/CheckResult;

    move-result-object v3

    .line 12
    iget v3, v3, Lio/dcloud/common/util/emulator/CheckResult;->result:I

    if-eqz v3, :cond_1e

    if-eq v3, v2, :cond_1d

    goto :goto_20

    :cond_1d
    return v2

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    .line 21
    :goto_20
    invoke-direct {p0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->checkFeaturesByFlavor()Lio/dcloud/common/util/emulator/CheckResult;

    move-result-object v3

    .line 22
    iget v3, v3, Lio/dcloud/common/util/emulator/CheckResult;->result:I

    if-eqz v3, :cond_2c

    if-eq v3, v2, :cond_2b

    goto :goto_2e

    :cond_2b
    return v2

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    .line 31
    :goto_2e
    invoke-direct {p0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->checkFeaturesByModel()Lio/dcloud/common/util/emulator/CheckResult;

    move-result-object v3

    .line 32
    iget v3, v3, Lio/dcloud/common/util/emulator/CheckResult;->result:I

    if-eqz v3, :cond_3a

    if-eq v3, v2, :cond_39

    goto :goto_3c

    :cond_39
    return v2

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    .line 41
    :goto_3c
    invoke-direct {p0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->checkFeaturesByManufacturer()Lio/dcloud/common/util/emulator/CheckResult;

    move-result-object v3

    .line 42
    iget v3, v3, Lio/dcloud/common/util/emulator/CheckResult;->result:I

    if-eqz v3, :cond_48

    if-eq v3, v2, :cond_47

    goto :goto_4a

    :cond_47
    return v2

    :cond_48
    add-int/lit8 v0, v0, 0x1

    .line 51
    :goto_4a
    invoke-direct {p0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->checkFeaturesByBoard()Lio/dcloud/common/util/emulator/CheckResult;

    move-result-object v3

    .line 52
    iget v3, v3, Lio/dcloud/common/util/emulator/CheckResult;->result:I

    if-eqz v3, :cond_56

    if-eq v3, v2, :cond_55

    goto :goto_58

    :cond_55
    return v2

    :cond_56
    add-int/lit8 v0, v0, 0x1

    .line 61
    :goto_58
    invoke-direct {p0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->checkFeaturesByPlatform()Lio/dcloud/common/util/emulator/CheckResult;

    move-result-object v3

    .line 62
    iget v3, v3, Lio/dcloud/common/util/emulator/CheckResult;->result:I

    if-eqz v3, :cond_64

    if-eq v3, v2, :cond_63

    goto :goto_66

    :cond_63
    return v2

    :cond_64
    add-int/lit8 v0, v0, 0x1

    .line 71
    :goto_66
    invoke-direct {p0}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->checkFeaturesByBaseBand()Lio/dcloud/common/util/emulator/CheckResult;

    move-result-object v3

    .line 72
    iget v3, v3, Lio/dcloud/common/util/emulator/CheckResult;->result:I

    if-eqz v3, :cond_72

    if-eq v3, v2, :cond_71

    goto :goto_74

    :cond_71
    return v2

    :cond_72
    add-int/lit8 v0, v0, 0x2

    .line 81
    :goto_74
    invoke-direct {p0, p1}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->getSensorNumber(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x7

    if-gt v3, v4, :cond_7d

    add-int/lit8 v0, v0, 0x1

    .line 89
    :cond_7d
    invoke-direct {p0, p1}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->supportCameraFlash(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_85

    add-int/lit8 v0, v0, 0x1

    .line 93
    :cond_85
    invoke-direct {p0, p1}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->supportBluetooth(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8d

    add-int/lit8 v0, v0, 0x1

    .line 97
    :cond_8d
    invoke-direct {p0, p1}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;->hasLightSensor(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_95

    add-int/lit8 v0, v0, 0x1

    :cond_95
    const/4 p1, 0x3

    if-le v0, p1, :cond_99

    const/4 v1, 0x1

    :cond_99
    return v1

    .line 98
    :cond_9a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.dcloud.common.util.emulator.EmulatorCheckUtil.AnonymousClass1 (io.dcloud.common.util.emulator.EmulatorCheckUtil$1)
.class synthetic Lio/dcloud/common/util/emulator/EmulatorCheckUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/emulator/EmulatorCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.common.util.emulator.EmulatorCheckUtil.SingletonHolder (io.dcloud.common.util.emulator.EmulatorCheckUtil$SingletonHolder)
.class Lio/dcloud/common/util/emulator/EmulatorCheckUtil$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/emulator/EmulatorCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lio/dcloud/common/util/emulator/EmulatorCheckUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/common/util/emulator/EmulatorCheckUtil;-><init>(Lio/dcloud/common/util/emulator/EmulatorCheckUtil$1;)V

    sput-object v0, Lio/dcloud/common/util/emulator/EmulatorCheckUtil$SingletonHolder;->INSTANCE:Lio/dcloud/common/util/emulator/EmulatorCheckUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lio/dcloud/common/util/emulator/EmulatorCheckUtil;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/emulator/EmulatorCheckUtil$SingletonHolder;->INSTANCE:Lio/dcloud/common/util/emulator/EmulatorCheckUtil;

    return-object v0
.end method
