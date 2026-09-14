###### Class io.dcloud.js.geolocation.system.LocalGeoManager (io.dcloud.js.geolocation.system.LocalGeoManager)
.class public Lio/dcloud/js/geolocation/system/LocalGeoManager;
.super Lio/dcloud/js/geolocation/GeoManagerBase;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "LocalGeoManager"


# instance fields
.field private a:Lio/dcloud/js/geolocation/system/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/js/geolocation/GeoManagerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/js/geolocation/system/LocalGeoManager;)Lio/dcloud/js/geolocation/system/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    return-object p0
.end method


# virtual methods
.method b()Lio/dcloud/js/geolocation/system/a;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Lio/dcloud/js/geolocation/system/a;

    iget-object v1, p0, Lio/dcloud/js/geolocation/GeoManagerBase;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lio/dcloud/js/geolocation/system/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    .line 4
    :cond_f
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    return-object v0
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v8, ""

    :try_start_8
    const-string v2, "getCurrentPosition"

    .line 1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_101

    const-string v3, "only support wgs84"

    const/16 v4, 0x11

    const-string v5, "{code:%d,message:\'%s\'}"

    const-string v6, "wgs84"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_65

    .line 2
    :try_start_1c
    aget-object v0, v1, v11

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3
    aget-object v2, v1, v10

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4
    aget-object v13, v1, v9

    invoke-static {v13, v6}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    aget-object v6, v1, v9

    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v6, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v6, 0x1

    :goto_3c
    if-eqz v6, :cond_47

    .line 6
    aget-object v1, v1, v12

    move-object/from16 v13, p1

    invoke-virtual {v7, v13, v1, v0, v2}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->getCurrentLocation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ZI)V

    goto/16 :goto_101

    :cond_47
    move-object/from16 v13, p1

    new-array v0, v10, [Ljava/lang/Object;

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v12

    aput-object v3, v0, v11

    invoke-static {v5, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 9
    aget-object v10, v1, v12

    sget v12, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v0, 0x1

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move v13, v0

    invoke-static/range {v9 .. v14}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_101

    :cond_65
    move-object/from16 v13, p1

    const-string v2, "watchPosition"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 13
    aget-object v0, v1, v10

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 14
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    new-instance v2, Lio/dcloud/js/geolocation/system/LocalGeoManager$a;

    invoke-direct {v2, v7}, Lio/dcloud/js/geolocation/system/LocalGeoManager$a;-><init>(Lio/dcloud/js/geolocation/system/LocalGeoManager;)V

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 24
    aget-object v0, v1, v9

    invoke-static {v0, v6}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94

    aget-object v0, v1, v9

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    goto :goto_94

    :cond_92
    const/4 v0, 0x0

    goto :goto_95

    :cond_94
    :goto_94
    const/4 v0, 0x1

    .line 25
    :goto_95
    array-length v2, v1
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_96} :catch_101

    const/4 v6, 0x7

    const-string v9, "null"

    if-le v2, v6, :cond_9f

    const/4 v2, 0x6

    :try_start_9c
    aget-object v2, v1, v2

    goto :goto_a0

    :cond_9f
    move-object v2, v9

    .line 26
    :goto_a0
    sget v15, Lio/dcloud/js/geolocation/system/a;->r:I

    .line 27
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_ad

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v15, v2

    .line 30
    :cond_ad
    array-length v2, v1

    const/16 v4, 0x8

    if-le v2, v4, :cond_b5

    aget-object v2, v1, v6
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_b4} :catch_101

    goto :goto_b7

    :cond_b5
    const-string v2, "5000"

    :goto_b7
    const/16 v4, 0x1388

    .line 32
    :try_start_b9
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c5

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v6, v2

    goto :goto_c7

    :cond_c5
    const/16 v6, 0x1388

    :goto_c7
    if-eqz v0, :cond_d7

    .line 36
    aget-object v2, v1, v12

    aget-object v3, v1, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v6}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->start(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZII)V

    goto :goto_101

    :cond_d7
    new-array v0, v10, [Ljava/lang/Object;

    const/16 v2, 0x11

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v12

    aput-object v3, v0, v11

    invoke-static {v5, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 39
    aget-object v10, v1, v12

    sget v12, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v0, 0x1

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move v13, v0

    invoke-static/range {v9 .. v14}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_101

    :cond_f4
    const-string v2, "clearWatch"

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 43
    aget-object v0, v1, v12

    invoke-virtual {v7, v0}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->stop(Ljava/lang/String;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_101} :catch_101

    :catch_101
    :cond_101
    :goto_101
    return-object v8
.end method

.method public getCurrentLocation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ZI)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->b()Lio/dcloud/js/geolocation/system/a;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p2}, Lio/dcloud/js/geolocation/system/a;->a(Lio/dcloud/common/DHInterface/IWebview;ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/js/geolocation/system/a;->a()V

    :cond_7
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    return-void
.end method

.method public start(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->b()Lio/dcloud/js/geolocation/system/a;

    move-result-object p4

    invoke-virtual {p4, p1, p5, p2, p6}, Lio/dcloud/js/geolocation/system/a;->a(Lio/dcloud/common/DHInterface/IWebview;ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2
    iget-object p1, p0, Lio/dcloud/js/geolocation/GeoManagerBase;->keySet:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lio/dcloud/js/geolocation/GeoManagerBase;->keySet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    iget-object v0, p0, Lio/dcloud/js/geolocation/GeoManagerBase;->keySet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    sget v0, Lio/dcloud/js/geolocation/system/a;->q:I

    invoke-virtual {p1, v0}, Lio/dcloud/js/geolocation/system/a;->c(I)V

    :cond_18
    return-void
.end method

###### Class io.dcloud.js.geolocation.system.LocalGeoManager.a (io.dcloud.js.geolocation.system.LocalGeoManager$a)
.class Lio/dcloud/js/geolocation/system/LocalGeoManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/geolocation/system/LocalGeoManager;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/geolocation/system/LocalGeoManager;


# direct methods
.method constructor <init>(Lio/dcloud/js/geolocation/system/LocalGeoManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager$a;->a:Lio/dcloud/js/geolocation/system/LocalGeoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    if-eqz p1, :cond_32

    :cond_10
    instance-of p1, p2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_32

    .line 2
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager$a;->a:Lio/dcloud/js/geolocation/system/LocalGeoManager;

    invoke-static {p1}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a(Lio/dcloud/js/geolocation/system/LocalGeoManager;)Lio/dcloud/js/geolocation/system/a;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager$a;->a:Lio/dcloud/js/geolocation/system/LocalGeoManager;

    invoke-static {p1}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a(Lio/dcloud/js/geolocation/system/LocalGeoManager;)Lio/dcloud/js/geolocation/system/a;

    move-result-object p1

    sget v0, Lio/dcloud/js/geolocation/system/a;->q:I

    invoke-virtual {p1, v0}, Lio/dcloud/js/geolocation/system/a;->c(I)V

    .line 3
    :cond_27
    check-cast p2, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method
