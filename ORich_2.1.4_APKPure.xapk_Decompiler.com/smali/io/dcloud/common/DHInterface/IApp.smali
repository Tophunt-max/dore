###### Class io.dcloud.common.DHInterface.IApp (io.dcloud.common.DHInterface.IApp)
.class public interface abstract Lio/dcloud/common/DHInterface/IApp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IAppInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;,
        Lio/dcloud/common/DHInterface/IApp$ConfigProperty;,
        Lio/dcloud/common/DHInterface/IApp$Name;
    }
.end annotation


# static fields
.field public static final ABS_PRIVATE_DOC_DIR:B = 0x1t

.field public static final ABS_PRIVATE_WWW_DIR:B = 0x0t

.field public static final ABS_PRIVATE_WWW_DIR_APP_MODE:B = -0x1t

.field public static final ABS_PUBLIC_DOCUMENTS_DIR:B = 0x2t

.field public static final ABS_PUBLIC_DOWNLOADS_DIR:B = 0x3t

.field public static final APP_QUIT_DEF:B = 0x1t

.field public static final APP_QUIT_IMMEDIATELY:B = 0x2t

.field public static final APP_RUNNING_MODE:B = 0x1t

.field public static final AUTHORITY_AUTHORIZED:Ljava/lang/String; = "authorized"

.field public static final AUTHORITY_DENIED:Ljava/lang/String; = "denied"

.field public static final AUTHORITY_UNDETERMINED:Ljava/lang/String; = "undetermined"

.field public static final FS_RUNNING_MODE:B = 0x0t

.field public static final STATUS_ACTIVE:B = 0x3t

.field public static final STATUS_UN_ACTIVIE:B = 0x2t

.field public static final STATUS_UN_OFFLINE_FAIL:B = 0x4t

.field public static final STATUS_UN_RUNNING:B = 0x1t


# virtual methods
.method public abstract addAllFeaturePermission()V
.end method

.method public abstract addFeaturePermission(Ljava/lang/String;)V
.end method

.method public abstract applyMani()V
.end method

.method public abstract applySmartUpdate()V
.end method

.method public abstract callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
.end method

.method public abstract checkIsCustomPath()Z
.end method

.method public abstract checkOrLoadlaunchWebview()V
.end method

.method public abstract checkPrivateDir(Ljava/lang/String;)Z
.end method

.method public abstract checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract checkSchemeWhite(Ljava/lang/String;)Z
.end method

