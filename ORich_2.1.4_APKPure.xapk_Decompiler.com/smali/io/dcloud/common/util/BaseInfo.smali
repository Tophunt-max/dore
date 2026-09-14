###### Class io.dcloud.common.util.BaseInfo (io.dcloud.common.util.BaseInfo)
.class public final Lio/dcloud/common/util/BaseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/BaseInfo$CmtInfo;,
        Lio/dcloud/common/util/BaseInfo$AppIsTestWrapper;,
        Lio/dcloud/common/util/BaseInfo$BaseAppInfo;
    }
.end annotation


# static fields
.field private static APPS_NAME:Ljava/lang/String; = null

.field public static APP_DB_DATA:Ljava/lang/String; = null

.field public static APP_JSDATA:Ljava/lang/String; = null

.field public static APP_WEB_CHACHE:Ljava/lang/String; = null

.field public static APP_WWW_FS_DIR:Ljava/lang/String; = null

.field public static AuxiliaryInput:Z = false

.field private static final DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

.field public static ISAMU:Z = false

.field public static ISDEBUG:Z = false

.field public static PDR:Ljava/lang/String; = null

.field public static REAL_PRIVATE_DOC_DIR:Ljava/lang/String; = null

.field public static REAL_PRIVATE_WWW_DIR:Ljava/lang/String; = null

.field public static REAL_PUBLIC_DOCUMENTS_DIR:Ljava/lang/String; = null

.field public static REAL_PUBLIC_DOWNLOADS_DIR:Ljava/lang/String; = null

.field public static final REL_PRIVATE_DOC_DIR:Ljava/lang/String; = "_doc"

.field public static final REL_PRIVATE_WWW_DIR:Ljava/lang/String; = "_www"

.field public static final REL_PUBLIC_DOCUMENTS_DIR:Ljava/lang/String; = "_documents"

.field public static final REL_PUBLIC_DOWNLOADS_DIR:Ljava/lang/String; = "_downloads"

.field private static SITMAP:Ljava/lang/String; = null

.field public static STKEY:Ljava/lang/String; = null

.field public static SyncDebug:Z = false

.field public static USE_ACTIVITY_HANDLE_KEYEVENT:Z = false

.field public static WGTU_UPDATE_XML:Ljava/lang/String; = null

.field public static injectionGeolocationJS:Z = false

.field public static isDefaultAim:Z = false

.field public static isDefense:Z = false

.field public static isFirstRun:Z = false

.field public static isImmersive:Z = false

.field public static final isOnlinePackage:Z = true

.field public static isPostChcekShortCut:Z = false

.field public static isUniStatistics:Z = false

.field public static lia:Ljava/lang/String; = null

.field public static mBaseAppInfoSet:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/util/BaseInfo$BaseAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mDeStatusBarBackground:I = -0x1b207

.field public static mInstalledAppInfoSet:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/util/BaseInfo$BaseAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mLaunchers:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/util/BaseInfo$CmtInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mUnInstalledAppInfoSet:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/util/BaseInfo$BaseAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mW2AE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public static mWap2appTemplateFiles:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static run5appEndTime:J = 0x0L

.field public static sAnimationCaptureB:Z = true

.field public static sAnimationCaptureC:Z = true

.field public static sBaseConfigTemplatePath:Ljava/lang/String; = null

.field public static sBaseControlPath:Ljava/lang/String; = null

.field public static sBaseFsAppsPath:Ljava/lang/String; = null

.field public static sBaseFsSitMapPath:Ljava/lang/String; = null

.field public static sBaseNotificationPath:Ljava/lang/String; = null

.field public static sBaseResAppsFullPath:Ljava/lang/String; = null

.field public static sBaseResAppsPath:Ljava/lang/String; = null

.field public static final sBaseVersion:Ljava/lang/String; = "1.9.9.81128"

.field public static sBaseWap2AppFilePath:Ljava/lang/String; = null

.field public static sBaseWap2AppTemplatePath:Ljava/lang/String; = null

.field public static sCacheFsAppsPath:Ljava/lang/String; = null

.field public static sChannel:Ljava/lang/String; = ""

.field public static sConfigXML:Ljava/lang/String; = null

.field public static sCoverApkRuning:Z = false

.field public static sCurrentAppOriginalAppid:Ljava/lang/String; = null

.field public static sDefWebViewUserAgent:Ljava/lang/String; = ""

.field public static sDefaultBootApp:Ljava/lang/String; = null

.field public static sDocumentFullPath:Ljava/lang/String; = null

.field public static sDoingAnimation:Z = false

.field public static sDownloadFullPath:Ljava/lang/String; = null

.field public static sFontScale:Ljava/lang/String; = "none"

.field public static sFontScaleFloat:F = 1.0f

.field public static sFullScreenChanged:Z = false

.field public static sGlobalAuthority:Ljava/lang/String; = null

.field public static sGlobalFullScreen:Z = false

.field public static sGlobalUserAgent:Ljava/lang/String; = null

.field public static sLastRunApp:Ljava/lang/String; = null

.field public static sOpenedCount:I = 0x0

.field private static sParsedControl:Z = false

.field public static sProcessId:J = 0x0L

.field public static sRunningApp:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sRuntimeJsPath:Ljava/lang/String; = null

