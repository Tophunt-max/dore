###### Class io.dcloud.feature.audio.recorder.HighGradeRecorder (io.dcloud.feature.audio.recorder.HighGradeRecorder)
.class public Lio/dcloud/feature/audio/recorder/HighGradeRecorder;
.super Lio/dcloud/feature/audio/recorder/AbsRecorder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;,
        Lio/dcloud/feature/audio/recorder/HighGradeRecorder$State;
    }
.end annotation


# static fields
.field public static final ACTION_RESET:I = 0x1

.field public static final ACTION_STOP:I = 0x2


# instance fields
.field private audioRecorder:Lio/dcloud/feature/audio/recorder/RecorderTask;

.field private mMaxDuration:I

.field private mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

.field mStateListener:Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

.field private outputFilePath:Ljava/lang/String;

.field private state:I

.field stateBeforeFocusChange:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/audio/recorder/AbsRecorder;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->audioRecorder:Lio/dcloud/feature/audio/recorder/RecorderTask;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    return-void
.end method


# virtual methods
.method public getRecorderState()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    return v0
.end method

.method public getmMaxDuration()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->mMaxDuration:I

    return v0
.end method

.method onstart()V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->mStateListener:Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

    if-eqz v0, :cond_f

    .line 4
    invoke-interface {v0}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;->onStart()V

    :cond_f
    return-void
.end method

.method public pause()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->audioRecorder:Lio/dcloud/feature/audio/recorder/RecorderTask;

    if-eqz v0, :cond_16

    iget v1, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 2
    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/RecorderTask;->pauseRecord()V

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->mStateListener:Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

    if-eqz v0, :cond_16

    .line 5
    invoke-interface {v0}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;->onPause()V

    :cond_16
    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public reset()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->audioRecorder:Lio/dcloud/feature/audio/recorder/RecorderTask;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_10

    .line 4
    iget v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->stop(I)V

    :cond_10
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->audioRecorder:Lio/dcloud/feature/audio/recorder/RecorderTask;

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->mStateListener:Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

    if-eqz v0, :cond_1a

    .line 10
    invoke-interface {v0}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;->onReset()V

    :cond_1a
    return-void
.end method

.method public resume()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->audioRecorder:Lio/dcloud/feature/audio/recorder/RecorderTask;

    if-eqz v0, :cond_16

    iget v1, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    .line 2
    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/RecorderTask;->resumeRecord()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->mStateListener:Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

    if-eqz v0, :cond_16

    .line 5
    invoke-interface {v0}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;->onResume()V

    :cond_16
    return-void
.end method

.method public setCallback(Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;)Lio/dcloud/feature/audio/recorder/HighGradeRecorder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->mStateListener:Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

    return-object p0
.end method

.method public setMaxDuration(I)Lio/dcloud/feature/audio/recorder/HighGradeRecorder;
    .registers 2

    mul-int/lit16 p1, p1, 0x3e8

    .line 1
    iput p1, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->mMaxDuration:I

    return-object p0
.end method

.method public setOutputFile(Ljava/lang/String;)Lio/dcloud/feature/audio/recorder/HighGradeRecorder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->outputFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public setRecordOption(Lio/dcloud/feature/audio/recorder/RecordOption;)Lio/dcloud/feature/audio/recorder/HighGradeRecorder;
    .registers 3

    .line 1
    iget-object v0, p1, Lio/dcloud/feature/audio/recorder/RecordOption;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->outputFilePath:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    return-object p0
.end method

.method public start()V
    .registers 5

    .line 1
    iget v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const/4 v2, 0x4

    if-eq v0, v2, :cond_15

    if-eq v0, v1, :cond_15

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    goto :goto_15

    :cond_e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3d

    .line 11
    invoke-virtual {p0}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->resume()V

    goto :goto_3d

    .line 12
    :cond_15
    :goto_15
    new-instance v0, Lio/dcloud/feature/audio/recorder/RecorderTask;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->outputFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->mOption:Lio/dcloud/feature/audio/recorder/RecordOption;

    invoke-direct {v0, v2, p0, v3}, Lio/dcloud/feature/audio/recorder/RecorderTask;-><init>(Ljava/io/File;Lio/dcloud/feature/audio/recorder/HighGradeRecorder;Lio/dcloud/feature/audio/recorder/RecordOption;)V

    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->audioRecorder:Lio/dcloud/feature/audio/recorder/RecorderTask;

    .line 13
    iget-object v2, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->mStateListener:Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

    invoke-virtual {v0, v2}, Lio/dcloud/feature/audio/recorder/RecorderTask;->setCallback(Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;)V

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->audioRecorder:Lio/dcloud/feature/audio/recorder/RecorderTask;

    iget v2, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->mMaxDuration:I

    invoke-virtual {v0, v2}, Lio/dcloud/feature/audio/recorder/RecorderTask;->setMaxDuration(I)V

    .line 15
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->audioRecorder:Lio/dcloud/feature/audio/recorder/RecorderTask;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    iput v1, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->audioRecorder:Lio/dcloud/feature/audio/recorder/RecorderTask;

    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/RecorderTask;->startRecording()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->stop(I)V

    return-void
.end method

.method public stop(I)V
    .registers 5

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->audioRecorder:Lio/dcloud/feature/audio/recorder/RecorderTask;

    if-eqz v0, :cond_16

    iget v1, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 3
    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/RecorderTask;->stopRecord()V

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->state:I

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->mStateListener:Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

    if-eqz v0, :cond_16

    .line 6
    invoke-interface {v0, p1}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;->onStop(I)V

    :cond_16
    return-void
.end method

###### Class io.dcloud.feature.audio.recorder.HighGradeRecorder.Callback (io.dcloud.feature.audio.recorder.HighGradeRecorder$Callback)
.class public interface abstract Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/audio/recorder/HighGradeRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onMaxDurationReached()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onRecording(DD)V
.end method

.method public abstract onReset()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop(I)V
.end method

###### Class io.dcloud.feature.audio.recorder.HighGradeRecorder.State (io.dcloud.feature.audio.recorder.HighGradeRecorder$State)
.class public Lio/dcloud/feature/audio/recorder/HighGradeRecorder$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/audio/recorder/HighGradeRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# static fields
.field public static final INITIALIZED:I = 0x0

.field public static final PAUSED:I = 0x3

.field public static final PREPARED:I = 0x1

.field public static final RECORDING:I = 0x2

.field public static final STOPPED:I = 0x4

.field public static final UNINITIALIZED:I = -0x1


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/audio/recorder/HighGradeRecorder;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/audio/recorder/HighGradeRecorder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/HighGradeRecorder$State;->this$0:Lio/dcloud/feature/audio/recorder/HighGradeRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
