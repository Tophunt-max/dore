###### Class com.taobao.weex.bridge.RequestHandler (com.taobao.weex.bridge.RequestHandler)
.class public Lcom/taobao/weex/bridge/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/taobao/weex/bridge/RequestHandler;
    .registers 1

    .line 52
    new-instance v0, Lcom/taobao/weex/bridge/RequestHandler;

    invoke-direct {v0}, Lcom/taobao/weex/bridge/RequestHandler;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBundleType(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13

    .line 90
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getBundleType(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    move-result-object v0

    const-string v1, "Others"

    if-nez v0, :cond_10

    move-object v7, v1

    goto :goto_15

    .line 91
    :cond_10
    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 92
    :goto_15
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 93
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    if-eqz v0, :cond_44

    .line 94
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_NO_BUNDLE_TYPE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eagle ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_NO_BUNDLE_TYPE:Lcom/taobao/weex/common/WXErrorCode;

    .line 98
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "RequestHandler.onSuccess"

    .line 94
    invoke-static {p1, v0, v3, v1, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    :cond_44
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance v0, Lcom/taobao/weex/bridge/RequestHandler$1;

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p3

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/taobao/weex/bridge/RequestHandler$1;-><init>(Lcom/taobao/weex/bridge/RequestHandler;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method native nativeInvokeOnFailed(J)V
.end method

.method native nativeInvokeOnSuccess(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_98

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_98

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-eqz v2, :cond_98

    .line 59
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_98

    .line 64
    :cond_22
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-nez v4, :cond_31

    return-void

    .line 69
    :cond_31
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object p1

    .line 71
    new-instance v1, Lcom/taobao/weex/common/WXRequest;

    invoke-direct {v1}, Lcom/taobao/weex/common/WXRequest;-><init>()V

    .line 72
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    .line 73
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "bundle"

    invoke-interface {v0, v4, v3, v2}, Lcom/taobao/weex/adapter/URIAdapter;->rewrite(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    .line 76
    iget-object v0, v1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    if-nez v0, :cond_5d

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    .line 79
    :cond_5d
    iget-object v0, v1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    .line 81
    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/taobao/weex/http/WXHttpUtil;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "user-agent"

    .line 79
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, v1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    const-string v2, "isBundleRequest"

    const-string v3, "true"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v3, "Weex eagle is going to download script from %s"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Eagle"

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

    move-object v2, v0

    move-object v3, p0

    move-wide v5, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;-><init>(Lcom/taobao/weex/bridge/RequestHandler;Lcom/taobao/weex/WXSDKInstance;JLjava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/taobao/weex/adapter/IWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    :cond_98
    :goto_98
    return-void
.end method

###### Class com.taobao.weex.bridge.RequestHandler.AnonymousClass1 (com.taobao.weex.bridge.RequestHandler$1)
.class Lcom/taobao/weex/bridge/RequestHandler$1;
.super Ljava/lang/Object;
.source "RequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/RequestHandler;->getBundleType(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/RequestHandler;

.field final synthetic val$bundleTypeStr:Ljava/lang/String;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$nativeCallback:J


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/RequestHandler;JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 102
    iput-object p1, p0, Lcom/taobao/weex/bridge/RequestHandler$1;->this$0:Lcom/taobao/weex/bridge/RequestHandler;

    iput-wide p2, p0, Lcom/taobao/weex/bridge/RequestHandler$1;->val$nativeCallback:J

    iput-object p4, p0, Lcom/taobao/weex/bridge/RequestHandler$1;->val$content:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/RequestHandler$1;->val$bundleTypeStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 105
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 106
    iget-object v0, p0, Lcom/taobao/weex/bridge/RequestHandler$1;->this$0:Lcom/taobao/weex/bridge/RequestHandler;

    iget-wide v1, p0, Lcom/taobao/weex/bridge/RequestHandler$1;->val$nativeCallback:J

    iget-object v3, p0, Lcom/taobao/weex/bridge/RequestHandler$1;->val$content:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/bridge/RequestHandler$1;->val$bundleTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/RequestHandler;->nativeInvokeOnSuccess(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 108
    :cond_16
    iget-object v0, p0, Lcom/taobao/weex/bridge/RequestHandler$1;->this$0:Lcom/taobao/weex/bridge/RequestHandler;

    iget-wide v1, p0, Lcom/taobao/weex/bridge/RequestHandler$1;->val$nativeCallback:J

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/RequestHandler;->nativeInvokeOnFailed(J)V

    :goto_1d
    return-void
.end method

###### Class com.taobao.weex.bridge.RequestHandler.OnHttpListenerInner (com.taobao.weex.bridge.RequestHandler$OnHttpListenerInner)
.class Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;
.super Lcom/taobao/weex/WXHttpListener;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/bridge/RequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnHttpListenerInner"
.end annotation


# instance fields
.field private sNativeCallback:J

.field final synthetic this$0:Lcom/taobao/weex/bridge/RequestHandler;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/RequestHandler;Lcom/taobao/weex/WXSDKInstance;JLjava/lang/String;)V
    .registers 6

    .line 117
    iput-object p1, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->this$0:Lcom/taobao/weex/bridge/RequestHandler;

    .line 118
    invoke-direct {p0, p2, p5}, Lcom/taobao/weex/WXHttpListener;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 119
    iput-wide p3, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->sNativeCallback:J

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;)J
    .registers 3

    .line 114
    iget-wide v0, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->sNativeCallback:J

    return-wide v0
.end method


# virtual methods
.method public onFail(Lcom/taobao/weex/common/WXResponse;)V
    .registers 4

    .line 150
    iget-object p1, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->this$0:Lcom/taobao/weex/bridge/RequestHandler;

    iget-wide v0, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->sNativeCallback:J

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/bridge/RequestHandler;->nativeInvokeOnFailed(J)V

    return-void
.end method

.method public onSuccess(Lcom/taobao/weex/common/WXResponse;)V
    .registers 8

    .line 124
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 125
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->getBundleType(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    move-result-object p1

    const-string v1, "Others"

    if-nez p1, :cond_17

    move-object p1, v1

    goto :goto_1b

    .line 126
    :cond_17
    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    :goto_1b
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 129
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_NO_BUNDLE_TYPE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eagle ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_NO_BUNDLE_TYPE:Lcom/taobao/weex/common/WXErrorCode;

    .line 132
    invoke-virtual {v4}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "RequestHandler.onSuccess"

    .line 128
    invoke-static {v1, v2, v5, v3, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 136
    :cond_4e
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;-><init>(Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.RequestHandler.OnHttpListenerInner.AnonymousClass1 (com.taobao.weex.bridge.RequestHandler$OnHttpListenerInner$1)
.class Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;
.super Ljava/lang/Object;
.source "RequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->onSuccess(Lcom/taobao/weex/common/WXResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

.field final synthetic val$bundleTypeStr:Ljava/lang/String;

.field final synthetic val$script:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 136
    iput-object p1, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->this$1:Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

    iput-object p2, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->val$script:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->val$bundleTypeStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 139
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 140
    iget-object v0, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->this$1:Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

    iget-object v0, v0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->this$0:Lcom/taobao/weex/bridge/RequestHandler;

    iget-object v1, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->this$1:Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

    invoke-static {v1}, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->access$000(Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->val$script:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->val$bundleTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/RequestHandler;->nativeInvokeOnSuccess(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 142
    :cond_1c
    iget-object v0, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->this$1:Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

    iget-object v0, v0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->this$0:Lcom/taobao/weex/bridge/RequestHandler;

    iget-object v1, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->this$1:Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

    invoke-static {v1}, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->access$000(Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/RequestHandler;->nativeInvokeOnFailed(J)V

    :goto_29
    return-void
.end method
