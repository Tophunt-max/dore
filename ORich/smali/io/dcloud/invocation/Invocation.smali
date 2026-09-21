###### Class io.dcloud.invocation.Invocation (io.dcloud.invocation.Invocation)
.class public Lio/dcloud/invocation/Invocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# instance fields
.field a:Lio/dcloud/invocation/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/invocation/Invocation;->a:Lio/dcloud/invocation/a;

    invoke-virtual {v0, p1}, Lio/dcloud/invocation/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isNJS:Z

    if-nez v0, :cond_d

    const-string p1, ""

    return-object p1

    .line 4
    :cond_d
    iget-object v0, p0, Lio/dcloud/invocation/Invocation;->a:Lio/dcloud/invocation/a;

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance p2, Lio/dcloud/invocation/a;

    invoke-direct {p2, p1}, Lio/dcloud/invocation/a;-><init>(Lio/dcloud/common/DHInterface/AbsMgr;)V

    iput-object p2, p0, Lio/dcloud/invocation/Invocation;->a:Lio/dcloud/invocation/a;

    return-void
.end method
