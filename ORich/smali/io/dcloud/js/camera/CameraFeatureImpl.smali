###### Class io.dcloud.js.camera.CameraFeatureImpl (io.dcloud.js.camera.CameraFeatureImpl)
.class public Lio/dcloud/js/camera/CameraFeatureImpl;
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

.method static synthetic a(Lio/dcloud/js/camera/CameraFeatureImpl;ZLjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_12

    :try_start_2
    const-string p1, ".temp"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v7, p3, v1

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1d

    .line 5
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 6
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_1d
    const-string v1, "captureImage"

    .line 8
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v9, "CAMERA"

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_71

    .line 9
    aget-object p2, p3, v2

    invoke-static {p2, v2}, Lio/dcloud/js/camera/a;->a(Ljava/lang/String;Z)Lio/dcloud/js/camera/a$a;

    move-result-object p2

    .line 10
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lio/dcloud/js/camera/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v6}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5d

    invoke-static {v6}, Lio/dcloud/common/util/FileUtil;->getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5d

    .line 12
    sget-object p2, Lio/dcloud/common/constant/DOMException;->MSG_PATH_NOT_PRIVATE_ERROR:Ljava/lang/String;

    const/4 p3, -0x5

    invoke-static {p3, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13
    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 p2, 0x0

    move-object v2, p1

    move-object v3, v7

    move v7, p2

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v10

    .line 16
    :cond_5d
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p3

    new-instance v11, Lio/dcloud/js/camera/CameraFeatureImpl$a;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, v7

    move-object v7, p2

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lio/dcloud/js/camera/CameraFeatureImpl$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/js/camera/a$a;Lio/dcloud/common/DHInterface/IApp;)V

    invoke-static {p3, v9, v11}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto :goto_c4

    :cond_71
    const-string v1, "startVideoCapture"

    .line 184
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 185
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance v8, Lio/dcloud/js/camera/CameraFeatureImpl$b;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p3

    move-object v5, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lio/dcloud/js/camera/CameraFeatureImpl$b;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {p2, v9, v8}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto :goto_c4

    :cond_8c
    const-string v1, "getCamera"

    .line 312
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c4

    .line 313
    aget-object p2, p3, v2

    invoke-static {p2, v2}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result p2

    .line 314
    new-instance v4, Lio/dcloud/js/camera/a;

    invoke-direct {v4, p2}, Lio/dcloud/js/camera/a;-><init>(I)V

    .line 315
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v1, "android.permission.CAMERA"

    invoke-static {p2, v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_b3

    .line 316
    invoke-virtual {v4}, Lio/dcloud/js/camera/a;->b()V

    .line 317
    invoke-virtual {v4}, Lio/dcloud/js/camera/a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 320
    :cond_b3
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance v7, Lio/dcloud/js/camera/CameraFeatureImpl$c;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/js/camera/CameraFeatureImpl$c;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/js/camera/a;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V

    invoke-static {p2, v9, v7}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    :cond_c4
    :goto_c4
    return-object v10
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a (io.dcloud.js.camera.CameraFeatureImpl$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/camera/a$a;

.field final synthetic e:Lio/dcloud/common/DHInterface/IApp;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/js/camera/a$a;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 8

    .line 1
    iput-object p3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->c:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    iput-object p7, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 9

    const/16 p1, 0xb

    const-string v0, "No Permission"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 9

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lio/dcloud/common/util/JSUtil;->checkOperateDirErrorAndCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, -0x5

    const-string v0, "IO Error"

    .line 2
    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 6
    :cond_1f
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->c:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_33

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    invoke-virtual {v2}, Lio/dcloud/js/camera/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2, v0}, Lio/dcloud/common/util/FileUtil;->getShareImageUri(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Landroid/content/Intent;)Lio/dcloud/common/util/DCFileUriData;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    new-instance v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    invoke-direct {v2, p0, p1}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a;Lio/dcloud/common/util/DCFileUriData;)V

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_69

    const-string v1, "output"

    .line 150
    :try_start_58
    iget-object p1, p1, Lio/dcloud/common/util/DCFileUriData;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v1, Lio/dcloud/js/camera/a;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_68} :catch_69

    goto :goto_7f

    :catch_69
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_7f
    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0073a (io.dcloud.js.camera.CameraFeatureImpl$a$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a;->onGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/util/DCFileUriData;

.field final synthetic b:Lio/dcloud/js/camera/CameraFeatureImpl$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a;Lio/dcloud/common/util/DCFileUriData;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iput-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 11

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 3
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4
    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v2, :cond_48

    .line 5
    sget v2, Lio/dcloud/js/camera/a;->e:I

    if-ne v1, v2, :cond_48

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2c

    .line 7
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p2

    new-instance v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    invoke-direct {v1, p0}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a;)V

    invoke-virtual {p2, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    goto :goto_41

    :cond_2c
    const/16 p2, 0xb

    const-string v1, "resultCode is wrong"

    .line 124
    invoke-static {p2, v1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 127
    :goto_41
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    :cond_48
    return v0
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0073a.RunnableC0074a (io.dcloud.js.camera.CameraFeatureImpl$a$a$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 5
    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private static synthetic a(Lio/dcloud/js/camera/a$a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-boolean p0, p0, Lio/dcloud/js/camera/a$a;->e:Z

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p1, p0}, Lio/dcloud/common/util/CompressUtil;->compressImage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    :cond_8
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance p1, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;

    invoke-direct {p1, p3, p4, p5}, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;-><init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$H7AuhLD7YZIKZiAKNggjJT8M2BQ(Lio/dcloud/js/camera/a$a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a(Lio/dcloud/js/camera/a$a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$gDnxNnI07kpyxHgrhs8Mg5WBwKA(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-boolean v2, v1, Lio/dcloud/common/util/DCFileUriData;->isReplace:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_29

    .line 2
    iget-object v2, v1, Lio/dcloud/common/util/DCFileUriData;->fileReplacePath:Ljava/lang/String;

    iget-object v1, v1, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v1, v4, v3}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v1

    if-eq v1, v4, :cond_29

    .line 3
    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$a;

    invoke-direct {v2, v0}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 15
    :cond_29
    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v4, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    iget-boolean v4, v4, Lio/dcloud/js/camera/a$a;->b:Z

    if-eqz v4, :cond_5f

    .line 16
    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-object v1, v1, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/js/camera/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 18
    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$b;

    invoke-direct {v2, v0}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$b;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 27
    :cond_54
    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v2, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6f

    .line 30
    :cond_5f
    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-object v1, v1, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    invoke-interface {v2, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-object v1, v1, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    :goto_6f
    move-object v6, v1

    move-object v10, v2

    .line 35
    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/a$a;->d:Lorg/json/JSONObject;

    if-eqz v1, :cond_13f

    const-string v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13f

    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/a$a;->d:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 38
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-object v2, v2, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v2, Lcom/dmcbig/mediapicker/entity/Media;

    iget-object v4, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v4, v4, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    iget-object v12, v4, Lio/dcloud/common/util/DCFileUriData;->filePath:Ljava/lang/String;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v20

    const/16 v16, 0x1

    const-wide/16 v17, 0x1

    const/16 v19, -0x3e9

    const-string v13, ""

    move-object v11, v2

    invoke-direct/range {v11 .. v20}, Lcom/dmcbig/mediapicker/entity/Media;-><init>(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;)V

    .line 48
    new-instance v1, Landroid/content/Intent;

    iget-object v4, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v4, v4, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v4, v4, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "IMAGE_URI"

    .line 50
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    iget v4, v2, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    const-string v5, "IMAGE_MEDIA_ID"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "IMAGE_INDEX"

    .line 52
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    iget-object v4, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v4, v4, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v4, v4, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    iget-object v4, v4, Lio/dcloud/js/camera/a$a;->d:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IMAGE_CROP"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v2, v2, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    const-string v4, "IMAGE_SAVE_PATH"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    new-instance v4, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;

    invoke-direct {v4, v0, v10}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;Ljava/lang/String;)V

    sget-object v5, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v2, v4, v5}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 97
    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    invoke-virtual {v2}, Lio/dcloud/common/util/DCFileUriData;->clear()V

    .line 98
    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v4, Lio/dcloud/js/camera/a;->g:I

    invoke-virtual {v2, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 99
    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_15f

    .line 103
    :cond_13f
    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->a:Lio/dcloud/common/util/DCFileUriData;

    invoke-virtual {v1}, Lio/dcloud/common/util/DCFileUriData;->clear()V

    .line 104
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v1

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v2, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v5, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->d:Lio/dcloud/js/camera/a$a;

    iget-object v7, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    iget-object v8, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v9, v2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    new-instance v2, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;-><init>(Lio/dcloud/js/camera/a$a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    :goto_15f
    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0073a.RunnableC0074a.RunnableC0075a (io.dcloud.js.camera.CameraFeatureImpl$a$a$a$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, -0x5

    const-string v1, "IO Error"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0073a.RunnableC0074a.b (io.dcloud.js.camera.CameraFeatureImpl$a$a$a$b)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$b;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, -0x5

    const-string v1, "IO Error"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$b;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0073a.RunnableC0074a.c (io.dcloud.js.camera.CameraFeatureImpl$a$a$a$c)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iput-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 11

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 3
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 5
    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v2, :cond_50

    .line 6
    sget v2, Lio/dcloud/js/camera/a;->g:I

    if-ne v1, v2, :cond_50

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2c

    .line 9
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p2

    new-instance v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;

    invoke-direct {v1, p0}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;)V

    invoke-virtual {p2, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    goto :goto_45

    :cond_2c
    const/16 p2, 0xb

    const-string v1, "resultCode is wrong"

    .line 24
    invoke-static {p2, v1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 27
    :goto_45
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    :cond_50
    return v0
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0073a.RunnableC0074a.c.RunnableC0076a (io.dcloud.js.camera.CameraFeatureImpl$a$a$a$c$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a$a;

    invoke-direct {v1, p0}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.a.C0073a.RunnableC0074a.c.RunnableC0076a.RunnableC0077a (io.dcloud.js.camera.CameraFeatureImpl$a$a$a$c$a$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;

    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->a:Lio/dcloud/js/camera/CameraFeatureImpl$a$a;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$a;

    iget-object v2, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, v1, Lio/dcloud/js/camera/CameraFeatureImpl$a;->b:Ljava/lang/String;

    iget-object v4, v0, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a$c;->a:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.js.camera.$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ (io.dcloud.js.camera.-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ)
.class public final synthetic Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/js/camera/a$a;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lio/dcloud/common/DHInterface/IApp;

.field public final synthetic f$3:Lio/dcloud/common/DHInterface/IWebview;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/js/camera/a$a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;->f$0:Lio/dcloud/js/camera/a$a;

    iput-object p2, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;->f$2:Lio/dcloud/common/DHInterface/IApp;

    iput-object p4, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;->f$3:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;->f$0:Lio/dcloud/js/camera/a$a;

    iget-object v1, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;->f$2:Lio/dcloud/common/DHInterface/IApp;

    iget-object v3, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;->f$3:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$H7AuhLD7YZIKZiAKNggjJT8M2BQ;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->lambda$H7AuhLD7YZIKZiAKNggjJT8M2BQ(Lio/dcloud/js/camera/a$a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.js.camera.$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA (io.dcloud.js.camera.-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA)
.class public final synthetic Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/common/DHInterface/IWebview;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;->f$0:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p2, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;->f$0:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/js/camera/-$$Lambda$CameraFeatureImpl$a$a$a$gDnxNnI07kpyxHgrhs8Mg5WBwKA;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/dcloud/js/camera/CameraFeatureImpl$a$a$a;->lambda$gDnxNnI07kpyxHgrhs8Mg5WBwKA(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.b (io.dcloud.js.camera.CameraFeatureImpl$b)
.class Lio/dcloud/js/camera/CameraFeatureImpl$b;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/js/camera/CameraFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->e:Lio/dcloud/js/camera/CameraFeatureImpl;

    iput-object p3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->a:[Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p5, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p6, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 9

    const/16 p1, 0xb

    const-string v0, "No Permission"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 9

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->a:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/js/camera/a;->a(Ljava/lang/String;Z)Lio/dcloud/js/camera/a$a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/dcloud/js/camera/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/common/util/JSUtil;->checkOperateDirErrorAndCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 p1, -0x5

    const-string v0, "IO Error"

    .line 4
    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 9
    :cond_37
    iget-boolean v1, p1, Lio/dcloud/js/camera/a$a;->e:Z

    if-eqz v1, :cond_4d

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_4d
    move-object v1, v0

    .line 11
    :goto_4e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_60

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 17
    :cond_60
    iget-object v3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    new-instance v4, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    invoke-direct {v4, p0, v1, p1, v0}, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$b;Ljava/lang/String;Lio/dcloud/js/camera/a$a;Ljava/lang/String;)V

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v3, v4, v0}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lio/dcloud/js/camera/a$a;->b()I

    move-result v1
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_77} :catch_c4

    if-eqz v1, :cond_82

    const-string v1, "android.intent.extra.durationLimit"

    .line 94
    :try_start_7b
    invoke-virtual {p1}, Lio/dcloud/js/camera/a$a;->b()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    :cond_82
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p1, v1, :cond_b8

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 104
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dc.fileprovider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "output"

    .line 105
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    :cond_b8
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v1, Lio/dcloud/js/camera/a;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_c3} :catch_c4

    goto :goto_da

    :catch_c4
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_da
    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.b.a (io.dcloud.js.camera.CameraFeatureImpl$b$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$b;->onGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/js/camera/a$a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/camera/CameraFeatureImpl$b;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$b;Ljava/lang/String;Lio/dcloud/js/camera/a$a;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iput-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->b:Lio/dcloud/js/camera/a$a;

    iput-object p4, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 12

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 3
    aget-object v3, p2, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4
    sget-object v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v4, :cond_e4

    .line 5
    sget v4, Lio/dcloud/js/camera/a;->f:I

    if-ne v1, v4, :cond_e4

    const/4 v1, -0x1

    if-ne v3, v1, :cond_cf

    .line 7
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x2

    if-nez v1, :cond_5f

    .line 9
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object p2, p2, v3

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {v1, p2}, Lio/dcloud/common/adapter/util/ContentUriUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 10
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eq p2, v2, :cond_5f

    .line 12
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 13
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    return v0

    :cond_5f
    const/4 p2, 0x0

    .line 19
    :try_start_60
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->b:Lio/dcloud/js/camera/a$a;

    iget-boolean v1, v1, Lio/dcloud/js/camera/a$a;->e:Z

    if-eqz v1, :cond_8c

    .line 20
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/js/camera/b;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 23
    invoke-static {}, Landroidtranscoder/MediaTranscoder;->getInstance()Landroidtranscoder/MediaTranscoder;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->c:Ljava/lang/String;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v5, v6}, Landroidtranscoder/format/MediaFormatStrategyPresets;->createAndroid720pStrategy(ID)Landroidtranscoder/format/MediaFormatStrategy;

    move-result-object v3

    new-instance v5, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;

    invoke-direct {v5, p0, p2}, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;-><init>(Lio/dcloud/js/camera/CameraFeatureImpl$b$a;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2, v4, v3, v5}, Landroidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/lang/String;Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;Landroidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;

    goto :goto_dd

    .line 54
    :cond_8c
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    iget-object v1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v3, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_a3} :catch_a4

    goto :goto_dd

    :catch_a4
    move-exception v1

    if-eqz p2, :cond_aa

    .line 59
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 60
    :cond_aa
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->e:Lio/dcloud/js/camera/CameraFeatureImpl;

    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->b:Lio/dcloud/js/camera/a$a;

    iget-boolean v2, v2, Lio/dcloud/js/camera/a$a;->e:Z

    iget-object v3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    invoke-static {p2, v2, v3}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;ZLjava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v1, -0x63

    invoke-static {v1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_dd

    .line 65
    :cond_cf
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 67
    :goto_dd
    iget-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    :cond_e4
    return v0
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.b.a.C0078a (io.dcloud.js.camera.CameraFeatureImpl$b$a$a)
.class Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidtranscoder/MediaTranscoder$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl$b$a;Landroid/app/Dialog;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iput-object p2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranscodeCanceled()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->e:Lio/dcloud/js/camera/CameraFeatureImpl;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->b:Lio/dcloud/js/camera/a$a;

    iget-boolean v2, v2, Lio/dcloud/js/camera/a$a;->e:Z

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;ZLjava/lang/String;)V

    .line 3
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_USER_CANCEL:Ljava/lang/String;

    const/4 v1, -0x2

    invoke-static {v1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onTranscodeCompleted()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->e:Lio/dcloud/js/camera/CameraFeatureImpl;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->b:Lio/dcloud/js/camera/a$a;

    iget-boolean v2, v2, Lio/dcloud/js/camera/a$a;->e:Z

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onTranscodeFailed(Ljava/lang/Exception;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object v1, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, v1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->e:Lio/dcloud/js/camera/CameraFeatureImpl;

    iget-object v2, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->b:Lio/dcloud/js/camera/a$a;

    iget-boolean v2, v2, Lio/dcloud/js/camera/a$a;->e:Z

    iget-object v0, v0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/js/camera/CameraFeatureImpl;->a(Lio/dcloud/js/camera/CameraFeatureImpl;ZLjava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x63

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$b$a$a;->b:Lio/dcloud/js/camera/CameraFeatureImpl$b$a;

    iget-object p1, p1, Lio/dcloud/js/camera/CameraFeatureImpl$b$a;->d:Lio/dcloud/js/camera/CameraFeatureImpl$b;

    iget-object v1, p1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p1, Lio/dcloud/js/camera/CameraFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onTranscodeProgress(D)V
    .registers 3

    return-void
.end method

###### Class io.dcloud.js.camera.CameraFeatureImpl.c (io.dcloud.js.camera.CameraFeatureImpl$c)
.class Lio/dcloud/js/camera/CameraFeatureImpl$c;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/camera/CameraFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/camera/a;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/js/camera/CameraFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/js/camera/a;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 6

    .line 1
    iput-object p3, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->a:Lio/dcloud/js/camera/a;

    iput-object p4, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->b:[Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 10

    .line 1
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->a:Lio/dcloud/js/camera/a;

    invoke-virtual {p1}, Lio/dcloud/js/camera/a;->b()V

    .line 2
    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->b:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1d

    .line 3
    iget-object v2, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    const/4 v0, 0x2

    aget-object v3, p1, v0

    iget-object p1, p0, Lio/dcloud/js/camera/CameraFeatureImpl$c;->a:Lio/dcloud/js/camera/a;

    invoke-virtual {p1}, Lio/dcloud/js/camera/a;->a()Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_1d
    return-void
.end method
