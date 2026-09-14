###### Class io.dcloud.feature.pdr.LoggerFeatureImpl (io.dcloud.feature.pdr.LoggerFeatureImpl)
.class public Lio/dcloud/feature/pdr/LoggerFeatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "logLevel"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppLog()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lio/dcloud/feature/pdr/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    aget-object p2, p3, p1

    const-string v0, "LOG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_29

    .line 5
    aget-object p1, p3, v1

    invoke-static {v0, p1}, Lio/dcloud/feature/pdr/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 6
    :cond_29
    aget-object p2, p3, p1

    const-string v0, "ERROR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 7
    aget-object p1, p3, v1

    invoke-static {v0, p1}, Lio/dcloud/feature/pdr/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 8
    :cond_39
    aget-object p2, p3, p1

    const-string v0, "WARN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 9
    aget-object p1, p3, v1

    invoke-static {v0, p1}, Lio/dcloud/feature/pdr/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 10
    :cond_49
    aget-object p2, p3, p1

    const-string v0, "INFO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    .line 11
    aget-object p1, p3, v1

    invoke-static {v0, p1}, Lio/dcloud/feature/pdr/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 12
    :cond_59
    aget-object p1, p3, p1

    const-string p2, "ASSERT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_61
    const-string p3, "clear"

    .line 15
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 16
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppLog()Ljava/lang/String;

    move-result-object p1

    .line 18
    :try_start_75
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_7d

    :catch_79
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7d
    :goto_7d
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
