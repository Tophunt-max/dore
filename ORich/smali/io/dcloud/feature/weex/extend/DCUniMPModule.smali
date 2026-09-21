###### Class io.dcloud.feature.weex.extend.DCUniMPModule (io.dcloud.feature.weex.extend.DCUniMPModule)
.class public Lio/dcloud/feature/weex/extend/DCUniMPModule;
.super Lio/dcloud/feature/uniapp/common/UniModule;
.source "DCUniMPModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/common/UniModule;-><init>()V

    return-void
.end method


# virtual methods
.method public getUniMPVersion(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1

    const-string v2, "message"

    const-string v3, "code"

    const-string v4, "fail"

    const-string v5, "type"

    if-eqz v1, :cond_29

    .line 160
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x3

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "No permission"

    .line 162
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_8b

    .line 164
    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_8b

    .line 167
    :cond_29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "__UNI__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    :cond_37
    const/4 v1, -0x1

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Parameter error"

    .line 170
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4c

    .line 172
    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 175
    :cond_4c
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 177
    new-instance v2, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;

    invoke-direct {v2, p0, v0, p2}, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    .line 199
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, p2, v3

    const-string v0, "getUniMPVersion"

    const/4 v4, 0x2

    aput-object v0, p2, v4

    const/4 v0, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v2, v4, v3

    aput-object v4, p2, v0

    .line 200
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    :goto_8b
    return-void
.end method

.method public installUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 12
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    :try_start_5
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    const/4 p1, 0x0

    .line 96
    :goto_b
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1

    const-string v2, "message"

    const-string v3, "code"

    const-string v4, "fail"

    const-string v5, "type"

    if-eqz v1, :cond_31

    .line 97
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, -0xa

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "No permission"

    .line 99
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_c1

    .line 101
    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto/16 :goto_c1

    :cond_31
    const-string v1, "Parameter error"

    const/4 v6, -0x1

    if-eqz p1, :cond_af

    const-string v7, "appid"

    .line 105
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "wgtFile"

    .line 106
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5b

    .line 108
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "file"

    invoke-interface {v1, v2, v3}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 110
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_6d

    .line 113
    :cond_5b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_6d

    .line 117
    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 120
    :cond_6d
    :goto_6d
    new-instance v1, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;

    invoke-direct {v1, p0, v0, p2}, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 140
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p2, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    if-eqz p2, :cond_c1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 142
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v0, v2

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v0, v3

    const-string p2, "installUniMP"

    const/4 v4, 0x2

    aput-object p2, v0, v4

    const/4 p2, 0x3

    new-array v5, p2, [Ljava/lang/Object;

    aput-object v7, v5, v2

    aput-object p1, v5, v3

    aput-object v1, v5, v4

    aput-object v5, v0, p2

    .line 143
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v1, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    .line 146
    :cond_af
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_c1

    .line 150
    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method public openUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 27
    new-instance v0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass1 (io.dcloud.feature.weex.extend.DCUniMPModule$1)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$1;
.super Ljava/lang/Object;
.source "DCUniMPModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->openUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$opStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4

    .line 27
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$opStr:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 33
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$opStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    .line 36
    :goto_8
    :try_start_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    sget-boolean v2, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_9f

    const-string v3, "message"

    const-string v4, "fail"

    const-string v5, "code"

    const-string v6, "type"

    if-eqz v2, :cond_32

    .line 38
    :try_start_19
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0xa

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "No permission"

    .line 40
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_a3

    .line 42
    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_a3

    :cond_32
    if-nez v0, :cond_4c

    const/4 v0, -0x1

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Parameter error"

    .line 49
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_4b

    .line 51
    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_4b
    return-void

    .line 55
    :cond_4c
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iget-object v3, v3, Lio/dcloud/feature/weex/extend/DCUniMPModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2, v3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 57
    new-instance v3, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;

    invoke-direct {v3, p0, v1}, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$1;Ljava/util/Map;)V

    const-string v1, "appInfo"

    .line 76
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainAppInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 77
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-string v2, "openUniMP"

    const/4 v6, 0x2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    aput-object v3, v6, v5

    aput-object v6, v1, v2

    .line 78
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_9e} :catch_9f

    goto :goto_a3

    :catch_9f
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a3
    :goto_a3
    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass1.C00581 (io.dcloud.feature.weex.extend.DCUniMPModule$1$1)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;
.super Ljava/lang/Object;
.source "DCUniMPModule.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$1;

.field final synthetic val$data:Ljava/util/Map;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$1;Ljava/util/Map;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$1;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 60
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->val$data:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    if-nez p1, :cond_26

    .line 62
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->val$data:Ljava/util/Map;

    const-string p2, "success"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$1;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_4c

    .line 64
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$1;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->val$data:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_4c

    .line 67
    :cond_26
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->val$data:Ljava/util/Map;

    const-string v1, "fail"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->val$data:Ljava/util/Map;

    if-eqz p2, :cond_36

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_38

    :cond_36
    const-string p2, "Unknown error"

    :goto_38
    const-string v0, "message"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$1;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_4c

    .line 70
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$1;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->val$data:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_4c
    :goto_4c
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass2 (io.dcloud.feature.weex.extend.DCUniMPModule$2)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$2;
.super Ljava/lang/Object;
.source "DCUniMPModule.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->installUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$data:Ljava/util/Map;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4

    .line 120
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$data:Ljava/util/Map;

    iput-object p3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-string v0, "type"

    const-string v1, "code"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_22

    .line 124
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$data:Ljava/util/Map;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$data:Ljava/util/Map;

    const-string p2, "success"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_4b

    .line 127
    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$data:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_4b

    .line 130
    :cond_22
    iget-object v2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$data:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$data:Ljava/util/Map;

    const-string v1, "fail"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$data:Ljava/util/Map;

    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3d

    :cond_3b
    const-string p2, "Unknown error"

    :goto_3d
    const-string v0, "message"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_4b

    .line 134
    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$data:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_4b
    :goto_4b
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass3 (io.dcloud.feature.weex.extend.DCUniMPModule$3)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$3;
.super Ljava/lang/Object;
.source "DCUniMPModule.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->getUniMPVersion(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$data:Ljava/util/Map;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4

    .line 177
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$data:Ljava/util/Map;

    iput-object p3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-string p1, "code"

    const-string v0, "type"

    if-nez p2, :cond_2a

    .line 181
    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$data:Ljava/util/Map;

    const-string v1, "fail"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$data:Ljava/util/Map;

    const/4 v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$data:Ljava/util/Map;

    const-string p2, "message"

    const-string v0, "The unimp resource does not exist"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_53

    .line 185
    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$data:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_53

    .line 188
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 189
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$data:Ljava/util/Map;

    const-string v2, "success"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$data:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$data:Ljava/util/Map;

    const-string v0, "versionInfo"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_53

    .line 193
    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$data:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_53
    :goto_53
    const/4 p1, 0x0

    return-object p1
.end method
