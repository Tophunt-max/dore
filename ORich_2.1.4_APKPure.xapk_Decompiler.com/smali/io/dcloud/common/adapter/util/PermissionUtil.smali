###### Class io.dcloud.common.adapter.util.PermissionUtil (io.dcloud.common.adapter.util.PermissionUtil)
.class public Lio/dcloud/common/adapter/util/PermissionUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;,
        Lio/dcloud/common/adapter/util/PermissionUtil$Request;,
        Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;,
        Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;,
        Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;
    }
.end annotation


# static fields
.field public static final PMS_CAMERA:Ljava/lang/String; = "CAMERA"

.field public static final PMS_CONTACTS:Ljava/lang/String; = "CONTACTS"

.field public static final PMS_GALLERY:Ljava/lang/String; = "GALLERY"

.field public static final PMS_LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final PMS_NATIVEJS:Ljava/lang/String; = "NATIVE.JS"

.field public static final PMS_PHONE:Ljava/lang/String; = "PHONE"

.field public static final PMS_PUSH:Ljava/lang/String; = "PUSH"

.field public static final PMS_RECORD:Ljava/lang/String; = "RECORD"

.field public static final PMS_SHORTCUT:Ljava/lang/String; = "SHORTCUT"

.field public static final PMS_SMS:Ljava/lang/String; = "SMS"

.field public static final PMS_STORAGE:Ljava/lang/String; = "STORAGE"

.field private static alwaysDeniedPer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sActivityResultCallBacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefQequestCode:I

.field private static sPermissionData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;",
            ">;"
        }
    .end annotation
.end field

.field private static sRequestCallBacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Lio/dcloud/common/adapter/util/PermissionUtil$Request;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sRequestCodeCounter:I

.field public static sUseStreamAppPermissionDialogCount:I

.field private static sUseStreamAppPermissionDialogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;",
            ">;"
        }
    .end annotation
.end field

.field private static useRejectedCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->useRejectedCache:Ljava/util/HashMap;

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sActivityResultCallBacks:Ljava/util/HashMap;

    .line 430
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogs:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 431
    sput v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    .line 755
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCallBacks:Ljava/util/HashMap;

    .line 818
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    .line 820
    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_whether_allow:I

    const-string v4, "LOCATION"

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_record_whether_allow:I

    const-string v4, "RECORD"

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_camera_whether_allow:I

    const-string v4, "CAMERA"

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_album_whether_allow:I

    const-string v4, "GALLERY"

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_informs_whether_allow:I

    const-string v4, "PUSH"

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_short_cut_close_tips:I

    const-string v4, "SHORTCUT"

    invoke-direct {v2, v4, v3, v6, v0}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_sms_whether_allow:I

    const-string v4, "SMS"

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_phone_call_whether_allow:I

    const-string v4, "PHONE"

    invoke-direct {v2, v4, v3, v5, v6}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    new-instance v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    sget v3, Lio/dcloud/base/R$string;->dcloud_permissions_njs_whether_allow:I

    const-string v4, "NATIVE.JS"

    invoke-direct {v2, v4, v3, v6, v0}, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0xec59

    .line 940
    sput v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sDefQequestCode:I

    .line 942
    sput v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCodeCounter:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->useRejectedCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/common/adapter/util/PermissionUtil;->saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V

    return-void
.end method

