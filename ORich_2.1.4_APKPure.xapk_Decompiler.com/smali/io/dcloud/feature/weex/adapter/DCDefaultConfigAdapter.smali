###### Class io.dcloud.feature.weex.adapter.DCDefaultConfigAdapter (io.dcloud.feature.weex.adapter.DCDefaultConfigAdapter)
.class public Lio/dcloud/feature/weex/adapter/DCDefaultConfigAdapter;
.super Ljava/lang/Object;
.source "DCDefaultConfigAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXConfigAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkMode(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    return-object p3
.end method

.method public getConfigWhenInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    return-object p3
.end method
