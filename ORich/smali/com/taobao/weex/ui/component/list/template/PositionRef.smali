###### Class com.taobao.weex.ui.component.list.template.PositionRef (com.taobao.weex.ui.component.list.template.PositionRef)
.class public Lcom/taobao/weex/ui/component/list/template/PositionRef;
.super Ljava/lang/Number;
.source "PositionRef.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;


# instance fields
.field private renderState:Lcom/taobao/weex/ui/component/list/template/CellRenderState;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/PositionRef;->renderState:Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    return-void
.end method

.method private getPosition()I
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/PositionRef;->renderState:Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 60
    :cond_6
    iget v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->position:I

    return v0
.end method


# virtual methods
.method public doubleValue()D
    .registers 3

    .line 53
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;->getPosition()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;->getPosition()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public intValue()I
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;->getPosition()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 43
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;->getPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 2

    .line 70
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
