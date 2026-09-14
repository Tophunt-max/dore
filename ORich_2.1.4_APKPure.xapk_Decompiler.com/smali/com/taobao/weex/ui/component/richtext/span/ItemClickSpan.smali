###### Class com.taobao.weex.ui.component.richtext.span.ItemClickSpan (com.taobao.weex.ui.component.richtext.span.ItemClickSpan)
.class public Lcom/taobao/weex/ui/component/richtext/span/ItemClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "ItemClickSpan.java"


# instance fields
.field private final mComponentRef:Ljava/lang/String;

.field private final mInstanceId:Ljava/lang/String;

.field private final mPseudoRef:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 37
    iput-object p3, p0, Lcom/taobao/weex/ui/component/richtext/span/ItemClickSpan;->mPseudoRef:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/span/ItemClickSpan;->mInstanceId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/taobao/weex/ui/component/richtext/span/ItemClickSpan;->mComponentRef:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 44
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/span/ItemClickSpan;->mInstanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 45
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    .line 46
    invoke-static {v0}, Lcom/taobao/weex/utils/WXDataStructureUtil;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/span/ItemClickSpan;->mPseudoRef:Ljava/lang/String;

    const-string v2, "pseudoRef"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/span/ItemClickSpan;->mComponentRef:Ljava/lang/String;

    const-string v2, "itemclick"

    invoke-virtual {p1, v1, v2, v0}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_25
    return-void
.end method
