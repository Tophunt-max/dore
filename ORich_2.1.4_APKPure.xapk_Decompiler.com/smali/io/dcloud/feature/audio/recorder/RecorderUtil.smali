###### Class io.dcloud.feature.audio.recorder.RecorderUtil (io.dcloud.feature.audio.recorder.RecorderUtil)
.class public Lio/dcloud/feature/audio/recorder/RecorderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static context:Landroid/content/Context;

.field private static isDebug:Z

.field private static mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/audio/recorder/RecorderUtil;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/audio/recorder/RecorderUtil;->context:Landroid/content/Context;

    return-object v0
.end method

.method static getMainHandler()Landroid/os/Handler;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/feature/audio/recorder/RecorderUtil;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/dcloud/feature/audio/recorder/RecorderUtil;->mainHandler:Landroid/os/Handler;

    .line 4
    :cond_f
    sget-object v0, Lio/dcloud/feature/audio/recorder/RecorderUtil;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Z)V
    .registers 2

    .line 1
    sput-object p0, Lio/dcloud/feature/audio/recorder/RecorderUtil;->context:Landroid/content/Context;

    .line 2
    sput-boolean p1, Lio/dcloud/feature/audio/recorder/RecorderUtil;->isDebug:Z

    .line 3
    invoke-static {}, Lio/dcloud/feature/audio/recorder/RecorderUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    sput-object p0, Lio/dcloud/feature/audio/recorder/RecorderUtil;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isContainMp3()Z
    .registers 1

    const-string v0, "io.dcloud.feature.audio.mp3.mp3Impl"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->checkClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isDebug()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/dcloud/feature/audio/recorder/RecorderUtil;->isDebug:Z

    return v0
.end method

.method static postTaskSafely(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/feature/audio/recorder/RecorderUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static showDebugToast(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/feature/audio/recorder/RecorderUtil;->isDebug:Z

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-static {}, Lio/dcloud/feature/audio/recorder/RecorderUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/audio/recorder/RecorderUtil$1;

    invoke-direct {v1, p0}, Lio/dcloud/feature/audio/recorder/RecorderUtil$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class io.dcloud.feature.audio.recorder.RecorderUtil.AnonymousClass1 (io.dcloud.feature.audio.recorder.RecorderUtil$1)
.class final Lio/dcloud/feature/audio/recorder/RecorderUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/audio/recorder/RecorderUtil;->showDebugToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/RecorderUtil$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/feature/audio/recorder/RecorderUtil;->access$000()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/audio/recorder/RecorderUtil$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    return-void
.end method
