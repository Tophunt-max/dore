###### Class io.dcloud.feature.audio.AudioFeatureImpl (io.dcloud.feature.audio.AudioFeatureImpl)
.class public Lio/dcloud/feature/audio/AudioFeatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# static fields
.field static final TAG:Ljava/lang/String; = "AudioFeatureImpl"


# instance fields
.field mAppsAudioObj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/audio/AudioFeatureImpl;->mAppsAudioObj:Ljava/util/HashMap;

    return-void
.end method

.method private findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->getAppObjList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lio/dcloud/feature/audio/AbsAudio;

    if-eqz v1, :cond_e

    .line 6
    move-object v1, v0

    check-cast v1, Lio/dcloud/feature/audio/AbsAudio;

    iget-object v1, v1, Lio/dcloud/feature/audio/AbsAudio;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return-object v0
.end method

.method private getAppObjList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioFeatureImpl;->mAppsAudioObj:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/audio/AudioFeatureImpl;->mAppsAudioObj:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method private putAppObjList(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->getAppObjList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeAppObjFromList(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->getAppObjList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private setCanPlay(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->getAppObjList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lio/dcloud/feature/audio/AudioPlayer;

    if-eqz v1, :cond_8

    .line 4
    check-cast v0, Lio/dcloud/feature/audio/AudioPlayer;

    .line 5
    iget-object v1, v0, Lio/dcloud/feature/audio/AbsAudio;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    if-nez p3, :cond_25

    .line 6
    invoke-virtual {v0}, Lio/dcloud/feature/audio/AudioPlayer;->pause()V

    .line 8
    :cond_25
    invoke-virtual {v0, p3}, Lio/dcloud/feature/audio/AudioPlayer;->setCanMix(Z)V

    goto :goto_8

    :cond_29
    return-void
.end method

.method private setSpeakerphoneOn(Landroid/media/AudioManager;Z)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_16

    :cond_a
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p1, p2, v0, v1}, Landroid/media/AudioManager;->setRouting(III)V

    const/4 p2, 0x3

    .line 6
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setMode(I)V

    :goto_16
    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute pJsArgs[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AudioFeatureImpl"

    invoke-static {v3, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AudioSyncExecMethod"

    .line 3
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_108

    .line 4
    aget-object p2, p3, v2

    .line 5
    aget-object p3, p3, v6

    invoke-static {p3}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_114

    :goto_47
    const/4 v3, -0x1

    goto :goto_88

    :sswitch_49
    const-string v3, "CreatePlayer"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_52

    goto :goto_47

    :cond_52
    const/4 v3, 0x5

    goto :goto_88

    :sswitch_54
    const-string v3, "getStyles"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5d

    goto :goto_47

    :cond_5d
    const/4 v3, 0x4

    goto :goto_88

    :sswitch_5f
    const-string v3, "getPaused"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_68

    goto :goto_47

    :cond_68
    const/4 v3, 0x3

    goto :goto_88

    :sswitch_6a
    const-string v4, "getBuffered"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_88

    goto :goto_47

    :sswitch_73
    const-string v3, "getDuration"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7c

    goto :goto_47

    :cond_7c
    const/4 v3, 0x1

    goto :goto_88

    :sswitch_7e
    const-string v3, "getPosition"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_87

    goto :goto_47

    :cond_87
    const/4 v3, 0x0

    :cond_88
    :goto_88
    packed-switch v3, :pswitch_data_12e

    goto/16 :goto_113

    .line 22
    :pswitch_8d
    invoke-static {p3, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-static {p3, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p3

    .line 24
    invoke-static {p3, p1}, Lio/dcloud/feature/audio/AudioPlayer;->createAudioPlayer(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)Lio/dcloud/feature/audio/AudioPlayer;

    move-result-object p3

    .line 25
    iput-object p2, p3, Lio/dcloud/feature/audio/AbsAudio;->mUuid:Ljava/lang/String;

    .line 26
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lio/dcloud/feature/audio/AudioFeatureImpl;->putAppObjList(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_113

    .line 45
    :pswitch_ab
    invoke-static {p3, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioPlayer;

    .line 48
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-le p2, v6, :cond_bf

    .line 49
    invoke-static {p3, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    .line 50
    :cond_bf
    invoke-virtual {p1, v5}, Lio/dcloud/feature/audio/AudioPlayer;->getStyles(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_113

    .line 51
    :pswitch_c4
    invoke-static {p3, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioPlayer;

    .line 53
    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioPlayer;->isPause()Ljava/lang/String;

    move-result-object v5

    goto :goto_113

    .line 58
    :pswitch_d3
    invoke-static {p3, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioPlayer;

    .line 60
    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioPlayer;->getBuffer()Ljava/lang/String;

    move-result-object v5

    goto :goto_113

    .line 61
    :pswitch_e2
    invoke-static {p3, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioPlayer;

    .line 63
    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioPlayer;->getDuration()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_113

    .line 68
    :pswitch_f5
    invoke-static {p3, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/audio/AudioPlayer;

    .line 70
    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioPlayer;->getPosition()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_113

    :cond_108
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v6

    aput-object p3, v0, v3

    .line 107
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    :goto_113
    return-object v5

    :sswitch_data_114
    .sparse-switch
        -0x57932961 -> :sswitch_7e
        0x51e8b0a -> :sswitch_73
        0x2121ce55 -> :sswitch_6a
        0x29c3bc24 -> :sswitch_5f
        0x2fefbbd8 -> :sswitch_54
        0x5fbecf1d -> :sswitch_49
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_e2
        :pswitch_d3
        :pswitch_c4
        :pswitch_ab
        :pswitch_8d
    .end packed-switch
.end method

.method public execute(Ljava/lang/Object;)V
    .registers 19

    move-object/from16 v1, p0

    .line 108
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 109
    aget-object v3, v0, v2

    check-cast v3, Lio/dcloud/common/DHInterface/IWebview;

    const/4 v4, 0x1

    .line 110
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 111
    aget-object v0, v0, v6

    check-cast v0, [Ljava/lang/String;

    .line 112
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v7

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v7

    .line 113
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v8

    .line 114
    aget-object v9, v0, v2

    .line 115
    aget-object v0, v0, v4

    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 116
    invoke-static {v0, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "RecorderExecMethod"

    .line 117
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "resume"

    const-string v13, "stop"

    const-string v14, "pause"

    if-eqz v11, :cond_c1

    :try_start_3d
    const-string v2, "record"

    .line 119
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 120
    invoke-static {v0, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 122
    new-instance v4, Lio/dcloud/feature/audio/recorder/RecordOption;

    invoke-direct {v4, v3, v0}, Lio/dcloud/feature/audio/recorder/RecordOption;-><init>(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    .line 123
    iget-object v0, v4, Lio/dcloud/feature/audio/recorder/RecordOption;->mFileName:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lio/dcloud/common/util/JSUtil;->checkOperateDirErrorAndCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    return-void

    .line 126
    :cond_5b
    invoke-static {v4, v2}, Lio/dcloud/feature/audio/AudioRecorderMgr;->startRecorder(Lio/dcloud/feature/audio/recorder/RecordOption;Ljava/lang/String;)Lio/dcloud/feature/audio/AudioRecorderMgr;

    move-result-object v0

    .line 127
    iput-object v10, v0, Lio/dcloud/feature/audio/AbsAudio;->mUuid:Ljava/lang/String;

    .line 128
    invoke-direct {v1, v8, v0}, Lio/dcloud/feature/audio/AudioFeatureImpl;->putAppObjList(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_210

    .line 129
    :cond_66
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 130
    invoke-direct {v1, v8, v10}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/audio/AudioRecorderMgr;

    invoke-virtual {v0}, Lio/dcloud/feature/audio/AudioRecorderMgr;->pause()V

    goto/16 :goto_210

    .line 131
    :cond_77
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 132
    invoke-direct {v1, v8, v10}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/audio/AudioRecorderMgr;

    .line 133
    invoke-virtual {v0}, Lio/dcloud/feature/audio/AudioRecorderMgr;->stop()V

    .line 134
    invoke-virtual {v0}, Lio/dcloud/feature/audio/AudioRecorderMgr;->successCallback()V

    .line 135
    invoke-direct {v1, v8, v0}, Lio/dcloud/feature/audio/AudioFeatureImpl;->removeAppObjFromList(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_210

    .line 136
    :cond_8e
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_210

    .line 137
    invoke-direct {v1, v8, v10}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/audio/AudioRecorderMgr;

    invoke-virtual {v0}, Lio/dcloud/feature/audio/AudioRecorderMgr;->resume()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_9d} :catch_9f

    goto/16 :goto_210

    :catch_9f
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecorderExecMethod _methodName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; e ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_210

    :cond_c1
    const-string v11, "AudioExecMethod"

    .line 143
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_210

    const/4 v5, 0x0

    const/4 v11, -0x1

    .line 146
    :try_start_cb
    invoke-direct {v1, v8, v10}, Lio/dcloud/feature/audio/AudioFeatureImpl;->findAppObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/dcloud/feature/audio/AudioPlayer;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d1} :catch_1fc

    .line 147
    :try_start_d1
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_212

    goto/16 :goto_146

    :sswitch_da
    const-string v12, "setRoute"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    const/4 v9, 0x6

    goto/16 :goto_147

    :sswitch_e5
    const-string v12, "setStyles"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    const/16 v9, 0x9

    goto :goto_147

    :sswitch_f0
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    const/4 v9, 0x1

    goto :goto_147

    :sswitch_f8
    const-string v12, "close"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    const/4 v9, 0x4

    goto :goto_147

    :sswitch_102
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    const/4 v9, 0x3

    goto :goto_147

    :sswitch_10a
    const-string v12, "play"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    const/4 v9, 0x0

    goto :goto_147

    :sswitch_114
    const-string v12, "setSessionCategory"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    const/16 v9, 0xa

    goto :goto_147

    :sswitch_11f
    const-string v12, "removeEventListener"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    const/16 v9, 0x8

    goto :goto_147

    :sswitch_12a
    const-string v12, "addEventListener"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    const/4 v9, 0x7

    goto :goto_147

    :sswitch_134
    const-string v12, "seekTo"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    const/4 v9, 0x5

    goto :goto_147

    :sswitch_13e
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    const/4 v9, 0x2

    goto :goto_147

    :cond_146
    :goto_146
    const/4 v9, -0x1

    :goto_147
    packed-switch v9, :pswitch_data_240

    goto/16 :goto_210

    .line 220
    :pswitch_14c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-le v2, v4, :cond_156

    .line 221
    invoke-static {v0, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    .line 222
    :cond_156
    invoke-virtual {v15, v5}, Lio/dcloud/feature/audio/AudioPlayer;->setSessionCategory(Ljava/lang/String;)V

    goto/16 :goto_210

    .line 223
    :pswitch_15b
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v15, v0}, Lio/dcloud/feature/audio/AudioPlayer;->setStyle(Lorg/json/JSONObject;)V

    goto/16 :goto_210

    .line 224
    :pswitch_164
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lio/dcloud/feature/audio/AudioPlayer;->removeEventListener(Ljava/lang/String;)V

    goto/16 :goto_210

    .line 225
    :pswitch_16d
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v2, v0}, Lio/dcloud/feature/audio/AudioPlayer;->addEventListener(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_210

    .line 226
    :pswitch_17a
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "audio"

    .line 227
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 228
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_195

    .line 230
    invoke-direct {v1, v3, v2}, Lio/dcloud/feature/audio/AudioFeatureImpl;->setSpeakerphoneOn(Landroid/media/AudioManager;Z)V

    goto/16 :goto_210

    .line 232
    :cond_195
    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/audio/AudioFeatureImpl;->setSpeakerphoneOn(Landroid/media/AudioManager;Z)V
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_198} :catch_1f9

    goto/16 :goto_210

    .line 233
    :pswitch_19a
    :try_start_19a
    invoke-static {v0, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_210

    mul-int/lit16 v2, v2, 0x3e8

    .line 235
    invoke-virtual {v15, v2}, Lio/dcloud/feature/audio/AudioPlayer;->seekTo(I)V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1a9} :catch_1aa

    goto :goto_210

    .line 239
    :catch_1aa
    :try_start_1aa
    invoke-static {v0, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    double-to-int v0, v2

    if-ltz v0, :cond_210

    .line 241
    invoke-virtual {v15, v0}, Lio/dcloud/feature/audio/AudioPlayer;->seekTo(I)V
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1bf} :catch_210

    goto :goto_210

    .line 242
    :pswitch_1c0
    :try_start_1c0
    invoke-virtual {v15}, Lio/dcloud/feature/audio/AudioPlayer;->destory()V

    .line 243
    invoke-direct {v1, v8, v15}, Lio/dcloud/feature/audio/AudioFeatureImpl;->removeAppObjFromList(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_210

    .line 244
    :pswitch_1c7
    invoke-virtual {v15}, Lio/dcloud/feature/audio/AudioPlayer;->stop()V

    goto :goto_210

    .line 245
    :pswitch_1cb
    invoke-virtual {v15}, Lio/dcloud/feature/audio/AudioPlayer;->isCanMix()Z

    move-result v0

    invoke-direct {v1, v8, v10, v0}, Lio/dcloud/feature/audio/AudioFeatureImpl;->setCanPlay(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 246
    invoke-static {v7}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_1e0

    const-string v0, ""

    .line 247
    iput-object v0, v15, Lio/dcloud/feature/audio/AudioPlayer;->mFunId:Ljava/lang/String;

    .line 248
    invoke-virtual {v15}, Lio/dcloud/feature/audio/AudioPlayer;->play()V

    goto :goto_210

    .line 251
    :cond_1e0
    invoke-virtual {v15}, Lio/dcloud/feature/audio/AudioPlayer;->resume()V

    goto :goto_210

    .line 252
    :pswitch_1e4
    invoke-virtual {v15}, Lio/dcloud/feature/audio/AudioPlayer;->pause()V

    goto :goto_210

    .line 253
    :pswitch_1e8
    invoke-virtual {v15}, Lio/dcloud/feature/audio/AudioPlayer;->isCanMix()Z

    move-result v2

    invoke-direct {v1, v8, v10, v2}, Lio/dcloud/feature/audio/AudioFeatureImpl;->setCanPlay(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 254
    invoke-static {v0, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 255
    iput-object v0, v15, Lio/dcloud/feature/audio/AudioPlayer;->mFunId:Ljava/lang/String;

    .line 256
    invoke-virtual {v15}, Lio/dcloud/feature/audio/AudioPlayer;->play()V
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1f8} :catch_1f9

    goto :goto_210

    :catch_1f9
    move-exception v0

    move-object v5, v15

    goto :goto_1fd

    :catch_1fc
    move-exception v0

    .line 330
    :goto_1fd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v5, :cond_210

    .line 332
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    invoke-virtual {v5, v11, v0}, Lio/dcloud/feature/audio/AudioPlayer;->failCallback(ILjava/lang/String;)V

    .line 333
    invoke-static {v11, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onError"

    invoke-virtual {v5, v2, v0}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    :catch_210
    :cond_210
    :goto_210
    return-void

    nop

    :sswitch_data_212
    .sparse-switch
        -0x37b237d3 -> :sswitch_13e
        -0x3603e4ed -> :sswitch_134
        -0x254d19b3 -> :sswitch_12a
        -0x204670b6 -> :sswitch_11f
        -0x1722e70e -> :sswitch_114
        0x348b34 -> :sswitch_10a
        0x360802 -> :sswitch_102
        0x5a5ddf8 -> :sswitch_f8
        0x65825f6 -> :sswitch_f0
        0x2324efe4 -> :sswitch_e5
        0x53a67307 -> :sswitch_da
    .end sparse-switch

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_1e8
        :pswitch_1e4
        :pswitch_1cb
        :pswitch_1c7
        :pswitch_1c0
        :pswitch_19a
        :pswitch_17a
        :pswitch_16d
        :pswitch_164
        :pswitch_15b
        :pswitch_14c
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/feature/audio/AudioFeatureImpl;->mAppsAudioObj:Ljava/util/HashMap;

    return-void
.end method
