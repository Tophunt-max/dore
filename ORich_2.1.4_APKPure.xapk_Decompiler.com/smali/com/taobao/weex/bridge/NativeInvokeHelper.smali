###### Class com.taobao.weex.bridge.NativeInvokeHelper (com.taobao.weex.bridge.NativeInvokeHelper)
.class public Lcom/taobao/weex/bridge/NativeInvokeHelper;
.super Ljava/lang/Object;
.source "NativeInvokeHelper.java"


# instance fields
.field private mInstanceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper;->mInstanceId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/bridge/NativeInvokeHelper;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-interface {p2}, Lcom/taobao/weex/bridge/Invoker;->getParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v0, p3}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->prepareArguments([Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/JSONArray;)[Ljava/lang/Object;

    move-result-object p3

    .line 53
    invoke-static {}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isInteractionLogOpen()Z

    move-result v0

    if-eqz v0, :cond_6f

    instance-of v0, p2, Lcom/taobao/weex/bridge/MethodInvoker;

    if-eqz v0, :cond_6f

    const/4 v0, 0x0

    .line 54
    :goto_13
    array-length v1, p3

    if-ge v0, v1, :cond_6f

    .line 55
    aget-object v1, p3, v0

    instance-of v1, v1, Lcom/taobao/weex/bridge/SimpleJSCallback;

    if-eqz v1, :cond_6c

    .line 56
    aget-object v1, p3, v0

    check-cast v1, Lcom/taobao/weex/bridge/SimpleJSCallback;

    invoke-virtual {v1}, Lcom/taobao/weex/bridge/SimpleJSCallback;->getCallbackId()Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[client][callNativeModuleStart],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p2

    check-cast v4, Lcom/taobao/weex/bridge/MethodInvoker;

    iget-object v5, v4, Lcom/taobao/weex/bridge/MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/taobao/weex/bridge/MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wxInteractionAnalyzer"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    aget-object v0, p3, v0

    check-cast v0, Lcom/taobao/weex/bridge/SimpleJSCallback;

    new-instance v2, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;

    invoke-direct {v2, p0, p2, v1}, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;-><init>(Lcom/taobao/weex/bridge/NativeInvokeHelper;Lcom/taobao/weex/bridge/Invoker;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/taobao/weex/bridge/SimpleJSCallback;->setInvokerCallback(Lcom/taobao/weex/bridge/SimpleJSCallback$InvokerCallback;)V

    goto :goto_6f

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 69
    :cond_6f
    :goto_6f
    invoke-interface {p2}, Lcom/taobao/weex/bridge/Invoker;->isRunOnUIThread()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 70
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;-><init>(Lcom/taobao/weex/bridge/NativeInvokeHelper;Lcom/taobao/weex/bridge/Invoker;Ljava/lang/Object;[Ljava/lang/Object;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_85
    invoke-interface {p2, p1, p3}, Lcom/taobao/weex/bridge/Invoker;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected prepareArguments([Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/JSONArray;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 96
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_70

    .line 97
    aget-object v2, p1, v1

    .line 98
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-lt v1, v3, :cond_25

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x0

    .line 100
    aput-object v2, v0, v1

    goto :goto_65

    .line 103
    :cond_1d
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "[prepareArguments] method argument list not match."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_25
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 108
    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    if-ne v2, v4, :cond_46

    .line 109
    instance-of v2, v3, Lcom/alibaba/fastjson/JSONObject;

    if-nez v2, :cond_43

    if-nez v3, :cond_34

    goto :goto_43

    .line 111
    :cond_34
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_65

    .line 112
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_65

    .line 110
    :cond_43
    :goto_43
    aput-object v3, v0, v1

    goto :goto_65

    .line 114
    :cond_46
    const-class v4, Lcom/taobao/weex/bridge/JSCallback;

    if-eq v4, v2, :cond_56

    const-class v4, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    if-ne v4, v2, :cond_4f

    goto :goto_56

    .line 121
    :cond_4f
    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXReflectionUtils;->parseArgument(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_65

    .line 115
    :cond_56
    :goto_56
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_68

    .line 116
    new-instance v2, Lcom/taobao/weex/bridge/SimpleJSCallback;

    iget-object v4, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper;->mInstanceId:Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Lcom/taobao/weex/bridge/SimpleJSCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    :cond_65
    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 118
    :cond_68
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Parameter type not match."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_70
    return-object v0
.end method

###### Class com.taobao.weex.bridge.NativeInvokeHelper.AnonymousClass1 (com.taobao.weex.bridge.NativeInvokeHelper$1)
.class Lcom/taobao/weex/bridge/NativeInvokeHelper$1;
.super Ljava/lang/Object;
.source "NativeInvokeHelper.java"

# interfaces
.implements Lcom/taobao/weex/bridge/SimpleJSCallback$InvokerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/NativeInvokeHelper;

.field final synthetic val$callBackId:Ljava/lang/String;

.field final synthetic val$invoker:Lcom/taobao/weex/bridge/Invoker;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/NativeInvokeHelper;Lcom/taobao/weex/bridge/Invoker;Ljava/lang/String;)V
    .registers 4

    .line 58
    iput-object p1, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->this$0:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    iput-object p2, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$invoker:Lcom/taobao/weex/bridge/Invoker;

    iput-object p3, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$callBackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvokeSuccess()V
    .registers 4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[client][callNativeModuleEnd],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->this$0:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    invoke-static {v1}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->access$000(Lcom/taobao/weex/bridge/NativeInvokeHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$invoker:Lcom/taobao/weex/bridge/Invoker;

    check-cast v2, Lcom/taobao/weex/bridge/MethodInvoker;

    iget-object v2, v2, Lcom/taobao/weex/bridge/MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$invoker:Lcom/taobao/weex/bridge/Invoker;

    check-cast v2, Lcom/taobao/weex/bridge/MethodInvoker;

    iget-object v2, v2, Lcom/taobao/weex/bridge/MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$callBackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wxInteractionAnalyzer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

###### Class com.taobao.weex.bridge.NativeInvokeHelper.AnonymousClass2 (com.taobao.weex.bridge.NativeInvokeHelper$2)
.class Lcom/taobao/weex/bridge/NativeInvokeHelper$2;
.super Ljava/lang/Object;
.source "NativeInvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/NativeInvokeHelper;

.field final synthetic val$invoker:Lcom/taobao/weex/bridge/Invoker;

.field final synthetic val$params:[Ljava/lang/Object;

.field final synthetic val$target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/NativeInvokeHelper;Lcom/taobao/weex/bridge/Invoker;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 5

    .line 70
    iput-object p1, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;->this$0:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    iput-object p2, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;->val$invoker:Lcom/taobao/weex/bridge/Invoker;

    iput-object p3, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;->val$target:Ljava/lang/Object;

    iput-object p4, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;->val$params:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;->val$invoker:Lcom/taobao/weex/bridge/Invoker;

    if-eqz v0, :cond_50

    .line 75
    :try_start_4
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;->this$0:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    invoke-static {v1}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->access$000(Lcom/taobao/weex/bridge/NativeInvokeHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 76
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_25

    .line 79
    :cond_1b
    iget-object v0, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;->val$invoker:Lcom/taobao/weex/bridge/Invoker;

    iget-object v1, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;->val$target:Ljava/lang/Object;

    iget-object v2, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;->val$params:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/bridge/Invoker;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_26

    goto :goto_50

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;->val$target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Invoker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$2;->val$invoker:Lcom/taobao/weex/bridge/Invoker;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeInvokeHelper"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    :goto_50
    return-void
.end method
