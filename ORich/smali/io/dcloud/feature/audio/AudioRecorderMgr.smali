###### Class io.dcloud.feature.audio.AudioRecorderMgr (io.dcloud.feature.audio.AudioRecorderMgr)
.class public Lio/dcloud/feature/audio/AudioRecorderMgr;
.super Lio/dcloud/feature/audio/AbsAudio;
.source "SourceFile"


# static fields
.field private static mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;


# instance fields
.field mFunId:Ljava/lang/String;

.field mNativeRecorder:Lio/dcloud/feature/audio/recorder/AbsRecorder;

.field mOption:Lio/dcloud/feature/audio/recorder/RecordOption;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/audio/AbsAudio;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    return-object v0
.end method

.method static synthetic access$100(Lio/dcloud/feature/audio/AudioRecorderMgr;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/audio/AudioRecorderMgr;->failCallback(Ljava/lang/String;)V

    return-void
.end method

.method private failCallback(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "{code:%d,message:\'%s\'}"

    invoke-static {p1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    iget-object v0, v0, Lio/dcloud/feature/audio/recorder/RecordOption;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mFunId:Ljava/lang/String;

    invoke-static {v0, v2, p1, v1}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static isPause(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "mp3"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "aac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method static startRecorder(Lio/dcloud/feature/audio/recorder/RecordOption;Ljava/lang/String;)Lio/dcloud/feature/audio/AudioRecorderMgr;
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/feature/audio/AudioRecorderMgr;

    invoke-direct {v0}, Lio/dcloud/feature/audio/AudioRecorderMgr;-><init>()V

    sput-object v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    .line 4
    :cond_b
    sget-object v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    iput-object p0, v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    .line 5
    iput-object p1, v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mFunId:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lio/dcloud/feature/audio/recorder/RecordOption;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance p1, Lio/dcloud/feature/audio/AudioRecorderMgr$1;

    sget-object v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    iget-object v0, v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    iget-object v0, v0, Lio/dcloud/feature/audio/recorder/RecordOption;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/dcloud/feature/audio/AudioRecorderMgr$1;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    const-string v0, "RECORD"

    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    .line 52
    sget-object p0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    return-object p0
.end method


# virtual methods
.method public pause()V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lio/dcloud/feature/audio/recorder/RecordOption;->mFormat:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/feature/audio/AudioRecorderMgr;->isPause(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    sget-object v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    iget-object v0, v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mNativeRecorder:Lio/dcloud/feature/audio/recorder/AbsRecorder;

    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/AbsRecorder;->pause()V

    :cond_17
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lio/dcloud/feature/audio/recorder/RecordOption;->mFormat:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/feature/audio/AudioRecorderMgr;->isPause(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    sget-object v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    iget-object v0, v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mNativeRecorder:Lio/dcloud/feature/audio/recorder/AbsRecorder;

    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/AbsRecorder;->resume()V

    :cond_17
    return-void
.end method

.method public stop()V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v0, v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mNativeRecorder:Lio/dcloud/feature/audio/recorder/AbsRecorder;

    if-eqz v0, :cond_17

    .line 2
    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/AbsRecorder;->stop()V

    .line 3
    sget-object v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    iget-object v0, v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mNativeRecorder:Lio/dcloud/feature/audio/recorder/AbsRecorder;

    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/AbsRecorder;->release()V

    .line 4
    sget-object v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    iput-object v1, v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mNativeRecorder:Lio/dcloud/feature/audio/recorder/AbsRecorder;

    .line 6
    :cond_17
    sput-object v1, Lio/dcloud/feature/audio/AudioRecorderMgr;->mInstance:Lio/dcloud/feature/audio/AudioRecorderMgr;

    return-void
.end method

.method successCallback()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    iget-object v1, v0, Lio/dcloud/feature/audio/recorder/RecordOption;->mFileName:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lio/dcloud/feature/audio/recorder/RecordOption;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    iget-object v1, v1, Lio/dcloud/feature/audio/recorder/RecordOption;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mFunId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/common/util/JSUtil;->excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.feature.audio.AudioRecorderMgr.AnonymousClass1 (io.dcloud.feature.audio.AudioRecorderMgr$1)
.class final Lio/dcloud/feature/audio/AudioRecorderMgr$1;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/audio/AudioRecorderMgr;->startRecorder(Lio/dcloud/feature/audio/recorder/RecordOption;Ljava/lang/String;)Lio/dcloud/feature/audio/AudioRecorderMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    const-string v0, "No Permission"

    invoke-static {p1, v0}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$100(Lio/dcloud/feature/audio/AudioRecorderMgr;Ljava/lang/String;)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 4
    :cond_7
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    iget-object p1, p1, Lio/dcloud/feature/audio/recorder/RecordOption;->mFormat:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/feature/audio/AudioRecorderMgr;->isPause(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e3

    .line 5
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;

    invoke-direct {v0}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;-><init>()V

    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->setRecordOption(Lio/dcloud/feature/audio/recorder/RecordOption;)Lio/dcloud/feature/audio/recorder/HighGradeRecorder;

    move-result-object v0

    iput-object v0, p1, Lio/dcloud/feature/audio/AudioRecorderMgr;->mNativeRecorder:Lio/dcloud/feature/audio/recorder/AbsRecorder;

    .line 6
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    iget-object p1, p1, Lio/dcloud/feature/audio/recorder/RecordOption;->mFormat:Ljava/lang/String;

    const-string v0, "aac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_5a

    .line 7
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    iget-object v0, v0, Lio/dcloud/feature/audio/recorder/RecordOption;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/dcloud/base/R$string;->dcloud_audio_not_aac_recording:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$100(Lio/dcloud/feature/audio/AudioRecorderMgr;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_5a
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    iget-object p1, p1, Lio/dcloud/feature/audio/recorder/RecordOption;->mFormat:Ljava/lang/String;

    const-string v0, "mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c2

    invoke-static {}, Lio/dcloud/feature/audio/recorder/RecorderUtil;->isContainMp3()Z

    move-result p1

    if-nez p1, :cond_c2

    .line 11
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    iget-object v0, v0, Lio/dcloud/feature/audio/recorder/RecordOption;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/dcloud/base/R$string;->dcloud_audio_not_mp3_recording:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$100(Lio/dcloud/feature/audio/AudioRecorderMgr;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    iget-object p1, p1, Lio/dcloud/feature/audio/recorder/RecordOption;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    iget-object v1, v1, Lio/dcloud/feature/audio/recorder/RecordOption;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/dcloud/base/R$string;->dcloud_audio_no_mp3_module_added:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " http://ask.dcloud.net.cn/article/35058"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://ask.dcloud.net.cn/article/35058"

    const-string v2, "audio"

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/common/util/ErrorDialogUtil;->getLossDialog(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_c1

    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_c1
    return-void

    .line 19
    :cond_c2
    :try_start_c2
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/feature/audio/AudioRecorderMgr;->mNativeRecorder:Lio/dcloud/feature/audio/recorder/AbsRecorder;

    invoke-virtual {p1}, Lio/dcloud/feature/audio/recorder/AbsRecorder;->start()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cb} :catch_cc

    goto :goto_114

    :catch_cc
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$100(Lio/dcloud/feature/audio/AudioRecorderMgr;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioRecorderMgr;->stop()V

    goto :goto_114

    .line 26
    :cond_e3
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/audio/recorder/AudioRecorder;

    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/feature/audio/AudioRecorderMgr;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    invoke-direct {v0, v1}, Lio/dcloud/feature/audio/recorder/AudioRecorder;-><init>(Lio/dcloud/feature/audio/recorder/RecordOption;)V

    iput-object v0, p1, Lio/dcloud/feature/audio/AudioRecorderMgr;->mNativeRecorder:Lio/dcloud/feature/audio/recorder/AbsRecorder;

    .line 27
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/feature/audio/AudioRecorderMgr;->mNativeRecorder:Lio/dcloud/feature/audio/recorder/AbsRecorder;

    .line 29
    :try_start_fa
    invoke-virtual {p1}, Lio/dcloud/feature/audio/recorder/AbsRecorder;->start()V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fd} :catch_fe

    goto :goto_114

    :catch_fe
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$100(Lio/dcloud/feature/audio/AudioRecorderMgr;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lio/dcloud/feature/audio/AudioRecorderMgr;->access$000()Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioRecorderMgr;->stop()V

    :goto_114
    return-void
.end method