.method static synthetic access$400(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/ISysEventListener;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->unregisterWebAppReStartEvent(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/ISysEventListener;)V

    return-void
.end method

.method static synthetic access$500()V
    .registers 0

    .line 1
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog()V

    return-void
.end method

.method static synthetic access$600()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sDefQequestCode:I

    return v0
.end method

.method private static caseVersion(Landroid/app/Activity;)Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_24

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt p0, v1, :cond_24

    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v0, Lio/dcloud/common/adapter/util/MobilePhoneModel;->GIONEE:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lio/dcloud/common/adapter/util/MobilePhoneModel;->QIHU360:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public static checkLocationPermission(Landroid/app/Activity;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->isEMUIRom(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermission_EMUI(Landroid/app/Activity;)Z

    move-result v1

    goto :goto_2c

    .line 3
    :cond_c
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->isMiuiRom(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 4
    invoke-static {p0, v2, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->isMiui(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/16 v0, -0x64

    if-eq p0, v0, :cond_2c

    if-nez p0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x0

    goto :goto_2c

    .line 8
    :cond_22
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->isFlymeRom(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 9
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermission_Flyme(Landroid/app/Activity;)Z

    move-result v1

    :cond_2c
    :goto_2c
    return v1
.end method

.method public static checkLocationService(Landroid/app/Activity;)Z
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "location"

    .line 1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 2
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "network"

    .line 3
    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1c

    if-nez v1, :cond_1b

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :cond_1b
    :goto_1b
    return v0

    :catch_1c
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static checkPermission(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    const-string v2, "SHORTCUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2
    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_10
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->caseVersion(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 5
    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1f
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p0

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3b

    const-string p0, "denied"

    return-object p0

    :cond_3b
    const-string p0, "notdeny"

    return-object p0
.end method

.method private static checkPermission_EMUI(Landroid/app/Activity;)Z
    .registers 8

    const-string v0, "com.huawei.android.app.AppOpsManagerEx"

    const-string v1, "getMode"

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_6
    new-array v4, v2, [Ljava/lang/Class;

    .line 1
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v3

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x0

    invoke-static {v0, v1, p0, v4, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_31

    if-ne p0, v3, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    return v3

    :catchall_31
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v3
.end method

.method private static checkPermission_Flyme(Landroid/app/Activity;)Z
    .registers 7

    const-string p0, "meizu.security.FlymePermissionManager"

    const-string v0, "isFlymePermissionGranted"

    const/4 v1, 0x1

    :try_start_5
    new-array v2, v1, [Ljava/lang/Class;

    .line 1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    const/16 v5, 0x4b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-static {p0, v0, v4, v2, v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return p0

    :catchall_22
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "checkSelfPermission"

    invoke-static {v1, p1, p0, v3, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_27
    return v0
.end method

.method public static checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const-string v0, "android.permission.INSTALL_SHORTCUT"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 2
    invoke-static {p0, p2}, Lio/dcloud/common/util/AppPermissionUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eq v2, p0, :cond_11

    return v1

    :cond_11
    const/4 p0, -0x1

    return p0

    .line 8
    :cond_13
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->caseVersion(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_3c

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "checkSelfPermission"

    invoke-static {p2, p1, p0, v0, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 11
    :cond_3c
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->trycatchGetPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static checkStreamAppPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const-string v0, "stream_permission"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static clearPermission(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "stream_permission"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 5
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    .line 9
    :cond_39
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static clearUseRejectedCache()V
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->useRejectedCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static declared-synchronized continueShowStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)Z
    .registers 4

    const-class v0, Lio/dcloud/common/adapter/util/PermissionUtil;

    monitor-enter v0

    .line 1
    :try_start_3
    iget-boolean v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->force:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1e

    .line 2
    sget v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    if-eqz v1, :cond_11

    .line 3
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogs:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_11
    sget p0, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    add-int/2addr p0, v2

    sput p0, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    .line 6
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogs:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    monitor-exit v0

    return p0

    :cond_1e
    monitor-exit v0

    return v2

    :catchall_20
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "android.permission.CAMERA"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "CAMERA"

    return-object p0

    :cond_b
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "RECORD"

    return-object p0

    :cond_16
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "LOCATION"

    return-object p0

    :cond_21
    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "CONTACTS"

    return-object p0

    :cond_2c
    const-string v0, "android.permission.SEND_SMS"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "SMS"

    return-object p0

    :cond_37
    const-string v0, "android.permission.CALL_PHONE"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string p0, "PHONE"

    return-object p0

    :cond_42
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p0, "STORAGE"

    return-object p0

    :cond_4d
    const-string v0, "android.permission.INSTALL_SHORTCUT"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string p0, "SHORTCUT"

    return-object p0

    :cond_58
    const-string v0, "GALLERY"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_6f

    :cond_61
    const-string v0, "NATIVE.JS"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_6f

    :cond_6a
    const-string v0, "PUSH"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_6f
    return-object p0
.end method

.method public static convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "CAMERA"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "android.permission.CAMERA"

    return-object p0

    :cond_b
    const-string v0, "RECORD"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "android.permission.RECORD_AUDIO"

    return-object p0

    :cond_16
    const-string v0, "LOCATION"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object p0

    :cond_21
    const-string v0, "CONTACTS"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "android.permission.WRITE_CONTACTS"

    return-object p0

    :cond_2c
    const-string v0, "STORAGE"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    return-object p0

    :cond_37
    const-string v0, "SMS"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string p0, "android.permission.SEND_SMS"

    return-object p0

    :cond_42
    const-string v0, "PHONE"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p0, "android.permission.CALL_PHONE"

    return-object p0

    :cond_4d
    const-string v0, "SHORTCUT"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string p0, "android.permission.INSTALL_SHORTCUT"

    return-object p0

    :cond_58
    const-string v0, "GALLERY"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_6f

    :cond_61
    const-string v0, "NATIVE.JS"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_6f

    :cond_6a
    const-string v0, "PUSH"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :goto_6f
    return-object p0
.end method

.method public static convert5PlusValue(I)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/core/permission/PermissionControler;->convert5PlusValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertNativePermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/core/permission/PermissionControler;->convertNativePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDeivceSuitablePixel(Landroid/app/Activity;I)I
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

.method public static getRequestCode()I
    .registers 2

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCodeCounter:I

    const v1, 0xffff

    if-lt v0, v1, :cond_a

    .line 3
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->restRequstCode()V

    .line 5
    :cond_a
    sget v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCodeCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCodeCounter:I

    return v0
.end method

.method public static goPermissionCenter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 4

    .line 1
    invoke-static {p0, p2, p3}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->access$200(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_a

    .line 4
    :cond_7
    invoke-virtual {p3, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    :goto_a
    return-void
.end method

.method public static goSafeCenter(Landroid/app/Activity;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->access$100(Landroid/app/Activity;)V

    return-void
.end method

.method private static isAndroid(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.Setting"

    const-string v2, "com.android.SubSetting"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v1

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6
    invoke-static {p0, p1, p2, v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static isEMUIRom(Landroid/app/Activity;)Z
    .registers 2

    .line 1
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "huawei"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isFlyme(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 7

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.meizu.safe"

    const-string v3, "com.meizu.safe.security.AppSecActivity"

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v2

    .line 7
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 8
    invoke-static {p0, p1, p2, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method private static isFlymeRom(Landroid/app/Activity;)Z
    .registers 2

    .line 1
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "meizu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isMainStreamPermission(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "LOCATION"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "SHORTCUT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "RECORD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method private static isMiui(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    const/4 p1, 0x0

    .line 1
    :try_start_1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->isMiuiRom(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_85

    const-string p2, "appops"

    .line 3
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_85

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "OP_GPS"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_22} :catch_81
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_7c

    const-string v3, "checkOp"

    const/4 v4, 0x3

    :try_start_25
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, p1

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v8

    invoke-virtual {v2, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "MODE_IGNORED"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    if-ne p0, v0, :cond_6b

    const/4 p1, -0x1

    goto :goto_87

    .line 11
    :cond_6b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "MODE_ALLOWED"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2
    :try_end_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_79} :catch_81
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_79} :catch_7c

    if-ne p0, p2, :cond_85

    goto :goto_87

    :catch_7c
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_85

    :catch_81
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_85
    :goto_85
    const/16 p1, -0x64

    :goto_87
    return p1
.end method

.method private static isMiui(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 9

    const-string v0, "http.agent"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_23

    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 23
    :goto_23
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v0

    .line 24
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x1

    const-string v3, "com.miui.securitycenter"

    const-string v4, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    .line 26
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "extra_pkgname"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    :try_start_3d
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 30
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V
    :try_end_43
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3d .. :try_end_43} :catch_49
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_43} :catch_44

    goto :goto_6e

    :catch_44
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6e

    :catch_49
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    .line 48
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    :try_start_52
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V
    :try_end_58
    .catch Landroid/content/ActivityNotFoundException; {:try_start_52 .. :try_end_58} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_59

    goto :goto_6e

    :catch_59
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6e

    .line 59
    :catch_5e
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "com.android.Setting"

    .line 60
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    return v2
.end method

.method private static isMiuiRom(Landroid/app/Activity;)Z
    .registers 2

    .line 1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_20

    const-string p0, "http.agent"

    .line 2
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 9

    .line 1
    sget-object p2, Lio/dcloud/common/adapter/util/PermissionUtil;->sActivityResultCallBacks:Ljava/util/HashMap;

    rem-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-eqz p2, :cond_58

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "__go_center_time__"

    invoke-virtual {p3, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    cmp-long p3, v3, v0

    if-lez p3, :cond_58

    .line 5
    sget-object p3, Lio/dcloud/common/adapter/util/PermissionUtil;->sActivityResultCallBacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    .line 8
    aget-object p2, p2, v0

    check-cast p2, Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_55

    .line 11
    invoke-virtual {p2, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    goto :goto_58

    .line 13
    :cond_55
    invoke-virtual {p2, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public static onRequestSysPermissionResume(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__go_center_request_code__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v2, v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_11
    return-void
.end method

.method public static onSystemPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 14

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCallBacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_d7

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_d7

    .line 3
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    const/4 v2, 0x0

    .line 5
    array-length v3, v0

    if-lez v3, :cond_27

    .line 6
    aget-object v2, v0, v1

    :cond_27
    const/4 v0, 0x0

    .line 7
    :goto_28
    array-length v3, p2

    if-ge v0, v3, :cond_b8

    .line 8
    aget v3, p3, v0

    .line 9
    aget-object v4, p2, v0

    invoke-static {v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    if-ne v3, v5, :cond_ad

    .line 12
    :try_start_36
    aget-object v3, p2, v0

    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 13
    sget-object v3, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_40} :catch_a6

    const-string v5, ","

    const-string v6, "permissions"

    const-string v7, "ALWAYS_DENIED_PERMISSION"

    if-nez v3, :cond_69

    .line 14
    :try_start_48
    invoke-static {p0, v7, v6}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_62

    .line 16
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v8, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    goto :goto_69

    .line 18
    :cond_62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    .line 20
    :cond_69
    :goto_69
    sget-object v3, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    aget-object v8, p2, v0

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 21
    sget-object v3, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    aget-object v8, p2, v0

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    sget-object v8, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_85
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_98

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 24
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 26
    :cond_98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v1, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v7, v6, v3}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_a5} :catch_a6

    goto :goto_a7

    :catch_a6
    nop

    :cond_a7
    :goto_a7
    if-eqz v2, :cond_b4

    .line 32
    invoke-virtual {v2, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    goto :goto_b4

    :cond_ad
    if-nez v3, :cond_b4

    if-eqz v2, :cond_b4

    .line 35
    invoke-virtual {v2, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    :cond_b4
    :goto_b4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_28

    .line 44
    :cond_b8
    array-length p0, p2

    if-nez p0, :cond_d7

    array-length p0, p3

    if-nez p0, :cond_d7

    if-eqz v2, :cond_d7

    .line 46
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_d7

    .line 48
    array-length p1, p0

    :goto_c9
    if-ge v1, p1, :cond_d7

    aget-object p2, p0, v1

    .line 49
    invoke-static {p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-virtual {v2, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    :cond_d7
    return-void
.end method

.method public static putStreamAppPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const-string v0, "stream_permission"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static removeStreamAppPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "stream_permission"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static removeTempPermission(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-string v0, "stream_permission"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 5
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    .line 9
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "SHORTCUT"

    .line 10
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "NATIVE.JS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 11
    :cond_52
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    .line 15
    :cond_56
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/common/core/permission/PermissionControler;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static requestSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 6

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->caseVersion(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p3, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCallBacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_33

    :cond_1d
    if-eqz p1, :cond_33

    .line 10
    :try_start_1f
    array-length p0, p1

    const/4 p2, 0x0

    :goto_21
    if-ge p2, p0, :cond_33

    aget-object v0, p1, p2

    .line 11
    invoke-static {v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2c} :catch_2f

    add-int/lit8 p2, p2, 0x1

    goto :goto_21

    :catch_2f
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    :goto_33
    return-void
.end method

.method public static restRequstCode()V
    .registers 1

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sDefQequestCode:I

    sput v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sRequestCodeCounter:I

    return-void
.end method

.method private static saveCallabckData(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V
    .registers 8

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sActivityResultCallBacks:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "__go_center_request_code__"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string p3, "__go_center_time__"

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-void
.end method

.method private static declared-synchronized showStreamAppPermissionDialog()V
    .registers 3

    const-class v0, Lio/dcloud/common/adapter/util/PermissionUtil;

    monitor-enter v0

    .line 1
    :try_start_3
    sget v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_b

    sub-int/2addr v1, v2

    .line 2
    sput v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    .line 4
    :cond_b
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 5
    sget-object v1, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    .line 6
    iput-boolean v2, v1, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->force:Z

    .line 7
    invoke-static {v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->useStreamPermission(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)I

    move-result v1

    if-eq v2, v1, :cond_26

    .line 9
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static showStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)V
    .registers 21

    move-object/from16 v0, p0

    .line 10
    iget-object v10, v0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->activity:Landroid/app/Activity;

    .line 11
    iget-object v7, v0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->appid:Ljava/lang/String;

    .line 12
    iget-object v1, v0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->appName:Ljava/lang/String;

    .line 13
    iget-object v11, v0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->streamPerName:Ljava/lang/String;

    .line 14
    iget-object v12, v0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showStreamAppPermissionDialog streamPerName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Permission"

    invoke-static {v3, v2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v2, Lio/dcloud/common/adapter/util/PermissionUtil;->sPermissionData:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;

    if-nez v2, :cond_3a

    .line 18
    invoke-virtual {v12, v11}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_3a
    invoke-static/range {p0 .. p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->continueShowStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)Z

    move-result v4

    if-nez v4, :cond_41

    return-void

    .line 24
    :cond_41
    iget v4, v0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->tryTimes:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->tryTimes:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_4c

    const/4 v13, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v13, 0x0

    .line 26
    :goto_4d
    invoke-static {v10, v5}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v10, :cond_61

    .line 28
    instance-of v4, v10, Lio/dcloud/WebAppActivity;

    if-eqz v4, :cond_61

    .line 29
    move-object v4, v10

    check-cast v4, Lio/dcloud/WebAppActivity;

    invoke-virtual {v4, v9}, Lio/dcloud/WebAppActivity;->recordDialog(Landroid/app/Dialog;)V

    .line 31
    :cond_61
    invoke-virtual {v9, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const-string v8, "LOCATION"

    if-eqz v13, :cond_a8

    .line 33
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v14, Lio/dcloud/common/adapter/util/MobilePhoneModel;->QiKU:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 34
    sget v1, Lio/dcloud/base/R$string;->dcloud_permissions_short_cut_tips:I

    invoke-virtual {v10, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_e8

    .line 36
    :cond_7c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 37
    iget v4, v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->messageId:I

    invoke-virtual {v10, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v1, v14, v6

    invoke-static {v4, v14}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_e8

    .line 39
    :cond_94
    iget v1, v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->messageId:I

    invoke-virtual {v10, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    const-string v14, "App"

    aput-object v14, v4, v6

    invoke-static {v1, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_e8

    .line 43
    :cond_a8
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v4, Lio/dcloud/common/adapter/util/MobilePhoneModel;->QiKU:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 44
    sget v1, Lio/dcloud/base/R$string;->dcloud_permissions_short_cut_tips2:I

    invoke-virtual {v10, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    :cond_bb
    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 46
    sget v1, Lio/dcloud/base/R$string;->dcloud_permissions_geo_retry_tips:I

    invoke-virtual {v10, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_e8

    .line 48
    :cond_cb
    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 49
    sget v4, Lio/dcloud/base/R$string;->dcloud_permissions_retry_tips:I

    invoke-virtual {v10, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v1, v14, v6

    invoke-static {v4, v14}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_e8
    const/4 v1, 0x0

    .line 53
    iget v4, v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->checkbox:I

    const/4 v15, -0x1

    if-eq v4, v15, :cond_11b

    if-eqz v13, :cond_11b

    .line 54
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, v10}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 55
    sget v4, Lio/dcloud/base/R$string;->dcloud_permissions_checkbox_close_tips:I

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setText(I)V

    const/high16 v4, -0x10000

    .line 56
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 57
    iget v2, v2, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->checkbox:I

    if-ne v2, v5, :cond_104

    goto :goto_105

    :cond_104
    const/4 v5, 0x0

    :goto_105
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v2, 0x14

    .line 58
    invoke-static {v10, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->getDeivceSuitablePixel(Landroid/app/Activity;I)I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v9

    const/4 v6, -0x1

    move-object v15, v1

    move/from16 v16, v17

    .line 59
    invoke-virtual/range {v14 .. v19}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    goto :goto_11c

    :cond_11b
    const/4 v6, -0x1

    :goto_11c
    move-object v5, v1

    .line 61
    new-instance v14, Lio/dcloud/common/adapter/util/PermissionUtil$3;

    invoke-direct {v14, v9, v0, v12, v11}, Lio/dcloud/common/adapter/util/PermissionUtil$3;-><init>(Landroid/app/AlertDialog;Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;Lio/dcloud/common/adapter/util/PermissionUtil$Request;Ljava/lang/String;)V

    .line 78
    iget-object v1, v0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz v1, :cond_132

    const-string v1, "showStreamAppPermissionDialog registerSysEventListener"

    .line 79
    invoke-static {v3, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, v0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->mApp:Lio/dcloud/common/DHInterface/IApp;

    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppReStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v1, v14, v2}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 83
    :cond_132
    new-instance v15, Lio/dcloud/common/adapter/util/PermissionUtil$4;

    move-object v1, v15

    move-object v2, v9

    move-object/from16 v3, p0

    move-object v4, v14

    const/4 v0, -0x1

    move-object v6, v10

    move-object v0, v8

    move-object v8, v11

    move-object/from16 v17, v14

    move-object v14, v9

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lio/dcloud/common/adapter/util/PermissionUtil$4;-><init>(Landroid/app/AlertDialog;Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;Lio/dcloud/common/DHInterface/ISysEventListener;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    if-eqz v13, :cond_149

    .line 101
    sget v1, Lio/dcloud/base/R$string;->dcloud_common_no_allow:I

    goto :goto_14b

    :cond_149
    sget v1, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    :goto_14b
    invoke-virtual {v10, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v13, :cond_158

    .line 102
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_allow:I

    invoke-virtual {v10, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_176

    :cond_158
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->QiKU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_170

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_169

    goto :goto_170

    :cond_169
    sget v0, Lio/dcloud/base/R$string;->dcloud_permissions_reauthorization:I

    .line 103
    invoke-virtual {v10, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_176

    .line 104
    :cond_170
    :goto_170
    sget v0, Lio/dcloud/base/R$string;->dcloud_permissions_reopened:I

    invoke-virtual {v10, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_176
    const/4 v2, -0x2

    .line 106
    invoke-virtual {v14, v2, v1, v15}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x1

    .line 107
    invoke-virtual {v14, v1, v0, v15}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$5;

    move-object v1, v0

    move-object v2, v14

    move-object/from16 v3, p0

    move-object/from16 v4, v17

    move-object v5, v12

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lio/dcloud/common/adapter/util/PermissionUtil$5;-><init>(Landroid/app/AlertDialog;Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/adapter/util/PermissionUtil$Request;Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 124
    :try_start_18e
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 125
    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$6;

    invoke-direct {v0, v10, v14}, Lio/dcloud/common/adapter/util/PermissionUtil$6;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_199} :catch_19a

    goto :goto_1a5

    :catch_19a
    move-exception v0

    const-string v1, "ian"

    const-string v2, "try dialog"

    .line 134
    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a5
    return-void
.end method

.method private static trycatchGetPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const-string v0, "/temp.3gp"

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_4
    const-string v3, "android.permission.CAMERA"

    .line 1
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_a} :catch_1cf
    .catchall {:try_start_4 .. :try_end_a} :catchall_1d7

    const/4 v4, 0x1

    if-eqz v3, :cond_45

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 4
    :goto_f
    :try_start_f
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result p2

    if-ge p1, p2, :cond_29

    .line 5
    new-instance p2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 6
    invoke-static {p1, p2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 7
    iget p2, p2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p2, v4, :cond_26

    .line 8
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0

    goto :goto_29

    :cond_26
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_29
    :goto_29
    if-nez p0, :cond_2f

    .line 13
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p0

    :cond_2f
    if-eqz p0, :cond_1cf

    .line 16
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 18
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    .line 20
    :cond_3a
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3d} :catch_3f
    .catchall {:try_start_f .. :try_end_3d} :catchall_1d7

    goto/16 :goto_1d7

    :catch_3f
    move-exception p0

    .line 24
    :try_start_40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1cf

    :cond_45
    const-string v3, "android.permission.RECORD_AUDIO"

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_4b} :catch_1cf
    .catchall {:try_start_40 .. :try_end_4b} :catchall_1d7

    if-eqz v3, :cond_118

    .line 28
    :try_start_4d
    new-instance p1, Landroid/media/MediaRecorder;

    invoke-direct {p1}, Landroid/media/MediaRecorder;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->reset()V

    .line 31
    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    const p2, 0x17700

    .line 33
    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 34
    invoke-virtual {p1, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    const/4 p2, 0x3

    .line 35
    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 36
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 37
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 38
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V

    .line 39
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 40
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1
    :try_end_a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_a7} :catch_1cf
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_a7} :catch_1d7
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_a7} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_a7} :catch_d2
    .catchall {:try_start_4d .. :try_end_a7} :catchall_1d7

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_1cf

    .line 42
    :try_start_ad
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ad .. :try_end_ca} :catch_1d7
    .catch Ljava/lang/IllegalStateException; {:try_start_ad .. :try_end_ca} :catch_1d7
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_ca} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ca} :catch_cc
    .catchall {:try_start_ad .. :try_end_ca} :catchall_1d7

    goto/16 :goto_1d7

    :catch_cc
    move-exception p0

    const/4 v2, 0x0

    goto :goto_d3

    :catch_cf
    move-exception p0

    const/4 v2, 0x0

    goto :goto_ed

    :catch_d2
    move-exception p0

    .line 60
    :goto_d3
    :try_start_d3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d7

    const-string p1, "start failed"

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e9

    const-string p1, "setAudioSource failed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d7

    :catch_e9
    :cond_e9
    :goto_e9
    move v1, v2

    goto/16 :goto_1d7

    :catch_ec
    move-exception p0

    .line 62
    :goto_ed
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10c

    .line 63
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Permission deny"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e9

    .line 64
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Permission denied"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10c

    goto :goto_e9

    .line 67
    :cond_10c
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object p1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->GIONEE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_114
    .catch Ljava/lang/SecurityException; {:try_start_d3 .. :try_end_114} :catch_e9
    .catchall {:try_start_d3 .. :try_end_114} :catchall_1d7

    if-nez p0, :cond_e9

    goto/16 :goto_1d7

    :cond_118
    :try_start_118
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    const-string v0, "location"

    .line 81
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v3, "gps"

    .line 82
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "network"

    .line 83
    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_134
    .catch Ljava/lang/SecurityException; {:try_start_118 .. :try_end_134} :catch_1cf
    .catchall {:try_start_118 .. :try_end_134} :catchall_1d7

    const-string v4, "ZTE B880"

    .line 84
    :try_start_136
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v3, :cond_145

    if-eqz v0, :cond_141

    goto :goto_145

    :cond_141
    if-eqz v4, :cond_1cf

    goto/16 :goto_1d7

    .line 86
    :cond_145
    :goto_145
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->isMiui(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/16 p1, -0x64

    if-eq p0, p1, :cond_1d7

    return p0

    :cond_14e
    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    goto/16 :goto_1cf

    :cond_158
    const-string v0, "android.permission.SEND_SMS"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    goto/16 :goto_1cf

    :cond_162
    const-string v0, "android.permission.CALL_PHONE"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16b

    goto :goto_1cf

    :cond_16b
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_171
    .catch Ljava/lang/SecurityException; {:try_start_136 .. :try_end_171} :catch_1cf
    .catchall {:try_start_136 .. :try_end_171} :catchall_1d7

    if-eqz v0, :cond_1af

    .line 99
    :try_start_173
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/temp.arm"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1a0

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 103
    :cond_1a0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1d7

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_1a9} :catch_1aa
    .catchall {:try_start_173 .. :try_end_1a9} :catchall_1d7

    goto :goto_1d7

    :catch_1aa
    move-exception p0

    .line 108
    :try_start_1ab
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1cf

    :cond_1af
    const-string v0, "android.permission.INSTALL_SHORTCUT"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 111
    invoke-static {p0, p2}, Lio/dcloud/common/util/AppPermissionUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eq v4, p0, :cond_1cf

    goto :goto_1d7

    :cond_1be
    const-string p0, "GALLERY"

    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c7

    goto :goto_1cf

    :cond_1c7
    const-string p0, "NATIVE.JS"

    .line 115
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d1

    :catch_1cf
    :cond_1cf
    :goto_1cf
    const/4 v1, -0x1

    goto :goto_1d7

    :cond_1d1
    const-string p0, "PUSH"

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d6
    .catch Ljava/lang/SecurityException; {:try_start_1ab .. :try_end_1d6} :catch_1cf
    .catchall {:try_start_1ab .. :try_end_1d6} :catchall_1d7

    goto :goto_1cf

    :catch_1d7
    :catchall_1d7
    :cond_1d7
    :goto_1d7
    return v1
.end method

.method private static unregisterWebAppReStartEvent(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/ISysEventListener;)V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppReStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p0, p1, v0}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    return-void
.end method

.method public static usePermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 4

    .line 17
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$2;

    invoke-direct {v0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$2;-><init>(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    invoke-static {p0, p1, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->useSystemPermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z

    return-void
.end method

.method public static declared-synchronized usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 9

    const-class v0, Lio/dcloud/common/adapter/util/PermissionUtil;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p4}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16

    .line 4
    invoke-virtual {p4, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_4b

    monitor-exit v0

    return-void

    .line 8
    :cond_16
    :try_start_16
    sget-object v2, Lio/dcloud/common/adapter/util/PermissionUtil;->useRejectedCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    if-lez p3, :cond_41

    .line 9
    sget-object v2, Lio/dcloud/common/adapter/util/PermissionUtil;->useRejectedCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_41

    .line 10
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p3, :cond_41

    .line 11
    invoke-virtual {p4, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_16 .. :try_end_3f} :catchall_4b

    monitor-exit v0

    return-void

    .line 16
    :cond_41
    :try_start_41
    new-instance p2, Lio/dcloud/common/adapter/util/PermissionUtil$1;

    invoke-direct {p2, p1, p4}, Lio/dcloud/common/adapter/util/PermissionUtil$1;-><init>(Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    invoke-static {p0, v1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->useSystemPermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4b

    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static useStreamPermission(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->activity:Landroid/app/Activity;

    .line 2
    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->appid:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->streamPerName:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    .line 5
    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkStreamAppPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    goto :goto_20

    .line 11
    :cond_15
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)V

    goto :goto_20

    .line 12
    :cond_19
    invoke-virtual {v3, v2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    goto :goto_20

    .line 18
    :cond_1d
    invoke-virtual {v3, v2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    :goto_20
    return v0
.end method

.method public static useSystemPermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1c

    if-eqz p1, :cond_1c

    const-string v0, "android.permission"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 3
    :goto_1d
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_60

    .line 5
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->setRequestCode(I)V

    .line 6
    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_5a

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object p1, v0, v3

    .line 9
    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getRequestCode()I

    move-result p1

    invoke-static {p0, v0, p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->requestSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto :goto_64

    :cond_4e
    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    .line 11
    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getRequestCode()I

    move-result p1

    invoke-static {p0, v0, p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->requestSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto :goto_64

    :cond_5a
    if-nez v0, :cond_64

    .line 15
    invoke-virtual {p2, v1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    goto :goto_63

    .line 19
    :cond_60
    invoke-virtual {p2, v1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    :goto_63
    const/4 v2, 0x1

    :cond_64
    :goto_64
    return v2
.end method

.method public static useSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_17

    if-eqz p1, :cond_17

    array-length v0, p1

    if-lez v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 3
    :goto_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v0, :cond_be

    .line 5
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->setRequestCode(I)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    if-nez v0, :cond_5b

    const-string v0, "ALWAYS_DENIED_PERMISSION"

    const-string v4, "permissions"

    .line 9
    invoke-static {p0, v0, v4}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v4, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    goto :goto_5c

    .line 13
    :cond_53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    :goto_5c
    const/4 v0, 0x0

    .line 16
    :goto_5d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_9f

    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 18
    invoke-static {v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_82

    .line 21
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    goto :goto_9c

    .line 23
    :cond_82
    sget-object v5, Lio/dcloud/common/adapter/util/PermissionUtil;->alwaysDeniedPer:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    if-nez v2, :cond_9c

    .line 24
    invoke-static {p0, v4}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9c

    .line 25
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-static {v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    :cond_9c
    :goto_9c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 30
    :cond_9f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a8

    .line 31
    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 32
    :cond_a8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d4

    new-array p1, v3, [Ljava/lang/String;

    .line 33
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->getRequestCode()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->requestSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto :goto_d4

    .line 36
    :cond_be
    :goto_be
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_d4

    .line 37
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2StreamPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_be

    :cond_d4
    :goto_d4
    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.AnonymousClass1 (io.dcloud.common.adapter.util.PermissionUtil$1)
.class final Lio/dcloud/common/adapter/util/PermissionUtil$1;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$featureName:Ljava/lang/String;

.field final synthetic val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$featureName:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_48

    .line 2
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_20

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    :cond_20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 10
    :cond_39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_40
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 14
    :cond_48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$000()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$featureName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5d

    .line 21
    :catch_5d
    :goto_5d
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1b

    .line 8
    :catch_1b
    :cond_1b
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$1;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.AnonymousClass2 (io.dcloud.common.adapter.util.PermissionUtil$2)
.class final Lio/dcloud/common/adapter/util/PermissionUtil$2;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$2;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$2;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$2;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.AnonymousClass3 (io.dcloud.common.adapter.util.PermissionUtil$3)
.class final Lio/dcloud/common/adapter/util/PermissionUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_dialog:Landroid/app/AlertDialog;

.field final synthetic val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

.field final synthetic val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

.field final synthetic val$streamPerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;Lio/dcloud/common/adapter/util/PermissionUtil$Request;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$_dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    iput-object p3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    iput-object p4, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$streamPerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterSysEventListener registerSysEventListener pEventType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Permission"

    invoke-static {v0, p2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppReStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_35

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$_dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$400(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/ISysEventListener;)V

    .line 6
    :try_start_26
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$3;->val$streamPerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$500()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    :goto_35
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.AnonymousClass4 (io.dcloud.common.adapter.util.PermissionUtil$4)
.class final Lio/dcloud/common/adapter/util/PermissionUtil$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_dialog:Landroid/app/AlertDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$f_checkbox:Landroid/widget/CheckBox;

.field final synthetic val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

.field final synthetic val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

.field final synthetic val$streamPerName:Ljava/lang/String;

.field final synthetic val$webappStop:Lio/dcloud/common/DHInterface/ISysEventListener;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;Lio/dcloud/common/DHInterface/ISysEventListener;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 9

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$_dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    iput-object p3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$webappStop:Lio/dcloud/common/DHInterface/ISysEventListener;

    iput-object p4, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$f_checkbox:Landroid/widget/CheckBox;

    iput-object p5, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$activity:Landroid/app/Activity;

    iput-object p6, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$appid:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$streamPerName:Ljava/lang/String;

    iput-object p8, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$_dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_10

    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$webappStop:Lio/dcloud/common/DHInterface/ISysEventListener;

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$400(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/ISysEventListener;)V

    :cond_10
    const/4 p1, -0x1

    if-ne p2, p1, :cond_30

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$f_checkbox:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1a
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 5
    :goto_1e
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$appid:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$streamPerName:Ljava/lang/String;

    xor-int/2addr p1, p2

    invoke-static {v0, v1, v2, p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->putStreamAppPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$streamPerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    goto :goto_4d

    :cond_30
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4d

    .line 8
    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$f_checkbox:Landroid/widget/CheckBox;

    if-eqz p2, :cond_46

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_46

    .line 9
    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$appid:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$streamPerName:Ljava/lang/String;

    invoke-static {p2, v0, v1, p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->putStreamAppPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    :cond_46
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$4;->val$streamPerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    .line 13
    :cond_4d
    :goto_4d
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$500()V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.AnonymousClass5 (io.dcloud.common.adapter.util.PermissionUtil$5)
.class final Lio/dcloud/common/adapter/util/PermissionUtil$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_dialog:Landroid/app/AlertDialog;

.field final synthetic val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

.field final synthetic val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

.field final synthetic val$streamPerName:Ljava/lang/String;

.field final synthetic val$webappStop:Lio/dcloud/common/DHInterface/ISysEventListener;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/adapter/util/PermissionUtil$Request;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$_dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    iput-object p3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$webappStop:Lio/dcloud/common/DHInterface/ISysEventListener;

    iput-object p4, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    iput-object p5, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$streamPerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_25

    const/4 p1, 0x4

    if-ne p2, p1, :cond_25

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$_dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$sdData:Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_1a

    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$webappStop:Lio/dcloud/common/DHInterface/ISysEventListener;

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$400(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/ISysEventListener;)V

    .line 5
    :cond_1a
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    iget-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$5;->val$streamPerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onDenied(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$500()V

    return p3

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.AnonymousClass6 (io.dcloud.common.adapter.util.PermissionUtil$6)
.class final Lio/dcloud/common/adapter/util/PermissionUtil$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;->showStreamAppPermissionDialog(Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_dialog:Landroid/app/AlertDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$6;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$6;->val$_dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$6;->val$activity:Landroid/app/Activity;

    if-eqz p1, :cond_f

    instance-of v0, p1, Lio/dcloud/WebAppActivity;

    if-eqz v0, :cond_f

    .line 2
    check-cast p1, Lio/dcloud/WebAppActivity;

    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$6;->val$_dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Lio/dcloud/WebAppActivity;->removeFromRecord(Landroid/app/Dialog;)V

    :cond_f
    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.PermissionData (io.dcloud.common.adapter.util.PermissionUtil$PermissionData)
.class Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionData"
.end annotation


# static fields
.field static final CB_NOSHOW:I = -0x1

.field static final CB_SELECTED:I = 0x1

.field static final CB_SHOW:I = 0x0

.field static final GT_DENIED:I = -0x1

.field static final GT_GRANTED:I = 0x1

.field static final GT_ONCE:I


# instance fields
.field checkbox:I

.field grantType:I

.field messageId:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->name:Ljava/lang/String;

    .line 3
    iput p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->messageId:I

    .line 4
    iput p3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->checkbox:I

    .line 5
    iput p4, p0, Lio/dcloud/common/adapter/util/PermissionUtil$PermissionData;->grantType:I

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.Request (io.dcloud.common.adapter.util.PermissionUtil$Request)
.class public abstract Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Request"
.end annotation


# static fields
.field public static final PERMISSION_ASK:I = 0x1

.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_GRANTED:I


# instance fields
.field private mRequestCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$600()I

    move-result v0

    iput v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->mRequestCode:I

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->mRequestCode:I

    return v0
.end method

.method public abstract onDenied(Ljava/lang/String;)V
.end method

.method public abstract onGranted(Ljava/lang/String;)V
.end method

.method public setRequestCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->mRequestCode:I

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.SafeCenter (io.dcloud.common.adapter.util.PermissionUtil$SafeCenter)
.class Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeCenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;
    }
.end annotation


# static fields
.field private static datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->goSafeCenter(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->goSafeCenter(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z

    move-result p0

    return p0
.end method

.method private static goSafeCenter(Landroid/app/Activity;)V
    .registers 9

    const-string v0, "Permission"

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->init(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_b
    sget-object v4, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_be

    .line 4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 5
    sget-object v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    .line 7
    :try_start_20
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_26} :catch_ba

    if-nez v6, :cond_2a

    goto/16 :goto_ba

    .line 14
    :cond_2a
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->clsName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 15
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    iget-object v7, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->clsName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_47

    .line 16
    :cond_3a
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 17
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :cond_47
    :goto_47
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->action:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 20
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->action:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    :cond_54
    iget-object v6, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->extParamName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_65

    .line 23
    iget-object v5, v5, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->extParamName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_65
    const/high16 v5, 0x10000000

    .line 26
    :try_start_67
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "successful "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_67 .. :try_end_8b} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_8b} :catch_8c

    goto :goto_ba

    :catch_8c
    move-exception v4

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    :catch_a2
    move-exception v4

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityNotFoundException ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :catch_ba
    :goto_ba
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_be
    return-void
.end method

.method private static goSafeCenter(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)Z
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 36
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v4

    const-string v0, "LOCATION"

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "intent="

    const-string v6, "successful "

    const-string v7, "Exception ="

    const-string v8, "ActivityNotFoundException ="

    const/4 v9, 0x1

    const-string v10, "Permission"

    if-eqz v0, :cond_88

    const-string v0, "location"

    .line 38
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v11, "gps"

    .line 39
    invoke-virtual {v0, v11}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "network"

    .line 40
    invoke-virtual {v0, v12}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v11, :cond_88

    if-eqz v0, :cond_36

    goto :goto_88

    .line 43
    :cond_36
    new-instance v0, Landroid/content/Intent;

    const-string v11, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    :try_start_3d
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 46
    invoke-static {v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$300(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V

    .line 47
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3d .. :try_end_5d} :catch_72
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5d} :catch_5e

    return v9

    :catch_5e
    move-exception v0

    .line 53
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    :catch_72
    move-exception v0

    .line 54
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 61
    :cond_88
    :goto_88
    invoke-static/range {p0 .. p0}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->init(Landroid/content/Context;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 64
    :goto_91
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_13b

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    sget-object v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    .line 68
    :try_start_a6
    iget-object v15, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-virtual {v11, v15, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15
    :try_end_ac
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a6 .. :try_end_ac} :catch_136

    if-nez v15, :cond_b0

    goto/16 :goto_136

    .line 75
    :cond_b0
    iget-object v15, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->clsName:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_c0

    .line 76
    iget-object v15, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    iget-object v12, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->clsName:Ljava/lang/String;

    invoke-virtual {v0, v15, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_cd

    .line 77
    :cond_c0
    iget-object v12, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_cd

    .line 78
    iget-object v12, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_cd
    :goto_cd
    iget-object v12, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->action:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_da

    .line 81
    iget-object v12, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->action:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    :cond_da
    iget-object v12, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->extParamName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_eb

    .line 84
    iget-object v12, v14, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->extParamName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :cond_eb
    :try_start_eb
    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 88
    invoke-static {v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->access$300(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;I)V

    .line 89
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_eb .. :try_end_10b} :catch_120
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_10b} :catch_10c

    return v9

    :catch_10c
    move-exception v0

    .line 95
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_136

    :catch_120
    move-exception v0

    .line 96
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :catch_136
    :goto_136
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x0

    goto/16 :goto_91

    :cond_13b
    return v9
.end method

.method static init(Landroid/content/Context;)V
    .registers 9

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 3
    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/temp.j"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/lang/String;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 6
    :goto_39
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p0, v1, :cond_72

    .line 7
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "p"

    .line 8
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 10
    sget-object v3, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v4, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v5, "c"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "e"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "a"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v5, v6, v1}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6b} :catch_6e

    :cond_6b
    add-int/lit8 p0, p0, 0x1

    goto :goto_39

    :catch_6e
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_72
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_109

    .line 17
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    const-string v3, "extra_pkgname"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v2, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.meizu.safe"

    const-string v2, "com.meizu.safe.security.AppSecActivity"

    const-string v3, "packageName"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.aliyun.mobile.permission"

    const-string v2, "com.aliyun.mobile.permission.ExternalAppDetailActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.iqoo.secure"

    const-string v2, "com.iqoo.secure.MainActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.sonymobile.cta"

    const-string v2, "com.sonymobile.cta.SomcCTAMainActivity"

    const-string v3, "package"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.mediatek.security"

    const-string v2, "com.mediatek.security.ui.PermissionControlPageActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.yulong.android.launcher3"

    const-string v2, "com.yulong.android.launcher3.LauncherSettingsActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$ManageApplicationsActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;

    const-string v1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v0, v4, v4, v3, v1}, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_109
    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.SafeCenter.Item (io.dcloud.common.adapter.util.PermissionUtil$SafeCenter$Item)
.class Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field clsName:Ljava/lang/String;

.field extParamName:Ljava/lang/String;

.field pname:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->pname:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->clsName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->extParamName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/dcloud/common/adapter/util/PermissionUtil$SafeCenter$Item;->action:Ljava/lang/String;

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.ShowDialogData (io.dcloud.common.adapter.util.PermissionUtil$ShowDialogData)
.class Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowDialogData"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field appName:Ljava/lang/String;

.field appid:Ljava/lang/String;

.field force:Z

.field mApp:Lio/dcloud/common/DHInterface/IApp;

.field request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

.field streamPerName:Ljava/lang/String;

.field tryTimes:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->tryTimes:I

    .line 10
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->mApp:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->streamPerName:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->appid:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->appName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;-><init>(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p6}, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->setRequestHandler(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-void
.end method


# virtual methods
.method setRequestHandler(Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$ShowDialogData;->request:Lio/dcloud/common/adapter/util/PermissionUtil$Request;

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PermissionUtil.StreamPermissionRequest (io.dcloud.common.adapter.util.PermissionUtil$StreamPermissionRequest)
.class public abstract Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StreamPermissionRequest"
.end annotation


# instance fields
.field mApp:Lio/dcloud/common/DHInterface/IApp;

.field private mAppName:Ljava/lang/String;

.field public mAppid:Ljava/lang/String;

.field private mOriginalPermisson:[Ljava/lang/String;

.field private mPermission:[Ljava/lang/String;

.field public mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mTag:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mAppid:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mAppName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mPermission:[Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mOriginalPermisson:[Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->setApp(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method getStreamRequestPermission()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mOriginalPermisson:[Ljava/lang/String;

    return-object v0
.end method

.method protected getSystemRequestPermission()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mPermission:[Ljava/lang/String;

    return-object v0
.end method

.method public setApp(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mAppid:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public varargs setRequestPermission([Ljava/lang/String;)Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mOriginalPermisson:[Ljava/lang/String;

    .line 2
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mPermission:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    :goto_8
    iget-object v1, p0, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;->mPermission:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 4
    aget-object v2, p1, v0

    invoke-static {v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    return-object p0
.end method
