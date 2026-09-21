###### Class io.dcloud.feature.weex.adapter.webview.video.FullscreenHolder (io.dcloud.feature.weex.adapter.webview.video.FullscreenHolder)
.class public Lio/dcloud/feature/weex/adapter/webview/video/FullscreenHolder;
.super Landroid/widget/FrameLayout;
.source "FullscreenHolder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/webview/video/FullscreenHolder;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
