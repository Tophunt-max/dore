###### Class com.taobao.weex.ui.module.WXDomModule (com.taobao.weex.ui.module.WXDomModule)
.class public final Lcom/taobao/weex/ui/module/WXDomModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXDomModule.java"


# static fields
.field public static final ADD_RULE:Ljava/lang/String; = "addRule"

.field public static final BATCH_BEGIN:Ljava/lang/String; = "beginBatchMark"

.field public static final BATCH_END:Ljava/lang/String; = "endBatchMark"

.field public static final GET_COMPONENT_DIRECTION:Ljava/lang/String; = "getLayoutDirection"

.field public static final GET_COMPONENT_RECT:Ljava/lang/String; = "getComponentRect"

.field public static final INVOKE_METHOD:Ljava/lang/String; = "invokeMethod"

.field public static final METHODS:[Ljava/lang/String;

.field public static final SCROLL_TO_ELEMENT:Ljava/lang/String; = "scrollToElement"

.field public static final UPDATE_COMPONENT_DATA:Ljava/lang/String; = "updateComponentData"

.field public static final WXDOM:Ljava/lang/String; = "dom"


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "scrollToElement"

    const-string v1, "addRule"

    const-string v2, "getComponentRect"

    const-string v3, "invokeMethod"

    const-string v4, "getLayoutDirection"

    const-string v5, "beginBatchMark"

    const-string v6, "endBatchMark"

    .line 63
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/module/WXDomModule;->METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 66
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 68
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    return-void
.end method


# virtual methods
.method public varargs callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;
    .registers 10

    const/4 p3, 0x0

    if-nez p1, :cond_4

    return-object p3

    :cond_4
    const/4 v0, -0x1

    .line 87
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_160

    goto :goto_60

    :sswitch_11
    const-string v1, "getLayoutDirection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    const/4 v0, 0x0

    goto :goto_60

    :sswitch_1b
    const-string v1, "updateComponentData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    const/4 v0, 0x5

    goto :goto_60

    :sswitch_25
    const-string v1, "getComponentRect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    const/4 v0, 0x3

    goto :goto_60

    :sswitch_2f
    const-string v1, "beginBatchMark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    const/4 v0, 0x6

    goto :goto_60

    :sswitch_39
    const-string v1, "invokeMethod"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    const/4 v0, 0x4

    goto :goto_60

    :sswitch_43
    const-string v1, "scrollToElement"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    const/4 v0, 0x1

    goto :goto_60

    :sswitch_4d
    const-string v1, "addRule"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    const/4 v0, 0x2

    goto :goto_60

    :sswitch_57
    const-string v1, "endBatchMark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    const/4 v0, 0x7

    :cond_60
    :goto_60
    packed-switch v0, :pswitch_data_182

    const-string p1, "Unknown dom action."

    goto/16 :goto_14c

    .line 146
    :pswitch_67
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    if-lt p1, v5, :cond_72

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_73

    :cond_72
    move-object p1, p3

    .line 147
    :goto_73
    new-instance p2, Lcom/taobao/weex/ui/action/GraphicActionBatchEnd;

    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p2, v0, p1}, Lcom/taobao/weex/ui/action/GraphicActionBatchEnd;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/taobao/weex/ui/action/GraphicActionBatchEnd;->executeActionOnRender()V

    goto/16 :goto_15f

    :pswitch_7f
    if-nez p2, :cond_82

    return-object p3

    .line 141
    :cond_82
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    if-lt p1, v5, :cond_8d

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8e

    :cond_8d
    move-object p1, p3

    .line 142
    :goto_8e
    new-instance p2, Lcom/taobao/weex/ui/action/GraphicActionBatchBegin;

    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p2, v0, p1}, Lcom/taobao/weex/ui/action/GraphicActionBatchBegin;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/taobao/weex/ui/action/GraphicActionBatchBegin;->executeActionOnRender()V

    goto/16 :goto_15f

    :pswitch_9a
    if-eqz p2, :cond_bf

    .line 132
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    if-ge p1, v2, :cond_a3

    goto :goto_bf

    .line 135
    :cond_a3
    new-instance p1, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;

    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/dom/binding/JSONUtils;->toJSON(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->executeAction()V

    goto/16 :goto_15f

    :cond_bf
    :goto_bf
    return-object p3

    :pswitch_c0
    if-nez p2, :cond_c3

    return-object p3

    .line 127
    :cond_c3
    new-instance p1, Lcom/taobao/weex/ui/action/ActionInvokeMethod;

    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONArray(I)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/taobao/weex/ui/action/ActionInvokeMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    .line 128
    invoke-virtual {p1}, Lcom/taobao/weex/ui/action/ActionInvokeMethod;->executeAction()V

    goto/16 :goto_15f

    :pswitch_df
    if-nez p2, :cond_e2

    return-object p3

    .line 118
    :cond_e2
    new-instance p1, Lcom/taobao/weex/ui/action/ActionGetComponentRect;

    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->executeActionOnRender()V

    goto/16 :goto_15f

    :pswitch_f6
    if-nez p2, :cond_f9

    return-object p3

    .line 110
    :cond_f9
    new-instance p1, Lcom/taobao/weex/ui/action/ActionAddRule;

    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/taobao/weex/ui/action/ActionAddRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 111
    invoke-virtual {p1}, Lcom/taobao/weex/ui/action/ActionAddRule;->executeAction()V

    goto :goto_15f

    :pswitch_110
    if-nez p2, :cond_113

    return-object p3

    .line 100
    :cond_113
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    if-lt p1, v5, :cond_11e

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_11f

    :cond_11e
    move-object p1, p3

    .line 101
    :goto_11f
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lt v0, v3, :cond_12a

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    goto :goto_12b

    :cond_12a
    move-object p2, p3

    .line 102
    :goto_12b
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;

    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {v0, v1, p1, p2}, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 103
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;->executeActionOnRender()V

    goto :goto_15f

    :pswitch_136
    if-nez p2, :cond_139

    return-object p3

    .line 92
    :cond_139
    new-instance p1, Lcom/taobao/weex/ui/action/ActionGetLayoutDirection;

    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/taobao/weex/ui/action/ActionGetLayoutDirection;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/taobao/weex/ui/action/ActionGetLayoutDirection;->executeActionOnRender()V

    goto :goto_15f

    .line 151
    :goto_14c
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_14f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_14f} :catch_156
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_14f} :catch_150

    goto :goto_15f

    :catch_150
    const-string p1, "Dom module call arguments format error!!"

    .line 187
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_15f

    :catch_156
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    const-string p1, "Dom module call miss arguments."

    .line 185
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_15f
    return-object p3

    :sswitch_data_160
    .sparse-switch
        -0x52dd7d74 -> :sswitch_57
        -0x4476b4c3 -> :sswitch_4d
        -0x2ca0f84c -> :sswitch_43
        -0x273a3887 -> :sswitch_39
        -0x107a8582 -> :sswitch_2f
        0x2314e0cb -> :sswitch_25
        0x628bfffe -> :sswitch_1b
        0x6fcfed3f -> :sswitch_11
    .end sparse-switch

    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_136
        :pswitch_110
        :pswitch_f6
        :pswitch_df
        :pswitch_c0
        :pswitch_9a
        :pswitch_7f
        :pswitch_67
    .end packed-switch
.end method

.method public varargs callDomMethod(Lcom/alibaba/fastjson/JSONObject;[J)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "method"

    .line 75
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "args"

    .line 76
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    .line 77
    invoke-virtual {p0, v0, p1, p2}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    return-void
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .registers 6

    if-eqz p1, :cond_13

    if-nez p2, :cond_5

    goto :goto_13

    .line 197
    :cond_5
    new-instance v0, Lcom/taobao/weex/ui/action/ActionInvokeMethod;

    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXDomModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/taobao/weex/ui/action/ActionInvokeMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    .line 198
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/ActionInvokeMethod;->executeAction()V

    :cond_13
    :goto_13
    return-void
.end method
