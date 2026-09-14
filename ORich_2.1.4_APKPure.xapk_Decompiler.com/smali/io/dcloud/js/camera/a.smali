###### Class io.dcloud.js.camera.a (io.dcloud.js.camera.a)
.class Lio/dcloud/js/camera/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/js/camera/a$a;
    }
.end annotation


# static fields
.field protected static e:I = 0x1f5

.field protected static f:I = 0x1f6

.field protected static g:I = 0x1393


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field d:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/js/camera/a;->a:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lio/dcloud/js/camera/a;->b:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lio/dcloud/js/camera/a;->c:Ljava/util/List;

    .line 14
    iput p1, p0, Lio/dcloud/js/camera/a;->d:I

    return-void
.end method

.method static a(Ljava/lang/String;Z)Lio/dcloud/js/camera/a$a;
    .registers 5

    .line 6
    new-instance v0, Lio/dcloud/js/camera/a$a;

    invoke-direct {v0}, Lio/dcloud/js/camera/a$a;-><init>()V

    if-eqz p0, :cond_9f

    const/4 v1, 0x0

    .line 10
    :try_start_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_f

    move-object v1, v2

    goto :goto_10

    :catch_f
    nop

    :goto_10
    const-string p0, "resolution"

    .line 13
    invoke-static {v1, p0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "filename"

    .line 14
    invoke-static {v1, p0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "format"

    .line 15
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_25

    const-string v2, "jpg"

    goto :goto_27

    :cond_25
    const-string v2, "mp4"

    .line 18
    :goto_27
    invoke-static {p0, v2}, Lio/dcloud/common/util/PdrUtil;->getDefaultPrivateDocPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    iput-object p0, v0, Lio/dcloud/js/camera/a$a;->a:Ljava/lang/String;

    const-string p0, "index"

    .line 20
    invoke-static {v1, p0}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    if-eqz v1, :cond_42

    const-string p0, "optimize"

    .line 21
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 22
    invoke-static {v1, p0}, Lio/dcloud/common/util/JSONUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lio/dcloud/js/camera/a$a;->b:Z

    :cond_42
    if-eqz v1, :cond_52

    const-string p0, "videoMaximumDuration"

    .line 24
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 25
    invoke-static {v1, p0}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lio/dcloud/js/camera/a$a;->c:I

    :cond_52
    if-eqz v1, :cond_62

    const-string p0, "crop"

    .line 28
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 29
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lio/dcloud/js/camera/a$a;->d:Lorg/json/JSONObject;

    :cond_62
    if-nez p1, :cond_76

    if-eqz v1, :cond_9f

    const-string p0, "videoCompress"

    .line 33
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9f

    const/4 p1, 0x0

    .line 34
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lio/dcloud/js/camera/a$a;->e:Z

    goto :goto_9f

    :cond_76
    if-eqz v1, :cond_9f

    const-string p0, "sizeType"

    .line 36
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 37
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "original"

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_98

    const-string v1, "compressed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 39
    iput-boolean v2, v0, Lio/dcloud/js/camera/a$a;->e:Z

    goto :goto_9f

    .line 41
    :cond_98
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    iput-boolean p0, v0, Lio/dcloud/js/camera/a$a;->e:Z

    :cond_9f
    :goto_9f
    return-object v0
.end method

.method private a(Ljava/util/List;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p1, "[\'jpg\']"

    const-string v0, "[\'mp4\']"

    .line 5
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p1, :cond_5b

    const/4 v1, 0x1

    if-le v0, v1, :cond_5b

    .line 26
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_51

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_4e

    const-string v3, ","

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_51
    const-string p1, "]"

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5d

    :cond_5b
    const-string p1, "[]"

    :goto_5d
    return-object p1
.end method

.method private c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/a;->c:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 3
    invoke-direct {p0, v0}, Lio/dcloud/js/camera/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "[]"

    :goto_b
    return-object v0
.end method

.method private d()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/a;->b:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 3
    invoke-direct {p0, v0}, Lio/dcloud/js/camera/a;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_14

    const-string v0, "[\'jpg\']"

    const-string v1, "[\'mp4\']"

    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/a;->a:Ljava/util/List;

    if-eqz v0, :cond_f

    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_f

    .line 3
    invoke-direct {p0, v0}, Lio/dcloud/js/camera/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, "[]"

    :goto_11
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-direct {p0}, Lio/dcloud/js/camera/a;->d()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/dcloud/js/camera/a;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lio/dcloud/js/camera/a;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    aget-object v2, v0, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    aget-object v0, v0, v4

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "(function(){return{supportedImageResolutions : %s,supportedVideoResolutions : %s,supportedImageFormats : %s,supportedVideoFormats : %s};})();"

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 4

    .line 1
    :try_start_0
    iget v0, p0, Lio/dcloud/js/camera/a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_27

    const/4 v0, 0x0

    .line 2
    :goto_c
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 3
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 4
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 5
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 6
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_28

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-nez v0, :cond_2e

    .line 12
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 14
    :cond_2e
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3e

    .line 15
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/js/camera/a;->a:Ljava/util/List;

    .line 17
    :cond_3e
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/js/camera/a;->c:Ljava/util/List;

    .line 18
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_58

    .line 19
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/js/camera/a;->b:Ljava/util/List;

    .line 21
    :cond_58
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_60
    return-void
.end method

###### Class io.dcloud.js.camera.a.C0079a (io.dcloud.js.camera.a$a)
.class Lio/dcloud/js/camera/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/js/camera/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:I

.field d:Lorg/json/JSONObject;

.field e:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/dcloud/js/camera/a$a;->b:Z

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/dcloud/js/camera/a$a;->c:I

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lio/dcloud/js/camera/a$a;->d:Lorg/json/JSONObject;

    .line 11
    iput-boolean v0, p0, Lio/dcloud/js/camera/a$a;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/js/camera/a$a;->c:I

    return v0
.end method
