###### Class com.taobao.weex.common.WXCompatModule (com.taobao.weex.common.WXCompatModule)
.class public abstract Lcom/taobao/weex/common/WXCompatModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXCompatModule.java"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;
    }
.end annotation


# instance fields
.field private mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 38
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 39
    new-instance v0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    invoke-direct {v0, p0}, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;-><init>(Lcom/taobao/weex/common/WXCompatModule;)V

    iput-object v0, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    .line 40
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "actionActivityResult"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 42
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "actionRequestPermissionsResult"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 54
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    .line 55
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    return-void
.end method

###### Class com.taobao.weex.common.WXCompatModule.ModuleReceive (com.taobao.weex.common.WXCompatModule$ModuleReceive)
.class Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;
.super Landroid/content/BroadcastReceiver;
.source "WXCompatModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXCompatModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModuleReceive"
.end annotation


# instance fields
.field private mWXCompatModule:Lcom/taobao/weex/common/WXCompatModule;


# direct methods
.method constructor <init>(Lcom/taobao/weex/common/WXCompatModule;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;->mWXCompatModule:Lcom/taobao/weex/common/WXCompatModule;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "actionActivityResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "requestCode"

    const/4 v2, -0x1

    if-nez v0, :cond_31

    const-string v0, "actionRequestPermissionsResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_40

    .line 76
    :cond_1b
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "permissions"

    .line 77
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "grantResults"

    .line 78
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    .line 79
    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;->mWXCompatModule:Lcom/taobao/weex/common/WXCompatModule;

    invoke-virtual {v1, p1, v0, p2}, Lcom/taobao/weex/common/WXCompatModule;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_40

    .line 71
    :cond_31
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "resultCode"

    .line 72
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;->mWXCompatModule:Lcom/taobao/weex/common/WXCompatModule;

    invoke-virtual {v1, p1, v0, p2}, Lcom/taobao/weex/common/WXCompatModule;->onActivityResult(IILandroid/content/Intent;)V

    :goto_40
    return-void
.end method
