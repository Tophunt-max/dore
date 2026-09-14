###### Class io.dcloud.common.util.AppStatusBarManager (io.dcloud.common.util.AppStatusBarManager)
.class public Lio/dcloud/common/util/AppStatusBarManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isFullScreen:Z

.field public isHandledWhiteScreen:Z

.field public isImmersive:Z

.field public isTemporaryFullScreen:Z

.field private mIApp:Lio/dcloud/common/DHInterface/IApp;

.field private mStatusBarDefaultColor:I

.field private mWebAppInfo:Lio/dcloud/g/a/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/dcloud/g/a/f;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->mStatusBarDefaultColor:I

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    .line 6
    iput-boolean v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreen:Z

    .line 8
    iput-boolean v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->isHandledWhiteScreen:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->isTemporaryFullScreen:Z

    .line 18
    invoke-direct {p0, p1}, Lio/dcloud/common/util/AppStatusBarManager;->initStatusBarDefaultColor(Landroid/app/Activity;)V

    .line 19
    iput-object p2, p0, Lio/dcloud/common/util/AppStatusBarManager;->mWebAppInfo:Lio/dcloud/g/a/f;

    .line 20
    check-cast p2, Lio/dcloud/common/DHInterface/IApp;

    iput-object p2, p0, Lio/dcloud/common/util/AppStatusBarManager;->mIApp:Lio/dcloud/common/DHInterface/IApp;

    .line 22
    invoke-direct {p0}, Lio/dcloud/common/util/AppStatusBarManager;->initDirectImmersive()V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/util/AppStatusBarManager;Landroid/app/Activity;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/util/AppStatusBarManager;->getRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private diyContentFullScreenBug(Landroid/app/Activity;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IActivityDelegate;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lio/dcloud/common/DHInterface/IActivityDelegate;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IActivityDelegate;->obtainActivityContentView()Landroid/widget/FrameLayout;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-nez p1, :cond_f

    return-void

    .line 25
    :cond_f
    iget-boolean p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreen:Z

    if-nez p1, :cond_23

    iget-boolean p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-eqz p1, :cond_18

    goto :goto_23

    :cond_18
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->isTemporaryFullScreen:Z

    .line 34
    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->setAdjust(Z)V

    goto :goto_3f

    :cond_23
    :goto_23
    const-string p1, "DCLOUD_INPUT_MODE"

    .line 35
    invoke-static {p1}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "adjustPan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 38
    :cond_37
    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->setAdjust(Z)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private getRootView(Landroid/app/Activity;)Landroid/view/View;
    .registers 3

    const v0, 0x1020002

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private initDirectImmersive()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->mWebAppInfo:Lio/dcloud/g/a/f;

    invoke-virtual {v0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "direct_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->mWebAppInfo:Lio/dcloud/g/a/f;

    iget-object v0, v0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_45

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v0, v2, :cond_45

    .line 3
    iget-object v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->mIApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-virtual {p0, v0}, Lio/dcloud/common/util/AppStatusBarManager;->getDirectStatusJson(Lio/dcloud/common/DHInterface/IApp;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3f

    const-string v2, "immersed"

    .line 4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    goto :goto_41

    .line 7
    :cond_3f
    iput-boolean v1, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    .line 9
    :goto_41
    iget-boolean v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->isImmersive:Z

    :cond_45
    return-void
.end method

.method private initStatusBarDefaultColor(Landroid/app/Activity;)V
    .registers 4

    if-eqz p1, :cond_29

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_29

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/util/AppStatusBarManager;->getStatusbarColorIndex()I

    move-result v0

    if-lez v0, :cond_1d

    .line 5
    invoke-virtual {p1}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->mStatusBarDefaultColor:I

    .line 7
    :cond_1d
    iget p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->mStatusBarDefaultColor:I

    if-nez p1, :cond_29

    const-string p1, "#D4D4D4"

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->mStatusBarDefaultColor:I

    :cond_29
    return-void
.end method

.method private setMeizuStatusBarDarkIcon(Landroid/app/Activity;Z)V
    .registers 7

    if-eqz p1, :cond_3b

    .line 1
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "meizuFlags"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-eqz p2, :cond_2f

    or-int p2, v3, v1

    goto :goto_31

    :cond_2f
    not-int p2, v1

    and-int/2addr p2, v3

    .line 15
    :goto_31
    invoke-virtual {v2, v0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_3b

    :catch_3b
    :cond_3b
    return-void
.end method

.method private setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_8
    const-string v1, "android.view.MiuiWindowManager$LayoutParams"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_43

    const-string v2, "setExtraFlags"

    const/4 v3, 0x2

    :try_start_1b
    new-array v4, v3, [Ljava/lang/Class;

    .line 7
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz p2, :cond_33

    move p2, v1

    goto :goto_34

    :cond_33
    const/4 p2, 0x0

    :goto_34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v7

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_43} :catch_43

    :catch_43
    return-void
.end method

.method private setTranslucentStatus(Landroid/app/Activity;Z)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p2, :cond_12

    .line 5
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr p2, v2

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1a

    .line 7
    :cond_12
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x4000001

    and-int/2addr p2, v2

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 9
    :goto_1a
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lio/dcloud/common/util/AppStatusBarManager$2;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/util/AppStatusBarManager$2;-><init>(Lio/dcloud/common/util/AppStatusBarManager;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public checkImmersedStatusBar(Landroid/content/Context;Z)Z
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_8

    return v1

    .line 7
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 10
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_27

    const-string v2, "immersed.status.bar"

    .line 11
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_22} :catch_23

    goto :goto_28

    :catch_23
    move-exception p1

    .line 15
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_27
    const/4 p1, 0x0

    :goto_28
    if-nez p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move p2, p1

    .line 20
    :goto_2c
    iget-object p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->mWebAppInfo:Lio/dcloud/g/a/f;

    iget-object p1, p1, Lio/dcloud/g/a/f;->l:Ljava/lang/String;

    const-string v2, "suggestedDevice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_5b

    if-eqz p2, :cond_5b

    .line 21
    sget-object p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBrand:Ljava/lang/String;

    sget-object p2, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4f

    sget-object p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBrand:Ljava/lang/String;

    sget-object p2, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_53

    :cond_4f
    const/16 p1, 0x15

    if-ge v0, p1, :cond_5a

    :cond_53
    const/16 p1, 0x17

    if-lt v0, p1, :cond_58

    goto :goto_5a

    :cond_58
    const/4 p2, 0x0

    goto :goto_5b

    :cond_5a
    :goto_5a
    const/4 p2, 0x1

    .line 27
    :cond_5b
    :goto_5b
    iput-boolean p2, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-nez p2, :cond_a1

    .line 29
    iget-object p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->mWebAppInfo:Lio/dcloud/g/a/f;

    invoke-virtual {p1}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "direct_page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->mWebAppInfo:Lio/dcloud/g/a/f;

    iget-object p1, p1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7c

    const/4 v1, 0x1

    :cond_7c
    if-eqz v1, :cond_a1

    .line 30
    iget-object p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->mIApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->manifestBeParsed()Z

    move-result p1

    if-nez p1, :cond_a1

    .line 31
    iget-object p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->mIApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-virtual {p0, p1}, Lio/dcloud/common/util/AppStatusBarManager;->getDirectStatusJson(Lio/dcloud/common/DHInterface/IApp;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_9d

    const-string p2, "immersed"

    .line 32
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 33
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    goto :goto_9f

    .line 35
    :cond_9d
    iput-boolean v2, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    .line 37
    :goto_9f
    iget-boolean p2, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    .line 40
    :cond_a1
    iget-boolean p1, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->isImmersive:Z

    return p2
.end method

.method public getDirectStatusJson(Lio/dcloud/common/DHInterface/IApp;)Lorg/json/JSONObject;
    .registers 5

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "statusbar"

    if-eqz v0, :cond_17

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2a

    return-object p1

    .line 8
    :cond_17
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SitemapJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStatusBarDefaultColor()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->mStatusBarDefaultColor:I

    return v0
.end method

.method public getStatusbarColorIndex()I
    .registers 4

    :try_start_0
    const-string v0, "Y29tLmFuZHJvaWQuaW50ZXJuYWwuUiRzdHlsZWFibGU="

    .line 1
    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Window_statusBarColor"

    .line 2
    invoke-static {v1, v2, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    const/4 v0, -0x1

    :goto_1b
    return v0
.end method

.method public isFullScreenOrImmersive()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreen:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public setFullScreen(Landroid/app/Activity;Z)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    iput-boolean p2, p0, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreen:Z

    const/16 v1, 0x1c

    if-eqz p2, :cond_1f

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 5
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_1b

    const/4 v1, 0x1

    .line 7
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 9
    :cond_1b
    invoke-virtual {v0, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_33

    .line 11
    :cond_1f
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 12
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_30

    const/4 v1, 0x0

    .line 14
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 16
    :cond_30
    invoke-virtual {v0, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 18
    :goto_33
    invoke-direct {p0, p1}, Lio/dcloud/common/util/AppStatusBarManager;->diyContentFullScreenBug(Landroid/app/Activity;)V

    return-void
.end method

.method public setImmersive(Landroid/app/Activity;Z)V
    .registers 7

    if-eqz p1, :cond_73

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_6b

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBrand:Ljava/lang/String;

    sget-object v2, Lio/dcloud/common/adapter/util/MobilePhoneModel;->SONY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x15

    if-eqz v1, :cond_16

    if-ge v0, v2, :cond_6b

    :cond_16
    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBrand:Ljava/lang/String;

    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->QiKU:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    if-lt v0, v2, :cond_23

    goto :goto_6b

    :cond_23
    if-lt v0, v2, :cond_73

    .line 8
    iput-boolean p2, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p2, :cond_4d

    const/high16 p2, 0x4000000

    .line 12
    invoke-virtual {v0, p2}, Landroid/view/Window;->clearFlags(I)V

    const/high16 p2, -0x80000000

    .line 13
    invoke-virtual {v0, p2}, Landroid/view/Window;->addFlags(I)V

    or-int/lit16 p2, v1, 0x500

    .line 15
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 p2, 0x0

    .line 16
    invoke-virtual {v0, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_5b

    :cond_4d
    and-int/lit16 p2, v1, -0x501

    .line 19
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 20
    iget p2, p0, Lio/dcloud/common/util/AppStatusBarManager;->mStatusBarDefaultColor:I

    invoke-virtual {v0, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 22
    :goto_5b
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lio/dcloud/common/util/AppStatusBarManager$1;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/util/AppStatusBarManager$1;-><init>(Lio/dcloud/common/util/AppStatusBarManager;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    invoke-direct {p0, p1}, Lio/dcloud/common/util/AppStatusBarManager;->diyContentFullScreenBug(Landroid/app/Activity;)V

    goto :goto_73

    .line 34
    :cond_6b
    :goto_6b
    iput-boolean p2, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    .line 35
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/AppStatusBarManager;->setTranslucentStatus(Landroid/app/Activity;Z)V

    .line 36
    invoke-direct {p0, p1}, Lio/dcloud/common/util/AppStatusBarManager;->diyContentFullScreenBug(Landroid/app/Activity;)V

    :cond_73
    :goto_73
    return-void
.end method

.method public setStatusBarColor(Landroid/app/Activity;I)V
    .registers 5

    .line 1
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->checkStatusbarColor(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1f

    if-eqz p1, :cond_1f

    iget-boolean v0, p0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-nez v0, :cond_1f

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1f
    return-void
.end method

.method public setStatusBarMode(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6d

    if-eqz p1, :cond_6d

    .line 2
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string p2, "nono"

    :cond_10
    const-string v1, "dark"

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 7
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->GOOGLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 8
    :cond_26
    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 9
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/AppStatusBarManager;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)V

    goto :goto_3d

    .line 10
    :cond_32
    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 11
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/AppStatusBarManager;->setMeizuStatusBarDarkIcon(Landroid/app/Activity;Z)V

    :cond_3d
    :goto_3d
    const/16 p1, 0x17

    if-lt v0, p1, :cond_6d

    .line 14
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    const/16 v0, 0x2000

    :try_start_4b
    const-string v2, "android.view.View"

    .line 19
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SYSTEM_UI_FLAG_LIGHT_STATUS_BAR"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_60
    if-eqz p2, :cond_64

    or-int/2addr p1, v0

    goto :goto_66

    :cond_64
    not-int p2, v0

    and-int/2addr p1, p2

    .line 30
    :goto_66
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_6d
    return-void
.end method

###### Class io.dcloud.common.util.AppStatusBarManager.AnonymousClass1 (io.dcloud.common.util.AppStatusBarManager$1)
.class Lio/dcloud/common/util/AppStatusBarManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppStatusBarManager;->setImmersive(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/util/AppStatusBarManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lio/dcloud/common/util/AppStatusBarManager;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppStatusBarManager$1;->this$0:Lio/dcloud/common/util/AppStatusBarManager;

    iput-object p2, p0, Lio/dcloud/common/util/AppStatusBarManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/AppStatusBarManager$1;->this$0:Lio/dcloud/common/util/AppStatusBarManager;

    iget-object v1, p0, Lio/dcloud/common/util/AppStatusBarManager$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppStatusBarManager;->access$000(Lio/dcloud/common/util/AppStatusBarManager;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    if-eqz v1, :cond_1a

    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2a

    .line 4
    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2a

    .line 5
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2a
    :goto_2a
    return-void
.end method

###### Class io.dcloud.common.util.AppStatusBarManager.AnonymousClass2 (io.dcloud.common.util.AppStatusBarManager$2)
.class Lio/dcloud/common/util/AppStatusBarManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppStatusBarManager;->setTranslucentStatus(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/util/AppStatusBarManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lio/dcloud/common/util/AppStatusBarManager;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppStatusBarManager$2;->this$0:Lio/dcloud/common/util/AppStatusBarManager;

    iput-object p2, p0, Lio/dcloud/common/util/AppStatusBarManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/AppStatusBarManager$2;->this$0:Lio/dcloud/common/util/AppStatusBarManager;

    iget-object v1, p0, Lio/dcloud/common/util/AppStatusBarManager$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppStatusBarManager;->access$000(Lio/dcloud/common/util/AppStatusBarManager;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    if-eqz v1, :cond_1a

    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2a

    .line 4
    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2a

    .line 5
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2a
    :goto_2a
    return-void
.end method
