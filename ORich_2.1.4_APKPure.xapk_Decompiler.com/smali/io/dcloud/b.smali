###### Class io.dcloud.b (io.dcloud.b)
.class abstract Lio/dcloud/b;
.super Lio/dcloud/c;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IOnCreateSplashView;
.implements Lio/dcloud/e;


# instance fields
.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Lio/dcloud/EntryProxy;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field j:Landroid/app/AlertDialog;

.field k:I

.field private l:I

.field private m:I

.field n:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    const-string v1, "Main_App"

    .line 3
    iput-object v1, p0, Lio/dcloud/b;->f:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    const/16 v0, 0x14

    .line 9
    iput v0, p0, Lio/dcloud/b;->k:I

    const/16 v0, 0x238d

    .line 10
    iput v0, p0, Lio/dcloud/b;->l:I

    const/16 v0, 0x238e

    .line 11
    iput v0, p0, Lio/dcloud/b;->m:I

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 35
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 39
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "DCLOUD_AD_ID"

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "adid"

    .line 42
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "save"

    .line 44
    invoke-static {p1, v0, v2, v1}, Lio/dcloud/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4

    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_14

    const-string v0, "appid"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/b;->f:Ljava/lang/String;

    :cond_14
    return-void
.end method

.method static synthetic a(Lio/dcloud/b;)V
    .registers 1

    .line 2
    invoke-direct {p0}, Lio/dcloud/b;->d()V

    return-void
.end method

