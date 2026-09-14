###### Class io.dcloud.ProcessMediator (io.dcloud.ProcessMediator)
.class public Lio/dcloud/ProcessMediator;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/ProcessMediator$Logic;
    }
.end annotation


# static fields
.field public static final CODE_REQUEST:I = 0x3e8

.field public static final CODE_RESULT:I = 0x3e9

.field public static final LOGIC_CLASS:Ljava/lang/String; = "__class__"

.field public static final PROCESS_ACTIVITY_SOURCE:Ljava/lang/String; = "process_activity_source"

.field public static final REQ_DATA:Ljava/lang/String; = "req"

.field public static final RESULT_ACTION:Ljava/lang/String; = "mediator_process_result_action"

.field public static final RESULT_DATA:Ljava/lang/String; = "result"

.field public static final STYLE_DATA:Ljava/lang/String; = "style"

.field public static isMultiProcess:Z = false


# instance fields
.field private a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lio/dcloud/ProcessMediator;->b:Ljava/lang/String;

    .line 49
    new-instance v0, Lio/dcloud/ProcessMediator$a;

    invoke-direct {v0, p0}, Lio/dcloud/ProcessMediator$a;-><init>(Lio/dcloud/ProcessMediator;)V

    iput-object v0, p0, Lio/dcloud/ProcessMediator;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "__class__"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_17
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lio/dcloud/ProcessMediator;->isMultiProcess:Z

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "transaction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "process_activity_source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/ProcessMediator;->a:Ljava/lang/String;

    .line 12
    :cond_3a
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "mediator_process_result_action"

    if-eqz v2, :cond_48

    goto :goto_57

    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_57
    iput-object v3, p0, Lio/dcloud/ProcessMediator;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/ProcessMediator;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 17
    :try_start_65
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    .line 19
    instance-of v0, p1, Lio/dcloud/ProcessMediator$Logic;

    if-eqz v0, :cond_89

    .line 20
    check-cast p1, Lio/dcloud/ProcessMediator$Logic;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lio/dcloud/ProcessMediator$Logic;->exec(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_7a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_65 .. :try_end_7a} :catch_85
    .catch Ljava/lang/InstantiationException; {:try_start_65 .. :try_end_7a} :catch_80
    .catch Ljava/lang/IllegalAccessException; {:try_start_65 .. :try_end_7a} :catch_7b

    goto :goto_89

    :catch_7b
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_89

    :catch_80
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_89

    :catch_85
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_89
    :goto_89
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/ProcessMediator;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lio/dcloud/ProcessMediator;->isMultiProcess:Z

    .line 4
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/ProcessMediator;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResult(Landroid/content/Intent;)V
    .registers 4

    const/16 v0, 0x3e9

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/16 p1, 0x3e8

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->finishActivity(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    iget-object p1, p0, Lio/dcloud/ProcessMediator;->a:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/ProcessMediator;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_26
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

###### Class io.dcloud.ProcessMediator.Logic (io.dcloud.ProcessMediator$Logic)
.class public interface abstract Lio/dcloud/ProcessMediator$Logic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/ProcessMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logic"
.end annotation


# virtual methods
.method public abstract exec(Landroid/content/Context;Landroid/content/Intent;)V
.end method

###### Class io.dcloud.ProcessMediator.a (io.dcloud.ProcessMediator$a)
.class Lio/dcloud/ProcessMediator$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/ProcessMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/ProcessMediator;


# direct methods
.method constructor <init>(Lio/dcloud/ProcessMediator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/ProcessMediator$a;->a:Lio/dcloud/ProcessMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/ProcessMediator$a;->a:Lio/dcloud/ProcessMediator;

    iget-object v0, v0, Lio/dcloud/ProcessMediator;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lio/dcloud/ProcessMediator$a;->a:Lio/dcloud/ProcessMediator;

    invoke-virtual {p1, p2}, Lio/dcloud/ProcessMediator;->onResult(Landroid/content/Intent;)V

    :cond_13
    return-void
.end method
