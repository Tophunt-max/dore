###### Class io.dcloud.feature.ui.UIFeatureImpl (io.dcloud.feature.ui.UIFeatureImpl)
.class public Lio/dcloud/feature/ui/UIFeatureImpl;
.super Lio/dcloud/common/DHInterface/BaseFeature;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IWaiter;


# instance fields
.field a:Lio/dcloud/feature/ui/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/DHInterface/BaseFeature;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/ui/UIFeatureImpl;->a:Lio/dcloud/feature/ui/e;

    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/UIFeatureImpl;->a:Lio/dcloud/feature/ui/e;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string v0, "findWebview"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    .line 2
    check-cast p2, [Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p1, p2, p1

    const/4 v1, 0x1

    .line 3
    aget-object p2, p2, v1

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/ui/UIFeatureImpl;->a:Lio/dcloud/feature/ui/e;

    iget-object v1, v1, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/ui/a;

    if-eqz p1, :cond_2a

    .line 6
    invoke-virtual {p1, p2, p2, p2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object p1

    if-nez p1, :cond_24

    goto :goto_2a

    .line 7
    :cond_24
    iget-object p1, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    :cond_2a
    :goto_2a
    return-object v0
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 5

    const-string v0, "syncUniExecMethod"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/UIFeatureImpl;->a:Lio/dcloud/feature/ui/e;

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    .line 4
    :cond_f
    iget-object v0, p0, Lio/dcloud/feature/ui/UIFeatureImpl;->a:Lio/dcloud/feature/ui/e;

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/feature/ui/e;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    :goto_15
    return-object p1
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/feature/ui/e;

    invoke-direct {v0, p1, p2}, Lio/dcloud/feature/ui/e;-><init>(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/feature/ui/UIFeatureImpl;->a:Lio/dcloud/feature/ui/e;

    return-void
.end method