.method static synthetic a(Lio/dcloud/b;Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/b;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/b;Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lio/dcloud/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/b;[Ljava/lang/String;)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Lio/dcloud/b;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 5

    .line 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_a

    goto :goto_12

    :cond_a
    const-string p2, "string"

    const-string v1, "app_name"

    invoke-static {p0, p2, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    :goto_12
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lio/dcloud/b$h;

    invoke-direct {v0, p0, p1}, Lio/dcloud/b$h;-><init>(Lio/dcloud/b;Ljava/lang/String;)V

    const p1, 0x104000a

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lio/dcloud/b$g;

    invoke-direct {p2, p0}, Lio/dcloud/b$g;-><init>(Lio/dcloud/b;)V

    const/high16 v0, 0x1040000

    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/b;->j:Landroid/app/AlertDialog;

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    iget-object p1, p0, Lio/dcloud/b;->j:Landroid/app/AlertDialog;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 34
    iget-object p1, p0, Lio/dcloud/b;->j:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    new-instance v1, Lio/dcloud/b$f;

    invoke-direct {v1, p0}, Lio/dcloud/b$f;-><init>(Lio/dcloud/b;)V

    invoke-static {v0, p1, v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->useSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-void
.end method

.method static synthetic b(Lio/dcloud/b;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lio/dcloud/b;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .registers 3

    const-string v0, "DClOUD_SECURITY_POLICY"

    .line 2
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "safe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->isDefense:Z

    goto :goto_1b

    :cond_18
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->isDefense:Z

    :goto_1b
    return-void
.end method

.method static synthetic d(Lio/dcloud/b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/b;->l:I

    return p0
.end method

.method private d()V
    .registers 4

    .line 2
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->isSupportOaid()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4
    :cond_18
    invoke-virtual {p0}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string v2, "android_ten_ids"

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    .line 5
    new-instance v0, Lio/dcloud/g/c/a;

    new-instance v1, Lio/dcloud/b$d;

    invoke-direct {v1, p0}, Lio/dcloud/b$d;-><init>(Lio/dcloud/b;)V

    invoke-direct {v0, v1}, Lio/dcloud/g/c/a;-><init>(Lio/dcloud/g/c/a$b;)V

    .line 12
    invoke-virtual {v0, p0}, Lio/dcloud/g/c/a;->b(Landroid/content/Context;)Z

    :cond_33
    return-void
.end method

.method static synthetic e(Lio/dcloud/b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/b;->m:I

    return p0
.end method

.method private e()V
    .registers 3

    .line 2
    invoke-static {}, Lio/dcloud/g/b/e;->a()Lio/dcloud/g/b/e;

    move-result-object v0

    new-instance v1, Lio/dcloud/g/b/f;

    invoke-direct {v1}, Lio/dcloud/g/b/f;-><init>()V

    invoke-virtual {v1}, Lio/dcloud/g/b/f;->getPdrModuleMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/g/b/e;->a(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public checkAndRequestPhoneState()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_42

    const-string v1, "once"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    if-eqz v0, :cond_31

    .line 3
    invoke-virtual {p0}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "dcloud_phone_read_state"

    const-string v3, "isshow"

    invoke-static {v0, v2, v3}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 4
    invoke-virtual {p0}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3, v4}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/b;->a([Ljava/lang/String;)V

    goto :goto_42

    .line 7
    :cond_31
    iget-object v0, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    const-string v2, "always"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/b;->a([Ljava/lang/String;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public checkAndRequestStoragePermission()V
    .registers 7

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lio/dcloud/b;->n:Ljava/lang/Runnable;

    iget v2, p0, Lio/dcloud/b;->k:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 6
    :cond_14
    iget-object v0, p0, Lio/dcloud/b;->i:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eqz v0, :cond_63

    const-string v3, "once"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 8
    invoke-virtual {p0}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "dcloud_phone_read_state"

    const-string v4, "isStorageRequest"

    invoke-static {v0, v3, v4}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 9
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v4, v5}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 12
    :cond_43
    iget-object v0, p0, Lio/dcloud/b;->i:Ljava/lang/String;

    const-string v3, "always"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 13
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    .line 14
    :cond_52
    iget-object v0, p0, Lio/dcloud/b;->i:Ljava/lang/String;

    const-string v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_5c
    move-object v0, v1

    goto :goto_67

    .line 16
    :cond_5e
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    .line 19
    :cond_63
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    :goto_67
    if-eqz v0, :cond_6d

    .line 22
    invoke-direct {p0, v0}, Lio/dcloud/b;->a([Ljava/lang/String;)V

    goto :goto_7d

    .line 24
    :cond_6d
    invoke-virtual {p0}, Lio/dcloud/b;->checkAndRequestPhoneState()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lio/dcloud/b;->n:Ljava/lang/Runnable;

    iget v3, p0, Lio/dcloud/b;->k:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_7d
    const-string v0, "pull"

    .line 27
    invoke-static {p0, v1, v0, v1}, Lio/dcloud/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected displayBriefMemory()V
    .registers 3

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string v2, "none"

    .line 4
    :try_start_a
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sFontScale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5
    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_27

    .line 6
    iput v3, v1, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_27

    .line 9
    :cond_1d
    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    sget v3, Lio/dcloud/common/util/BaseInfo;->sFontScaleFloat:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_27

    .line 10
    iput v3, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    :goto_27
    return-object v0
.end method

.method protected handleNewIntent(Landroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/b;->a(Landroid/content/Intent;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseActivity handleNewIntent ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10600000

    if-eq v1, v2, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncStartApp"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    if-eq v0, v2, :cond_40

    .line 5
    iget-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_40

    .line 6
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lio/dcloud/EntryProxy;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_40
    return-void
.end method

.method public hasAdService()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lio/dcloud/common/adapter/util/PermissionUtil;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 p2, 0x2

    aput-object p3, v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 4
    :cond_2b
    iget p2, p0, Lio/dcloud/b;->l:I

    if-ne p1, p2, :cond_4e

    iget-object p2, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    if-eqz p2, :cond_4e

    const-string p3, "always"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 6
    iget-object p2, p0, Lio/dcloud/b;->j:Landroid/app/AlertDialog;

    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_4e

    const-string p2, "android.permission.READ_PHONE_STATE"

    .line 8
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/dcloud/b;->a([Ljava/lang/String;)V

    .line 12
    :cond_4e
    iget p2, p0, Lio/dcloud/b;->m:I

    if-ne p1, p2, :cond_71

    iget-object p1, p0, Lio/dcloud/b;->i:Ljava/lang/String;

    if-eqz p1, :cond_68

    const-string p2, "once"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_71

    iget-object p1, p0, Lio/dcloud/b;->i:Ljava/lang/String;

    const-string p2, "none"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_71

    :cond_68
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 13
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/b;->a([Ljava/lang/String;)V

    :cond_71
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    if-nez v0, :cond_8

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void

    .line 5
    :cond_8
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/dcloud/b;->onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 7
    iget-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_1e

    .line 8
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/dcloud/EntryProxy;->destroy(Landroid/app/Activity;)V

    .line 9
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1e
    return-void
.end method

.method public onCloseSplash()V
    .registers 1

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3
    iget-object v1, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    if-eqz v1, :cond_1a

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lio/dcloud/EntryProxy;->onConfigurationChanged(Landroid/app/Activity;I)V

    .line 4
    :cond_1a
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_22
    invoke-static {}, Lio/dcloud/common/ui/b;->a()Lio/dcloud/common/ui/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/dcloud/common/ui/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lio/dcloud/b;->e()V

    .line 3
    invoke-direct {p0}, Lio/dcloud/b;->c()V

    const-string v0, "DCLOUD_READ_PHONE_STATE"

    .line 5
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    const-string v1, "once"

    if-nez v0, :cond_17

    .line 6
    iput-object v1, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    .line 8
    :cond_17
    new-instance v0, Lio/dcloud/b$a;

    invoke-direct {v0, p0, p1}, Lio/dcloud/b$a;-><init>(Lio/dcloud/b;Landroid/os/Bundle;)V

    iput-object v0, p0, Lio/dcloud/b;->n:Ljava/lang/Runnable;

    const-string v0, "DCLOUD_UNISTATISTICS"

    .line 20
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 21
    sput-boolean v2, Lio/dcloud/common/util/BaseInfo;->isUniStatistics:Z

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_36

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 24
    sput-boolean v4, Lio/dcloud/common/util/BaseInfo;->isUniStatistics:Z

    .line 27
    :cond_36
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl;->isInit()Z

    move-result v0

    if-nez v0, :cond_51

    .line 29
    sget p1, Lio/dcloud/base/R$string;->dcloud_Init_fail_tips:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 30
    sput-boolean v4, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    .line 31
    new-instance v0, Lio/dcloud/b$b;

    invoke-direct {v0, p0}, Lio/dcloud/b$b;-><init>(Lio/dcloud/b;)V

    invoke-static {p0, p1, v0}, Lio/dcloud/common/util/ErrorDialogUtil;->showErrorTipsAlert(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_51
    const-string v0, "DCLOUD_WRITE_EXTERNAL_STORAGE"

    .line 41
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/b;->i:Ljava/lang/String;

    if-nez v0, :cond_5d

    .line 42
    iput-object v1, p0, Lio/dcloud/b;->i:Ljava/lang/String;

    .line 44
    :cond_5d
    invoke-static {}, Lio/dcloud/common/ui/b;->a()Lio/dcloud/common/ui/b;

    move-result-object v0

    new-instance v1, Lio/dcloud/b$c;

    invoke-direct {v1, p0}, Lio/dcloud/b$c;-><init>(Lio/dcloud/b;)V

    invoke-virtual {v0, p0, v1, v2, v2}, Lio/dcloud/common/ui/b;->a(Landroid/app/Activity;Lio/dcloud/common/ui/b$b;ZZ)V

    .line 82
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/UEH;->catchUncaughtException(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lio/dcloud/b;->a(Landroid/content/Context;)V

    const-string v0, "download_manager"

    const-string v1, "BaseActivity onCreate"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lio/dcloud/common/util/TestUtil;->START_STREAM_APP:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1}, Lio/dcloud/b;->onRuntimePreCreate(Landroid/os/Bundle;)V

    .line 87
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lio/dcloud/b;->onCreateSplash(Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onCreateOptionMenu:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v0, v1, v2, p1}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_25
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public abstract onCreateSplash(Landroid/content/Context;)Ljava/lang/Object;
.end method

.method public onDestroy()V
    .registers 4

    .line 1
    invoke-super {p0}, Lio/dcloud/c;->onDestroy()V

    const-string v0, "Main_App"

    .line 2
    invoke-static {v0}, Lio/dcloud/feature/internal/splash/a;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/dcloud/EntryProxy;->onStop(Landroid/app/Activity;)V

    .line 5
    :cond_29
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->mLaunchers:Ljava/util/HashMap;

    if-eqz v0, :cond_30

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8
    :cond_30
    invoke-static {}, Lio/dcloud/common/adapter/util/MessageHandler;->removeCallbacksAndMessages()V

    .line 9
    invoke-static {}, Lio/dcloud/common/core/permission/PermissionControler;->clearCRequestPermissionsCache()V

    .line 10
    invoke-static {}, Lio/dcloud/g/b/e;->a()Lio/dcloud/g/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/g/b/e;->b()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const-string v0, "back"

    const-string v1, "BaseActivity onKeyDown"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    if-nez v0, :cond_10

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1d

    .line 5
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, v0, p1, p2}, Lio/dcloud/b;->onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23

    .line 7
    :cond_1d
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, v0, p1, p2}, Lio/dcloud/b;->onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_23
    if-eqz v0, :cond_2b

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2b

    .line 12
    invoke-virtual {p0}, Lio/dcloud/b;->onBackPressed()V

    :cond_2b
    if-eqz v0, :cond_2e

    goto :goto_32

    .line 14
    :cond_2e
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_32
    return v0
.end method

.method public onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    const/4 p2, 0x1

    aput-object p3, v3, p2

    invoke-virtual {v0, v2, p1, v3}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result v1

    :cond_17
    return v1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 9

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    if-nez v0, :cond_9

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_9
    iget-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result v1

    :cond_22
    if-eqz v1, :cond_25

    goto :goto_29

    .line 5
    :cond_25
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_29
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    if-nez v0, :cond_9

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_9
    iget-object v0, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    const-string v1, "onKeyUp"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2c

    .line 6
    iget-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_2c

    .line 7
    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result v1

    :cond_2c
    if-eqz v1, :cond_2f

    goto :goto_33

    .line 9
    :cond_2f
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_33
    return v1
.end method

.method public onLowMemory()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 2
    iget-object v0, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/dcloud/b;->displayBriefMemory()V

    return-void
.end method

.method public onNewIntentImpl(Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->onNewIntentImpl(Landroid/content/Intent;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseActivity onNewIntent appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncStartApp"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/dcloud/b;->handleNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .registers 4

    .line 1
    invoke-super {p0}, Lio/dcloud/c;->onPause()V

    .line 2
    iget-object v0, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/dcloud/EntryProxy;->onPause(Landroid/app/Activity;)V

    :cond_24
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lio/dcloud/common/adapter/util/PermissionUtil;->onSystemPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 2
    iget-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_20

    .line 3
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onRequestPermissionsResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 p2, 0x2

    aput-object p3, v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 5
    :cond_20
    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->runNextRequestPermission(Landroid/app/Activity;I)V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 1
    invoke-super {p0}, Lio/dcloud/c;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/b;->a(Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->onRequestSysPermissionResume(Landroid/app/Activity;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_30

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/dcloud/EntryProxy;->onResume(Landroid/app/Activity;)V

    .line 6
    :cond_30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_47

    sget v0, Lio/dcloud/common/util/BaseInfo;->mDeStatusBarBackground:I

    const v1, -0x1b207

    if-ne v0, v1, :cond_47

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    sput v0, Lio/dcloud/common/util/BaseInfo;->mDeStatusBarBackground:I

    :cond_47
    return-void
.end method

.method protected onRuntimeCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRuntimeCreate appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/EntryProxy;->init(Landroid/app/Activity;)Lio/dcloud/EntryProxy;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    .line 3
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/dcloud/EntryProxy;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Z

    return-void
.end method

.method protected onRuntimePreCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRuntimePreCreate appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7

    if-eqz p1, :cond_1d

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4
    :cond_1d
    iget-object v0, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_35

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSaveInstanceState:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 6
    :cond_35
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setSecondPrivacyAlert()V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/ui/b;->a()Lio/dcloud/common/ui/b;

    move-result-object v0

    new-instance v1, Lio/dcloud/b$e;

    invoke-direct {v1, p0}, Lio/dcloud/b$e;-><init>(Lio/dcloud/b;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lio/dcloud/common/ui/b;->a(Landroid/app/Activity;Lio/dcloud/common/ui/b$b;ZZ)V

    return-void
.end method

.method public updateParam(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9

    const-string v0, "tab_change"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BaseActivity updateParam newintent value(appid)="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    invoke-virtual {p1}, Lio/dcloud/EntryProxy;->getCoreHandler()Lio/dcloud/common/DHInterface/ICore;

    move-result-object p1

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0x15

    invoke-interface {p1, v0, v1, p2}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_84

    :cond_2a
    const-string v0, "closewebapp"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_84

    const-string p1, "IAN"

    const-string v0, "updateParam closewebapp"

    .line 5
    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    check-cast p2, Landroid/app/Activity;

    .line 8
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    const-string v2, "appid"

    .line 9
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    :cond_53
    move-object v0, v1

    .line 12
    :goto_54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 13
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    .line 15
    :cond_5c
    instance-of v2, p2, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v2, :cond_66

    .line 16
    move-object v2, p2

    check-cast v2, Lio/dcloud/common/DHInterface/IActivityHandler;

    invoke-interface {v2, v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->closeAppStreamSplash(Ljava/lang/String;)V

    .line 18
    :cond_66
    iget-object v2, p0, Lio/dcloud/b;->g:Lio/dcloud/EntryProxy;

    invoke-virtual {v2}, Lio/dcloud/EntryProxy;->getCoreHandler()Lio/dcloud/common/DHInterface/ICore;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 p2, 0x2

    aput-object v0, v3, p2

    invoke-interface {v2, v1, v4, v3}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const-string p2, "updateParam closewebapp WEBAPP_QUIT"

    .line 19
    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    return-void
.end method

###### Class io.dcloud.b.a (io.dcloud.b$a)
.class Lio/dcloud/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lio/dcloud/b;


# direct methods
.method constructor <init>(Lio/dcloud/b;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iput-object p2, p0, Lio/dcloud/b$a;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/b;->a(Lio/dcloud/b;Landroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Main_Path_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iget-object v2, v2, Lio/dcloud/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/b;->e:Ljava/lang/String;

    const-string v0, "Main_App"

    .line 3
    invoke-static {v0}, Lio/dcloud/feature/internal/splash/a;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iget-object v0, v0, Lio/dcloud/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iget-object v2, v2, Lio/dcloud/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iget-object v1, p0, Lio/dcloud/b$a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lio/dcloud/b;->onRuntimeCreate(Landroid/os/Bundle;)V

    return-void
.end method

###### Class io.dcloud.b.DialogInterfaceOnClickListenerC0023b (io.dcloud.b$b)
.class Lio/dcloud/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/dcloud/b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

###### Class io.dcloud.b.c (io.dcloud.b$c)
.class Lio/dcloud/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/ui/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/b;


# direct methods
.method constructor <init>(Lio/dcloud/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 9
    iget-object v0, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->a(Lio/dcloud/b;)V

    .line 10
    iget-object v0, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Lio/dcloud/b;->checkAndRequestStoragePermission()V

    .line 11
    iget-object v0, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->initX5(Landroid/app/Application;)V

    .line 12
    iget-object v0, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->initUniappPlugin(Landroid/app/Application;)V

    .line 13
    iget-object v0, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/net/http/CookieManager;->initCookieConfig(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V
    .registers 2

    .line 14
    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 15
    iget-object p1, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1c

    .line 18
    :cond_17
    iget-object p1, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Lio/dcloud/b;->setSecondPrivacyAlert()V

    :goto_1c
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->a(Lio/dcloud/b;)V

    const-string v0, "custom"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    iget-object v1, v0, Lio/dcloud/b;->n:Ljava/lang/Runnable;

    iget v0, v0, Lio/dcloud/b;->k:I

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object p1, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    const/4 v0, 0x0

    const-string v1, "pull"

    invoke-static {p1, v0, v1, v0}, Lio/dcloud/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 6
    :cond_25
    iget-object p1, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Lio/dcloud/b;->checkAndRequestStoragePermission()V

    .line 8
    :goto_2a
    iget-object p1, p0, Lio/dcloud/b$c;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/net/http/CookieManager;->initCookieConfig(Landroid/content/Context;)V

    return-void
.end method

###### Class io.dcloud.b.d (io.dcloud.b$d)
.class Lio/dcloud/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/g/c/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/b;


# direct methods
.method constructor <init>(Lio/dcloud/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/b$d;->a:Lio/dcloud/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .registers 5

    .line 1
    sput-object p1, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    .line 2
    iget-object p2, p0, Lio/dcloud/b$d;->a:Lio/dcloud/b;

    invoke-virtual {p2}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string v1, "android_ten_ids"

    invoke-static {p2, v0, v1, p1}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.b.e (io.dcloud.b$e)
.class Lio/dcloud/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/ui/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->setSecondPrivacyAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/b;


# direct methods
.method constructor <init>(Lio/dcloud/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/b$e;->a:Lio/dcloud/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 3
    iget-object v0, p0, Lio/dcloud/b$e;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->a(Lio/dcloud/b;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/b$e;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Lio/dcloud/b;->checkAndRequestStoragePermission()V

    .line 5
    iget-object v0, p0, Lio/dcloud/b$e;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->initX5(Landroid/app/Application;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/b$e;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->initUniappPlugin(Landroid/app/Application;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/b$e;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/net/http/CookieManager;->initCookieConfig(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V
    .registers 2

    .line 8
    iget-object p1, p0, Lio/dcloud/b$e;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/b$e;->a:Lio/dcloud/b;

    invoke-static {p1}, Lio/dcloud/b;->a(Lio/dcloud/b;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/b$e;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/net/http/CookieManager;->initCookieConfig(Landroid/content/Context;)V

    return-void
.end method

###### Class io.dcloud.b.f (io.dcloud.b$f)
.class Lio/dcloud/b$f;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/b;


# direct methods
.method constructor <init>(Lio/dcloud/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 6

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "string"

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->b(Lio/dcloud/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->b(Lio/dcloud/b;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ALWAYS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2
    iget-object v0, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    const-string v2, "dcloud_permission_read_phone_state_message"

    invoke-static {v0, v1, v2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    iget-object v1, v1, Lio/dcloud/b;->j:Landroid/app/AlertDialog;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_35

    return-void

    .line 6
    :cond_35
    iget-object v1, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    invoke-static {v1, p1, v0}, Lio/dcloud/b;->a(Lio/dcloud/b;Ljava/lang/String;I)V

    goto :goto_8c

    :cond_3b
    const-string v0, "STORAGE"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 8
    iget-object v0, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->c(Lio/dcloud/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->c(Lio/dcloud/b;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "once"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 9
    iget-object p1, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Lio/dcloud/b;->checkAndRequestPhoneState()V

    .line 10
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    iget-object v1, v0, Lio/dcloud/b;->n:Ljava/lang/Runnable;

    iget v0, v0, Lio/dcloud/b;->k:I

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 13
    :cond_6e
    iget-object v0, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    const-string v2, "dcloud_permission_write_external_storage_message"

    invoke-static {v0, v1, v2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 14
    iget-object v1, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    iget-object v1, v1, Lio/dcloud/b;->j:Landroid/app/AlertDialog;

    if-eqz v1, :cond_83

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_83

    return-void

    .line 15
    :cond_83
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v1, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    invoke-static {v1, p1, v0}, Lio/dcloud/b;->a(Lio/dcloud/b;Ljava/lang/String;I)V

    :cond_8c
    :goto_8c
    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 6

    const-string v0, "STORAGE"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 2
    iget-object p1, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->initPath(Landroid/content/Context;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Lio/dcloud/b;->checkAndRequestPhoneState()V

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lio/dcloud/b$f;->a:Lio/dcloud/b;

    iget-object v1, v0, Lio/dcloud/b;->n:Ljava/lang/Runnable;

    iget v0, v0, Lio/dcloud/b;->k:I

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_23
    return-void
.end method

###### Class io.dcloud.b.g (io.dcloud.b$g)
.class Lio/dcloud/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/b;


# direct methods
.method constructor <init>(Lio/dcloud/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

###### Class io.dcloud.b.h (io.dcloud.b$h)
.class Lio/dcloud/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/b;


# direct methods
.method constructor <init>(Lio/dcloud/b;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/b$h;->b:Lio/dcloud/b;

    iput-object p2, p0, Lio/dcloud/b$h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/b$h;->b:Lio/dcloud/b;

    iget-object p2, p0, Lio/dcloud/b$h;->a:Ljava/lang/String;

    invoke-static {p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 3
    :try_start_e
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_41

    const-string p2, "package"

    .line 4
    :try_start_17
    iget-object v0, p0, Lio/dcloud/b$h;->b:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lio/dcloud/b$h;->b:Lio/dcloud/b;

    invoke-static {p2}, Lio/dcloud/b;->d(Lio/dcloud/b;)I

    move-result p2

    .line 7
    iget-object v0, p0, Lio/dcloud/b$h;->a:Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 8
    iget-object p2, p0, Lio/dcloud/b$h;->b:Lio/dcloud/b;

    invoke-static {p2}, Lio/dcloud/b;->e(Lio/dcloud/b;)I

    move-result p2

    .line 10
    :cond_3b
    iget-object v0, p0, Lio/dcloud/b$h;->b:Lio/dcloud/b;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_40} :catch_41

    goto :goto_5b

    .line 12
    :catch_41
    iget-object p1, p0, Lio/dcloud/b$h;->b:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 13
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_5b

    .line 16
    :cond_4e
    iget-object p1, p0, Lio/dcloud/b$h;->b:Lio/dcloud/b;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/b$h;->a:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lio/dcloud/b;->a(Lio/dcloud/b;[Ljava/lang/String;)V

    :goto_5b
    return-void
.end method
