###### Class io.src.dcloud.adapter.DCloudBaseActivity (io.src.dcloud.adapter.DCloudBaseActivity)
.class public Lio/src/dcloud/adapter/DCloudBaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;,
        Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;
    }
.end annotation


# instance fields
.field private loadingSecond:I

.field private mDebugDialog:Landroid/app/AlertDialog;

.field private mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

.field private mIsWeexDebuging:Z

.field private mLoadingPD:Landroid/app/Dialog;

.field private mSocketCheckReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

.field public that:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    iput-object p0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadingSecond:I

    return-void
.end method

.method static synthetic access$000(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/src/dcloud/adapter/DCloudBaseActivity;->debugSocketAlert(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/Dialog;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lio/src/dcloud/adapter/DCloudBaseActivity;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadingSecond:I

    return p0
.end method

.method static synthetic access$202(Lio/src/dcloud/adapter/DCloudBaseActivity;I)I
    .registers 2

    .line 1
    iput p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadingSecond:I

    return p1
.end method

.method static synthetic access$208(Lio/src/dcloud/adapter/DCloudBaseActivity;)I
    .registers 3

    .line 1
    iget v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadingSecond:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadingSecond:I

    return v0
.end method

.method static synthetic access$300(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;ZZ)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/src/dcloud/adapter/DCloudBaseActivity;->debugSocketAlert(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lio/src/dcloud/adapter/DCloudBaseActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->dismissDebugLoading()V

    return-void
.end method

.method static synthetic access$500(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/AlertDialog;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$502(Lio/src/dcloud/adapter/DCloudBaseActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private debugSocketAlert(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "socketSuccess"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 6
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->dismissDebugLoading()V

    .line 7
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_12

    .line 8
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_12
    return-void

    :cond_13
    const-string p1, "\n"

    if-eqz p2, :cond_2d

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lio/dcloud/base/R$string;->dcloud_debug_break_off_reason:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    .line 16
    :cond_2d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lio/dcloud/base/R$string;->dcloud_debug_cannot_connect:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    :goto_42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lio/dcloud/base/R$string;->dcloud_debug_possible_causes:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    invoke-direct {v0, p0, p1}, Lio/src/dcloud/adapter/DCloudBaseActivity$b;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private debugSocketAlert(Ljava/lang/String;ZZ)V
    .registers 4

    if-eqz p3, :cond_5

    .line 1
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->dismissDebugLoading()V

    .line 3
    :cond_5
    invoke-direct {p0, p1, p2}, Lio/src/dcloud/adapter/DCloudBaseActivity;->debugSocketAlert(Ljava/lang/String;Z)V

    return-void
.end method

.method private dismissDebugLoading()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    :cond_a
    return-void
.end method

.method private isWeexDebuging()Z
    .registers 4

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/apps/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/www/__nvue_debug__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    return v0

    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method private showDebugLoading()V
    .registers 6

    .line 1
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 3
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 6
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 8
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lio/dcloud/base/R$layout;->dcloud_weex_debug_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    sget v1, Lio/dcloud/base/R$id;->debugTV:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "io.dcloud.feature.weex.WeexDevtoolImpl"

    const-string v4, "getCurrentPingIP"

    .line 10
    invoke-static {v3, v4, v2, v2, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_78

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lio/dcloud/base/R$string;->dcloud_debug_connecting:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_78
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mLoadingPD:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 15
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/src/dcloud/adapter/DCloudBaseActivity$a;

    invoke-direct {v1, p0}, Lio/src/dcloud/adapter/DCloudBaseActivity$a;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz p1, :cond_40

    .line 3
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->isWeexDebuging()Z

    move-result p1

    iput-boolean p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mIsWeexDebuging:Z

    if-eqz p1, :cond_40

    .line 5
    new-instance p1, Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    invoke-direct {p1, p0}, Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V

    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    .line 6
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "io.dcloud.debug.SOCKET_STATUS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 7
    new-instance p1, Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

    invoke-direct {p1, p0}, Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V

    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mSocketCheckReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

    .line 8
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mSocketCheckReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "io.dcloud.debug.ping"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 9
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->showDebugLoading()V

    :cond_40
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    if-eqz v0, :cond_19

    .line 3
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mDebugSocketStatusReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->mSocketCheckReceiver:Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_19
    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->onNewIntentImpl(Landroid/content/Intent;)V

    return-void
.end method

.method public onNewIntentImpl(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.DebugSocketStatusReceiver (io.src.dcloud.adapter.DCloudBaseActivity$DebugSocketStatusReceiver)
.class public Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DebugSocketStatusReceiver"
.end annotation


# instance fields
.field final synthetic a:Lio/src/dcloud/adapter/DCloudBaseActivity;


# direct methods
.method public constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "socketStatus"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$DebugSocketStatusReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$000(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;Z)V

    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.SocketCheckReceiver (io.src.dcloud.adapter.DCloudBaseActivity$SocketCheckReceiver)
.class public Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocketCheckReceiver"
.end annotation


# instance fields
.field final synthetic a:Lio/src/dcloud/adapter/DCloudBaseActivity;


# direct methods
.method public constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "pingIP"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$100(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 4
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$202(Lio/src/dcloud/adapter/DCloudBaseActivity;I)I

    .line 5
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$SocketCheckReceiver;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$100(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lio/dcloud/base/R$id;->debugTV:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lio/dcloud/base/R$string;->dcloud_debug_connecting:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_44
    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.a (io.src.dcloud.adapter.DCloudBaseActivity$a)
.class Lio/src/dcloud/adapter/DCloudBaseActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity;->showDebugLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/src/dcloud/adapter/DCloudBaseActivity;


# direct methods
.method constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "io.dcloud.feature.weex.WeexDevtoolImpl"

    const-string v1, "getDebugSocketStatus"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2, v2, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_b
    const/4 v4, 0x0

    if-nez v3, :cond_2a

    .line 3
    iget-object v5, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v5}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$200(Lio/src/dcloud/adapter/DCloudBaseActivity;)I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_19

    const/4 v0, 0x1

    goto :goto_2b

    :cond_19
    const-wide/16 v3, 0x3e8

    .line 7
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 8
    iget-object v3, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v3}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$208(Lio/src/dcloud/adapter/DCloudBaseActivity;)I

    .line 9
    invoke-static {v0, v1, v2, v2, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_b

    :cond_2a
    const/4 v0, 0x0

    .line 11
    :goto_2b
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v1, v3, v4, v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$300(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;ZZ)V

    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.b (io.src.dcloud.adapter.DCloudBaseActivity$b)
.class Lio/src/dcloud/adapter/DCloudBaseActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity;->debugSocketAlert(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/src/dcloud/adapter/DCloudBaseActivity;


# direct methods
.method constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    iput-object p2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$400(Lio/src/dcloud/adapter/DCloudBaseActivity;)V

    .line 2
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$500(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_45

    .line 3
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    .line 4
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lio/dcloud/base/R$string;->dcloud_debug_reconnection_service:I

    new-instance v3, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;

    invoke-direct {v3, p0}, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity$b;)V

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    new-instance v3, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;

    invoke-direct {v3, p0}, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;-><init>(Lio/src/dcloud/adapter/DCloudBaseActivity$b;)V

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$502(Lio/src/dcloud/adapter/DCloudBaseActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_65

    .line 68
    :cond_45
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$500(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_65

    .line 69
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$500(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->access$500(Lio/src/dcloud/adapter/DCloudBaseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_65
    :goto_65
    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.b.a (io.src.dcloud.adapter.DCloudBaseActivity$b$a)
.class Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;


# direct methods
.method constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Android/data/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/apps/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/www/__nvue_debug__"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 7
    :cond_42
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p2, p2, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$a;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p2, p2, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

###### Class io.src.dcloud.adapter.DCloudBaseActivity.b.DialogInterfaceOnClickListenerC0082b (io.src.dcloud.adapter.DCloudBaseActivity$b$b)
.class Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/src/dcloud/adapter/DCloudBaseActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;


# direct methods
.method constructor <init>(Lio/src/dcloud/adapter/DCloudBaseActivity$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p2, p2, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity$b$b;->a:Lio/src/dcloud/adapter/DCloudBaseActivity$b;

    iget-object p2, p2, Lio/src/dcloud/adapter/DCloudBaseActivity$b;->b:Lio/src/dcloud/adapter/DCloudBaseActivity;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method
