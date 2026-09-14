###### Class io.dcloud.g.a.a (io.dcloud.g.a.a)
.class public final Lio/dcloud/g/a/a;
.super Lio/dcloud/common/DHInterface/AbsMgr;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IMgr$AppEvent;


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field a:Lio/dcloud/g/a/d;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/g/a/e;",
            ">;"
        }
    .end annotation
.end field

.field d:Lio/dcloud/g/a/c;

.field private e:Landroid/app/AlertDialog;

.field f:Lorg/json/JSONObject;

.field private g:Landroid/app/AlertDialog;

.field private h:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lio/dcloud/common/DHInterface/ICore;)V
    .registers 5

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const-string v1, "appmgr"

    invoke-direct {p0, p1, v1, v0}, Lio/dcloud/common/DHInterface/AbsMgr;-><init>(Lio/dcloud/common/DHInterface/ICore;Ljava/lang/String;Lio/dcloud/common/DHInterface/IMgr$MgrType;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/g/a/a;->a:Lio/dcloud/g/a/d;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/g/a/a;->b:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/g/a/a;->c:Ljava/util/ArrayList;

    .line 9
    iput-object v0, p0, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    .line 13
    iput-object v0, p0, Lio/dcloud/g/a/a;->f:Lorg/json/JSONObject;

    if-eqz p1, :cond_26

    .line 28
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/ICore;->obtainContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/g/a/a;->a(Landroid/content/Context;)V

    .line 30
    :cond_26
    invoke-virtual {p0}, Lio/dcloud/g/a/a;->c()V

    .line 31
    invoke-virtual {p0}, Lio/dcloud/g/a/a;->b()V

    .line 32
    invoke-virtual {p0}, Lio/dcloud/g/a/a;->d()V

    .line 34
    invoke-direct {p0}, Lio/dcloud/g/a/a;->a()V

    .line 50
    new-instance p1, Lio/dcloud/g/a/c;

    invoke-direct {p1, p0}, Lio/dcloud/g/a/c;-><init>(Lio/dcloud/g/a/a;)V

    iput-object p1, p0, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    return-void
.end method

.method static synthetic a(Lio/dcloud/g/a/a;)Landroid/app/AlertDialog;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/dcloud/g/a/a;->e:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Z)Lio/dcloud/g/a/e;
    .registers 7

    .line 164
    iget-object v0, p0, Lio/dcloud/g/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 166
    iget-object v0, p0, Lio/dcloud/g/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1a

    .line 167
    iget-object v2, p0, Lio/dcloud/g/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/g/a/e;

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    :goto_1b
    if-nez v0, :cond_61

    if-eqz p3, :cond_61

    .line 172
    new-instance v0, Lio/dcloud/g/a/e;

    const/4 p3, 0x0

    invoke-direct {v0, p0, p2, p3}, Lio/dcloud/g/a/e;-><init>(Lio/dcloud/g/a/a;Ljava/lang/String;B)V

    .line 173
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lio/dcloud/g/a/e;->setAppDataPath(Ljava/lang/String;)V

    .line 175
    iget-object p3, v0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    if-nez p3, :cond_49

    .line 176
    iput-object p1, v0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    :cond_49
    if-eqz p1, :cond_52

    .line 179
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/g/a/e;->setWebAppIntent(Landroid/content/Intent;)V

    .line 181
    :cond_52
    invoke-virtual {v0, p2, v1}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 182
    iget-object p1, v0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iget-boolean p1, p1, Lio/dcloud/g/a/g;->a:Z

    if-eqz p1, :cond_5d

    .line 183
    iput-object p2, v0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    .line 185
    :cond_5d
    invoke-virtual {p0, v0}, Lio/dcloud/g/a/a;->c(Lio/dcloud/g/a/e;)V

    goto :goto_93

    :cond_61
    if-eqz v0, :cond_93

    if-eqz p1, :cond_93

    .line 188
    iget-object p3, v0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    if-nez p3, :cond_6b

    .line 189
    iput-object p1, v0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    .line 191
    :cond_6b
    iget-object p1, v0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 192
    invoke-virtual {v0}, Lio/dcloud/g/a/e;->manifestBeParsed()Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 193
    iget-object p1, v0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/g/a/e;->setWebAppIntent(Landroid/content/Intent;)V

    goto :goto_8c

    .line 196
    :cond_83
    iget-object p1, v0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lio/dcloud/g/a/e;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 198
    :cond_8c
    :goto_8c
    iget-boolean p1, v0, Lio/dcloud/g/a/e;->r:Z

    if-nez p1, :cond_93

    .line 199
    invoke-virtual {v0, p2, v1}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    :cond_93
    :goto_93
    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Lio/dcloud/g/a/e;
    .registers 4

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, v0, p1, p2}, Lio/dcloud/g/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Z)Lio/dcloud/g/a/e;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    sput-object p0, Lio/dcloud/g/a/a;->i:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .registers 3

    .line 4
    sget-object v0, Lio/dcloud/g/a/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 7
    :cond_9
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sUniNViewServiceJsPath:Ljava/lang/String;

    new-instance v1, Lio/dcloud/g/a/a$a;

    invoke-direct {v1, p0}, Lio/dcloud/g/a/a$a;-><init>(Lio/dcloud/g/a/a;)V

    invoke-static {v0, v1}, Lio/dcloud/common/util/DataUtil;->datToJsString(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .line 8
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 9
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/g/a/a$b;

    invoke-direct {v1, p0, p1}, Lio/dcloud/g/a/a$b;-><init>(Lio/dcloud/g/a/a;Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V

    :cond_15
    return-void
.end method

.method static synthetic a(Lio/dcloud/g/a/a;Lio/dcloud/g/a/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/g/a/a;->a(Lio/dcloud/g/a/e;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lio/dcloud/g/a/e;)V
    .registers 3

    .line 35
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isEnableBackground:Z

    if-eqz v0, :cond_d

    .line 36
    invoke-direct {p0, p1}, Lio/dcloud/g/a/a;->d(Lio/dcloud/g/a/e;)V

    :cond_d
    return-void
.end method

.method private a(Lio/dcloud/g/a/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 150
    iget-object v0, p0, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p4, :cond_c

    .line 153
    invoke-virtual {p1, p3}, Lio/dcloud/g/a/e;->f(Ljava/lang/String;)Z

    move-result p4

    goto :goto_10

    :cond_c
    invoke-virtual {p1, p3}, Lio/dcloud/g/a/e;->g(Ljava/lang/String;)Z

    move-result p4

    .line 154
    :goto_10
    iget-boolean v0, p1, Lio/dcloud/g/a/e;->s:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p1, Lio/dcloud/g/a/e;->r:Z

    if-eqz v0, :cond_1b

    .line 155
    invoke-virtual {p1, p3}, Lio/dcloud/g/a/e;->f(Ljava/lang/String;)Z

    :cond_1b
    if-eqz p4, :cond_23

    .line 158
    iget-object p3, p0, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {p3, p2, p1}, Lio/dcloud/g/a/c;->a(Ljava/lang/String;Lio/dcloud/g/a/e;)V

    goto :goto_39

    .line 161
    :cond_23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " run failed!!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "appmgr"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    return-void
.end method

.method private a(Lio/dcloud/g/a/e;Ljava/lang/String;Z)V
    .registers 7

    const-string v0, "appmgr"

    if-eqz p1, :cond_51

    const-string v1, "control"

    .line 10
    invoke-virtual {p1, v1}, Lio/dcloud/g/a/e;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "uni-v3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->isFirstRun:Z

    .line 16
    invoke-virtual {p1}, Lio/dcloud/g/a/e;->showSplash()V

    .line 17
    invoke-virtual {p1}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lio/dcloud/g/a/a$f;

    invoke-direct {v1, p0, p1, p3, p2}, Lio/dcloud/g/a/a$f;-><init>(Lio/dcloud/g/a/a;Lio/dcloud/g/a/e;ZLjava/lang/String;)V

    iget-object p1, p1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/dcloud/common/util/AppRuntime;->restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V

    goto :goto_6a

    .line 29
    :cond_31
    invoke-virtual {p1, p3}, Lio/dcloud/g/a/e;->a(Z)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reboot "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " app failed !!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 34
    :cond_51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not found "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " app!!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/g/a/e;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/g/a/e;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    .line 17
    iget-object v0, p0, Lio/dcloud/g/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private d(Lio/dcloud/g/a/e;)V
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lio/dcloud/g/a/e;->obtainAppName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "android.app.ActivityManager$TaskDescription"

    .line 4
    invoke-static {v2, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "setTaskDescription"

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;Ljava/lang/String;)Lio/dcloud/g/a/e;
    .registers 4

    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/g/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Z)Lio/dcloud/g/a/e;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/g/a/e;
    .registers 4

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, p1, p2, v0}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lio/dcloud/g/a/e;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Lio/dcloud/g/a/e;
    .registers 6

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1, v0}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;Z)Lio/dcloud/g/a/e;

    move-result-object v0

    if-nez v0, :cond_24

    .line 202
    new-instance v0, Lio/dcloud/g/a/e;

    invoke-direct {v0, p0, p1, p4}, Lio/dcloud/g/a/e;-><init>(Lio/dcloud/g/a/a;Ljava/lang/String;B)V

    const/4 p4, 0x3

    .line 203
    iput-byte p4, v0, Lio/dcloud/g/a/e;->q:B

    .line 204
    iput-object p1, v0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    .line 205
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1a

    .line 206
    invoke-virtual {v0, p2}, Lio/dcloud/g/a/e;->setAppDataPath(Ljava/lang/String;)V

    .line 208
    :cond_1a
    iput-object p3, v0, Lio/dcloud/g/a/e;->h0:Ljava/lang/String;

    .line 209
    invoke-virtual {p0, v0}, Lio/dcloud/g/a/a;->c(Lio/dcloud/g/a/e;)V

    .line 210
    iget-object p2, p0, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {p2, p1, v0}, Lio/dcloud/g/a/c;->a(Ljava/lang/String;Lio/dcloud/g/a/e;)V

    :cond_24
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lio/dcloud/g/a/e;
    .registers 13

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, p2, v0}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;Z)Lio/dcloud/g/a/e;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 215
    :try_start_7
    iget-object v2, v1, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    invoke-virtual {v2}, Lio/dcloud/g/a/g;->a()V

    .line 218
    :cond_c
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_61

    const-string v3, ".wgt"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_64

    :try_start_16
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_64

    :cond_1d
    const/16 v0, 0x2f

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 286
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    :cond_31
    if-nez v1, :cond_39

    .line 288
    new-instance v2, Lio/dcloud/g/a/e;

    invoke-direct {v2, p0, p2, v5}, Lio/dcloud/g/a/e;-><init>(Lio/dcloud/g/a/a;Ljava/lang/String;B)V

    move-object v1, v2

    :cond_39
    if-nez v0, :cond_5c

    if-eqz v4, :cond_3e

    goto :goto_5c

    .line 292
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/g/a/e;->setAppDataPath(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1, p2, p3}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    goto/16 :goto_1a0

    .line 295
    :cond_5c
    :goto_5c
    invoke-virtual {v1, v4}, Lio/dcloud/g/a/e;->b(Ljava/io/InputStream;)V

    goto/16 :goto_1a0

    :catch_61
    move-exception p2

    goto/16 :goto_1a4

    .line 296
    :cond_64
    :goto_64
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_178

    if-eqz v2, :cond_94

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".wgtu"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_94

    if-nez v1, :cond_80

    goto :goto_81

    :cond_80
    const/4 v5, 0x0

    :goto_81
    if-eqz v5, :cond_89

    .line 300
    new-instance v2, Lio/dcloud/g/a/e;

    invoke-direct {v2, p0, p2, v0}, Lio/dcloud/g/a/e;-><init>(Lio/dcloud/g/a/a;Ljava/lang/String;B)V

    move-object v1, v2

    .line 301
    :cond_89
    invoke-virtual {v1, p1, p3}, Lio/dcloud/g/a/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 302
    iget-object p2, v1, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v0, p2, Lio/dcloud/g/a/g;->c:Z

    .line 303
    iput-boolean v0, p2, Lio/dcloud/g/a/g;->d:Z

    goto/16 :goto_1a0

    :cond_94
    if-eqz v2, :cond_e7

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e7

    if-nez v1, :cond_a4

    const/4 v2, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v2, 0x0

    .line 306
    :goto_a5
    iget-object v3, v1, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v5, v3, Lio/dcloud/g/a/g;->d:Z

    if-eqz v2, :cond_d6

    .line 308
    new-instance v3, Lio/dcloud/g/a/e;

    invoke-direct {v3, p0, p2, v0}, Lio/dcloud/g/a/e;-><init>(Lio/dcloud/g/a/a;Ljava/lang/String;B)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_b0} :catch_61

    .line 309
    :try_start_b0
    iput-object p2, v3, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p2, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p2, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lio/dcloud/g/a/e;->setAppDataPath(Ljava/lang/String;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_d0} :catch_d2

    move-object v1, v3

    goto :goto_d6

    :catch_d2
    move-exception p2

    move-object v1, v3

    goto/16 :goto_1a4

    .line 312
    :cond_d6
    :goto_d6
    :try_start_d6
    invoke-virtual {v1, p1, p3}, Lio/dcloud/g/a/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p2

    .line 313
    iget-object p3, v1, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v0, p3, Lio/dcloud/g/a/g;->d:Z

    if-eqz p2, :cond_1a0

    if-eqz v2, :cond_1a0

    .line 316
    invoke-virtual {p0, v1}, Lio/dcloud/g/a/a;->c(Lio/dcloud/g/a/e;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e5} :catch_61

    goto/16 :goto_1a0

    :cond_e7
    const-string p2, "{code:%d,message:\'%s\'}"

    const/4 p3, 0x2

    if-eqz v2, :cond_15f

    .line 319
    :try_start_ec
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f6} :catch_61

    if-eqz v2, :cond_15f

    .line 322
    :try_start_f8
    invoke-virtual {p0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->parseApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_100} :catch_101

    goto :goto_11e

    :catch_101
    move-exception v2

    .line 324
    :try_start_102
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    iget-object v3, v1, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    new-array v6, p3, [Ljava/lang/Object;

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-static {p2, v6}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    move-object p2, v4

    :goto_11e
    if-nez p2, :cond_126

    .line 329
    iget-object p2, v1, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v5, p2, Lio/dcloud/g/a/g;->a:Z

    goto/16 :goto_1a0

    .line 331
    :cond_126
    iget-object v2, v1, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v0, v2, Lio/dcloud/g/a/g;->a:Z
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_12a} :catch_61

    const-string v2, "{pname:\'%s\',version:\'%s\',name:\'%s\'}"

    .line 333
    :try_start_12c
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 334
    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_142} :catch_61

    if-nez p2, :cond_146

    const-string p2, ""

    .line 339
    :cond_146
    :try_start_146
    iget-object v7, v1, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v0

    aput-object v3, v8, v5

    aput-object p2, v8, p3

    invoke-static {v2, v8}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v7, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    .line 340
    invoke-virtual {p0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v4, v4, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->openFileBySystem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V

    goto :goto_1a0

    .line 343
    :cond_15f
    iget-object v2, v1, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iput-boolean v5, v2, Lio/dcloud/g/a/g;->a:Z

    new-array p3, p3, [Ljava/lang/Object;

    const/16 v3, -0x4b1

    .line 344
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v0

    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_OR_WGTU_ERROR_MALFORMED:Ljava/lang/String;

    aput-object v0, p3, v5

    invoke-static {p2, p3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    goto :goto_1a0

    :cond_178
    if-eqz v1, :cond_17e

    .line 348
    invoke-virtual {v1, v0}, Lio/dcloud/g/a/e;->b(B)V

    goto :goto_184

    .line 350
    :cond_17e
    new-instance v2, Lio/dcloud/g/a/e;

    invoke-direct {v2, p0, p2, v0}, Lio/dcloud/g/a/e;-><init>(Lio/dcloud/g/a/a;Ljava/lang/String;B)V

    move-object v1, v2

    .line 352
    :goto_184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/g/a/e;->setAppDataPath(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v1, p2, p3}, Lio/dcloud/g/a/e;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 374
    :cond_1a0
    :goto_1a0
    invoke-static {v4}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_1a3} :catch_61

    goto :goto_1c2

    .line 376
    :goto_1a4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "installWebApp "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is Illegal path"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "appmgr"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c2
    return-object v1
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/g/a/e;Lio/dcloud/g/a/e;Lio/dcloud/g/a/e;Z)V
    .registers 19

    move-object v6, p0

    move-object v3, p2

    move-object v0, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOneApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ylyl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sput-object v3, Lio/dcloud/common/util/BaseInfo;->sLastRunApp:Ljava/lang/String;

    .line 39
    invoke-static {p2}, Lio/dcloud/common/util/BaseInfo;->getCmitInfo(Ljava/lang/String;)Lio/dcloud/common/util/BaseInfo$CmtInfo;

    move-result-object v1

    .line 40
    iget-boolean v2, v1, Lio/dcloud/common/util/BaseInfo$CmtInfo;->needUpdate:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_4a

    .line 41
    iget-object v2, v7, Lio/dcloud/g/a/e;->z:Ljava/lang/String;

    iput-object v2, v1, Lio/dcloud/common/util/BaseInfo$CmtInfo;->templateVersion:Ljava/lang/String;

    .line 42
    iget-boolean v2, v7, Lio/dcloud/g/a/e;->I:Z

    iput-boolean v2, v1, Lio/dcloud/common/util/BaseInfo$CmtInfo;->rptCrs:Z

    .line 43
    iget-boolean v2, v7, Lio/dcloud/g/a/e;->J:Z

    iput-boolean v2, v1, Lio/dcloud/common/util/BaseInfo$CmtInfo;->rptJse:Z

    .line 44
    invoke-virtual/range {p5 .. p5}, Lio/dcloud/g/a/e;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->getLaunchType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/dcloud/common/util/BaseInfo$CmtInfo;->plusLauncher:Ljava/lang/String;

    .line 45
    invoke-virtual/range {p5 .. p5}, Lio/dcloud/g/a/e;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v2

    .line 46
    invoke-static {v2}, Lio/dcloud/common/constant/DataInterface;->getStreamappFrom(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 47
    iput-object v2, v1, Lio/dcloud/common/util/BaseInfo$CmtInfo;->sfd:Ljava/lang/String;

    .line 48
    iput-boolean v4, v1, Lio/dcloud/common/util/BaseInfo$CmtInfo;->needUpdate:Z

    .line 51
    :cond_4a
    invoke-static {}, Lio/dcloud/g/b/g;->a()Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_59

    .line 52
    iget-byte v1, v7, Lio/dcloud/g/a/e;->q:B

    if-ne v1, v2, :cond_59

    .line 53
    invoke-static {p1}, Lio/dcloud/common/util/ErrorDialogUtil;->checkAppKeyErrorTips(Landroid/app/Activity;)V

    return-void

    .line 57
    :cond_59
    iget-byte v1, v7, Lio/dcloud/g/a/e;->q:B

    const/4 v5, 0x3

    const/4 v9, 0x2

    if-ne v1, v5, :cond_6b

    .line 58
    invoke-virtual/range {p5 .. p5}, Lio/dcloud/g/a/e;->q()Z

    move-result v1

    if-eqz v1, :cond_68

    iget-byte v1, v7, Lio/dcloud/g/a/e;->q:B

    goto :goto_69

    :cond_68
    const/4 v1, 0x2

    :goto_69
    iput-byte v1, v7, Lio/dcloud/g/a/e;->q:B

    :cond_6b
    if-eqz v0, :cond_74

    if-eq v0, v7, :cond_74

    if-eq v0, v8, :cond_74

    .line 62
    invoke-virtual {p4}, Lio/dcloud/g/a/e;->x()V

    .line 65
    :cond_74
    iget-byte v0, v7, Lio/dcloud/g/a/e;->q:B

    const/4 v1, 0x1

    const-string v5, "appmgr"

    if-eq v0, v1, :cond_bb

    if-eqz p7, :cond_81

    iget-boolean v10, v7, Lio/dcloud/g/a/e;->s:Z

    if-eqz v10, :cond_bb

    :cond_81
    iget-boolean v10, v7, Lio/dcloud/g/a/e;->t:Z

    if-eqz v10, :cond_89

    iget-boolean v10, v7, Lio/dcloud/g/a/e;->r:Z

    if-nez v10, :cond_bb

    :cond_89
    if-nez p7, :cond_8c

    goto :goto_bb

    :cond_8c
    if-ne v0, v9, :cond_a6

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " will unactive change to active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p5 .. p5}, Lio/dcloud/g/a/e;->c()V

    goto :goto_ee

    .line 105
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ee

    .line 106
    :cond_bb
    :goto_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " will unrunning change to active"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 107
    invoke-virtual {v7, p1}, Lio/dcloud/g/a/e;->a(Landroid/app/Activity;)V

    .line 108
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v7, v5, v4

    aput-object v3, v5, v1

    invoke-virtual {p0, v0, v2, v5}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v9, Lio/dcloud/g/a/a$g;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p5

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lio/dcloud/g/a/a$g;-><init>(Lio/dcloud/g/a/a;Lio/dcloud/g/a/e;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v9}, Lio/dcloud/g/a/e;->a(Lio/dcloud/common/DHInterface/ICallBack;)V

    .line 142
    :goto_ee
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_fd

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_fd

    .line 143
    invoke-direct {p0, v7}, Lio/dcloud/g/a/a;->a(Lio/dcloud/g/a/e;)V

    :cond_fd
    if-eqz v8, :cond_104

    if-eq v8, v7, :cond_104

    .line 149
    invoke-virtual/range {p6 .. p6}, Lio/dcloud/g/a/e;->v()V

    :cond_104
    return-void
.end method

.method b()V
    .registers 8

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->mBaseAppInfoSet:Ljava/util/HashMap;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    .line 2
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->mBaseAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_77

    .line 5
    aget-object v3, v2, v0

    .line 6
    sget-object v4, Lio/dcloud/common/util/BaseInfo;->mBaseAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    .line 7
    sget-object v5, Lio/dcloud/common/util/BaseInfo;->mUnInstalledAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    invoke-direct {p0, v3}, Lio/dcloud/g/a/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_74

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lio/dcloud/g/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/g/a/e;

    move-result-object v5

    if-eqz v5, :cond_74

    .line 9
    iget-object v6, v5, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    if-eqz v6, :cond_74

    .line 10
    iget-boolean v6, v6, Lio/dcloud/g/a/g;->a:Z

    if-nez v6, :cond_59

    .line 11
    iput-object v4, v5, Lio/dcloud/g/a/e;->p:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    .line 12
    invoke-virtual {p0, v5}, Lio/dcloud/g/a/a;->c(Lio/dcloud/g/a/e;)V

    goto :goto_74

    .line 14
    :cond_59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  app error,"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppMgr"

    invoke-static {v4, v3}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    :goto_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_77
    return-void
.end method

.method b(Lio/dcloud/g/a/e;)V
    .registers 4

    .line 15
    iget-object v0, p0, Lio/dcloud/g/a/a;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lio/dcloud/g/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method c(Ljava/lang/String;)Lio/dcloud/g/a/e;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lio/dcloud/g/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)Lio/dcloud/g/a/e;

    move-result-object p1

    return-object p1
.end method

.method c()V
    .registers 10

    .line 4
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->mInstalledAppInfoSet:Ljava/util/HashMap;

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 5
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->mInstalledAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    if-ge v3, v1, :cond_74

    .line 9
    aget-object v5, v2, v3

    .line 10
    sget-object v6, Lio/dcloud/common/util/BaseInfo;->mUnInstalledAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_71

    invoke-direct {p0, v5}, Lio/dcloud/g/a/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_71

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lio/dcloud/g/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/g/a/e;

    move-result-object v6

    if-eqz v6, :cond_60

    .line 12
    iget-object v8, v6, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    if-eqz v8, :cond_60

    iget-boolean v8, v8, Lio/dcloud/g/a/g;->a:Z

    if-nez v8, :cond_60

    .line 13
    invoke-virtual {v6}, Lio/dcloud/g/a/e;->deleteAppTemp()V

    .line 14
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 15
    iput-boolean v7, v6, Lio/dcloud/g/a/e;->f0:Z

    goto :goto_5c

    .line 17
    :cond_5a
    iput-boolean v0, v6, Lio/dcloud/g/a/e;->f0:Z

    .line 19
    :goto_5c
    invoke-virtual {p0, v6}, Lio/dcloud/g/a/a;->c(Lio/dcloud/g/a/e;)V

    goto :goto_71

    .line 21
    :cond_60
    sget-object v4, Lio/dcloud/common/util/BaseInfo;->mInstalledAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    invoke-virtual {v4}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->clearBundleData()V

    .line 22
    sget-object v4, Lio/dcloud/common/util/BaseInfo;->mInstalledAppInfoSet:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    :cond_71
    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_74
    if-eqz v4, :cond_7d

    .line 28
    invoke-virtual {p0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->saveInstalledAppInfo(Landroid/content/Context;)V

    :cond_7d
    return-void
.end method

.method c(Lio/dcloud/g/a/e;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/dcloud/g/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/dcloud/g/a/e;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lio/dcloud/g/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method d()V
    .registers 4

    .line 8
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sURDFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_27

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 13
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data/dcloud_url.json"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    :cond_27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 16
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->readAll(Ljava/lang/Object;)[B

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 19
    :try_start_36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/g/a/a;->f:Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception v0

    .line 21
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_42
    :goto_42
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/g/a/e;

    .line 3
    invoke-virtual {v1}, Lio/dcloud/g/a/e;->g()V

    goto :goto_8

    .line 6
    :cond_18
    iget-object v0, p0, Lio/dcloud/g/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v0, p0, Lio/dcloud/g/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v0, p0, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    if-eqz v0, :cond_29

    .line 9
    invoke-virtual {v0}, Lio/dcloud/g/a/c;->a()V

    :cond_29
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    .line 12
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/g/a/a$h;

    invoke-direct {v1, p0}, Lio/dcloud/g/a/a$h;-><init>(Lio/dcloud/g/a/a;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method e(Lio/dcloud/g/a/e;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    iget-object v1, p1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/g/a/c;->b(Ljava/lang/String;)Lio/dcloud/g/a/e;

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/g/a/a;->b(Lio/dcloud/g/a/e;)V

    return-void
.end method

.method public processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 27

    move-object/from16 v11, p0

    move/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "test_runing"

    const-string v3, "pdr"

    const/4 v12, 0x0

    .line 1
    :try_start_b
    invoke-virtual/range {p0 .. p1}, Lio/dcloud/common/DHInterface/AbsMgr;->checkMgrId(Lio/dcloud/common/DHInterface/IMgr$MgrType;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 2
    iget-object v2, v11, Lio/dcloud/common/DHInterface/AbsMgr;->mCore:Lio/dcloud/common/DHInterface/ICore;

    move-object/from16 v3, p1

    invoke-interface {v2, v3, v0, v1}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_69b

    goto/16 :goto_699

    :cond_1b
    const/16 v4, 0x14

    const-string v5, "appid"

    const/4 v6, 0x3

    const-string v7, "/"

    const-string v8, "appmgr"

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_6a4

    :pswitch_2a
    goto/16 :goto_699

    .line 52
    :pswitch_2c
    :try_start_2c
    iget-object v0, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {v0}, Lio/dcloud/g/a/c;->b()Lio/dcloud/g/a/e;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 53
    iget-object v0, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {v0}, Lio/dcloud/g/a/c;->b()Lio/dcloud/g/a/e;

    move-result-object v0

    goto/16 :goto_1bb

    .line 55
    :cond_3c
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {v11, v0, v13}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;Z)Lio/dcloud/g/a/e;

    move-result-object v0

    goto/16 :goto_1bb

    .line 150
    :pswitch_45
    iget-object v0, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {v0}, Lio/dcloud/g/a/c;->b()Lio/dcloud/g/a/e;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 152
    invoke-direct {v11, v0, v12, v10}, Lio/dcloud/g/a/a;->a(Lio/dcloud/g/a/e;Ljava/lang/String;Z)V

    goto/16 :goto_699

    :cond_52
    const-string v0, "not app!!!"

    .line 154
    invoke-static {v8, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_699

    .line 485
    :pswitch_59
    sget-object v0, Lio/dcloud/g/a/a;->i:Ljava/lang/String;

    goto/16 :goto_1bb

    .line 486
    :pswitch_5d
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_65

    .line 487
    check-cast v1, Ljava/lang/String;

    move-object v2, v12

    goto :goto_73

    .line 489
    :cond_65
    check-cast v1, [Ljava/lang/Object;

    .line 490
    aget-object v2, v1, v13

    check-cast v2, Landroid/app/Activity;

    .line 491
    aget-object v2, v1, v10

    check-cast v2, Landroid/content/Intent;

    .line 492
    aget-object v1, v1, v9

    check-cast v1, Ljava/lang/String;

    .line 494
    :goto_73
    iget-object v3, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {v3, v1}, Lio/dcloud/g/a/c;->a(Ljava/lang/String;)Lio/dcloud/g/a/e;

    move-result-object v3

    .line 495
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eqz v3, :cond_c1

    .line 497
    iget-object v4, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {v4}, Lio/dcloud/g/a/c;->b()Lio/dcloud/g/a/e;

    move-result-object v4

    if-eq v4, v3, :cond_699

    if-eqz v4, :cond_8a

    .line 500
    invoke-virtual {v4}, Lio/dcloud/g/a/e;->x()V

    :cond_8a
    if-eqz v2, :cond_90

    .line 503
    invoke-virtual {v3, v2}, Lio/dcloud/g/a/e;->setWebAppIntent(Landroid/content/Intent;)V

    goto :goto_94

    .line 505
    :cond_90
    invoke-virtual {v3}, Lio/dcloud/g/a/e;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v2

    :goto_94
    const/16 v4, 0x15

    if-ne v4, v0, :cond_9d

    const-string v0, "__webapp_reply__"

    .line 508
    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    :cond_9d
    invoke-virtual {v3}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " will unactive change to active STREAM_START_APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-byte v0, v3, Lio/dcloud/g/a/e;->q:B

    if-ne v0, v9, :cond_699

    .line 513
    invoke-virtual {v3}, Lio/dcloud/g/a/e;->c()V

    goto/16 :goto_699

    .line 522
    :cond_c1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1bb

    .line 523
    :pswitch_c5
    iget-object v0, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {v0}, Lio/dcloud/g/a/c;->c()Lio/dcloud/g/a/e;

    move-result-object v0

    goto/16 :goto_1bb

    .line 524
    :pswitch_cd
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 525
    aget-object v1, v0, v13

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 526
    aget-object v0, v0, v10

    check-cast v0, Ljava/lang/String;

    .line 527
    check-cast v1, Lio/dcloud/g/a/e;

    invoke-virtual {v1, v0, v10}, Lio/dcloud/g/a/e;->a(Ljava/lang/String;I)V

    goto/16 :goto_699

    .line 559
    :pswitch_df
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 561
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_f2
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-direct {v11, v1}, Lio/dcloud/g/a/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 566
    invoke-virtual {v11, v1}, Lio/dcloud/g/a/a;->c(Ljava/lang/String;)Lio/dcloud/g/a/e;

    move-result-object v0

    :goto_105
    move-object v1, v0

    goto :goto_10c

    .line 568
    :cond_107
    invoke-direct {v11, v0, v1}, Lio/dcloud/g/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/g/a/e;

    move-result-object v0

    goto :goto_105

    .line 570
    :goto_10c
    iget-object v0, v1, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iget-boolean v0, v0, Lio/dcloud/g/a/g;->a:Z
    :try_end_110
    .catchall {:try_start_2c .. :try_end_110} :catchall_69b

    if-nez v0, :cond_699

    .line 572
    :try_start_112
    invoke-virtual {v11, v1}, Lio/dcloud/g/a/a;->c(Lio/dcloud/g/a/e;)V
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_117

    goto/16 :goto_6a2

    :catchall_117
    move-exception v0

    goto/16 :goto_69d

    .line 697
    :pswitch_11a
    :try_start_11a
    move-object v0, v1

    check-cast v0, Lio/dcloud/g/a/e;

    if-eqz v0, :cond_129

    .line 704
    invoke-virtual {v0}, Lio/dcloud/g/a/e;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_127
    .catchall {:try_start_11a .. :try_end_127} :catchall_69b

    goto/16 :goto_6a2

    :cond_129
    const-string v0, "false"

    goto/16 :goto_6a3

    .line 715
    :pswitch_12d
    :try_start_12d
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 716
    invoke-direct {v11, v0, v13}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;Z)Lio/dcloud/g/a/e;

    move-result-object v0

    if-eqz v0, :cond_14e

    .line 718
    iget-byte v1, v0, Lio/dcloud/g/a/e;->q:B

    if-ne v1, v6, :cond_149

    .line 719
    invoke-virtual {v0}, Lio/dcloud/g/a/e;->q()Z

    move-result v1

    if-eqz v1, :cond_142

    iget-byte v9, v0, Lio/dcloud/g/a/e;->q:B

    :cond_142
    iput-byte v9, v0, Lio/dcloud/g/a/e;->q:B

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_152

    .line 721
    :cond_149
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_152

    .line 724
    :cond_14e
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_152
    move-object v1, v0

    goto/16 :goto_6a2

    .line 725
    :pswitch_155
    iget-object v0, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {v0}, Lio/dcloud/g/a/c;->b()Lio/dcloud/g/a/e;

    move-result-object v0

    if-eqz v0, :cond_699

    .line 726
    iget-object v0, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {v0}, Lio/dcloud/g/a/c;->b()Lio/dcloud/g/a/e;

    move-result-object v0

    iget-object v1, v0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    goto/16 :goto_6a2

    .line 876
    :pswitch_167
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_174

    .line 877
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0, v13}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;Z)Lio/dcloud/g/a/e;

    move-result-object v0

    goto :goto_18f

    .line 878
    :cond_174
    instance-of v0, v1, Lio/dcloud/g/a/e;

    if-eqz v0, :cond_17c

    .line 879
    move-object v0, v1

    check-cast v0, Lio/dcloud/g/a/e;

    goto :goto_18f

    .line 880
    :cond_17c
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_18e

    .line 881
    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    .line 882
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 883
    invoke-direct {v11, v0, v13}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;Z)Lio/dcloud/g/a/e;

    move-result-object v0

    goto :goto_18f

    :cond_18e
    move-object v0, v12

    :goto_18f
    if-eqz v0, :cond_699

    .line 886
    invoke-virtual {v0}, Lio/dcloud/g/a/e;->v()V

    goto/16 :goto_699

    .line 887
    :pswitch_196
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 888
    aget-object v1, v0, v13

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 889
    aget-object v2, v0, v10

    check-cast v2, Lio/dcloud/common/DHInterface/IWebviewStateListener;

    .line 890
    array-length v3, v0

    if-le v3, v9, :cond_1b5

    .line 891
    aget-object v0, v0, v9

    check-cast v0, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    .line 892
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_699

    .line 893
    check-cast v1, Lio/dcloud/g/a/e;

    invoke-virtual {v1, v2, v0}, Lio/dcloud/g/a/e;->a(Lio/dcloud/common/DHInterface/IWebviewStateListener;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    goto :goto_1bb

    .line 896
    :cond_1b5
    check-cast v1, Lio/dcloud/g/a/e;

    invoke-virtual {v1, v2}, Lio/dcloud/g/a/e;->a(Lio/dcloud/common/DHInterface/IWebviewStateListener;)Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    :goto_1bb
    move-object v12, v0

    goto/16 :goto_699

    .line 919
    :pswitch_1be
    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 920
    aget-object v1, v0, v13

    .line 921
    aget-object v2, v0, v10

    .line 922
    aget-object v3, v0, v9

    .line 923
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    .line 924
    invoke-virtual {v11, v1, v2, v3, v0}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Lio/dcloud/g/a/e;

    move-result-object v0

    goto :goto_1bb

    .line 1250
    :pswitch_1d2
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1251
    iget-object v1, v11, Lio/dcloud/g/a/a;->a:Lio/dcloud/g/a/d;

    if-nez v1, :cond_1e0

    .line 1252
    new-instance v1, Lio/dcloud/g/a/d;

    invoke-direct {v1, v11}, Lio/dcloud/g/a/d;-><init>(Lio/dcloud/common/DHInterface/AbsMgr;)V

    iput-object v1, v11, Lio/dcloud/g/a/a;->a:Lio/dcloud/g/a/d;

    .line 1254
    :cond_1e0
    iget-object v1, v11, Lio/dcloud/g/a/a;->a:Lio/dcloud/g/a/d;

    invoke-virtual {v1, v0}, Lio/dcloud/g/a/d;->a(Ljava/lang/String;)V

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_699

    .line 1256
    :pswitch_1fb
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1257
    invoke-virtual {v11, v0}, Lio/dcloud/g/a/a;->c(Ljava/lang/String;)Lio/dcloud/g/a/e;

    move-result-object v0

    goto :goto_1bb

    .line 1258
    :pswitch_204
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1259
    invoke-virtual {v11, v0}, Lio/dcloud/g/a/a;->c(Ljava/lang/String;)Lio/dcloud/g/a/e;

    move-result-object v0

    if-eqz v0, :cond_699

    .line 1261
    invoke-virtual {v0}, Lio/dcloud/g/a/e;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_1bb

    .line 1316
    :pswitch_213
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 1317
    aget-object v1, v0, v13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1318
    aget-object v2, v0, v10

    check-cast v2, Lorg/json/JSONObject;

    .line 1319
    aget-object v0, v0, v9

    check-cast v0, Lio/dcloud/common/DHInterface/IWebview;

    .line 1320
    invoke-static {v2, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "recognise"

    .line 1322
    invoke-static {v2, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1323
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27d

    .line 1324
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27d

    .line 1325
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".wgtu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27d

    .line 1326
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".wgt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27d

    .line 1328
    invoke-static {v1}, Lio/dcloud/common/util/CheckSignatureUtil;->check(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27d

    new-array v1, v9, [Ljava/lang/Object;

    .line 1330
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v13
    :try_end_25e
    .catchall {:try_start_12d .. :try_end_25e} :catchall_69b

    const-string v2, "{code:%d,message:\'%s\'}"

    :try_start_260
    new-array v3, v9, [Ljava/lang/Object;

    const/16 v4, 0xa

    .line 1332
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    .line 1333
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lio/dcloud/base/R$string;->dcloud_common_app_check_failed:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    .line 1334
    invoke-static {v2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    return-object v1

    .line 1342
    :cond_27d
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28f

    .line 1343
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    .line 1345
    :cond_28f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "install begin _filePath = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";_mayBeAppid = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v11, v1, v3, v2}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lio/dcloud/g/a/e;

    move-result-object v0

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install end useTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v9, [Ljava/lang/Object;

    .line 1350
    iget-object v2, v0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iget-boolean v2, v2, Lio/dcloud/g/a/g;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v13

    .line 1351
    iget-object v0, v0, Lio/dcloud/g/a/e;->o:Lio/dcloud/g/a/g;

    iget-object v0, v0, Lio/dcloud/g/a/g;->b:Ljava/lang/String;

    aput-object v0, v1, v10

    goto/16 :goto_6a2

    .line 1352
    :pswitch_2e0
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "snc:CID"

    .line 1354
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f3

    .line 1355
    iget-object v1, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {v1}, Lio/dcloud/g/a/c;->b()Lio/dcloud/g/a/e;

    move-result-object v1

    goto :goto_2f7

    .line 1357
    :cond_2f3
    invoke-direct {v11, v0, v10}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;Z)Lio/dcloud/g/a/e;

    move-result-object v1

    .line 1360
    :goto_2f7
    invoke-virtual {v1}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lio/dcloud/WebAppActivity;

    if-eqz v2, :cond_34e

    .line 1362
    invoke-virtual {v1}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lio/dcloud/WebAppActivity;

    if-eqz v2, :cond_349

    .line 1364
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_349

    .line 1366
    invoke-static {}, Lio/dcloud/common/ui/b;->a()Lio/dcloud/common/ui/b;

    move-result-object v3

    invoke-virtual {v2}, Lio/dcloud/WebAppActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/dcloud/common/ui/b;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_344

    .line 1368
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 1369
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1370
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 1373
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_699

    .line 1375
    :cond_344
    invoke-direct {v11, v1, v0, v13}, Lio/dcloud/g/a/a;->a(Lio/dcloud/g/a/e;Ljava/lang/String;Z)V

    goto/16 :goto_699

    .line 1379
    :cond_349
    invoke-direct {v11, v1, v0, v13}, Lio/dcloud/g/a/a;->a(Lio/dcloud/g/a/e;Ljava/lang/String;Z)V

    goto/16 :goto_699

    .line 1382
    :cond_34e
    invoke-direct {v11, v1, v0, v13}, Lio/dcloud/g/a/a;->a(Lio/dcloud/g/a/e;Ljava/lang/String;Z)V

    goto/16 :goto_699

    .line 1692
    :pswitch_353
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1693
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_394

    .line 1694
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_379

    .line 1697
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1698
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_37a

    :cond_379
    move-object v1, v12

    .line 1700
    :goto_37a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_388

    .line 1701
    invoke-virtual {v11, v1}, Lio/dcloud/g/a/a;->c(Ljava/lang/String;)Lio/dcloud/g/a/e;

    move-result-object v1

    .line 1702
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object v12

    :cond_388
    if-nez v12, :cond_699

    .line 1705
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_1bb

    .line 1708
    :cond_394
    iget-object v1, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {v1}, Lio/dcloud/g/a/c;->b()Lio/dcloud/g/a/e;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    .line 1709
    invoke-virtual {v11, v1}, Lio/dcloud/g/a/a;->c(Ljava/lang/String;)Lio/dcloud/g/a/e;

    move-result-object v1

    const-string v2, "_www/"

    .line 1710
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b0

    if-eqz v1, :cond_699

    .line 1712
    invoke-virtual {v1, v0}, Lio/dcloud/g/a/e;->obtainResInStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_1bb

    :cond_3b0
    const-string v2, "_doc/"

    .line 1714
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_699

    const/4 v2, 0x5

    .line 1715
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lio/dcloud/g/a/e;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1717
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_1bb

    .line 1718
    :pswitch_3da
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 1720
    aget-object v1, v0, v9

    instance-of v1, v1, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v1, :cond_3e8

    .line 1721
    aget-object v1, v0, v9

    check-cast v1, Lio/dcloud/g/a/e;

    goto :goto_3f2

    .line 1723
    :cond_3e8
    aget-object v1, v0, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1, v13}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;Z)Lio/dcloud/g/a/e;

    move-result-object v1

    .line 1726
    :goto_3f2
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-nez v2, :cond_405

    if-nez v1, :cond_405

    aget-object v2, v0, v13

    check-cast v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-static {v2}, Lio/dcloud/g/a/e;->a(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)Z

    move-result v2

    if-eqz v2, :cond_403

    goto :goto_405

    :cond_403
    const/4 v2, 0x0

    goto :goto_411

    .line 1727
    :cond_405
    :goto_405
    iget-object v2, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    aget-object v3, v0, v13

    check-cast v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    aget-object v5, v0, v10

    invoke-virtual {v2, v1, v3, v5}, Lio/dcloud/g/a/c;->a(Lio/dcloud/g/a/e;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result v2

    :goto_411
    if-nez v2, :cond_43a

    if-eqz v1, :cond_43a

    .line 1729
    aget-object v3, v0, v13

    check-cast v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    sget-object v5, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43a

    .line 1730
    aget-object v3, v0, v10

    check-cast v3, [Ljava/lang/Object;

    aget-object v3, v3, v13

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1731
    aget-object v0, v0, v9

    check-cast v0, Ljava/lang/String;

    const/4 v0, 0x4

    if-ne v3, v0, :cond_43a

    .line 1733
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v11, v0, v4, v1}, Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_43b

    :cond_43a
    move v10, v2

    .line 1737
    :goto_43b
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1bb

    .line 1738
    :pswitch_441
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 1739
    aget-object v1, v0, v13

    move-object v14, v1

    check-cast v14, Landroid/app/Activity;

    .line 1740
    aget-object v1, v0, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1741
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_455
    .catchall {:try_start_260 .. :try_end_455} :catchall_69b

    const-string v1, "ylyl"

    .line 1742
    :try_start_457
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AppMGr START_APP "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46b
    .catchall {:try_start_457 .. :try_end_46b} :catchall_69b

    const-string v1, "appMgr"

    .line 1743
    :try_start_46d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "START_APP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    invoke-virtual {v11, v14, v5}, Lio/dcloud/g/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)Lio/dcloud/g/a/e;

    move-result-object v15

    .line 1745
    iget-object v1, v15, Lio/dcloud/g/a/e;->n0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v15, :cond_67e

    .line 1747
    iget-object v1, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {v1}, Lio/dcloud/g/a/c;->b()Lio/dcloud/g/a/e;

    move-result-object v6

    .line 1748
    iget-object v1, v11, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {v1, v14, v15}, Lio/dcloud/g/a/c;->a(Landroid/app/Activity;Lio/dcloud/g/a/e;)Lio/dcloud/g/a/e;

    move-result-object v8

    if-eqz v8, :cond_4a3

    if-eqz v8, :cond_49f

    if-ne v8, v15, :cond_4a3

    .line 1750
    :cond_49f
    iget-boolean v1, v15, Lio/dcloud/g/a/e;->r:Z

    if-eqz v1, :cond_697

    .line 1752
    :cond_4a3
    invoke-virtual {v15}, Lio/dcloud/g/a/e;->r()Z

    move-result v1

    if-eqz v1, :cond_59e

    if-nez v8, :cond_4ad

    const/4 v1, 0x1

    goto :goto_4ae

    :cond_4ad
    const/4 v1, 0x0

    .line 1755
    :goto_4ae
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v3, v7}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1756
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4e2

    const-string v1, "popped"

    .line 1759
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e1

    .line 1760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v3, v1}, Lio/dcloud/common/adapter/util/SP;->removeBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e1
    const/4 v1, 0x0

    .line 1768
    :cond_4e2
    iget-boolean v2, v15, Lio/dcloud/g/a/e;->r:Z

    if-nez v2, :cond_4f1

    .line 1769
    invoke-virtual {v14}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "__start_first_web__"

    invoke-virtual {v2, v3, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_4f2

    :cond_4f1
    const/4 v2, 0x0

    .line 1771
    :goto_4f2
    invoke-virtual {v15}, Lio/dcloud/g/a/e;->o()Z

    move-result v3

    if-nez v3, :cond_58c

    if-eqz v1, :cond_58c

    if-nez v2, :cond_58c

    iget-byte v1, v15, Lio/dcloud/g/a/e;->q:B

    if-ne v1, v10, :cond_58c

    .line 1772
    iget-object v1, v11, Lio/dcloud/g/a/a;->e:Landroid/app/AlertDialog;

    if-eqz v1, :cond_50f

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_50f

    .line 1773
    iget-object v1, v11, Lio/dcloud/g/a/a;->e:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1776
    :cond_50f
    invoke-static {v14, v10}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v11, Lio/dcloud/g/a/a;->e:Landroid/app/AlertDialog;

    .line 1777
    invoke-virtual {v1, v13}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1778
    sget v1, Lio/dcloud/base/R$string;->dcloud_common_app_test_tips:I

    invoke-virtual {v14, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1779
    new-instance v7, Landroid/widget/CheckBox;

    invoke-direct {v7, v14}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1780
    sget v2, Lio/dcloud/base/R$string;->dcloud_common_app_trust_tips:I

    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setText(I)V

    const/high16 v2, -0x10000

    .line 1781
    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1782
    iget-object v2, v11, Lio/dcloud/g/a/a;->e:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1783
    iget-object v1, v11, Lio/dcloud/g/a/a;->e:Landroid/app/AlertDialog;

    invoke-static {v14, v4}, Lio/dcloud/common/adapter/util/DeviceInfo;->getDeivceSuitablePixel(Landroid/app/Activity;I)I

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v7

    invoke-virtual/range {v17 .. v22}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 1784
    new-instance v13, Lio/dcloud/g/a/a$c;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    move-object/from16 v17, v8

    move-object v8, v15

    move-object/from16 v9, v17

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lio/dcloud/g/a/a$c;-><init>(Lio/dcloud/g/a/a;Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/g/a/e;Landroid/widget/CheckBox;Ljava/lang/String;Lio/dcloud/g/a/e;Lio/dcloud/g/a/e;Z)V

    .line 1814
    iget-object v0, v11, Lio/dcloud/g/a/a;->e:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1816
    iget-object v0, v11, Lio/dcloud/g/a/a;->e:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v0, "yl"

    const-string v1, "test show "

    .line 1817
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    iget-object v0, v11, Lio/dcloud/g/a/a;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_697

    :cond_58c
    move-object/from16 v17, v8

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v5

    move-object v4, v0

    move-object v5, v6

    move-object v6, v15

    move-object/from16 v7, v17

    move/from16 v8, v16

    .line 1820
    invoke-virtual/range {v1 .. v8}, Lio/dcloud/g/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/g/a/e;Lio/dcloud/g/a/e;Lio/dcloud/g/a/e;Z)V

    goto/16 :goto_697

    :cond_59e
    move-object/from16 v17, v8

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v5

    move-object v4, v0

    move-object v5, v6

    move-object v6, v15

    move-object/from16 v7, v17

    move/from16 v8, v16

    .line 1823
    invoke-virtual/range {v1 .. v8}, Lio/dcloud/g/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/g/a/e;Lio/dcloud/g/a/e;Lio/dcloud/g/a/e;Z)V

    .line 1824
    invoke-virtual {v15}, Lio/dcloud/g/a/e;->p()Z

    move-result v0
    :try_end_5b2
    .catchall {:try_start_46d .. :try_end_5b2} :catchall_69b

    const v1, 0x108009b

    const-string v2, "HTML5+ Runtime"

    if-eqz v0, :cond_61a

    .line 1825
    :try_start_5b9
    iget-object v0, v11, Lio/dcloud/g/a/a;->g:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5c8

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5c8

    .line 1826
    iget-object v0, v11, Lio/dcloud/g/a/a;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1828
    :cond_5c8
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_app_tips1:I

    invoke-virtual {v14, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "appUniVersion"

    invoke-virtual {v15, v4}, Lio/dcloud/g/a/e;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v13

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-static {v0, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1829
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget v4, Lio/dcloud/PdrR;->FEATURE_LOSS_STYLE:I

    invoke-direct {v3, v14, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1830
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_view_details:I

    invoke-virtual {v14, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/dcloud/g/a/a$d;

    invoke-direct {v4, v11, v14}, Lio/dcloud/g/a/a$d;-><init>(Lio/dcloud/g/a/a;Landroid/app/Activity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_ignore:I

    .line 1840
    invoke-virtual {v14, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v11, Lio/dcloud/g/a/a;->g:Landroid/app/AlertDialog;

    .line 1841
    invoke-virtual {v0, v13}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1842
    iget-object v0, v11, Lio/dcloud/g/a/a;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_61a
    const-string v0, "io.dcloud.feature.weex.WeexFeature"

    .line 1845
    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->checkClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_697

    invoke-static {v15}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_697

    invoke-static {v15}, Lio/dcloud/common/util/BaseInfo;->isWeexUniJs(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_697

    .line 1846
    iget-object v0, v11, Lio/dcloud/g/a/a;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_63d

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_63d

    .line 1847
    iget-object v0, v11, Lio/dcloud/g/a/a;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1848
    :cond_63d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v3, Lio/dcloud/PdrR;->FEATURE_LOSS_STYLE:I

    invoke-direct {v0, v14, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_app_tips2:I

    .line 1849
    invoke-virtual {v14, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_view_details:I

    invoke-virtual {v14, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/dcloud/g/a/a$e;

    invoke-direct {v2, v11, v14}, Lio/dcloud/g/a/a$e;-><init>(Lio/dcloud/g/a/a;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_ignore:I

    .line 1858
    invoke-virtual {v14, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v11, Lio/dcloud/g/a/a;->h:Landroid/app/AlertDialog;

    .line 1859
    invoke-virtual {v0, v13}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1860
    iget-object v0, v11, Lio/dcloud/g/a/a;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_697

    .line 1865
    :cond_67e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " app!!! \u68c0\u6d4bmanifest.json\u91ccappid\u662f\u5426\u4e0econtrol.xml\u4e2d\u914d\u7f6e\u9879\u7b26\u5408"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_697
    .catchall {:try_start_5b9 .. :try_end_697} :catchall_69b

    :cond_697
    :goto_697
    move-object v0, v15

    goto :goto_6a3

    :cond_699
    :goto_699
    move-object v0, v12

    goto :goto_6a3

    :catchall_69b
    move-exception v0

    move-object v1, v12

    :goto_69d
    const-string v2, "AppMgr.processEvent"

    .line 1941
    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6a2
    move-object v0, v1

    :goto_6a3
    return-object v0

    :pswitch_data_6a4
    .packed-switch 0x0
        :pswitch_441
        :pswitch_3da
        :pswitch_353
        :pswitch_2e0
        :pswitch_213
        :pswitch_204
        :pswitch_1fb
        :pswitch_1d2
        :pswitch_1be
        :pswitch_196
        :pswitch_167
        :pswitch_155
        :pswitch_12d
        :pswitch_11a
        :pswitch_df
        :pswitch_2a
        :pswitch_cd
        :pswitch_2a
        :pswitch_2a
        :pswitch_c5
        :pswitch_5d
        :pswitch_5d
        :pswitch_2a
        :pswitch_2a
        :pswitch_59
        :pswitch_2a
        :pswitch_2a
        :pswitch_45
        :pswitch_2c
    .end packed-switch
.end method

###### Class io.dcloud.g.a.a.C0059a (io.dcloud.g.a.a$a)
.class Lio/dcloud/g/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/dcloud/g/a/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/g/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.g.a.a.b (io.dcloud.g.a.a$b)
.class Lio/dcloud/g/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/a;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/g/a/a$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    const-string v1, "uni-jsframework-dev.js"

    if-eqz v0, :cond_13

    invoke-static {v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const-string v1, "uni-jsframework.js"

    .line 7
    :goto_15
    :try_start_15
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lio/dcloud/g/a/a$b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "version"

    .line 10
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_3f

    :catch_3f
    return-void
.end method

###### Class io.dcloud.g.a.a.c (io.dcloud.g.a.a$c)
.class Lio/dcloud/g/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/g/a/e;

.field final synthetic d:Landroid/widget/CheckBox;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lio/dcloud/g/a/e;

.field final synthetic g:Lio/dcloud/g/a/e;

.field final synthetic h:Z

.field final synthetic i:Lio/dcloud/g/a/a;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/a;Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/g/a/e;Landroid/widget/CheckBox;Ljava/lang/String;Lio/dcloud/g/a/e;Lio/dcloud/g/a/e;Z)V
    .registers 10

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/a$c;->i:Lio/dcloud/g/a/a;

    iput-object p2, p0, Lio/dcloud/g/a/a$c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lio/dcloud/g/a/a$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/g/a/a$c;->c:Lio/dcloud/g/a/e;

    iput-object p5, p0, Lio/dcloud/g/a/a$c;->d:Landroid/widget/CheckBox;

    iput-object p6, p0, Lio/dcloud/g/a/a$c;->e:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/g/a/a$c;->f:Lio/dcloud/g/a/e;

    iput-object p8, p0, Lio/dcloud/g/a/a$c;->g:Lio/dcloud/g/a/e;

    iput-boolean p9, p0, Lio/dcloud/g/a/a$c;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13

    const/4 p1, -0x2

    if-ne p2, p1, :cond_48

    .line 1
    iget-object p1, p0, Lio/dcloud/g/a/a$c;->i:Lio/dcloud/g/a/a;

    invoke-static {p1}, Lio/dcloud/g/a/a;->a(Lio/dcloud/g/a/a;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lio/dcloud/g/a/a$c;->a:Landroid/app/Activity;

    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 4
    iget-object p2, p0, Lio/dcloud/g/a/a$c;->b:Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IActivityHandler;->closeAppStreamSplash(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p2, "closeSplashScreen0"

    .line 5
    invoke-static {p1, p2}, Lio/dcloud/common/util/BaseInfo;->setLoadingLaunchePage(ZLjava/lang/String;)V

    .line 6
    iget-object p1, p0, Lio/dcloud/g/a/a$c;->i:Lio/dcloud/g/a/a;

    iget-object p1, p1, Lio/dcloud/g/a/a;->d:Lio/dcloud/g/a/c;

    invoke-virtual {p1}, Lio/dcloud/g/a/c;->e()I

    move-result p1

    if-nez p1, :cond_2f

    .line 7
    iget-object p1, p0, Lio/dcloud/g/a/a$c;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_8f

    .line 9
    :cond_2f
    iget-object p1, p0, Lio/dcloud/g/a/a$c;->c:Lio/dcloud/g/a/e;

    if-eqz p1, :cond_36

    .line 10
    invoke-virtual {p1}, Lio/dcloud/g/a/e;->x()V

    .line 12
    :cond_36
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object p2, p0, Lio/dcloud/g/a/a$c;->a:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8f

    :cond_48
    const/4 p1, -0x3

    if-ne p2, p1, :cond_4c

    goto :goto_8f

    :cond_4c
    const/4 p1, -0x1

    if-ne p2, p1, :cond_8f

    .line 19
    iget-object p1, p0, Lio/dcloud/g/a/a$c;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 20
    iget-object p1, p0, Lio/dcloud/g/a/a$c;->a:Landroid/app/Activity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "test_runing"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/g/a/a$c;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "pdr"

    const-string v1, "__am=t"

    invoke-static {p1, v0, p2, v1}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_73
    iget-object v2, p0, Lio/dcloud/g/a/a$c;->i:Lio/dcloud/g/a/a;

    iget-object v3, p0, Lio/dcloud/g/a/a$c;->a:Landroid/app/Activity;

    iget-object v4, p0, Lio/dcloud/g/a/a$c;->b:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/g/a/a$c;->e:Ljava/lang/String;

    iget-object v6, p0, Lio/dcloud/g/a/a$c;->c:Lio/dcloud/g/a/e;

    iget-object v7, p0, Lio/dcloud/g/a/a$c;->f:Lio/dcloud/g/a/e;

    iget-object v8, p0, Lio/dcloud/g/a/a$c;->g:Lio/dcloud/g/a/e;

    iget-boolean v9, p0, Lio/dcloud/g/a/a$c;->h:Z

    invoke-virtual/range {v2 .. v9}, Lio/dcloud/g/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/g/a/e;Lio/dcloud/g/a/e;Lio/dcloud/g/a/e;Z)V

    .line 23
    iget-object p1, p0, Lio/dcloud/g/a/a$c;->i:Lio/dcloud/g/a/a;

    invoke-static {p1}, Lio/dcloud/g/a/a;->a(Lio/dcloud/g/a/a;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_8f
    :goto_8f
    return-void
.end method

###### Class io.dcloud.g.a.a.d (io.dcloud.g.a.a$d)
.class Lio/dcloud/g/a/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/a;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/g/a/a$d;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.VIEW"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "https://ask.dcloud.net.cn/article/35627"

    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lio/dcloud/g/a/a$d;->a:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.g.a.a.e (io.dcloud.g.a.a$e)
.class Lio/dcloud/g/a/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/a;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/g/a/a$e;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.VIEW"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "https://ask.dcloud.net.cn/article/35877"

    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lio/dcloud/g/a/a$e;->a:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.g.a.a.f (io.dcloud.g.a.a$f)
.class Lio/dcloud/g/a/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/a;->a(Lio/dcloud/g/a/e;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/g/a/e;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/a;Lio/dcloud/g/a/e;ZLjava/lang/String;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lio/dcloud/g/a/a$f;->a:Lio/dcloud/g/a/e;

    iput-boolean p3, p0, Lio/dcloud/g/a/a$f;->b:Z

    iput-object p4, p0, Lio/dcloud/g/a/a$f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/g/a/a$f;->a:Lio/dcloud/g/a/e;

    iget-boolean p2, p0, Lio/dcloud/g/a/a$f;->b:Z

    invoke-virtual {p1, p2}, Lio/dcloud/g/a/e;->a(Z)Z

    move-result p1

    if-nez p1, :cond_27

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reboot "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/dcloud/g/a/a$f;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " app failed !!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "appmgr"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.g.a.a.g (io.dcloud.g.a.a$g)
.class Lio/dcloud/g/a/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/g/a/e;Lio/dcloud/g/a/e;Lio/dcloud/g/a/e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/g/a/e;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lio/dcloud/g/a/a;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/a;Lio/dcloud/g/a/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/a$g;->e:Lio/dcloud/g/a/a;

    iput-object p2, p0, Lio/dcloud/g/a/a$g;->a:Lio/dcloud/g/a/e;

    iput-object p3, p0, Lio/dcloud/g/a/a$g;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/g/a/a$g;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lio/dcloud/g/a/a$g;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOther()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOtherInitialised()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isIsLoadOtherTimeOut()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 3
    new-instance p1, Lio/dcloud/g/a/a$g$a;

    invoke-direct {p1, p0}, Lio/dcloud/g/a/a$g$a;-><init>(Lio/dcloud/g/a/a$g;)V

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setOtherCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V

    goto :goto_28

    .line 11
    :cond_1b
    iget-object p1, p0, Lio/dcloud/g/a/a$g;->e:Lio/dcloud/g/a/a;

    iget-object p2, p0, Lio/dcloud/g/a/a$g;->a:Lio/dcloud/g/a/e;

    iget-object v0, p0, Lio/dcloud/g/a/a$g;->b:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/g/a/a$g;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lio/dcloud/g/a/a$g;->d:Z

    invoke-static {p1, p2, v0, v1, v2}, Lio/dcloud/g/a/a;->a(Lio/dcloud/g/a/a;Lio/dcloud/g/a/e;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_28
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.g.a.a.g.C0060a (io.dcloud.g.a.a$g$a)
.class Lio/dcloud/g/a/a$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/a$g;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/g/a/a$g;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/a$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/a$g$a;->a:Lio/dcloud/g/a/a$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/g/a/a$g$a;->a:Lio/dcloud/g/a/a$g;

    iget-object p2, p1, Lio/dcloud/g/a/a$g;->e:Lio/dcloud/g/a/a;

    iget-object v0, p1, Lio/dcloud/g/a/a$g;->a:Lio/dcloud/g/a/e;

    iget-object v1, p1, Lio/dcloud/g/a/a$g;->b:Ljava/lang/String;

    iget-object v2, p1, Lio/dcloud/g/a/a$g;->c:Ljava/lang/String;

    iget-boolean p1, p1, Lio/dcloud/g/a/a$g;->d:Z

    invoke-static {p2, v0, v1, v2, p1}, Lio/dcloud/g/a/a;->a(Lio/dcloud/g/a/a;Lio/dcloud/g/a/e;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.g.a.a.h (io.dcloud.g.a.a$h)
.class Lio/dcloud/g/a/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/a;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/dcloud/g/a/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/constant/StringConst;->STREAMAPP_KEY_ROOTPATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "splash_temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b
    return-void
.end method
