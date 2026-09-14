###### Class com.taobao.weex.ui.component.richtext.node.SpanNode (com.taobao.weex.ui.component.richtext.node.SpanNode)
.class Lcom/taobao/weex/ui/component/richtext/node/SpanNode;
.super Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
.source "SpanNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/richtext/node/SpanNode$SpanNodeCreator;
    }
.end annotation


# static fields
.field public static final NODE_TYPE:Ljava/lang/String; = "span"


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/richtext/node/SpanNode$1;)V
    .registers 5

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/richtext/node/SpanNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/ui/component/richtext/node/SpanNode$1;)V
    .registers 8

    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/taobao/weex/ui/component/richtext/node/SpanNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected isInternalNode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/SpanNode;->attr:Ljava/util/Map;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/SpanNode;->attr:Ljava/util/Map;

    const-string v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1a

    .line 60
    :cond_f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/SpanNode;->attr:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    :goto_1a
    const-string v0, ""

    return-object v0
.end method

.method protected updateSpans(Landroid/text/SpannableStringBuilder;I)V
    .registers 6

    .line 71
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->updateSpans(Landroid/text/SpannableStringBuilder;I)V

    .line 72
    new-instance v0, Lcom/taobao/weex/dom/TextDecorationSpan;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/SpanNode;->style:Ljava/util/Map;

    invoke-static {v1}, Lcom/taobao/weex/dom/WXStyle;->getTextDecoration(Ljava/util/Map;)Lcom/taobao/weex/ui/component/WXTextDecoration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/dom/TextDecorationSpan;-><init>(Lcom/taobao/weex/ui/component/WXTextDecoration;)V

    .line 73
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {p2}, Lcom/taobao/weex/ui/component/richtext/node/SpanNode;->createSpanFlag(I)I

    move-result p2

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.richtext.node.SpanNode.AnonymousClass1 (com.taobao.weex.ui.component.richtext.node.SpanNode$1)
.class synthetic Lcom/taobao/weex/ui/component/richtext/node/SpanNode$1;
.super Ljava/lang/Object;
.source "SpanNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/richtext/node/SpanNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.taobao.weex.ui.component.richtext.node.SpanNode.SpanNodeCreator (com.taobao.weex.ui.component.richtext.node.SpanNode$SpanNodeCreator)
.class Lcom/taobao/weex/ui/component/richtext/node/SpanNode$SpanNodeCreator;
.super Ljava/lang/Object;
.source "SpanNode.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/richtext/node/RichTextNodeCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/richtext/node/SpanNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpanNodeCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/ui/component/richtext/node/RichTextNodeCreator<",
        "Lcom/taobao/weex/ui/component/richtext/node/SpanNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
    .registers 4

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/richtext/node/SpanNode$SpanNodeCreator;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/SpanNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
    .registers 7

    .line 32
    invoke-virtual/range {p0 .. p6}, Lcom/taobao/weex/ui/component/richtext/node/SpanNode$SpanNodeCreator;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/taobao/weex/ui/component/richtext/node/SpanNode;

    move-result-object p1

    return-object p1
.end method

.method public createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/SpanNode;
    .registers 6

    .line 36
    new-instance v0, Lcom/taobao/weex/ui/component/richtext/node/SpanNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/taobao/weex/ui/component/richtext/node/SpanNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/richtext/node/SpanNode$1;)V

    return-object v0
.end method

.method public createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/taobao/weex/ui/component/richtext/node/SpanNode;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/ui/component/richtext/node/SpanNode;"
        }
    .end annotation

    .line 42
    new-instance v8, Lcom/taobao/weex/ui/component/richtext/node/SpanNode;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/component/richtext/node/SpanNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/ui/component/richtext/node/SpanNode$1;)V

    return-object v8
.end method
