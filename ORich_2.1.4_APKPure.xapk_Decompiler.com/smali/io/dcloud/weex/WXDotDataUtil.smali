###### Class io.dcloud.weex.WXDotDataUtil (io.dcloud.weex.WXDotDataUtil)
.class public Lio/dcloud/weex/WXDotDataUtil;
.super Ljava/lang/Object;
.source "WXDotDataUtil.java"


# static fields
.field private static DEVICEINFO:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    sput-object v0, Lio/dcloud/weex/WXDotDataUtil;->DEVICEINFO:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceInfo()Lcom/alibaba/fastjson/JSONObject;
    .registers 1

    .line 35
    sget-object v0, Lio/dcloud/weex/WXDotDataUtil;->DEVICEINFO:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 29
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v0, :cond_9

    .line 30
    sget-object v0, Lio/dcloud/weex/WXDotDataUtil;->DEVICEINFO:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method
