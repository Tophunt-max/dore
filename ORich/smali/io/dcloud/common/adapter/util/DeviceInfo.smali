###### Class io.dcloud.common.adapter.util.DeviceInfo (io.dcloud.common.adapter.util.DeviceInfo)
.class public Lio/dcloud/common/adapter/util/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CDMA_DATA_NETWORK:Ljava/lang/String; = "cdma"

.field private static CONNECTION_CELL2G:Ljava/lang/String; = null

.field private static CONNECTION_CELL3G:Ljava/lang/String; = null

.field private static CONNECTION_CELL4G:Ljava/lang/String; = null

.field private static CONNECTION_CELL5G:Ljava/lang/String; = null

.field private static CONNECTION_ETHERNET:Ljava/lang/String; = null

.field private static CONNECTION_UNKNOW:Ljava/lang/String; = null

.field private static final DEFAULT_DATA_NETWORK:Ljava/lang/String; = "default_data_network"

.field public static DEFAULT_FONT_SIZE:F = 0.0f

.field public static DEVICESTATUS_JS:Ljava/lang/String; = null

.field public static final FILE_PROTOCOL:Ljava/lang/String; = "file://"

.field private static final GSM_DATA_NETWORK:Ljava/lang/String; = "gsm"

.field public static HARDWAREACCELERATED_VIEW:I = 0x0

.field public static HARDWAREACCELERATED_WINDOW:I = 0x0

.field public static final HTTPS_PROTOCOL:Ljava/lang/String; = "https://"

.field public static final HTTP_PROTOCOL:Ljava/lang/String; = "http://"

.field private static NETTYPE_NONE:Ljava/lang/String; = null

.field private static NETTYPE_WIFI:Ljava/lang/String; = null

.field private static final NONE_DATA_NETWORK:Ljava/lang/String; = "none"

.field public static final OSTYPE_ANDROID:I = 0x0

.field public static final OSTYPE_LEOS10:I = 0x4

.field public static final OSTYPE_OMS10:I = 0x3

.field public static final OSTYPE_OMS15:I = 0x2

.field public static final OSTYPE_OMS20:I = 0x1

.field private static final SAVED_DATA_NETWORK:Ljava/lang/String; = "saved_data_network"

.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field public static dpiX:F

.field public static dpiY:F

.field public static volatile isIMEShow:Z

.field public static isPrivateDirectory:Z

.field public static isVolumeButtonEnabled:Z

.field public static mAppAuthorities:Ljava/lang/String;

.field public static oaids:Ljava/lang/String;

.field public static osType:I

.field public static sApplicationContext:Landroid/content/Context;

.field public static sBaseFsCachePath:Ljava/lang/String;

.field public static sBaseFsRootFullPath:Ljava/lang/String;

.field public static sBaseFsRootPath:Ljava/lang/String;

.field public static sBaseResRootFullPath:Ljava/lang/String;

.field public static sBaseResRootPathName:Ljava/lang/String;

.field public static sBrand:Ljava/lang/String;

.field public static sCacheRootDir:Ljava/lang/String;

.field private static sCellLocation:Landroid/telephony/gsm/GsmCellLocation;

.field static sConnectMgr:Landroid/net/ConnectivityManager;

.field public static sCoreNums:I

.field public static sDeftDataNetwork:Ljava/lang/String;

.field public static sDensity:F

.field public static sDeviceRootDir:Ljava/lang/String;

.field public static sDeviceSdkVer:I

.field public static sIMEI:Ljava/lang/String;

.field public static sIMSI:Ljava/lang/String;

.field public static sInputMethodHeight:I

.field public static sLanguage:Ljava/lang/String;

.field public static sMAC:Ljava/lang/String;

.field public static sModel:Ljava/lang/String;

.field public static sNetWorkInited:Z

.field public static sPackageName:Ljava/lang/String;

.field public static sPaint:Landroid/graphics/Paint;

.field public static sPrivateDir:Ljava/lang/String;

.field public static sPrivateExternalDir:Ljava/lang/String;

.field public static sPublicDCIMDir:Ljava/lang/String;

.field public static sPublicDocumentsDir:Ljava/lang/String;

.field public static sPublicDownloadDir:Ljava/lang/String;

