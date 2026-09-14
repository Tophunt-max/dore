###### Class com.taobao.weex.bridge.WXValidateProcessor (com.taobao.weex.bridge.WXValidateProcessor)
.class public interface abstract Lcom/taobao/weex/bridge/WXValidateProcessor;
.super Ljava/lang/Object;
.source "WXValidateProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;,
        Lcom/taobao/weex/bridge/WXValidateProcessor$WXComponentValidateResult;
    }
.end annotation


# virtual methods
.method public abstract needValidate(Ljava/lang/String;)Z
.end method

.method public abstract onComponentValidate(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/bridge/WXValidateProcessor$WXComponentValidateResult;
.end method

.method public abstract onModuleValidate(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;
.end method

###### Class com.taobao.weex.bridge.WXValidateProcessor.WXComponentValidateResult (com.taobao.weex.bridge.WXValidateProcessor$WXComponentValidateResult)
.class public Lcom/taobao/weex/bridge/WXValidateProcessor$WXComponentValidateResult;
.super Ljava/lang/Object;
.source "WXValidateProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/bridge/WXValidateProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WXComponentValidateResult"
.end annotation


# instance fields
.field public isSuccess:Z

.field public replacedComponent:Ljava/lang/String;

.field public validateInfo:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXValidateProcessor.WXModuleValidateResult (com.taobao.weex.bridge.WXValidateProcessor$WXModuleValidateResult)
.class public Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;
.super Ljava/lang/Object;
.source "WXValidateProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/bridge/WXValidateProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WXModuleValidateResult"
.end annotation


# instance fields
.field public isSuccess:Z

.field public validateInfo:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
