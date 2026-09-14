###### Class com.taobao.weex.ui.component.WXVideo (com.taobao.weex.ui.component.WXVideo)
.class public Lcom/taobao/weex/ui/component/WXVideo;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXVideo.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoPlay:Z

.field private mError:Z

.field mPrepared:Z

.field private mStopped:Z

.field private mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXVideo;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/component/WXVideo;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVideo;->notify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXVideo;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mAutoPlay:Z

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXVideo;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    return p0
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/WXVideo;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    return p1
.end method

.method private notify(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 156
    new-instance v4, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "playStatus"

    .line 157
    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timeStamp"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 161
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 162
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "attrs"

    .line 163
    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVideo;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVideo;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 170
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    const-string p1, "appear"

    .line 171
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->addEvent(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .registers 1

    .line 182
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 3

    .line 67
    new-instance v0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance p1, Lcom/taobao/weex/ui/component/WXVideo$1;

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/component/WXVideo$1;-><init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 86
    new-instance p1, Lcom/taobao/weex/ui/component/WXVideo$2;

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/component/WXVideo$2;-><init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 115
    new-instance p1, Lcom/taobao/weex/ui/component/WXVideo$3;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXVideo$3;-><init>(Lcom/taobao/weex/ui/component/WXVideo;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 128
    new-instance p1, Lcom/taobao/weex/ui/component/WXVideo$4;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXVideo$4;-><init>(Lcom/taobao/weex/ui/component/WXVideo;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V

    .line 151
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    return-object v0
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 176
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createVideoViewIfVisible()Z

    return-void
.end method

.method public setAutoPlay(Z)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autoPlay"
    .end annotation

    .line 232
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mAutoPlay:Z

    if-eqz p1, :cond_e

    .line 234
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createIfNotExist()Lcom/taobao/weex/ui/view/WXVideoView;

    .line 235
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->start()V

    :cond_e
    return-void
.end method

.method public setControls(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "controls"
    .end annotation

    const-string v0, "controls"

    .line 241
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 242
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setControls(Z)V

    goto :goto_1d

    :cond_f
    const-string v0, "nocontrols"

    .line 243
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 244
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setControls(Z)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setPlaystatus(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "playStatus"
    .end annotation

    .line 253
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mPrepared:Z

    const-string v1, "play"

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    if-nez v0, :cond_39

    .line 254
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 255
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->start()V

    goto :goto_58

    :cond_1a
    const-string v0, "pause"

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 257
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->pause()V

    goto :goto_58

    :cond_28
    const-string v0, "stop"

    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 259
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->stopPlayback()V

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    goto :goto_58

    .line 262
    :cond_39
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    if-nez v0, :cond_41

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    if-eqz v0, :cond_58

    :cond_41
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    const/4 p1, 0x0

    .line 263
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    .line 264
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->resume()V

    .line 266
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_58
    :goto_58
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_82

    goto :goto_43

    :sswitch_d
    const-string v0, "playStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_43

    :cond_16
    const/4 v2, 0x4

    goto :goto_43

    :sswitch_18
    const-string v0, "autoplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_43

    :cond_21
    const/4 v2, 0x3

    goto :goto_43

    :sswitch_23
    const-string v0, "autoPlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_43

    :cond_2c
    const/4 v2, 0x2

    goto :goto_43

    :sswitch_2e
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_43

    :cond_37
    const/4 v2, 0x1

    goto :goto_43

    :sswitch_39
    const-string v0, "zOrderTop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_98

    .line 214
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 208
    :pswitch_4c
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 210
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->setPlaystatus(Ljava/lang/String;)V

    :cond_55
    return v1

    .line 196
    :pswitch_56
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_63

    .line 198
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->setAutoPlay(Z)V

    :cond_63
    return v1

    .line 189
    :pswitch_64
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 191
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->setSrc(Ljava/lang/String;)V

    :cond_6d
    return v1

    .line 202
    :pswitch_6e
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_81

    .line 204
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getVideoView()Lcom/taobao/weex/ui/view/WXVideoView;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXVideoView;->setZOrderOnTop(Z)V

    :cond_81
    return v1

    :sswitch_data_82
    .sparse-switch
        -0x9f6de3f -> :sswitch_39
        0x1bde4 -> :sswitch_2e
        0x55bf6d83 -> :sswitch_23
        0x55cdf963 -> :sswitch_18
        0x5e571046 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_64
        :pswitch_56
        :pswitch_56
        :pswitch_4c
    .end packed-switch
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVideo;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_30

    .line 223
    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 224
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVideo;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "video"

    invoke-virtual {v0, p1, v2}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setVideoURI(Landroid/net/Uri;)V

    .line 226
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_30
    :goto_30
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXVideo.AnonymousClass1 (com.taobao.weex.ui.component.WXVideo$1)
.class Lcom/taobao/weex/ui/component/WXVideo$1;
.super Ljava/lang/Object;
.source "WXVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVideo;

.field final synthetic val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 72
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onError:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Video"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1c
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/taobao/weex/ui/component/WXVideo;->mPrepared:Z

    .line 77
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/WXVideo;->access$002(Lcom/taobao/weex/ui/component/WXVideo;Z)Z

    .line 79
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVideo;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    const-string p3, "fail"

    invoke-virtual {p1, p3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 80
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const-string v0, "stop"

    invoke-static {p1, p3, v0}, Lcom/taobao/weex/ui/component/WXVideo;->access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    return p2
.end method

###### Class com.taobao.weex.ui.component.WXVideo.AnonymousClass2 (com.taobao.weex.ui.component.WXVideo$2)
.class Lcom/taobao/weex/ui/component/WXVideo$2;
.super Ljava/lang/Object;
.source "WXVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVideo;

.field final synthetic val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 90
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "Video"

    const-string v0, "onPrepared"

    .line 91
    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_d
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/taobao/weex/ui/component/WXVideo;->mPrepared:Z

    .line 95
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXVideo;->access$200(Lcom/taobao/weex/ui/component/WXVideo;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 96
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->start()V

    .line 100
    :cond_2a
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getVideoView()Lcom/taobao/weex/ui/view/WXVideoView;

    move-result-object p1

    const/4 v0, 0x5

    .line 101
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXVideoView;->seekTo(I)V

    .line 103
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getMediaController()Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 104
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXVideo;->access$300(Lcom/taobao/weex/ui/component/WXVideo;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 105
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getMediaController()Landroid/widget/MediaController;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    goto :goto_58

    .line 107
    :cond_4f
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getMediaController()Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 111
    :cond_58
    :goto_58
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/WXVideo;->access$302(Lcom/taobao/weex/ui/component/WXVideo;Z)Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXVideo.AnonymousClass3 (com.taobao.weex.ui.component.WXVideo$3)
.class Lcom/taobao/weex/ui/component/WXVideo$3;
.super Ljava/lang/Object;
.source "WXVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVideo;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXVideo;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$3;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 119
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "Video"

    const-string v0, "onCompletion"

    .line 120
    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_d
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$3;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVideo;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    const-string v0, "finish"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 123
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$3;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const-string v1, "stop"

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/ui/component/WXVideo;->access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXVideo.AnonymousClass4 (com.taobao.weex.ui.component.WXVideo$4)
.class Lcom/taobao/weex/ui/component/WXVideo$4;
.super Ljava/lang/Object;
.source "WXVideo.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVideo;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXVideo;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$4;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 3

    .line 132
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Video"

    const-string v1, "onPause"

    .line 133
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$4;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVideo;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 136
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$4;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-static {v0, v1, v1}, Lcom/taobao/weex/ui/component/WXVideo;->access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 142
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Video"

    const-string v1, "onStart"

    .line 143
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$4;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVideo;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 147
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$4;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const-string v2, "play"

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/component/WXVideo;->access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method
