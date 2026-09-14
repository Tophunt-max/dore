###### Class com.taobao.weex.ui.action.UpdateComponentDataAction (com.taobao.weex.ui.action.UpdateComponentDataAction)
.class public Lcom/taobao/weex/ui/action/UpdateComponentDataAction;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "UpdateComponentDataAction.java"


# instance fields
.field private callback:Ljava/lang/String;

.field private data:Lcom/alibaba/fastjson/JSONObject;

.field private virtualComponentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .registers 6

    .line 46
    invoke-static {p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->getListRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->virtualComponentId:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->data:Lcom/alibaba/fastjson/JSONObject;

    .line 49
    iput-object p4, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->callback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 6

    .line 54
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong virtualComponentId split error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->virtualComponentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_21
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    if-eqz v1, :cond_5e

    .line 60
    move-object v1, v0

    check-cast v1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 61
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getCellDataManager()Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->virtualComponentId:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->data:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2, v3, v4}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->updateVirtualComponentData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    .line 63
    new-instance v1, Lcom/taobao/weex/bridge/SimpleJSCallback;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->callback:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/taobao/weex/bridge/SimpleJSCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/SimpleJSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_74

    .line 66
    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recycler-list wrong virtualComponentId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->virtualComponentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_74
    return-void
.end method