.method public abstract checkSelfPermission(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract checkWhiteUrl(Ljava/lang/String;)Z
.end method

.method public abstract clearRuntimeArgs()V
.end method

.method public abstract convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract convert2RelPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract deleteAppTemp()V
.end method

.method public abstract diyStatusBarState()V
.end method

.method public abstract forceShortCut()Ljava/lang/String;
.end method

.method public abstract getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;
.end method

.method public abstract getDirectPage()Ljava/lang/String;
.end method

.method public abstract getIAppStatusListener()Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;
.end method

.method public abstract getOriginalDirectPage()Ljava/lang/String;
.end method

.method public abstract getPathByType(B)Ljava/lang/String;
.end method

.method public abstract getPopGesture()Ljava/lang/String;
.end method

.method public abstract getQuitModel()I
.end method

.method public abstract isOnAppRunningMode()Z
.end method

.method public abstract manifestBeParsed()Z
.end method

.method public abstract needRefreshApp()Z
.end method

.method public abstract needReload()Z
.end method

.method public abstract obtainAdaptationJs()Ljava/lang/String;
.end method

.method public abstract obtainAppDataPath()Ljava/lang/String;
.end method

.method public abstract obtainAppDocPath()Ljava/lang/String;
.end method

.method public abstract obtainAppId()Ljava/lang/String;
.end method

.method public abstract obtainAppInfo()Ljava/lang/String;
.end method

.method public abstract obtainAppLog()Ljava/lang/String;
.end method

.method public abstract obtainAppName()Ljava/lang/String;
.end method

.method public abstract obtainAppStatus()B
.end method

.method public abstract obtainAppTempPath()Ljava/lang/String;
.end method

.method public abstract obtainAppVersionName()Ljava/lang/String;
.end method

.method public abstract obtainAppWebCachePath()Ljava/lang/String;
.end method

.method public abstract obtainAuthority(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract obtainLaunchPageStateListener()Lio/dcloud/common/DHInterface/IWebviewStateListener;
.end method

.method public abstract obtainMgrData(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract obtainOriginalAppId()Ljava/lang/String;
.end method

.method public abstract obtainResInStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract obtainResInStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract obtainRunningAppMode()B
.end method

.method public abstract obtainRuntimeArgs(Z)Ljava/lang/String;
.end method

.method public abstract obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;
.end method

.method public abstract obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;
.end method

.method public abstract obtainVersionSitemap()Ljava/lang/String;
.end method

.method public abstract obtainWebAppIntent()Landroid/content/Intent;
.end method

.method public abstract obtainWebviewBaseUrl()Ljava/lang/String;
.end method

.method public abstract onSplashClosed()V
.end method

.method public abstract registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V
.end method

.method public abstract requestPermissions([Ljava/lang/String;I)V
.end method

.method public abstract setAppDataPath(Ljava/lang/String;)V
.end method

.method public abstract setAppDocPath(Ljava/lang/String;)V
.end method

.method public abstract setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setDirectPage(Ljava/lang/String;)V
.end method

.method public abstract setHideNavBarState(Z)V
.end method

.method public abstract setIAppStatusListener(Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;)V
.end method

.method public abstract setLaunchPageStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V
.end method

.method public abstract setNeedRefreshApp(Z)V
.end method

.method public abstract setQuitModel(I)V
.end method

.method public abstract setRuntimeArgs(Ljava/lang/String;)V
.end method

.method public abstract setStatus(B)V
.end method

.method public abstract setWebAppActivity(Landroid/app/Activity;)V
.end method

.method public abstract setWebAppIntent(Landroid/content/Intent;)V
.end method

.method public abstract shortcutQuit()Ljava/lang/String;
.end method

.method public abstract showSplash()V
.end method

.method public abstract startFromShortCut()Z
.end method

.method public abstract unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V
.end method

.method public abstract updateDirectPage(Ljava/lang/String;)V
.end method

###### Class io.dcloud.common.DHInterface.IApp.ConfigProperty (io.dcloud.common.DHInterface.IApp$ConfigProperty)
.class public interface abstract Lio/dcloud/common/DHInterface/IApp$ConfigProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/IApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;
    }
.end annotation


# static fields
.field public static final CONFIG_ADAPTATION:Ljava/lang/String; = "adaptation"

.field public static final CONFIG_ADDITIONAL_HTTPHEADERS:Ljava/lang/String; = "additionalHttpHeaders"

.field public static final CONFIG_ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final CONFIG_AUTHORITY:Ljava/lang/String; = "authority"

.field public static final CONFIG_AUTOCLOSE:Ljava/lang/String; = "autoclose"

.field public static final CONFIG_AUTOCLOSE_W2A:Ljava/lang/String; = "autoclose_w2a"

.field public static final CONFIG_BACK_BUTTON_AUTO_CONTROL:Ljava/lang/String; = "backButtonAutoControl"

.field public static final CONFIG_BASEURL:Ljava/lang/String; = "baseUrl"

.field public static final CONFIG_CACHE:Ljava/lang/String; = "cache"

.field public static final CONFIG_CERS:Ljava/lang/String; = "cers"

.field public static final CONFIG_COMPETENT:Ljava/lang/String; = "competent"

.field public static final CONFIG_CONCATENATE:Ljava/lang/String; = "concatenate"

.field public static final CONFIG_CONFUSION:Ljava/lang/String; = "confusion"

.field public static final CONFIG_COVER:Ljava/lang/String; = "cover"

.field public static final CONFIG_CRASH:Ljava/lang/String; = "crash"

.field public static final CONFIG_DELAY:Ljava/lang/String; = "delay"

.field public static final CONFIG_DELAY_W2A:Ljava/lang/String; = "delay_w2a"

.field public static final CONFIG_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final CONFIG_DEVELOPER:Ljava/lang/String; = "developer"

.field public static final CONFIG_DEVELOPER_EMAIL:Ljava/lang/String; = "email"

.field public static final CONFIG_DEVELOPER_NAME:Ljava/lang/String; = "name"

.field public static final CONFIG_DEVELOPER_URL:Ljava/lang/String; = "url"

.field public static final CONFIG_ERROR_PAGE:Ljava/lang/String; = "error"

.field public static final CONFIG_ERROR_PAGE_URL:Ljava/lang/String; = "url"

.field public static final CONFIG_EVENT:Ljava/lang/String; = "event"

.field public static final CONFIG_FEATURE:Ljava/lang/String; = "feature"

.field public static final CONFIG_FEATURES:Ljava/lang/String; = "features"

.field public static final CONFIG_FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field public static final CONFIG_GEOLOCATION:Ljava/lang/String; = "geolocation"

.field public static final CONFIG_H5PLUS:Ljava/lang/String; = "h5plus"

.field public static final CONFIG_ID:Ljava/lang/String; = "id"

.field public static final CONFIG_INJECTION:Ljava/lang/String; = "injection"

.field public static final CONFIG_JSERROR:Ljava/lang/String; = "jserror"

.field public static final CONFIG_KEY:Ljava/lang/String; = "key"

.field public static final CONFIG_LANGUAGE:Ljava/lang/String; = "language"

.field public static final CONFIG_LAUNCHWEBVIEW:Ljava/lang/String; = "launchwebview"

.field public static final CONFIG_LAUNCH_PATH:Ljava/lang/String; = "launch_path"

.field public static final CONFIG_LAUNCH_PATH_W2A:Ljava/lang/String; = "launch_path_w2a"

.field public static final CONFIG_LGEOLOCATION:Ljava/lang/String; = "L_geolocation"

.field public static final CONFIG_LICENSE:Ljava/lang/String; = "license"

.field public static final CONFIG_LICENSE_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final CONFIG_LICENSE_URL:Ljava/lang/String; = "url"

.field public static final CONFIG_LOADED_TIME:Ljava/lang/String; = "loadedTime"

.field public static final CONFIG_LPLUSERQUIRE:Ljava/lang/String; = "L_plusrequire"

.field public static final CONFIG_MODULE:Ljava/lang/String; = "module"

.field public static final CONFIG_NAME:Ljava/lang/String; = "name"

.field public static final CONFIG_NAVIGATIONBAR:Ljava/lang/String; = "navigationbar"

.field public static final CONFIG_OVERRIDEURL:Ljava/lang/String; = "overrideurl"

.field public static final CONFIG_OVERRIDE_RESOURCE:Ljava/lang/String; = "overrideresource"

.field public static final CONFIG_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final CONFIG_PLUS:Ljava/lang/String; = "plus"

.field public static final CONFIG_PLUSREQUIRE:Ljava/lang/String; = "plusrequire"

.field public static final CONFIG_RAM_CACHE_MODE:Ljava/lang/String; = "ramcachemode"

.field public static final CONFIG_REPLACE_WEB_API:Ljava/lang/String; = "replacewebapi"

.field public static final CONFIG_RESOURCES:Ljava/lang/String; = "resources"

.field public static final CONFIG_RUNMODE:Ljava/lang/String; = "runmode"

.field public static final CONFIG_RUNMODE_LIBERATE:Ljava/lang/String; = "liberate"

.field public static final CONFIG_RUNMODE_NORMAL:Ljava/lang/String; = "normal"

.field public static final CONFIG_SECONDWEBVIEW:Ljava/lang/String; = "secondwebview"

.field public static final CONFIG_SECONDWEBVIEW_MODE:Ljava/lang/String; = "mode"

.field public static final CONFIG_SERVICE:Ljava/lang/String; = "service"

.field public static final CONFIG_SERVICES:Ljava/lang/String; = "services"

.field public static final CONFIG_SGEOLOCATION:Ljava/lang/String; = "S_geolocation"

.field public static final CONFIG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final CONFIG_SHORTCUTQUIT:Ljava/lang/String; = "shortcutQuit"

.field public static final CONFIG_SPLASHSCREEN:Ljava/lang/String; = "splashscreen"

.field public static final CONFIG_SPLUSERQUIRE:Ljava/lang/String; = "S_pluserquire"

.field public static final CONFIG_SRC:Ljava/lang/String; = "src"

.field public static final CONFIG_SSL:Ljava/lang/String; = "ssl"

.field public static final CONFIG_STREAM:Ljava/lang/String; = "stream"

.field public static final CONFIG_TARGET:Ljava/lang/String; = "target"

.field public static final CONFIG_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final CONFIG_TITLE_N_VIEW:Ljava/lang/String; = "titleNView"

.field public static final CONFIG_UNIAPP_CONTROL:Ljava/lang/String; = "control"

.field public static final CONFIG_UNTRUSTEDCA:Ljava/lang/String; = "untrustedca"

.field public static final CONFIG_USER_AGENT:Ljava/lang/String; = "useragent"

.field public static final CONFIG_USER_AGENT_ANDROID:Ljava/lang/String; = "useragent_android"

.field public static final CONFIG_USE_ENCRYPTION:Ljava/lang/String; = "use_encryption"

.field public static final CONFIG_USE_V3_ENCRYPTION:Ljava/lang/String; = "use_v3_encryption"

.field public static final CONFIG_VALUE:Ljava/lang/String; = "value"

.field public static final CONFIG_VERSION:Ljava/lang/String; = "version"

.field public static final CONFIG_VERSION_CODE:Ljava/lang/String; = "code"

.field public static final CONFIG_VERSION_NAME:Ljava/lang/String; = "name"

.field public static final CONFIG_WAITING:Ljava/lang/String; = "waiting"

.field public static final CONFIG_funSetUA:Ljava/lang/String; = "funSetUA"

.field public static final UNI_NVUE_DATA:Ljava/lang/String; = "uni_nvue_data"

.field public static final UNI_RESTART_TO_DIRECT:Ljava/lang/String; = "uni_restart_to_direct"

###### Class io.dcloud.common.DHInterface.IApp.ConfigProperty.ThridInfo (io.dcloud.common.DHInterface.IApp$ConfigProperty$ThridInfo)
.class public final enum Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/IApp$ConfigProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThridInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

.field public static final enum DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

.field public static final enum LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

.field public static final enum OverrideResourceJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

.field public static final enum OverrideUrlJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

.field public static final enum SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

.field public static final enum SitemapJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

.field public static final enum Tabbar:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

.field public static final enum TitleNViewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

.field public static final enum URDJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    const-string v1, "OverrideUrlJsonData"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->OverrideUrlJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    .line 2
    new-instance v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    const-string v3, "OverrideResourceJsonData"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->OverrideResourceJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    .line 3
    new-instance v3, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    const-string v5, "SecondWebviewJsonData"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    .line 4
    new-instance v5, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    const-string v7, "LaunchWebviewJsonData"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    .line 5
    new-instance v7, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    const-string v9, "TitleNViewJsonData"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->TitleNViewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    .line 6
    new-instance v9, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    const-string v11, "DirectPageJsonData"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    .line 7
    new-instance v11, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    const-string v13, "URDJsonData"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->URDJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    .line 8
    new-instance v13, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    const-string v15, "SitemapJsonData"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SitemapJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    .line 9
    new-instance v15, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    const-string v14, "Tabbar"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->Tabbar:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    const/16 v14, 0x9

    new-array v14, v14, [Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 10
    sput-object v14, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->$VALUES:[Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    return-object p0
.end method

.method public static values()[Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->$VALUES:[Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v0}, [Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    return-object v0
.end method

###### Class io.dcloud.common.DHInterface.IApp.IAppStatusListener (io.dcloud.common.DHInterface.IApp$IAppStatusListener)
.class public interface abstract Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/IApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAppStatusListener"
.end annotation


# virtual methods
.method public abstract onPause(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IApp;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()Z
.end method

.method public abstract onStoped(ZLjava/lang/String;)Ljava/lang/String;
.end method

###### Class io.dcloud.common.DHInterface.IApp.Name (io.dcloud.common.DHInterface.IApp$Name)
.class public interface abstract Lio/dcloud/common/DHInterface/IApp$Name;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/IApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Name"
.end annotation


# static fields
.field public static final APP:I = 0x1

.field public static final STORAGE:I = 0x2

.field public static final STREAM:I = 0x3

.field public static final UPDATE:I = 0x4
