###### Class io.dcloud.feature.uniapp.utils.UniLogUtils (io.dcloud.feature.uniapp.utils.UniLogUtils)
.class public Lio/dcloud/feature/uniapp/utils/UniLogUtils;
.super Lcom/taobao/weex/utils/WXLogUtils;
.source "UniLogUtils.java"


# static fields
.field public static final UNI_PERF_TAG:Ljava/lang/String; = "uni_perf"

.field public static final UNI_TAG:Ljava/lang/String; = "uni"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/taobao/weex/utils/WXLogUtils;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const-string v0, "uni"

    .line 32
    invoke-static {v0, p0}, Lio/dcloud/feature/uniapp/utils/UniLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;[B)V
    .registers 3

    .line 36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0, v0}, Lio/dcloud/feature/uniapp/utils/UniLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    const-string v0, "uni"

    .line 60
    invoke-static {v0, p0}, Lio/dcloud/feature/uniapp/utils/UniLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;[B)V
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0, v0}, Lio/dcloud/feature/uniapp/utils/UniLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    const-string v0, "uni"

    .line 40
    invoke-static {v0, p0}, Lio/dcloud/feature/uniapp/utils/UniLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;[B)V
    .registers 3

    .line 44
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0, v0}, Lio/dcloud/feature/uniapp/utils/UniLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .registers 2

    const-string v0, "uni"

    .line 48
    invoke-static {v0, p0}, Lio/dcloud/feature/uniapp/utils/UniLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2

    const-string v0, "uni"

    .line 28
    invoke-static {v0, p0}, Lio/dcloud/feature/uniapp/utils/UniLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    const-string v0, "uni"

    .line 52
    invoke-static {v0, p0}, Lio/dcloud/feature/uniapp/utils/UniLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;[B)V
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0, v0}, Lio/dcloud/feature/uniapp/utils/UniLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