.field public static sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode; = null

.field public static sSplashExitCondition:Ljava/lang/String; = null

.field public static sSupportAddByHand:Z = false

.field public static sTemplateModifyTime:J = 0x0L

.field public static sTimeOutCount:I = 0x0

.field public static sTimeOutMax:I = 0x3

.field public static sTimeoutCapture:I = 0x15e

.field public static sURDFilePath:Ljava/lang/String;

.field public static sUniNViewServiceJsPath:Ljava/lang/String;

.field public static sWap2AppTemplateVersion:Ljava/lang/String;

.field public static s_Is_DCloud_Packaged:Z

.field public static s_Runing_App_Count:I

.field public static s_Runing_App_Count_Max:I

.field public static s_Runing_App_Count_Trim:I

.field public static s_Webview_Count:I

.field public static s_properties:Ljava/lang/String;

.field public static splashCloseTime:J

.field public static splashCreateTime:J

.field public static startTime:J

.field public static uniVersionV3:Ljava/lang/String;

.field public static untrustedca:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->mLaunchers:Ljava/util/HashMap;

    const-string v0, "loaded"

    .line 5
    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sSplashExitCondition:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseResRootPathName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data/dcloud_control.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseControlPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 19
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 20
    sput-wide v2, Lio/dcloud/common/util/BaseInfo;->sTemplateModifyTime:J

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    .line 25
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lio/dcloud/common/util/BaseInfo;->mW2AE:Ljava/util/HashMap;

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseResRootPathName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "data/wap2app/__template.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lio/dcloud/common/util/BaseInfo;->sBaseConfigTemplatePath:Ljava/lang/String;

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseResRootPathName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "data/wap2app/__wap2app.js"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppFilePath:Ljava/lang/String;

    const-string v4, "io/dcloud/all.js"

    .line 28
    sput-object v4, Lio/dcloud/common/util/BaseInfo;->sRuntimeJsPath:Ljava/lang/String;

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseResRootPathName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "data/dcloud3.dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lio/dcloud/common/util/BaseInfo;->sUniNViewServiceJsPath:Ljava/lang/String;

    .line 36
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sURDFilePath:Ljava/lang/String;

    .line 40
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    .line 44
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    .line 49
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->AuxiliaryInput:Z

    .line 53
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    const/16 v6, 0x13

    if-ge v4, v6, :cond_8c

    const/4 v6, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v6, 0x0

    :goto_8d
    or-int/2addr v6, v5

    sput-boolean v6, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    .line 57
    sput-boolean v5, Lio/dcloud/common/util/BaseInfo;->sSupportAddByHand:Z

    .line 61
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const-string v6, "pdr"

    .line 62
    sput-object v6, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string v6, "update.xml"

    .line 68
    sput-object v6, Lio/dcloud/common/util/BaseInfo;->WGTU_UPDATE_XML:Ljava/lang/String;

    const-string v6, "webcache/"

    .line 69
    sput-object v6, Lio/dcloud/common/util/BaseInfo;->APP_WEB_CHACHE:Ljava/lang/String;

    const-string v6, "jsdata/"

    .line 70
    sput-object v6, Lio/dcloud/common/util/BaseInfo;->APP_JSDATA:Ljava/lang/String;

    const-string v6, "dbdata/"

    .line 71
    sput-object v6, Lio/dcloud/common/util/BaseInfo;->APP_DB_DATA:Ljava/lang/String;

    const-string v6, "apps/"

    .line 75
    sput-object v6, Lio/dcloud/common/util/BaseInfo;->APPS_NAME:Ljava/lang/String;

    const-string v6, "sitemap/"

    .line 80
    sput-object v6, Lio/dcloud/common/util/BaseInfo;->SITMAP:Ljava/lang/String;

    .line 106
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISAMU:Z

    .line 110
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->s_Is_DCloud_Packaged:Z

    const-string v6, ""

    .line 112
    sput-object v6, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;

    .line 114
    sput v0, Lio/dcloud/common/util/BaseInfo;->s_Webview_Count:I

    .line 115
    sput v0, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count:I

    const/4 v7, 0x3

    .line 116
    sput v7, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count_Max:I

    .line 117
    sput v0, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count_Trim:I

    .line 118
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sRunningApp:Ljava/util/ArrayList;

    .line 122
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsFullPath:Ljava/lang/String;

    .line 127
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    .line 132
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    .line 137
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    .line 142
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseFsSitMapPath:Ljava/lang/String;

    .line 147
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    .line 152
    sput-object v6, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    .line 157
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sCoverApkRuning:Z

    const-string v7, "/data/dcloud_properties.xml"

    .line 162
    sput-object v7, Lio/dcloud/common/util/BaseInfo;->s_properties:Ljava/lang/String;

    const-string v7, "manifest.json"

    .line 164
    sput-object v7, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    const-string v7, "www/"

    .line 169
    sput-object v7, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    .line 186
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseNotificationPath:Ljava/lang/String;

    .line 195
    sput-object v7, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    const-string v1, "doc/"

    .line 199
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_DOC_DIR:Ljava/lang/String;

    const-string v1, "documents/"

    .line 203
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOCUMENTS_DIR:Ljava/lang/String;

    const-string v1, "downloads/"

    .line 207
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOWNLOADS_DIR:Ljava/lang/String;

    const/16 v1, 0x15

    if-lt v4, v1, :cond_f4

    goto :goto_f5

    :cond_f4
    const/4 v5, 0x0

    .line 212
    :goto_f5
    sput-boolean v5, Lio/dcloud/common/util/BaseInfo;->isDefaultAim:Z

    .line 216
    sput-wide v2, Lio/dcloud/common/util/BaseInfo;->run5appEndTime:J

    .line 221
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->isUniStatistics:Z

    const-string v1, "accept"

    .line 225
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->untrustedca:Ljava/lang/String;

    .line 230
    sput-object v6, Lio/dcloud/common/util/BaseInfo;->lia:Ljava/lang/String;

    .line 345
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sParsedControl:Z

    const-string v1, "2aSGNEUriKrg4cDH"

    .line 351
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->STKEY:Ljava/lang/String;

    .line 587
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lio/dcloud/common/util/BaseInfo;->mUnInstalledAppInfoSet:Ljava/util/HashMap;

    .line 592
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lio/dcloud/common/util/BaseInfo;->mInstalledAppInfoSet:Ljava/util/HashMap;

    .line 596
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lio/dcloud/common/util/BaseInfo;->mBaseAppInfoSet:Ljava/util/HashMap;

    .line 862
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    const-string v2, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v1, Lio/dcloud/common/util/BaseInfo;->DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

    .line 1103
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->isImmersive:Z

    .line 1105
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->injectionGeolocationJS:Z

    .line 1107
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->isFirstRun:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->installAppMapToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkAppIsTest(Ljava/lang/String;)Z
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/.test"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static checkOrResetTemplate(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 11

    const-string v0, "__w2a__template__"

    const-string v1, "confusion"

    const-string v2, "files"

    .line 1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "wap2app__template/__template.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 3
    sget-wide v6, Lio/dcloud/common/util/BaseInfo;->sTemplateModifyTime:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_ea

    .line 5
    :try_start_28
    sget-object v6, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 6
    sget-object v6, Lio/dcloud/common/util/BaseInfo;->mW2AE:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_32} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_e1

    const/4 v6, 0x0

    .line 10
    :try_start_33
    new-instance v7, Lio/dcloud/common/adapter/io/UnicodeInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v8, v3}, Lio/dcloud/common/adapter/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 11
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 12
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    .line 13
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_53} :catch_55

    move-object v6, v3

    goto :goto_59

    :catch_55
    move-exception v3

    .line 15
    :try_start_56
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_59
    const/4 v3, 0x0

    if-eqz v6, :cond_78

    .line 17
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 18
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_6a
    if-ge v3, v7, :cond_a3

    .line 21
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 22
    sget-object v9, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 25
    :cond_78
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "wap2app__template/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 28
    :goto_96
    array-length v7, v2

    if-ge v3, v7, :cond_a3

    .line 29
    sget-object v7, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    aget-object v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_96

    .line 33
    :cond_a3
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 34
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 36
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v2

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lio/dcloud/common/DHInterface/IConfusionMgr;->handleEncryption(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_c1} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_c1} :catch_e1

    if-eqz v2, :cond_c5

    const-string v1, "{}"

    .line 40
    :cond_c5
    :try_start_c5
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/dcloud/common/DHInterface/IConfusionMgr;->removeData(Ljava/lang/String;)V

    .line 41
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object p0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0, v2}, Lio/dcloud/common/DHInterface/IConfusionMgr;->recordEncryptionResources(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_d8
    const-string p0, "version"

    .line 43
    invoke-virtual {v6, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/util/BaseInfo;->sWap2AppTemplateVersion:Ljava/lang/String;
    :try_end_e0
    .catch Lorg/json/JSONException; {:try_start_c5 .. :try_end_e0} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_e0} :catch_e1

    goto :goto_ea

    :catch_e1
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ea

    :catch_e6
    move-exception p0

    .line 48
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    :cond_ea
    :goto_ea
    sput-wide v4, Lio/dcloud/common/util/BaseInfo;->sTemplateModifyTime:J

    return-void
.end method

.method public static checkTestOpenFile()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.system/d85a37c6-afdc-11e6-80f5-76304dec7eb7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static clearData()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sParsedControl:Z

    .line 2
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    .line 3
    sput-boolean v0, Lio/dcloud/common/adapter/util/UEH;->sInited:Z

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sCurrentAppOriginalAppid:Ljava/lang/String;

    .line 5
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sLastRunApp:Ljava/lang/String;

    .line 6
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sRunningApp:Ljava/util/ArrayList;

    .line 7
    sput v0, Lio/dcloud/common/util/BaseInfo;->s_Webview_Count:I

    .line 8
    sput v0, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count:I

    .line 9
    sput-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->DEVICESTATUS_JS:Ljava/lang/String;

    return-void
.end method

.method public static containsInTemplate(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v0, :cond_17

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IActivityHandler;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->isMultiProcessMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    invoke-static {p0}, Lio/dcloud/common/util/BaseInfo;->checkOrResetTemplate(Lio/dcloud/common/DHInterface/IApp;)V

    .line 4
    :cond_17
    sget-object p0, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static createAppTestFile(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/.test"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2c

    .line 5
    :try_start_21
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static existsBase()Z
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/io.dcloud.HBuilder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return v0

    :catch_1f
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static existsLibso()Z
    .registers 1

    :try_start_0
    const-string v0, "so"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method public static existsStreamEnv()Z
    .registers 1

    :try_start_0
    const-string v0, "io.dcloud.appstream.StreamAppMainActivity"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    const/4 v0, 0x1

    return v0

    :catchall_7
    const/4 v0, 0x0

    return v0
.end method

.method public static getAnalysisChannel()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, "DCLOUD_STREAMAPP_CHANNEL"

    .line 3
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "_"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_22
    const-string v1, "|"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "\\|"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 10
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_38

    const/4 v1, 0x3

    .line 11
    aget-object v0, v0, v1

    goto :goto_3a

    :cond_38
    const-string v0, ""

    :cond_3a
    :goto_3a
    return-object v0
.end method

.method public static getCmitInfo(Ljava/lang/String;)Lio/dcloud/common/util/BaseInfo$CmtInfo;
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->mLaunchers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/util/BaseInfo$CmtInfo;

    if-nez v0, :cond_14

    .line 3
    new-instance v0, Lio/dcloud/common/util/BaseInfo$CmtInfo;

    invoke-direct {v0}, Lio/dcloud/common/util/BaseInfo$CmtInfo;-><init>()V

    .line 4
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->mLaunchers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method public static getCrashLogsPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "logs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastKey(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_b

    :cond_18
    return-object v0
.end method

.method public static getLaunchType(Landroid/content/Intent;)Ljava/lang/String;
    .registers 6

    const-string v0, "default"

    if-nez p0, :cond_5

    return-object v0

    .line 1
    :cond_5
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "plus.runtime.launcher"

    .line 3
    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_15
    const-string v2, "from_barcode"

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    .line 7
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 8
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_58

    :cond_2b
    const-string v0, "scheme"

    goto/16 :goto_b0

    .line 13
    :cond_2f
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_b0

    const-string v1, "__launcher__"

    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b0

    :cond_47
    const-string v1, "from_short_cut_start"

    .line 16
    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v0, "shortcut"

    goto :goto_b0

    .line 18
    :cond_52
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5b

    :goto_58
    const-string v0, "barcode"

    goto :goto_b0

    :cond_5b
    const-string v1, "__start_from__"

    const/4 v2, -0x1

    .line 20
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_ae

    const-string v3, "UP-OL-SU"

    .line 21
    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    goto :goto_ae

    .line 23
    :cond_6e
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_78

    const-string v0, "myapp"

    goto :goto_b0

    .line 25
    :cond_78
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_82

    const-string v0, "browser"

    goto :goto_b0

    .line 27
    :cond_82
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_8d

    const-string v0, "favorite"

    goto :goto_b0

    .line 29
    :cond_8d
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_98

    const-string v0, "engines"

    goto :goto_b0

    .line 31
    :cond_98
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_a3

    const-string v0, "apush"

    goto :goto_b0

    .line 33
    :cond_a3
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_b0

    const-string v0, "speech"

    goto :goto_b0

    :cond_ae
    :goto_ae
    const-string v0, "push"

    :cond_b0
    :goto_b0
    return-object v0
.end method

.method public static getLauncherData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->mLaunchers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/util/BaseInfo$CmtInfo;

    const-string v0, "default"

    if-nez p0, :cond_d

    return-object v0

    .line 5
    :cond_d
    iget-object v1, p0, Lio/dcloud/common/util/BaseInfo$CmtInfo;->plusLauncher:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    iget-object v0, p0, Lio/dcloud/common/util/BaseInfo$CmtInfo;->plusLauncher:Ljava/lang/String;

    :goto_18
    return-object v0
.end method

.method public static getShortCutActivity(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStackTrace()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_1e

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 6
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStartupTimeData(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->mLaunchers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/util/BaseInfo$CmtInfo;

    if-eqz p0, :cond_d

    .line 3
    iget-object p0, p0, Lio/dcloud/common/util/BaseInfo$CmtInfo;->sStartupTime:Ljava/lang/String;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUniNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 2
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p0

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    .line 4
    :cond_10
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p0

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewUUID()Ljava/lang/String;

    move-result-object p0

    :goto_18
    return-object p0
.end method

.method private static installAppMapToString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->mInstalledAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    :cond_28
    const/4 v1, 0x1

    if-le v2, v1, :cond_33

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 10
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBase(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "io.dcloud.HBuilder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static isChannelGooglePlay()Z
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, "DCLOUD_STREAMAPP_CHANNEL"

    .line 3
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "|google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private static isDebugSignature(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    .line 3
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 5
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_3d
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_11} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_3d

    const/4 v1, 0x0

    .line 6
    :goto_12
    :try_start_12
    array-length v2, p0

    if-ge v0, v2, :cond_3e

    const-string v2, "X.509"

    .line 7
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/io/ByteArrayInputStream;

    aget-object v4, p0, v0

    .line 9
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 11
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 12
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_36} :catch_3c
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_36} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_36} :catch_3c

    if-eqz v1, :cond_39

    goto :goto_3e

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :catch_3c
    move v0, v1

    :catch_3d
    move v1, v0

    :cond_3e
    :goto_3e
    return v1
.end method

.method public static declared-synchronized isLoadingLaunchePage()Z
    .registers 1

    const-class v0, Lio/dcloud/common/util/BaseInfo;

    monitor-enter v0

    monitor-exit v0

    const/4 v0, 0x0

    return v0
.end method

.method public static isTest(Ljava/lang/String;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_35

    const-string v1, "isUniapp"

    .line 1
    invoke-interface {p0, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_35

    .line 5
    :cond_18
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v0, "HBuilder"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sCurrentAppOriginalAppid:Ljava/lang/String;

    if-eqz v0, :cond_2f

    move-object p0, v0

    :cond_2f
    const-string v0, "__UNI__"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :cond_35
    :goto_35
    return v0
.end method

.method public static isUniNViewBackgroud()Z
    .registers 1

    const-string v0, "dcloud_uninview_background"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isWap2AppAppid(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4d

    const-string v1, "HBuilder"

    .line 1
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCurrentAppOriginalAppid:Ljava/lang/String;

    if-eqz v1, :cond_10

    move-object p0, v1

    .line 4
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "__w2a__"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "H52588A9C"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "H5B5EEFBB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "H5A0B1958"

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "H5EA885FD"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "H592E7F63"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "H5BCD03E4"

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4d

    :cond_4c
    const/4 v0, 0x1

    :cond_4d
    return v0
.end method

.method public static isWeexUniJs(Lio/dcloud/common/DHInterface/IApp;)Z
    .registers 3

    const-string v0, "control"

    .line 1
    invoke-interface {p0, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "v8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "uni-v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_1c
    invoke-static {p0}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_16

    return v0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static loadCustomPath(Ljava/lang/String;)V
    .registers 7

    const-string v0, "\\||\r\n|\n"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    if-lez v0, :cond_83

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_80

    .line 6
    aget-object v3, p0, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7
    aget-object v4, v3, v1

    const/4 v5, 0x1

    .line 8
    aget-object v3, v3, v5

    const-string v5, "control_xml_path"

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 10
    sput-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseControlPath:Ljava/lang/String;

    goto :goto_7d

    :cond_25
    const-string v5, "fs_root_path"

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    const-string v4, "sdcard/"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    goto :goto_7d

    :cond_52
    const-string v5, "downloads"

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 15
    sput-object v3, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOWNLOADS_DIR:Ljava/lang/String;

    goto :goto_7d

    :cond_5d
    const-string v5, "documents"

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 17
    sput-object v3, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOCUMENTS_DIR:Ljava/lang/String;

    goto :goto_7d

    :cond_68
    const-string v5, "doc"

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 19
    sput-object v3, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_DOC_DIR:Ljava/lang/String;

    goto :goto_7d

    :cond_73
    const-string v5, "runtime_apps"

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 21
    sput-object v3, Lio/dcloud/common/util/BaseInfo;->APPS_NAME:Ljava/lang/String;

    :cond_7d
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 25
    :cond_80
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->updatePath()V

    :cond_83
    return-void
.end method

.method public static loadInstalledAppInfo(Landroid/content/Context;)V
    .registers 10

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string v1, "apps"

    invoke-static {p0, v0, v1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    const-string v2, "\\|"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_6e

    aget-object v4, v0, v3

    .line 5
    sget-object v5, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "appver"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v6, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    invoke-direct {v6, v4, v5}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v5, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "deleted"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v5, v7}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 8
    iput-boolean v5, v6, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mDeleted:Z

    if-eqz v5, :cond_60

    .line 10
    sget-object v5, Lio/dcloud/common/util/BaseInfo;->mUnInstalledAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    .line 11
    :cond_60
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 12
    sget-object v5, Lio/dcloud/common/util/BaseInfo;->mInstalledAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    :goto_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 17
    :cond_6e
    sget-boolean p0, Lio/dcloud/common/util/BaseInfo;->sSupportAddByHand:Z

    if-eqz p0, :cond_a6

    .line 18
    sget-object p0, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->listFsAppsFiles(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a6

    .line 20
    array-length v0, p0

    :goto_7b
    if-ge v1, v0, :cond_a6

    aget-object v2, p0, v1

    .line 21
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->mInstalledAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 22
    new-instance v3, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    const-string v4, "0"

    invoke-direct {v3, v2, v4}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v4, Lio/dcloud/common/util/BaseInfo;->mInstalledAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a3
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    :cond_a6
    return-void
.end method

.method public static parseControl()V
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseControlPath:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 3
    invoke-static {v0}, Lio/dcloud/common/util/XmlUtil;->XML_Parser(Ljava/io/InputStream;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v0

    if-eqz v0, :cond_65

    const-string v1, "syncDebug"

    const-string v2, "false"

    .line 8
    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    const/4 v3, 0x0

    if-nez v1, :cond_2e

    const-string v1, "debug"

    .line 9
    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v1, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v1, 0x1

    :goto_2f
    sput-boolean v1, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    const-string v1, "apps"

    .line 10
    invoke-static {v0, v1}, Lio/dcloud/common/util/XmlUtil;->getElement(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v1

    .line 11
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v2

    if-nez v2, :cond_65

    const-string v2, "app"

    .line 12
    invoke-static {v1, v2}, Lio/dcloud/common/util/XmlUtil;->getElements(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 14
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/util/XmlUtil$DHNode;

    const-string v2, "appid"

    .line 15
    invoke-static {v1, v2}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    :cond_57
    const-string v1, "lia"

    .line 18
    invoke-static {v0, v1}, Lio/dcloud/common/util/XmlUtil;->getElement(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 20
    invoke-static {v0}, Lio/dcloud/common/util/XmlUtil;->getText(Lio/dcloud/common/util/XmlUtil$DHNode;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->lia:Ljava/lang/String;

    :cond_65
    return-void
.end method

.method public static parseControl(Landroid/content/Context;Lio/dcloud/common/DHInterface/ICore;Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)[Ljava/lang/String;
    .registers 20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "apps"

    const-string v0, "false"

    .line 21
    sget-boolean v4, Lio/dcloud/common/util/BaseInfo;->sParsedControl:Z

    const-string v5, "Main_Path"

    const/4 v6, 0x0

    if-nez v4, :cond_1db

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 23
    :try_start_11
    sget-object v8, Lio/dcloud/common/util/BaseInfo;->sBaseControlPath:Ljava/lang/String;

    invoke-static {v8}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_1b8

    .line 25
    invoke-static {v8}, Lio/dcloud/common/util/XmlUtil;->XML_Parser(Ljava/io/InputStream;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v9

    .line 26
    invoke-static {v8}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    if-eqz v9, :cond_1bb

    const-string v8, "syncDebug"

    .line 28
    invoke-static {v9, v8, v0}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_1be

    if-nez v8, :cond_42

    :try_start_30
    const-string v8, "debug"

    .line 29
    invoke-static {v9, v8, v0}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3a} :catch_3f

    if-eqz v8, :cond_3d

    goto :goto_42

    :cond_3d
    const/4 v8, 0x0

    goto :goto_43

    :catch_3f
    move-exception v0

    goto/16 :goto_1c1

    :cond_42
    :goto_42
    const/4 v8, 0x1

    :goto_43
    :try_start_43
    sput-boolean v8, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    const-string v8, "auxiliary"

    .line 30
    invoke-static {v9, v8, v0}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lio/dcloud/common/util/BaseInfo;->AuxiliaryInput:Z

    const-string v8, "amu"

    .line 31
    invoke-static {v9, v8, v0}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lio/dcloud/common/util/BaseInfo;->ISAMU:Z

    const-string v8, "authority"

    .line 32
    invoke-static {v9, v8, v6}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lio/dcloud/common/util/BaseInfo;->sGlobalAuthority:Ljava/lang/String;

    const-string v8, "DCLOUD_STREAMAPP_CHANNEL"

    .line 34
    invoke-static {v8}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-static {v8}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v10
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_6f} :catch_1be

    if-nez v10, :cond_83

    :try_start_71
    const-string v10, "_"

    .line 37
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_80

    .line 38
    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;

    goto :goto_96

    .line 40
    :cond_80
    sput-object v8, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_82} :catch_3f

    goto :goto_96

    :cond_83
    :try_start_83
    const-string v8, "channel"

    .line 43
    invoke-static {v9, v8, v6}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-static {v8}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v10
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8d} :catch_1be

    if-nez v10, :cond_92

    .line 45
    :try_start_8f
    sput-object v8, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_91} :catch_3f

    goto :goto_96

    :cond_92
    :try_start_92
    const-string v8, ""

    .line 47
    sput-object v8, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_96} :catch_1be

    :goto_96
    const-string v8, "back"

    .line 53
    :try_start_98
    sget-object v10, Lio/dcloud/common/util/BaseInfo;->sSplashExitCondition:Ljava/lang/String;

    invoke-static {v9, v8, v10}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lio/dcloud/common/util/BaseInfo;->sSplashExitCondition:Ljava/lang/String;

    const-string v8, "ns"

    .line 54
    invoke-static {v9, v8, v0}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->s_Is_DCloud_Packaged:Z
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_ac} :catch_1be

    const-string v0, "fontscale"

    .line 55
    :try_start_ae
    sget-object v8, Lio/dcloud/common/util/BaseInfo;->sFontScale:Ljava/lang/String;

    invoke-static {v9, v0, v8}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b8} :catch_1be

    if-nez v8, :cond_d0

    .line 57
    :try_start_ba
    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sFontScale:Ljava/lang/String;
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bc} :catch_3f

    const-string v8, "none"

    .line 59
    :try_start_be
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 60
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sFontScale:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lio/dcloud/common/util/BaseInfo;->sFontScaleFloat:F
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_d0} :catch_d0

    .line 64
    :catch_d0
    :cond_d0
    :try_start_d0
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sSupportAddByHand:Z

    sget-boolean v8, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    and-int/2addr v0, v8

    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sSupportAddByHand:Z

    .line 65
    invoke-static {v9, v3}, Lio/dcloud/common/util/XmlUtil;->getElement(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v0

    const-string v8, "max"

    .line 67
    invoke-static {v0, v8}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 68
    sget v9, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count_Max:I

    invoke-static {v8, v9}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count_Max:I
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_e9} :catch_1be

    if-gtz v8, :cond_f0

    const v8, 0x7fffffff

    .line 70
    :try_start_ee
    sput v8, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count_Max:I
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f0} :catch_3f

    :cond_f0
    :try_start_f0
    const-string v8, "trim"

    .line 74
    invoke-static {v0, v8}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 75
    sget v9, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count_Trim:I

    invoke-static {v8, v9}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count_Trim:I
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_fe} :catch_1be

    if-gtz v8, :cond_102

    .line 77
    :try_start_100
    sput v4, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count_Trim:I
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_102} :catch_3f

    :cond_102
    :try_start_102
    const-string v8, "app"

    .line 80
    invoke-static {v0, v8}, Lio/dcloud/common/util/XmlUtil;->getElements(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1bb

    .line 81
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v8

    if-nez v8, :cond_1bb

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_114} :catch_1be

    move-object v10, v6

    move-object v13, v10

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    :goto_119
    if-ge v9, v8, :cond_1b5

    .line 85
    :try_start_11b
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/dcloud/common/util/XmlUtil$DHNode;

    const-string v15, "appid"

    .line 86
    invoke-static {v14, v15}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v9, :cond_155

    new-array v10, v7, [Ljava/lang/String;

    aput-object v15, v10, v4

    .line 90
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v12

    if-nez v12, :cond_135

    .line 91
    sput-object v15, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    .line 93
    :cond_135
    invoke-static {v15, v6}, Lio/dcloud/common/util/BaseInfo;->updateBaseInfoByApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->checkCoverLoadApp()Z

    move-result v12

    sput-boolean v12, Lio/dcloud/common/util/BaseInfo;->sCoverApkRuning:Z

    .line 95
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v13

    invoke-virtual {v13}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_150

    .line 96
    sget-boolean v13, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    xor-int/2addr v13, v7

    and-int/2addr v12, v13

    .line 98
    :cond_150
    invoke-static/range {p0 .. p0}, Lio/dcloud/common/util/BaseInfo;->loadInstalledAppInfo(Landroid/content/Context;)V

    .line 99
    sget-object v13, Lio/dcloud/common/util/BaseInfo;->mInstalledAppInfoSet:Ljava/util/HashMap;

    :cond_155
    const-string v6, "appver"

    .line 101
    invoke-static {v14, v6}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    new-instance v14, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    invoke-direct {v14, v15, v6}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v6, Lio/dcloud/common/util/BaseInfo;->mBaseAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v6, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_1ab

    .line 107
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ab

    .line 108
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    .line 109
    sget-boolean v16, Lio/dcloud/common/util/BaseInfo;->sCoverApkRuning:Z

    if-nez v16, :cond_186

    .line 110
    invoke-virtual {v14, v6}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->high(Lio/dcloud/common/util/BaseInfo$BaseAppInfo;)Z

    move-result v6

    if-eqz v6, :cond_17e

    goto :goto_186

    .line 117
    :cond_17e
    iput-boolean v4, v14, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mMoreRecent:Z

    .line 118
    sget-object v6, Lio/dcloud/common/util/BaseInfo;->mBaseAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ab

    .line 119
    :cond_186
    :goto_186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " App has new version! it is "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppVer:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_19f} :catch_1b1

    .line 121
    :try_start_19f
    invoke-virtual {v14}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->clearBundleData()V

    .line 122
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1a5} :catch_1a7

    const/4 v11, 0x1

    goto :goto_1ab

    :catch_1a7
    move-exception v0

    move-object v6, v10

    const/4 v4, 0x1

    goto :goto_1c1

    :cond_1ab
    :goto_1ab
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_119

    :catch_1b1
    move-exception v0

    move-object v6, v10

    move v4, v11

    goto :goto_1c1

    :cond_1b5
    move-object v6, v10

    move v4, v11

    goto :goto_1c4

    .line 132
    :cond_1b8
    :try_start_1b8
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->initBaseFsRootPath()V
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1bb} :catch_1be

    :cond_1bb
    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_1c4

    :catch_1be
    move-exception v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 135
    :goto_1c1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    :goto_1c4
    sput-boolean v7, Lio/dcloud/common/util/BaseInfo;->sParsedControl:Z

    .line 138
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-eqz v0, :cond_1cd

    .line 139
    invoke-static {v7}, Lio/dcloud/common/adapter/util/Logger;->setOpen(Z)V

    :cond_1cd
    if-eqz v4, :cond_1dc

    .line 143
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->installAppMapToString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, p0

    invoke-static {v7, v0, v3, v4}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1dc

    :cond_1db
    const/4 v6, 0x0

    .line 146
    :cond_1dc
    :goto_1dc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";ver:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "1.9.9.81128"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";max:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count_Max:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";trim:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count_Trim:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";dg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    if-eqz v2, :cond_226

    if-eqz v1, :cond_226

    const-string v0, "will exc coreListener.onCoreReady"

    .line 148
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-interface {v2, v1}, Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;->onCoreReady(Lio/dcloud/common/DHInterface/ICore;)V

    :cond_226
    return-object v6
