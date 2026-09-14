###### Class io.dcloud.feature.sensor.d (io.dcloud.feature.sensor.d)
.class public Lio/dcloud/feature/sensor/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/dcloud/common/DHInterface/IWebview;",
            "Lio/dcloud/feature/sensor/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/sensor/d;->a:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3

    .line 13
    iget-object v0, p0, Lio/dcloud/feature/sensor/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/sensor/c;

    if-eqz p1, :cond_d

    .line 15
    invoke-virtual {p1}, Lio/dcloud/feature/sensor/c;->b()V

    :cond_d
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/sensor/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/sensor/c;

    if-nez v0, :cond_14

    .line 9
    new-instance v0, Lio/dcloud/feature/sensor/c;

    invoke-direct {v0, p1, p2}, Lio/dcloud/feature/sensor/c;-><init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lio/dcloud/feature/sensor/d;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_14
    invoke-virtual {v0}, Lio/dcloud/feature/sensor/c;->a()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "start"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p2, 0x0

    .line 2
    aget-object p2, p3, p2

    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/sensor/d;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 4
    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    goto :goto_23

    :cond_18
    const-string p3, "stop"

    .line 5
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 6
    invoke-direct {p0, p1}, Lio/dcloud/feature/sensor/d;->a(Lio/dcloud/common/DHInterface/IWebview;)V

    :cond_23
    :goto_23
    const-string p1, ""

    return-object p1
.end method

.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string v0, "window_close"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "close"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    :cond_10
    instance-of p1, p2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_22

    .line 2
    check-cast p2, Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0, p2}, Lio/dcloud/feature/sensor/d;->a(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 3
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method
