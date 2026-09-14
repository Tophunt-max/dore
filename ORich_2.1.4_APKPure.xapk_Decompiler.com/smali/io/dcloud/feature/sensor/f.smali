###### Class io.dcloud.feature.sensor.f (io.dcloud.feature.sensor.f)
.class public Lio/dcloud/feature/sensor/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/dcloud/common/DHInterface/IWebview;",
            "Lio/dcloud/feature/sensor/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/sensor/f;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "getCurrentProximity"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 2
    aget-object p2, p3, v1

    .line 3
    iget-object p3, p0, Lio/dcloud/feature/sensor/f;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/dcloud/feature/sensor/e;

    if-nez p3, :cond_1f

    .line 5
    new-instance p3, Lio/dcloud/feature/sensor/e;

    invoke-direct {p3, p1}, Lio/dcloud/feature/sensor/e;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/sensor/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1f
    iput-object p2, p3, Lio/dcloud/feature/sensor/e;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {p3}, Lio/dcloud/feature/sensor/e;->a()V

    goto :goto_67

    :cond_25
    const-string v0, "start"

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 11
    aget-object p2, p3, v1

    .line 12
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p3

    check-cast p3, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 13
    invoke-virtual {p3, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 14
    iget-object p3, p0, Lio/dcloud/feature/sensor/f;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/dcloud/feature/sensor/e;

    if-nez p3, :cond_4c

    .line 16
    new-instance p3, Lio/dcloud/feature/sensor/e;

    invoke-direct {p3, p1}, Lio/dcloud/feature/sensor/e;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/sensor/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_4c
    iput-object p2, p3, Lio/dcloud/feature/sensor/e;->e:Ljava/lang/String;

    .line 20
    invoke-virtual {p3}, Lio/dcloud/feature/sensor/e;->a()V

    goto :goto_67

    :cond_52
    const-string p3, "stop"

    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_67

    .line 22
    iget-object p2, p0, Lio/dcloud/feature/sensor/f;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/sensor/e;

    if-eqz p1, :cond_67

    .line 24
    invoke-virtual {p1}, Lio/dcloud/feature/sensor/e;->b()V

    :cond_67
    :goto_67
    const/4 p1, 0x0

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

    if-eqz p1, :cond_2c

    :cond_10
    instance-of p1, p2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_2c

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/sensor/f;->a:Ljava/util/HashMap;

    check-cast p2, Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/sensor/e;

    if-eqz p1, :cond_23

    .line 4
    invoke-virtual {p1}, Lio/dcloud/feature/sensor/e;->b()V

    .line 6
    :cond_23
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method