.field public static sPublicMoviesDir:Ljava/lang/String;

.field public static sPublicMusicDir:Ljava/lang/String;

.field public static sPublicPicturesDir:Ljava/lang/String;

.field public static sPublicRingtonesDir:Ljava/lang/String;

.field public static sSeparatorChar:C

.field public static sSimOperator:Ljava/lang/String;

.field public static sStatusBarHeight:I

.field public static sTotalMem:J

.field public static sVendor:Ljava/lang/String;

.field public static sVersion_release:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    .line 21
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sModel:Ljava/lang/String;

    .line 23
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBrand:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 25
    sput-wide v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sTotalMem:J

    const/4 v0, -0x1

    .line 26
    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sCoreNums:I

    .line 34
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sVendor:Ljava/lang/String;

    .line 36
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sVersion_release:Ljava/lang/String;

    .line 38
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sLanguage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sNetWorkInited:Z

    const/4 v1, 0x0

    .line 49
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sCellLocation:Landroid/telephony/gsm/GsmCellLocation;

    const-string v2, "gsm"

    .line 51
    sput-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeftDataNetwork:Ljava/lang/String;

    .line 53
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sSimOperator:Ljava/lang/String;

    .line 55
    sget-char v2, Ljava/io/File;->separatorChar:C

    sput-char v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    .line 58
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseResRootPathName:Ljava/lang/String;

    .line 60
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPackageName:Ljava/lang/String;

    .line 72
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->DEVICESTATUS_JS:Ljava/lang/String;

    .line 74
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sPaint:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    sput v2, Lio/dcloud/common/adapter/util/DeviceInfo;->DEFAULT_FONT_SIZE:F

    .line 83
    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->osType:I

    .line 87
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    .line 88
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sConnectMgr:Landroid/net/ConnectivityManager;

    .line 90
    sput-boolean v0, Lio/dcloud/common/adapter/util/DeviceInfo;->isPrivateDirectory:Z

    const/4 v2, 0x1

    .line 94
    sput-boolean v2, Lio/dcloud/common/adapter/util/DeviceInfo;->isVolumeButtonEnabled:Z

    .line 193
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateExternalDir:Ljava/lang/String;

    .line 195
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateDir:Ljava/lang/String;

    .line 199
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDocumentsDir:Ljava/lang/String;

    .line 201
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDCIMDir:Ljava/lang/String;

    .line 203
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDownloadDir:Ljava/lang/String;

    .line 205
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicMoviesDir:Ljava/lang/String;

    .line 207
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicMusicDir:Ljava/lang/String;

    .line 209
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicPicturesDir:Ljava/lang/String;

    .line 211
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicRingtonesDir:Ljava/lang/String;

    const-string v1, "0"

    .line 292
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_UNKNOW:Ljava/lang/String;

    const-string v1, "1"

    .line 293
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->NETTYPE_NONE:Ljava/lang/String;

    const-string v1, "2"

    .line 294
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_ETHERNET:Ljava/lang/String;

    const-string v1, "3"

    .line 295
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->NETTYPE_WIFI:Ljava/lang/String;

    const-string v1, "4"

    .line 296
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_CELL2G:Ljava/lang/String;

    const-string v1, "5"

    .line 297
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_CELL3G:Ljava/lang/String;

    const-string v1, "6"

    .line 298
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_CELL4G:Ljava/lang/String;

    const-string v1, "7"

    .line 299
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_CELL5G:Ljava/lang/String;

    .line 561
    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    .line 562
    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sInputMethodHeight:I

    .line 597
    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->HARDWAREACCELERATED_WINDOW:I

    .line 598
    sput v2, Lio/dcloud/common/adapter/util/DeviceInfo;->HARDWAREACCELERATED_VIEW:I

    .line 635
    sput-boolean v0, Lio/dcloud/common/adapter/util/DeviceInfo;->isIMEShow:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCoverLoadApp()Z
    .registers 7

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string v1, "last_app_modify_date"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "old_app_modify_date="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DeviceInfo"

    invoke-static {v5, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 8
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v4, v1, v6}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v1, "yyyyMMdd HH:mm:ss.SSS"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->generateTimeStamp(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new_app_modify_date="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_64

    :cond_63
    const/4 v1, 0x0

    .line 13
    :goto_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App Modify Date="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";_ret="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static closeHardwareAccelerated(Landroid/app/Activity;ILjava/lang/Object;)V
    .registers 5

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->HARDWAREACCELERATED_WINDOW:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_19

    .line 2
    check-cast p2, Landroid/view/Window;

    if-nez p2, :cond_10

    if-eqz p0, :cond_11

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    goto :goto_11

    :cond_10
    move-object v1, p2

    :cond_11
    :goto_11
    if-eqz v1, :cond_29

    const/high16 p0, 0x1000000

    .line 5
    invoke-virtual {v1, p0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_29

    .line 8
    :cond_19
    sget p0, Lio/dcloud/common/adapter/util/DeviceInfo;->HARDWAREACCELERATED_VIEW:I

    if-ne p1, p0, :cond_29

    .line 9
    sget p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 p1, 0xb

    if-lt p0, p1, :cond_29

    .line 10
    check-cast p2, Landroid/view/View;

    const/4 p0, 0x1

    invoke-virtual {p2, p0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public static getAvailMemory()J
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    const-string v1, "activity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 6
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0

    :cond_17
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getBuildValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_1f

    const-string v1, "get"

    const/4 v2, 0x1

    :try_start_9
    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 4
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    const/4 p0, 0x0

    :goto_20
    return-object p0
.end method

.method public static getCurrentAPN()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/NetworkTypeUtil;->getCurrentAPN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeivceSuitablePixel(Landroid/app/Activity;I)I
    .registers 3

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getDevicestatus_js(Lio/dcloud/common/DHInterface/IApp;)Ljava/lang/String;
    .registers 4

    const-string v0, "(function(p){p.device.imei=\'%s\';p.device.uuid=\'%s\';p.device.imsi=[\'%s\'];p.device.model=\'%s\';p.device.vendor=\'%s\';p.os.language=\'%s\';p.os.version=\'%s\';p.os.name=\'%s\';p.os.vendor=\'%s\';})(((window.__html5plus__&&__html5plus__.isReady)?__html5plus__:(navigator.plus&&navigator.plus.isReady)?navigator.plus:window.plus));"

    .line 1
    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->DEVICESTATUS_JS:Ljava/lang/String;

    .line 12
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/TelephonyUtil;->updateIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 13
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->DEVICESTATUS_JS:Ljava/lang/String;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    sget-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMSI:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object p0, v1, v2

    sget-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sModel:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object p0, v1, v2

    sget-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sVendor:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object p0, v1, v2

    sget-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sLanguage:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object p0, v1, v2

    sget-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sVersion_release:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object p0, v1, v2

    const/4 p0, 0x7

    const-string v2, "Android"

    aput-object v2, v1, p0

    const/16 p0, 0x8

    const-string v2, "Google"

    aput-object v2, v1, p0

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->DEVICESTATUS_JS:Ljava/lang/String;

    return-object p0
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/dcloud/common/util/TelephonyUtil;->getWifiData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sMAC:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :goto_b
    sget-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sMAC:Ljava/lang/String;

    return-object p0
.end method

.method public static getNetWorkType()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->NETTYPE_NONE:Ljava/lang/String;

    .line 2
    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sConnectMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_5a

    .line 4
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 5
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_UNKNOW:Ljava/lang/String;

    .line 6
    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sConnectMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 7
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->NETTYPE_WIFI:Ljava/lang/String;

    goto :goto_5a

    .line 8
    :cond_1e
    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sConnectMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_5a

    .line 9
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sConnectMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    .line 46
    :pswitch_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 47
    :pswitch_49
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_CELL5G:Ljava/lang/String;

    goto :goto_5a

    .line 48
    :pswitch_4c
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_CELL3G:Ljava/lang/String;

    goto :goto_5a

    .line 55
    :pswitch_4f
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_CELL4G:Ljava/lang/String;

    goto :goto_5a

    .line 56
    :pswitch_52
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_CELL3G:Ljava/lang/String;

    goto :goto_5a

    .line 61
    :pswitch_55
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_CELL3G:Ljava/lang/String;

    goto :goto_5a

    .line 62
    :pswitch_58
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->CONNECTION_CELL2G:Ljava/lang/String;

    :cond_5a
    :goto_5a
    return-object v0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_58
        :pswitch_58
        :pswitch_55
        :pswitch_58
        :pswitch_52
        :pswitch_52
        :pswitch_58
        :pswitch_55
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_52
        :pswitch_4f
        :pswitch_52
        :pswitch_4f
        :pswitch_37
        :pswitch_4c
        :pswitch_4c
        :pswitch_37
        :pswitch_49
    .end packed-switch
.end method

.method public static getNumCores()I
    .registers 2

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sCoreNums:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 16
    :cond_6
    :try_start_6
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v1, Lio/dcloud/common/adapter/util/DeviceInfo$1CpuFilter;

    invoke-direct {v1}, Lio/dcloud/common/adapter/util/DeviceInfo$1CpuFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 20
    array-length v1, v0

    sput v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sCoreNums:I

    .line 21
    array-length v0, v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    const/4 v0, 0x1

    return v0
.end method

.method public static getPlusCache()Ljava/lang/String;
    .registers 1

    const-string v0, "window.plus.cache = navigator.plus.cache = (function(mkey){return {clear : function(clearCB){var callbackid = mkey.helper.callbackid( function(args){if ( clearCB ) {clearCB()};}, null);mkey.exec(\'Cache\', \'clear\', [callbackId]);},calculate : function(calculateCB){var callbackid = mkey.helper.callbackid( function(args){if ( calculateCB ) {calculateCB(args)};}, null);mkey.exec(\'Cache\', \'calculate\', [callbackid]);},setMaxSize : function (size) {mkey.exec(\'Cache\', \'setMaxSize\', [size]);}};})(window.__Mkey__);"

    return-object v0
.end method

.method public static getStatusHeight(Landroid/content/Context;)I
    .registers 4

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3e

    const/16 v1, 0x1d

    const-string v2, "status_bar_height"

    if-lt v0, v1, :cond_1b

    .line 2
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "dimen"

    const-string v1, "android"

    .line 3
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_59

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_5a

    :cond_1b
    const-string v0, "com.android.internal.R$dimen"

    .line 8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3d} :catch_3e

    goto :goto_5a

    :catch_3e
    move-exception p0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStatusHeight --"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceInfo"

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    const/4 p0, -0x1

    :goto_5a
    return p0
.end method

.method public static getTotalMemory()J
    .registers 5

    .line 1
    sget-wide v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sTotalMem:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    return-wide v0

    :cond_9
    const-string v0, "/proc/meminfo"

    const-wide/16 v1, 0x0

    .line 8
    :try_start_d
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 18
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    .line 19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 20
    sput-wide v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sTotalMem:J
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_34} :catch_34

    :catch_34
    return-wide v1
.end method

.method public static getUpdateIMSI()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMSI:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    .line 2
    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMSI:Ljava/lang/String;

    .line 3
    :cond_e
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMSI:Ljava/lang/String;

    return-object v0
.end method

.method public static hideIME(Landroid/view/View;)V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_18

    const-string v1, "input_method"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_18

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_18

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_18
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    .line 2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sModel:Ljava/lang/String;

    const-string v1, "OMAP_SS"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 4
    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->osType:I

    goto :goto_2f

    .line 6
    :cond_14
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sModel:Ljava/lang/String;

    const-string v1, "OMS1_5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    .line 7
    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->osType:I

    goto :goto_2f

    .line 9
    :cond_22
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sModel:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x3

    .line 10
    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->osType:I

    .line 12
    :cond_2f
    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dc.fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->mAppAuthorities:Ljava/lang/String;

    .line 13
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBrand:Ljava/lang/String;

    .line 14
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sVendor:Ljava/lang/String;

    .line 15
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sLanguage:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 17
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDensity:F

    .line 18
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    sput v1, Lio/dcloud/common/adapter/util/DeviceInfo;->dpiX:F

    .line 19
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->dpiY:F

    const-string v0, "connectivity"

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sConnectMgr:Landroid/net/ConnectivityManager;

    .line 21
    invoke-static {p0}, Lio/dcloud/common/adapter/util/DeviceInfo;->getStatusHeight(Landroid/content/Context;)I

    move-result p0

    sput p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    return-void
.end method

.method public static initAppDir(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateExternalDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 5
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_32

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateExternalDir:Ljava/lang/String;

    goto :goto_38

    .line 9
    :cond_32
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateExternalDir:Ljava/lang/String;

    .line 11
    :goto_38
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateDir:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_42} :catch_42

    .line 16
    :catch_42
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDocumentsDir:Ljava/lang/String;

    .line 17
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDCIMDir:Ljava/lang/String;

    .line 18
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicDownloadDir:Ljava/lang/String;

    .line 19
    sget-object p0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicMoviesDir:Ljava/lang/String;

    .line 20
    sget-object p0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicMusicDir:Ljava/lang/String;

    .line 21
    sget-object p0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicPicturesDir:Ljava/lang/String;

    .line 22
    sget-object p0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPublicRingtonesDir:Ljava/lang/String;

    return-void
.end method

.method public static initBaseFsRootPath()V
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->initPath(Landroid/content/Context;)V

    return-void
.end method

.method public static initGsmCdmaCell()V
    .registers 5

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sNetWorkInited:Z

    if-nez v0, :cond_6b

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_data_network"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeftDataNetwork:Ljava/lang/String;

    const-string v1, "gsm"

    if-nez v0, :cond_18

    .line 4
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeftDataNetwork:Ljava/lang/String;

    .line 6
    :cond_18
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeftDataNetwork:Ljava/lang/String;

    const-string v2, "DefaultDataNetwork\uff1a"

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    .line 9
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/dcloud/common/util/TelephonyUtil;->getIMEI(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMEI:Ljava/lang/String;

    .line 10
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lio/dcloud/common/util/TelephonyUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMSI:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sSimOperator:Ljava/lang/String;

    .line 12
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeftDataNetwork:Ljava/lang/String;

    const-string v4, "none"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5b

    .line 13
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeftDataNetwork:Ljava/lang/String;

    if-ne v2, v4, :cond_5b

    .line 15
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sCellLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 19
    :cond_5b
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMEI:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_63

    .line 20
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMEI:Ljava/lang/String;

    .line 22
    :cond_63
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMSI:Ljava/lang/String;

    if-nez v0, :cond_69

    .line 23
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMSI:Ljava/lang/String;

    .line 25
    :cond_69
    sput-boolean v4, Lio/dcloud/common/adapter/util/DeviceInfo;->sNetWorkInited:Z

    :cond_6b
    return-void
.end method

.method public static initPath(Landroid/content/Context;)V
    .registers 7

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/AndroidResources;->initAndroidResources(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPackageName:Ljava/lang/String;

    .line 4
    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    if-eqz v1, :cond_14

    return-void

    :cond_14
    const-string v1, "io.dcloud.HBuilder"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    .line 7
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->isSDcardExists()Z

    move-result v2

    .line 8
    sget-boolean v3, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2f

    invoke-static {}, Lio/dcloud/common/adapter/io/DHFile;->hasFile()Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v3, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v3, 0x1

    :goto_30
    if-eqz v0, :cond_33

    const/4 v3, 0x1

    .line 15
    :cond_33
    invoke-static {p0}, Lio/dcloud/common/adapter/util/DeviceInfo;->initAppDir(Landroid/content/Context;)V

    .line 16
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    if-eqz v2, :cond_ad

    if-nez v0, :cond_69

    .line 20
    :try_start_3c
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_3f

    .line 23
    :catch_3f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_69
    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    if-eqz v3, :cond_74

    .line 28
    sget-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sCacheRootDir:Ljava/lang/String;

    .line 29
    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsCachePath:Ljava/lang/String;

    goto :goto_e3

    .line 31
    :cond_74
    sput-boolean v5, Lio/dcloud/common/adapter/util/DeviceInfo;->isPrivateDirectory:Z

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sCacheRootDir:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsCachePath:Ljava/lang/String;

    goto :goto_e3

    .line 36
    :cond_ad
    sput-boolean v4, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    .line 38
    sput-boolean v5, Lio/dcloud/common/adapter/util/DeviceInfo;->isPrivateDirectory:Z

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    .line 40
    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sCacheRootDir:Ljava/lang/String;

    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsCachePath:Ljava/lang/String;

    .line 43
    :goto_e3
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->updatePath()V

    return-void
.end method

.method private static intToIp(I)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isOMS()Z
    .registers 3

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->osType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_e
    :goto_e
    return v1
.end method

.method public static isSDcardExists()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isStreamMode()Z
    .registers 3

    :try_start_0
    const-string v0, "io.dcloud.appstream.StreamAppMainActivity"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e.getMessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceInfo"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static openHardwareAccelerated(Landroid/app/Activity;ILjava/lang/Object;)V
    .registers 5

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->HARDWAREACCELERATED_WINDOW:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_19

    .line 2
    check-cast p2, Landroid/view/Window;

    if-nez p2, :cond_10

    if-eqz p0, :cond_11

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    goto :goto_11

    :cond_10
    move-object v1, p2

    :cond_11
    :goto_11
    if-eqz v1, :cond_29

    const/high16 p0, 0x1000000

    .line 5
    invoke-virtual {v1, p0, p0}, Landroid/view/Window;->setFlags(II)V

    goto :goto_29

    .line 10
    :cond_19
    sget p0, Lio/dcloud/common/adapter/util/DeviceInfo;->HARDWAREACCELERATED_VIEW:I

    if-ne p1, p0, :cond_29

    .line 11
    sget p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 p1, 0xb

    if-lt p0, p1, :cond_29

    .line 12
    check-cast p2, Landroid/view/View;

    const/4 p0, 0x2

    invoke-virtual {p2, p0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public static showIME(Landroid/view/View;)V
    .registers 5

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_29

    if-eqz p0, :cond_1a

    .line 2
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_1a

    .line 3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 4
    new-instance v1, Lio/dcloud/common/adapter/util/DeviceInfo$1;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/util/DeviceInfo$1;-><init>(Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_29

    .line 13
    :cond_1a
    new-instance p0, Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 14
    new-instance v0, Lio/dcloud/common/adapter/util/DeviceInfo$2;

    invoke-direct {v0}, Lio/dcloud/common/adapter/util/DeviceInfo$2;-><init>()V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_29
    :goto_29
    return-void
.end method

.method public static startsWithSdcard(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "/sdcard/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "mnt/sdcard/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sCacheRootDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method public static updateIMEI()V
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->updateIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sIMEI:Ljava/lang/String;

    return-void
.end method

.method public static updatePath()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootFullPath:Ljava/lang/String;

    const-string v0, "file:///android_asset/"

    .line 2
    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseResRootFullPath:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sDeviceRootDir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sBaseFsRootPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sBaseFsRootFullPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootFullPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sBaseResRootFullPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseResRootFullPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceInfo"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->updateBaseInfo()V

    return-void
.end method

.method public static updateStatusBarHeight(Landroid/app/Activity;)V
    .registers 3

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    if-nez v0, :cond_20

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    iget v0, v0, Landroid/graphics/Rect;->top:I

    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    if-gtz v0, :cond_20

    .line 6
    invoke-static {p0}, Lio/dcloud/common/adapter/util/DeviceInfo;->getStatusHeight(Landroid/content/Context;)I

    move-result p0

    sput p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    :cond_20
    return-void
.end method

###### Class io.dcloud.common.adapter.util.DeviceInfo.AnonymousClass1 (io.dcloud.common.adapter.util.DeviceInfo$1)
.class final Lio/dcloud/common/adapter/util/DeviceInfo$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/DeviceInfo;->showIME(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/DeviceInfo$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/DeviceInfo$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    iget-object v1, p0, Lio/dcloud/common/adapter/util/DeviceInfo$1;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_14
    return-void
.end method

###### Class io.dcloud.common.adapter.util.DeviceInfo.C1CpuFilter (io.dcloud.common.adapter.util.DeviceInfo$1CpuFilter)
.class Lio/dcloud/common/adapter/util/DeviceInfo$1CpuFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/DeviceInfo;->getNumCores()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CpuFilter"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cpu[0-9]"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.adapter.util.DeviceInfo.AnonymousClass2 (io.dcloud.common.adapter.util.DeviceInfo$2)
.class final Lio/dcloud/common/adapter/util/DeviceInfo$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/DeviceInfo;->showIME(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/DeviceInfo;->isIMEShow:Z

    if-nez v0, :cond_15

    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    const-string v1, "input_method"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_15
    return-void
.end method
