###### Class io.dcloud.feature.audio.AudioPlayer (io.dcloud.feature.audio.AudioPlayer)
.class Lio/dcloud/feature/audio/AudioPlayer;
.super Lio/dcloud/feature/audio/AbsAudio;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# instance fields
.field private _app:Lio/dcloud/common/DHInterface/IApp;

.field private autoplay:Z

.field private bufferPercent:I

.field private events:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isCanMix:Z

.field private isCanplay:Z

.field private isPlay:Z

.field private isPrepared:Z

.field private isStoped:Z

.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioMgr:Landroid/media/AudioManager;

.field mFunId:Ljava/lang/String;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSrcPath:Ljava/lang/String;

.field private mWebview:Lio/dcloud/common/DHInterface/IWebview;

.field private needPause:Z

.field private params:Lorg/json/JSONObject;

.field private startTime:I

.field private volume:F


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/audio/AbsAudio;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->bufferPercent:I

    const/high16 v1, -0x80000000

    .line 3
    iput v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->startTime:I

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mSrcPath:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->volume:F

    .line 6
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->autoplay:Z

    .line 8
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isCanMix:Z

    .line 9
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->needPause:Z

    .line 35
    new-instance v1, Lio/dcloud/feature/audio/AudioPlayer$1;

    invoke-direct {v1, p0}, Lio/dcloud/feature/audio/AudioPlayer$1;-><init>(Lio/dcloud/feature/audio/AudioPlayer;)V

    iput-object v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 282
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isPrepared:Z

    .line 283
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isPlay:Z

    .line 284
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isCanplay:Z

    .line 333
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isStoped:Z

    .line 334
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->events:Ljava/util/Map;

    .line 336
    iput-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    .line 337
    iput-object p2, p0, Lio/dcloud/feature/audio/AudioPlayer;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 338
    invoke-direct {p0}, Lio/dcloud/feature/audio/AudioPlayer;->addListener()V

    .line 339
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->_app:Lio/dcloud/common/DHInterface/IApp;

    .line 341
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 343
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->_app:Lio/dcloud/common/DHInterface/IApp;

    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p1, p0, p2}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 344
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/audio/AudioPlayer;->setStyle(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/audio/AudioPlayer;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/feature/audio/AudioPlayer;->needPause:Z

    return p0
.end method

.method static synthetic access$102(Lio/dcloud/feature/audio/AudioPlayer;I)I
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->bufferPercent:I

    return p1
.end method

.method static synthetic access$200(Lio/dcloud/feature/audio/AudioPlayer;)Lio/dcloud/common/DHInterface/IWebview;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object p0
.end method

.method private addListener()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lio/dcloud/feature/audio/AudioPlayer$2;

    invoke-direct {v1, p0}, Lio/dcloud/feature/audio/AudioPlayer$2;-><init>(Lio/dcloud/feature/audio/AudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lio/dcloud/feature/audio/AudioPlayer$3;

    invoke-direct {v1, p0}, Lio/dcloud/feature/audio/AudioPlayer$3;-><init>(Lio/dcloud/feature/audio/AudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 15
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lio/dcloud/feature/audio/AudioPlayer$4;

    invoke-direct {v1, p0}, Lio/dcloud/feature/audio/AudioPlayer$4;-><init>(Lio/dcloud/feature/audio/AudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 21
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lio/dcloud/feature/audio/AudioPlayer$5;

    invoke-direct {v1, p0}, Lio/dcloud/feature/audio/AudioPlayer$5;-><init>(Lio/dcloud/feature/audio/AudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 35
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lio/dcloud/feature/audio/AudioPlayer$6;

    invoke-direct {v1, p0}, Lio/dcloud/feature/audio/AudioPlayer$6;-><init>(Lio/dcloud/feature/audio/AudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 75
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lio/dcloud/feature/audio/AudioPlayer$7;

    invoke-direct {v1, p0}, Lio/dcloud/feature/audio/AudioPlayer$7;-><init>(Lio/dcloud/feature/audio/AudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method static createAudioPlayer(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)Lio/dcloud/feature/audio/AudioPlayer;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/feature/audio/AudioPlayer;

    invoke-direct {v0, p0, p1}, Lio/dcloud/feature/audio/AudioPlayer;-><init>(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    return-object v0
.end method

.method private requestAudioFocus()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v0, :cond_14

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mAudioMgr:Landroid/media/AudioManager;

    .line 4
    :cond_14
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_1f

    .line 5
    iget-object v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1f
    return-void
.end method

.method private setSrc(Ljava/lang/String;)V
    .registers 12

    const-string v0, "android_asset/"

    const-string v1, "/android_asset/"

    :try_start_4
    const-string v2, "content://"

    .line 1
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_c4

    .line 6
    :cond_1e
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 7
    iget-object v2, p0, Lio/dcloud/feature/audio/AudioPlayer;->_app:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v2, p1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v2, p0, Lio/dcloud/feature/audio/AudioPlayer;->_app:Lio/dcloud/common/DHInterface/IApp;

    iget-object v4, p0, Lio/dcloud/feature/audio/AudioPlayer;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-static {v2, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 11
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 13
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v4, v5}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 15
    iget-object v4, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lio/dcloud/feature/audio/AudioPlayer;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v2, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v2, 0x0

    :goto_6b
    if-nez v2, :cond_b8

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_71} :catch_cc

    const-string v5, ""

    if-eqz v4, :cond_7a

    .line 22
    :try_start_75
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_84

    .line 23
    :cond_7a
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 24
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 26
    :cond_84
    :goto_84
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 28
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 29
    iget-object v4, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 30
    iput-boolean v3, p0, Lio/dcloud/feature/audio/AudioPlayer;->isCanplay:Z

    .line 31
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void

    :cond_b1
    const-string v0, "utf-8"

    .line 36
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    :cond_b8
    if-nez v2, :cond_c4

    .line 39
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 40
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 43
    :cond_c4
    :goto_c4
    iput-boolean v3, p0, Lio/dcloud/feature/audio/AudioPlayer;->isCanplay:Z

    .line 44
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_cb} :catch_cc

    goto :goto_e5

    :catch_cc
    move-exception p1

    .line 46
    invoke-virtual {p0}, Lio/dcloud/feature/audio/AudioPlayer;->stop()V

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x5

    invoke-virtual {p0, v1, v0}, Lio/dcloud/feature/audio/AudioPlayer;->failCallback(ILjava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-virtual {p0, v0, p1}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e5
    return-void
.end method

.method private startPlay()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/audio/AudioPlayer;->requestAudioFocus()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isPrepared:Z

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const-string v0, "play"

    const-string v1, ""

    .line 4
    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isPlay:Z

    return-void
.end method

.method private successCallback()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mFunId:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/JSUtil;->excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method addEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->events:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method destory()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_32

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v0, p0, v1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_30

    .line 8
    iget-object v2, p0, Lio/dcloud/feature/audio/AudioPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 9
    :cond_30
    iput-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mAudioMgr:Landroid/media/AudioManager;

    :cond_32
    return-void
.end method

.method execEvents(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->events:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 2
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_1f

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 4
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "ended"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4f

    const-string p2, "canplay"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_55

    .line 6
    :cond_33
    iput-boolean v7, p0, Lio/dcloud/feature/audio/AudioPlayer;->isCanplay:Z

    .line 7
    iget-boolean p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->autoplay:Z

    if-eqz p1, :cond_3c

    .line 8
    invoke-virtual {p0}, Lio/dcloud/feature/audio/AudioPlayer;->play()V

    .line 9
    :cond_3c
    iget-boolean p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->isPlay:Z

    if-eqz p1, :cond_43

    .line 10
    invoke-direct {p0}, Lio/dcloud/feature/audio/AudioPlayer;->startPlay()V

    .line 12
    :cond_43
    iget p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->startTime:I

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_55

    .line 13
    iget-object p2, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_55

    .line 16
    :cond_4f
    invoke-virtual {p0}, Lio/dcloud/feature/audio/AudioPlayer;->pause()V

    .line 17
    invoke-direct {p0}, Lio/dcloud/feature/audio/AudioPlayer;->successCallback()V

    :cond_55
    :goto_55
    return-void
.end method

.method failCallback(ILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lio/dcloud/feature/audio/AudioPlayer;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mFunId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p2, v0, p1, v1}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method getBuffer()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    .line 2
    iget v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->bufferPercent:I

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    mul-int v1, v1, v0

    div-int/lit8 v1, v1, 0x64

    goto :goto_10

    :cond_f
    const/4 v1, -0x1

    :goto_10
    const/16 v0, 0x3e8

    .line 4
    invoke-static {v1, v0}, Lio/dcloud/common/util/PdrUtil;->int2DecimalStr(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDuration()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v1, "undefined"

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-gez v0, :cond_12

    .line 4
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const/16 v1, 0x3e8

    .line 7
    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->int2DecimalStr(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1d
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPosition()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    const/16 v1, 0x3e8

    .line 3
    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->int2DecimalStr(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStyles(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "autoplay"

    const-string v3, "startTime"

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_bc

    goto :goto_53

    :sswitch_21
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_53

    :cond_28
    const/4 v0, 0x4

    goto :goto_53

    :sswitch_2a
    const-string v1, "loop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_53

    :cond_33
    const/4 v0, 0x3

    goto :goto_53

    :sswitch_35
    const-string v1, "src"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_53

    :cond_3e
    const/4 v0, 0x2

    goto :goto_53

    :sswitch_40
    const-string v1, "volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_53

    :cond_49
    const/4 v0, 0x1

    goto :goto_53

    :sswitch_4b
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    const-string v1, "undefined"

    packed-switch v0, :pswitch_data_d2

    .line 22
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 23
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 25
    :cond_6b
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_70
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_ab

    .line 35
    :pswitch_7b
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_ab

    .line 38
    :pswitch_86
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mSrcPath:Ljava/lang/String;

    goto :goto_ab

    .line 39
    :pswitch_89
    iget p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->volume:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_ab

    .line 40
    :pswitch_90
    iget p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->startTime:I

    if-gez p1, :cond_a5

    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a3

    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_a7

    :cond_a3
    const/4 p1, 0x0

    goto :goto_a7

    :cond_a5
    div-int/lit16 p1, p1, 0x3e8

    :goto_a7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_ab
    if-eqz p1, :cond_b6

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :cond_b6
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_bc
    .sparse-switch
        -0x7eea75b1 -> :sswitch_4b
        -0x305518e6 -> :sswitch_40
        0x1bde4 -> :sswitch_35
        0x32c6a4 -> :sswitch_2a
        0x55cdf963 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_90
        :pswitch_89
        :pswitch_86
        :pswitch_7b
        :pswitch_70
    .end packed-switch
.end method

.method getVolume()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->volume:F

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCanMix()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isCanMix:Z

    return v0
.end method

.method isPause()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    xor-int/2addr v1, v0

    .line 4
    :cond_a
    invoke-static {v1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string v0, "window_close"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "close"

    .line 2
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    :cond_10
    instance-of p1, p2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_17

    .line 4
    invoke-virtual {p0}, Lio/dcloud/feature/audio/AudioPlayer;->destory()V

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 3

    .line 1
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_7

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/audio/AudioPlayer;->destory()V

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method pause()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->autoplay:Z

    .line 3
    :try_start_3
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_8

    :catch_8
    const-string v0, "pause"

    const-string v1, ""

    .line 5
    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method play()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isStoped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3
    :try_start_d
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 4
    iput-boolean v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->isStoped:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_20

    :catch_15
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mSrcPath:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/audio/AudioPlayer;->setStyle(Lorg/json/JSONObject;)V

    .line 8
    iput-boolean v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->isStoped:Z

    .line 12
    :cond_20
    :goto_20
    :try_start_20
    iput-boolean v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->isPrepared:Z

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isPlay:Z

    .line 14
    iget-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isCanplay:Z

    if-eqz v0, :cond_49

    .line 15
    invoke-direct {p0}, Lio/dcloud/feature/audio/AudioPlayer;->startPlay()V
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2c} :catch_49

    goto :goto_49

    :catch_2d
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 19
    invoke-virtual {p0}, Lio/dcloud/feature/audio/AudioPlayer;->destory()V

    .line 20
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lio/dcloud/feature/audio/AudioPlayer;->failCallback(ILjava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p0, v1, v0}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    :catch_49
    :cond_49
    :goto_49
    return-void
.end method

.method removeEventListener(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->events:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method resume()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/audio/AudioPlayer;->requestAudioFocus()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method seekTo(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const-string p1, "seeking"

    const-string v0, ""

    .line 2
    invoke-virtual {p0, p1, v0}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCanMix(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->needPause:Z

    return-void
.end method

.method public setParams(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    return-void
.end method

.method setSessionCategory(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "ambient"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->isCanMix:Z

    :cond_18
    return-void
.end method

.method setStyle(Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "startTime"

    const-string v1, "src"

    .line 1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 3
    iget-object v3, p0, Lio/dcloud/feature/audio/AudioPlayer;->mSrcPath:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4
    iget-object v3, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 5
    invoke-direct {p0, v2}, Lio/dcloud/feature/audio/AudioPlayer;->setSrc(Ljava/lang/String;)V

    goto :goto_2f

    .line 6
    :cond_1f
    iget-object v3, p0, Lio/dcloud/feature/audio/AudioPlayer;->mSrcPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 7
    iget-object v3, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 8
    invoke-direct {p0, v2}, Lio/dcloud/feature/audio/AudioPlayer;->setSrc(Ljava/lang/String;)V

    .line 10
    :cond_2f
    :goto_2f
    iget-object v2, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    invoke-static {v2, p1}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mSrcPath:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    const-string v2, "loop"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 14
    :try_start_47
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    const-string v1, "volume"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->volume:F

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_5f

    .line 17
    iput v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->volume:F

    goto :goto_67

    :cond_5f
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_67

    .line 19
    iput v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->volume:F

    .line 20
    :cond_67
    :goto_67
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lio/dcloud/feature/audio/AudioPlayer;->volume:F

    invoke-virtual {p1, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 21
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 22
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->startTime:I

    .line 24
    :cond_80
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->params:Lorg/json/JSONObject;

    const-string v0, "autoplay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/feature/audio/AudioPlayer;->autoplay:Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_8b} :catch_8b

    :catch_8b
    return-void
.end method

.method stop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isStoped:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/dcloud/feature/audio/AudioPlayer;->isCanplay:Z

    const-string v0, "stop"

    const-string v1, ""

    .line 5
    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

###### Class io.dcloud.feature.audio.AudioPlayer.AnonymousClass1 (io.dcloud.feature.audio.AudioPlayer$1)
.class Lio/dcloud/feature/audio/AudioPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lio/dcloud/feature/audio/AudioPlayer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$1;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 v0, -0x2

    if-eq p1, v0, :cond_9

    const/4 v0, -0x3

    if-ne p1, v0, :cond_16

    .line 1
    :cond_9
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$1;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-static {p1}, Lio/dcloud/feature/audio/AudioPlayer;->access$000(Lio/dcloud/feature/audio/AudioPlayer;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$1;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-virtual {p1}, Lio/dcloud/feature/audio/AudioPlayer;->pause()V

    :cond_16
    return-void
.end method

###### Class io.dcloud.feature.audio.AudioPlayer.AnonymousClass2 (io.dcloud.feature.audio.AudioPlayer$2)
.class Lio/dcloud/feature/audio/AudioPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/audio/AudioPlayer;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lio/dcloud/feature/audio/AudioPlayer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$2;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$2;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    const-string v0, "canplay"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.feature.audio.AudioPlayer.AnonymousClass3 (io.dcloud.feature.audio.AudioPlayer$3)
.class Lio/dcloud/feature/audio/AudioPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/audio/AudioPlayer;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lio/dcloud/feature/audio/AudioPlayer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$3;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$3;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    const-string v0, "seeked"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.feature.audio.AudioPlayer.AnonymousClass4 (io.dcloud.feature.audio.AudioPlayer$4)
.class Lio/dcloud/feature/audio/AudioPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/audio/AudioPlayer;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lio/dcloud/feature/audio/AudioPlayer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$4;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$4;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-static {p1, p2}, Lio/dcloud/feature/audio/AudioPlayer;->access$102(Lio/dcloud/feature/audio/AudioPlayer;I)I

    return-void
.end method

###### Class io.dcloud.feature.audio.AudioPlayer.AnonymousClass5 (io.dcloud.feature.audio.AudioPlayer$5)
.class Lio/dcloud/feature/audio/AudioPlayer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/audio/AudioPlayer;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lio/dcloud/feature/audio/AudioPlayer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$5;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/16 p1, 0x2bd

    if-eq p2, p1, :cond_5

    goto :goto_e

    .line 1
    :cond_5
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$5;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    const-string p2, "waiting"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.feature.audio.AudioPlayer.AnonymousClass6 (io.dcloud.feature.audio.AudioPlayer$6)
.class Lio/dcloud/feature/audio/AudioPlayer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/audio/AudioPlayer;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lio/dcloud/feature/audio/AudioPlayer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$6;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1d

    const/16 v0, 0x64

    if-eq p2, v0, :cond_a

    const/4 p2, 0x0

    const/4 v0, 0x0

    goto :goto_21

    :cond_a
    const/16 p2, 0x517

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer$6;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-static {v0}, Lio/dcloud/feature/audio/AudioPlayer;->access$200(Lio/dcloud/feature/audio/AudioPlayer;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/dcloud/base/R$string;->dcloud_audio_abnormal_rebuild:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_1d
    const/16 p2, -0x63

    .line 2
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_UNKNOWN_ERROR:Ljava/lang/String;

    :goto_21
    const/16 v1, -0x3f2

    if-eq p3, v1, :cond_40

    const/16 v1, -0x3ef

    if-eq p3, v1, :cond_3b

    const/16 v1, -0x3ec

    if-eq p3, v1, :cond_37

    const/16 v1, -0x6e

    if-eq p3, v1, :cond_32

    goto :goto_43

    :cond_32
    const/16 p2, -0x516

    .line 24
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_AUDIO_ERROR_TIMED_OUT:Ljava/lang/String;

    goto :goto_43

    :cond_37
    const/4 p2, -0x5

    const-string v0, "IO Error"

    goto :goto_43

    :cond_3b
    const/16 p2, -0x515

    .line 25
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_AUDIO_ERROR_MALFORMED:Ljava/lang/String;

    goto :goto_43

    :cond_40
    const/4 p2, -0x3

    .line 29
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_NOT_SUPPORT:Ljava/lang/String;

    :goto_43
    if-eqz p2, :cond_55

    .line 37
    iget-object p3, p0, Lio/dcloud/feature/audio/AudioPlayer$6;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-virtual {p3, p2, v0}, Lio/dcloud/feature/audio/AudioPlayer;->failCallback(ILjava/lang/String;)V

    .line 38
    iget-object p3, p0, Lio/dcloud/feature/audio/AudioPlayer$6;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-static {p2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "error"

    invoke-virtual {p3, v0, p2}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    return p1
.end method

###### Class io.dcloud.feature.audio.AudioPlayer.AnonymousClass7 (io.dcloud.feature.audio.AudioPlayer$7)
.class Lio/dcloud/feature/audio/AudioPlayer$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/audio/AudioPlayer;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lio/dcloud/feature/audio/AudioPlayer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$7;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$7;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    const-string v0, "ended"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
