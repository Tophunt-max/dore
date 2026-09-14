###### Class io.dcloud.js.geolocation.GeolocationFeatureImpl (io.dcloud.js.geolocation.GeolocationFeatureImpl)
.class public Lio/dcloud/js/geolocation/GeolocationFeatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# instance fields
.field private a:Lio/dcloud/js/geolocation/a;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl;->b:Z

    return-void
.end method

.method static synthetic a(Lio/dcloud/js/geolocation/GeolocationFeatureImpl;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl;->b:Z

    return p0
.end method

.method static synthetic a(Lio/dcloud/js/geolocation/GeolocationFeatureImpl;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl;->b:Z

    return p1
.end method

.method static synthetic b(Lio/dcloud/js/geolocation/GeolocationFeatureImpl;)Lio/dcloud/js/geolocation/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl;->a:Lio/dcloud/js/geolocation/a;

    return-object p0
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2
    iget-object p1, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl;->a:Lio/dcloud/js/geolocation/a;

    invoke-virtual {p1}, Lio/dcloud/js/geolocation/a;->a()V

    :cond_b
    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string v0, "record_address"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl;->a:Lio/dcloud/js/geolocation/a;

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/js/geolocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2b

    :cond_e
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl;->b:Z

    .line 5
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v7, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;-><init>(Lio/dcloud/js/geolocation/GeolocationFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x2

    const-string p2, "Geolocation"

    const-string p3, "LOCATION"

    invoke-static {v0, p2, p3, p1, v7}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    :goto_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance p2, Lio/dcloud/js/geolocation/a;

    invoke-direct {p2, p1}, Lio/dcloud/js/geolocation/a;-><init>(Lio/dcloud/common/DHInterface/AbsMgr;)V

    iput-object p2, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl;->a:Lio/dcloud/js/geolocation/a;

    return-void
.end method

###### Class io.dcloud.js.geolocation.GeolocationFeatureImpl.a (io.dcloud.js.geolocation.GeolocationFeatureImpl$a)
.class Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/geolocation/GeolocationFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/geolocation/GeolocationFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/geolocation/GeolocationFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;->d:Lio/dcloud/js/geolocation/GeolocationFeatureImpl;

    iput-object p3, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;->b:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;->c:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 9

    .line 1
    sget-object p1, Lio/dcloud/common/constant/DOMException;->MSG_GEOLOCATION_PERMISSION_ERROR:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v1, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object p1, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v2, p1, v0

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;->d:Lio/dcloud/js/geolocation/GeolocationFeatureImpl;

    invoke-static {p1}, Lio/dcloud/js/geolocation/GeolocationFeatureImpl;->a(Lio/dcloud/js/geolocation/GeolocationFeatureImpl;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 2
    iget-object p1, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;->d:Lio/dcloud/js/geolocation/GeolocationFeatureImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/dcloud/js/geolocation/GeolocationFeatureImpl;->a(Lio/dcloud/js/geolocation/GeolocationFeatureImpl;Z)Z

    .line 3
    iget-object p1, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;->d:Lio/dcloud/js/geolocation/GeolocationFeatureImpl;

    invoke-static {p1}, Lio/dcloud/js/geolocation/GeolocationFeatureImpl;->b(Lio/dcloud/js/geolocation/GeolocationFeatureImpl;)Lio/dcloud/js/geolocation/a;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/js/geolocation/GeolocationFeatureImpl$a;->c:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/js/geolocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 5
    :cond_1d
    invoke-static {}, Lio/dcloud/common/util/ReflectUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return-void
.end method
