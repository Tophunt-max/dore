###### Class com.taobao.weex.ui.component.list.template.CellDataManager (com.taobao.weex.ui.component.list.template.CellDataManager)
.class public Lcom/taobao/weex/ui/component/list/template/CellDataManager;
.super Ljava/lang/Object;
.source "CellDataManager.java"


# static fields
.field public static final SUB_COMPONENT_TEMPLATE_ID:Ljava/lang/String; = "@templateId"

.field public static final VIRTUAL_COMPONENT_ID:Ljava/lang/String; = "@virtualComponentId"

.field private static final VIRTUAL_COMPONENT_SEPRATOR:Ljava/lang/String; = "@"


# instance fields
.field listData:Lcom/alibaba/fastjson/JSONArray;

.field private renderStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/weex/ui/component/list/template/CellRenderState;",
            ">;"
        }
    .end annotation
.end field

.field public final templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

.field private virtualComponentRenderStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/template/CellRenderState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    return-void
.end method

.method private cleanRenderState(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 238
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasVirtualComponents()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 239
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getVirtualComponentIds()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 240
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    if-eqz v1, :cond_28

    .line 242
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_28
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 245
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string v4, "lifecycle"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "detach"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const/4 v4, 0x0

    aput-object v4, v3, v0

    const-string v0, "componentHook"

    .line 244
    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventVoidResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_4c
    return-void
.end method

.method public static createVirtualComponentId(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 5

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getListRef(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "@"

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method


# virtual methods
.method public createVirtualComponentData(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 125
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    .line 127
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .line 128
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getVirtualComponentDatas()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getRenderState(I)Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    if-nez v0, :cond_1e

    .line 83
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;-><init>()V

    .line 84
    iput p1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->position:I

    .line 85
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_1e
    iget v1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->position:I

    if-eq p1, v1, :cond_27

    .line 88
    iput p1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->position:I

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasPositionChange:Z

    :cond_27
    return-object v0
.end method

.method public insertData(ILjava/lang/Object;)Z
    .registers 6

    .line 163
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONArray;->add(ILjava/lang/Object;)V

    .line 165
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_c
    if-lt p2, p1, :cond_2b

    .line 166
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    if-eqz v1, :cond_28

    .line 168
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_28
    add-int/lit8 p2, p2, -0x1

    goto :goto_c

    :cond_2b
    return v0
.end method

.method public insertRange(ILcom/alibaba/fastjson/JSONArray;)Z
    .registers 7

    .line 182
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONArray;->addAll(ILjava/util/Collection;)Z

    .line 184
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    :goto_e
    if-lt p2, p1, :cond_2d

    .line 185
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    if-eqz v2, :cond_2a

    .line 187
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_2a
    add-int/lit8 p2, p2, -0x1

    goto :goto_e

    :cond_2d
    return v1
.end method

.method public removeData(Ljava/lang/Integer;)V
    .registers 6

    .line 220
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->cleanRenderState(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V

    .line 222
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_20
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_3e

    .line 224
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    if-eqz v1, :cond_3d

    .line 226
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    goto :goto_20

    :cond_3e
    return-void
.end method

.method public setListData(Lcom/alibaba/fastjson/JSONArray;)V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eq v0, p1, :cond_4a

    if-eqz v0, :cond_3c

    .line 143
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "exitDetach"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    .line 144
    :goto_22
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 145
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->cleanRenderState(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 149
    :cond_3c
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 150
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 151
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    if-eqz p1, :cond_4a

    .line 152
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_4a
    return-void
.end method

.method public updateData(Ljava/lang/Object;I)Z
    .registers 5

    .line 201
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p2, p1}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_27

    .line 205
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->cleanRenderState(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V

    goto :goto_38

    .line 207
    :cond_27
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    if-eqz p1, :cond_38

    const/4 p2, 0x1

    .line 209
    iput-boolean p2, p1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasDataUpdate:Z

    :cond_38
    :goto_38
    return v0
.end method

.method public updateVirtualComponentData(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    if-eqz v0, :cond_35

    .line 101
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    if-eqz v0, :cond_17

    .line 103
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getVirtualComponentDatas()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasVirtualCompoentUpdate:Z

    goto :goto_3b

    .line 106
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-nez p2, :cond_1e

    goto :goto_3b

    .line 107
    :cond_1e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "virtualComponentDatas illegal state empty render state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 111
    :cond_35
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-nez p2, :cond_3c

    :goto_3b
    return-void

    .line 112
    :cond_3c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "virtualComponentDatas illegal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
