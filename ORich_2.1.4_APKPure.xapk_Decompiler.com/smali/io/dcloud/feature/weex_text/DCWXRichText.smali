###### Class io.dcloud.feature.weex_text.DCWXRichText (io.dcloud.feature.weex_text.DCWXRichText)
.class public Lio/dcloud/feature/weex_text/DCWXRichText;
.super Lcom/taobao/weex/ui/component/WXText;
.source "DCWXRichText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex_text/DCWXRichText$Creator;,
        Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXText;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 28
    new-instance p1, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_text/DCWXRichText;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex_text/DCWXRichText;)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .registers 1

    .line 24
    iget-object p0, p0, Lio/dcloud/feature/weex_text/DCWXRichText;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex_text/DCWXRichText;)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .registers 1

    .line 24
    iget-object p0, p0, Lio/dcloud/feature/weex_text/DCWXRichText;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_text/DCWXRichText;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/component/richtext/WXRichTextView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/component/richtext/WXRichTextView;
    .registers 3

    .line 64
    new-instance v0, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXTextView;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_text/DCWXRichText;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/component/richtext/WXRichTextView;

    move-result-object p1

    return-object p1
.end method

.method public updateAttrs(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXText;->updateAttrs(Ljava/util/Map;)V

    const-string v0, "value"

    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 71
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/weex_text/DCWXRichText$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_text/DCWXRichText$1;-><init>(Lio/dcloud/feature/weex_text/DCWXRichText;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_17
    return-void
.end method

.method public updateExtra(Ljava/lang/Object;)V
    .registers 5

    .line 84
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXText;->updateExtra(Ljava/lang/Object;)V

    .line 85
    instance-of v0, p1, Landroid/text/Layout;

    if-eqz v0, :cond_29

    .line 86
    check-cast p1, Landroid/text/Layout;

    .line 88
    invoke-virtual {p0}, Lio/dcloud/feature/weex_text/DCWXRichText;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 89
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/feature/weex_text/DCWXRichText;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/weex_text/DCWXRichText;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_29
    return-void
.end method

###### Class io.dcloud.feature.weex_text.DCWXRichText.AnonymousClass1 (io.dcloud.feature.weex_text.DCWXRichText$1)
.class Lio/dcloud/feature/weex_text/DCWXRichText$1;
.super Ljava/lang/Object;
.source "DCWXRichText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_text/DCWXRichText;->updateAttrs(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_text/DCWXRichText;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_text/DCWXRichText;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lio/dcloud/feature/weex_text/DCWXRichText$1;->this$0:Lio/dcloud/feature/weex_text/DCWXRichText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 74
    iget-object v0, p0, Lio/dcloud/feature/weex_text/DCWXRichText$1;->this$0:Lio/dcloud/feature/weex_text/DCWXRichText;

    invoke-static {v0}, Lio/dcloud/feature/weex_text/DCWXRichText;->access$000(Lio/dcloud/feature/weex_text/DCWXRichText;)Lcom/taobao/weex/layout/ContentBoxMeasurement;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;

    if-eqz v0, :cond_15

    .line 75
    iget-object v0, p0, Lio/dcloud/feature/weex_text/DCWXRichText$1;->this$0:Lio/dcloud/feature/weex_text/DCWXRichText;

    invoke-static {v0}, Lio/dcloud/feature/weex_text/DCWXRichText;->access$100(Lio/dcloud/feature/weex_text/DCWXRichText;)Lcom/taobao/weex/layout/ContentBoxMeasurement;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;->forceRelayout()V

    :cond_15
    return-void
.end method

###### Class io.dcloud.feature.weex_text.DCWXRichText.Creator (io.dcloud.feature.weex_text.DCWXRichText$Creator)
.class public Lio/dcloud/feature/weex_text/DCWXRichText$Creator;
.super Ljava/lang/Object;
.source "DCWXRichText.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_text/DCWXRichText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 58
    new-instance v0, Lio/dcloud/feature/weex_text/DCWXRichText;

    invoke-direct {v0, p1, p2, p3}, Lio/dcloud/feature/weex_text/DCWXRichText;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method

###### Class io.dcloud.feature.weex_text.DCWXRichText.RichTextContentBoxMeasurement (io.dcloud.feature.weex_text.DCWXRichText$RichTextContentBoxMeasurement)
.class Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;
.super Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;
.source "DCWXRichText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_text/DCWXRichText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RichTextContentBoxMeasurement"
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method


# virtual methods
.method protected createSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 6

    .line 40
    iget-object v0, p0, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v3, p0, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    and-int/2addr v0, v1

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 41
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 42
    iget-object v0, p0, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 43
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 44
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 45
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {v0, v1, v3, p1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p1

    .line 47
    invoke-static {v2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->createSpanFlag(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;->updateSpannable(Landroid/text/Spannable;I)V

    return-object p1

    .line 50
    :cond_4c
    new-instance p1, Landroid/text/SpannedString;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method