.end method

.method public static putLauncherData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/BaseInfo;->getCmitInfo(Ljava/lang/String;)Lio/dcloud/common/util/BaseInfo$CmtInfo;

    move-result-object p0

    .line 2
    iput-object p1, p0, Lio/dcloud/common/util/BaseInfo$CmtInfo;->plusLauncher:Ljava/lang/String;

    return-void
.end method

.method public static putStartupTimeData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/BaseInfo;->getCmitInfo(Ljava/lang/String;)Lio/dcloud/common/util/BaseInfo$CmtInfo;

    move-result-object p0

    .line 2
    iput-object p1, p0, Lio/dcloud/common/util/BaseInfo$CmtInfo;->sStartupTime:Ljava/lang/String;

    return-void
.end method

.method public static removeTestFile(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/.test"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_24

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_24
    return-void
.end method

.method public static saveInstalledAppInfo(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->installAppMapToString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string v2, "apps"

    invoke-static {p0, v1, v2, v0}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized setLoadingLaunchePage(ZLjava/lang/String;)V
    .registers 2

    const-class p0, Lio/dcloud/common/util/BaseInfo;

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public static updateBaseInfo()V
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->APPS_NAME:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseResRootFullPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->APPS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsFullPath:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseResRootPathName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->APPS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->APPS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->APPS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->SITMAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseFsSitMapPath:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cnc3ejE5/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cnc3ejE6/eje3cnc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sURDFilePath:Ljava/lang/String;

    .line 10
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    .line 11
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseFsSitMapPath:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    .line 13
    :cond_a7
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    const/4 v1, -0x1

    const-string v2, "sdcard/"

    if-eqz v0, :cond_bd

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_bd

    .line 14
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->appendByDeviceRootDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    goto :goto_d2

    .line 16
    :cond_bd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOWNLOADS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    .line 19
    :goto_d2
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    if-eqz v0, :cond_e5

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_e5

    .line 20
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->appendByDeviceRootDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    goto :goto_fa

    .line 22
    :cond_e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOCUMENTS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    :goto_fa
    return-void
.end method

.method public static updateBaseInfoByApp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_4

    .line 1
    sput-object p0, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    :cond_4
    if-eqz p1, :cond_8

    .line 5
    sput-object p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsRootPath:Ljava/lang/String;

    .line 7
    :cond_8
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->initBaseFsRootPath()V

    return-void
.end method

.method public static useStreamAppStatistic(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

###### Class io.dcloud.common.util.BaseInfo.AppIsTestWrapper (io.dcloud.common.util.BaseInfo$AppIsTestWrapper)
.class public Lio/dcloud/common/util/BaseInfo$AppIsTestWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/BaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppIsTestWrapper"
.end annotation


# static fields
.field static final name:Ljava/lang/String; = "test_app"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/common/util/BaseInfo$AppIsTestWrapper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "test_app"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/BaseInfo$AppIsTestWrapper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "test_app"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    const-string v0, "test_app"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

###### Class io.dcloud.common.util.BaseInfo.BaseAppInfo (io.dcloud.common.util.BaseInfo$BaseAppInfo)
.class public Lio/dcloud/common/util/BaseInfo$BaseAppInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/BaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseAppInfo"
.end annotation


# instance fields
.field public mAppVer:Ljava/lang/String;

.field mAppid:Ljava/lang/String;

.field public mDeleted:Z

.field public mMoreRecent:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mMoreRecent:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mDeleted:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppid:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppVer:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppid:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppVer:Ljava/lang/String;

    return-void
.end method

.method public static final compareVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "\\."

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    return v2

    .line 2
    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    return v3

    .line 4
    :cond_12
    :try_start_12
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 6
    array-length v0, p0

    .line 7
    array-length v1, p1

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v0, :cond_3b

    if-lt v4, v1, :cond_22

    goto :goto_3c

    .line 13
    :cond_22
    aget-object v5, p0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 14
    aget-object v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_2e} :catch_37

    if-le v5, v6, :cond_31

    goto :goto_3c

    :cond_31
    if-ge v5, v6, :cond_34

    goto :goto_3b

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :catch_37
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_3b
    :goto_3b
    const/4 v2, 0x0

    :goto_3c
    return v2
.end method


# virtual methods
.method public clearBundleData()V
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->removeBundleData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method high(Lio/dcloud/common/util/BaseInfo$BaseAppInfo;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppVer:Ljava/lang/String;

    iget-object p1, p1, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppVer:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public saveToBundleData(Landroid/content/Context;)V
    .registers 6

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "appver"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppVer:Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mDeleted:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    :cond_57
    iget-object v0, p0, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apps"

    invoke-static {p1, v0, v2, v1}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.util.BaseInfo.CmtInfo (io.dcloud.common.util.BaseInfo$CmtInfo)
.class public Lio/dcloud/common/util/BaseInfo$CmtInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/BaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CmtInfo"
.end annotation


# instance fields
.field public needUpdate:Z

.field public plusLauncher:Ljava/lang/String;

.field public rptCrs:Z

.field public rptJse:Z

.field public sStartupTime:Ljava/lang/String;

.field public sfd:Ljava/lang/String;

.field public templateVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lio/dcloud/common/util/BaseInfo$CmtInfo;->rptCrs:Z

    .line 21
    iput-boolean v0, p0, Lio/dcloud/common/util/BaseInfo$CmtInfo;->rptJse:Z

    .line 25
    iput-boolean v0, p0, Lio/dcloud/common/util/BaseInfo$CmtInfo;->needUpdate:Z

    return-void
.end method
