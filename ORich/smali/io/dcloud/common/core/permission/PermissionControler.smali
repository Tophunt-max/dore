###### Class io.dcloud.common.core.permission.PermissionControler (io.dcloud.common.core.permission.PermissionControler)
.class public final Lio/dcloud/common/core/permission/PermissionControler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_GRANTED:I

.field static mAppPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static mRootAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRtPnInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/dcloud/common/core/permission/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mAppPermissions:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mRootAppList:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mRtPnInfos:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    .line 2
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    .line 3
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SHORTCUT"

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 6
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object p1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "notdeny"

    const-string v3, "denied"

    if-eqz p1, :cond_38

    .line 7
    invoke-static {v0}, Lio/dcloud/common/util/ShortCutUtil;->getHeadShortCutIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {v1, p0}, Lio/dcloud/common/util/AppPermissionUtil;->isFlymeShortcutallowAllow(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_37

    return-object v3

    :cond_37
    return-object v2

    .line 12
    :cond_38
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v0, Lio/dcloud/common/adapter/util/MobilePhoneModel;->SMARTISAN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 13
    invoke-static {v1}, Lio/dcloud/common/adapter/util/MobilePhoneModel;->isSmartisanLauncherPhone(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_49

    return-object v3

    :cond_49
    return-object v2

    .line 19
    :cond_4a
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->getShotCutOpId()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_88

    .line 20
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->getShotCutOpId()I

    .line 21
    sget-object v0, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_78

    .line 22
    invoke-static {v1}, Lio/dcloud/common/util/AppPermissionUtil;->checkOp(Landroid/content/Context;)I

    move-result p0

    if-eq p0, v4, :cond_75

    if-eqz p0, :cond_72

    const/4 p1, 0x1

    if-eq p0, p1, :cond_71

    const/4 p1, 0x3

    if-eq p0, p1, :cond_6e

    const/4 p1, 0x4

    if-eq p0, p1, :cond_6e

    goto :goto_88

    :cond_6e
    const-string p0, "undetermined"

    return-object p0

    :cond_71
    return-object v3

    :cond_72
    const-string p0, "authorized"

    return-object p0

    :cond_75
    const-string p0, "unsupported"

    return-object p0

    .line 35
    :cond_78
    sget-object p0, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_88

    .line 36
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->isEmuiShortcutallowAllow()Z

    move-result p0

    if-nez p0, :cond_87

    return-object v3

    :cond_87
    return-object v2

    :cond_88
    :goto_88
    const-string p0, "unknown"

    return-object p0

    .line 44
    :cond_8b
    invoke-static {p1}, Lio/dcloud/common/core/permission/PermissionControler;->convertNativePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p0

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lio/dcloud/common/DHInterface/IApp;->checkSelfPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lio/dcloud/common/core/permission/PermissionControler;->convert5PlusValue(I)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public static checkSafePermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p0, "console"

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "events"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "uninview"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "webview-x5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "uiwebview"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "faceid"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    goto :goto_47

    :cond_45
    const/4 p0, 0x0

    goto :goto_48

    :cond_47
    :goto_47
    const/4 p0, 0x1

    :goto_48
    return p0
.end method

.method public static clearCRequestPermissionsCache()V
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mRtPnInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public static convert5PlusValue(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    if-eqz p0, :cond_8

    const-string p0, "unknown"

    return-object p0

    :cond_8
    const-string p0, "authorized"

    return-object p0

    :cond_b
    const-string p0, "undetermined"

    return-object p0
.end method

.method public static convertNativePermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static destroy()V
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mAppPermissions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mAppPermissions:Ljava/util/HashMap;

    return-void
.end method

.method public static getPermissionList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mAppPermissions:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getPermissionsErrorDesp(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "invocation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lio/dcloud/base/R$string;->dcloud_permissions_njs_tips1:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registerPermission(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mAppPermissions:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mAppPermissions:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static registerRootPermission(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mRootAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static removeRequestPermissionForCode(I)V
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mRtPnInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/permission/a;

    .line 2
    iget v2, v1, Lio/dcloud/common/core/permission/a;->b:I

    if-ne v2, p0, :cond_6

    .line 3
    sget-object p0, Lio/dcloud/common/core/permission/PermissionControler;->mRtPnInfos:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 5

    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    .line 1
    array-length v0, p1

    if-lez v0, :cond_25

    .line 2
    instance-of v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;

    if-eqz v0, :cond_22

    .line 3
    new-instance v0, Lio/dcloud/common/core/permission/a;

    invoke-direct {v0, p1, p2}, Lio/dcloud/common/core/permission/a;-><init>([Ljava/lang/String;I)V

    .line 4
    sget-object v1, Lio/dcloud/common/core/permission/PermissionControler;->mRtPnInfos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mRtPnInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 7
    invoke-static {p0, p1, p2}, Lio/dcloud/common/core/permission/PermissionControler;->runRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_25

    .line 10
    :cond_22
    invoke-static {p0, p1, p2}, Lio/dcloud/common/core/permission/PermissionControler;->runRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_25
    :goto_25
    return-void
.end method

.method public static runNextRequestPermission(Landroid/app/Activity;I)V
    .registers 3

    .line 1
    invoke-static {p1}, Lio/dcloud/common/core/permission/PermissionControler;->removeRequestPermissionForCode(I)V

    .line 2
    sget-object p1, Lio/dcloud/common/core/permission/PermissionControler;->mRtPnInfos:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1c

    .line 3
    sget-object p1, Lio/dcloud/common/core/permission/PermissionControler;->mRtPnInfos:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/core/permission/a;

    if-eqz p1, :cond_1c

    .line 5
    iget-object v0, p1, Lio/dcloud/common/core/permission/a;->a:[Ljava/lang/String;

    iget p1, p1, Lio/dcloud/common/core/permission/a;->b:I

    invoke-static {p0, v0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->runRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1c
    return-void
.end method

.method private static runRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 9

    if-eqz p1, :cond_35

    .line 1
    array-length v0, p1

    if-lez v0, :cond_35

    .line 2
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "requestUniMPPermissions"

    invoke-static {v0, p1, p0, v2, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 6
    :cond_32
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_35
    :goto_35
    return-void
.end method

.method public static unregisterRootPermission(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/core/permission/PermissionControler;->mRootAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
