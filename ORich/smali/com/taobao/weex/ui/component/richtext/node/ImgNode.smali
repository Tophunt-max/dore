###### Class com.taobao.weex.ui.component.richtext.node.ImgNode (com.taobao.weex.ui.component.richtext.node.ImgNode)
.class Lcom/taobao/weex/ui/component/richtext/node/ImgNode;
.super Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
.source "ImgNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/richtext/node/ImgNode$ImgNodeCreator;
    }
.end annotation


# static fields
.field public static final NODE_TYPE:Ljava/lang/String; = "image"


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/richtext/node/ImgNode$1;)V
    .registers 5

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 64
    invoke-direct/range {p0 .. p6}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/ui/component/richtext/node/ImgNode$1;)V
    .registers 8

    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private createImgSpan(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/ui/component/richtext/span/ImgSpan;
    .registers 7

    .line 102
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->style:Ljava/util/Map;

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->style:Ljava/util/Map;

    goto :goto_f

    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->attr:Ljava/util/Map;

    :goto_f
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->style:Ljava/util/Map;

    const-string v2, "height"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->style:Ljava/util/Map;

    goto :goto_22

    :cond_20
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->attr:Ljava/util/Map;

    :goto_22
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 105
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    .line 104
    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    float-to-int v0, v0

    .line 106
    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v1

    .line 107
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    .line 106
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1

    float-to-int v1, v1

    .line 108
    new-instance v2, Lcom/taobao/weex/ui/component/richtext/span/ImgSpan;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->mInstanceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->mComponentRef:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/taobao/weex/ui/component/richtext/span/ImgSpan;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->attr:Ljava/util/Map;

    const-string v4, "src"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "image"

    invoke-virtual {p1, v3, v4}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "local"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 113
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/ImgURIUtil;->getDrawableFromLoaclSrc(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {v2, p1, v0}, Lcom/taobao/weex/ui/component/richtext/span/ImgSpan;->setDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_8a

    .line 116
    :cond_76
    new-instance v3, Lcom/taobao/weex/adapter/DrawableStrategy;

    invoke-direct {v3}, Lcom/taobao/weex/adapter/DrawableStrategy;-><init>()V

    .line 117
    iput v0, v3, Lcom/taobao/weex/adapter/DrawableStrategy;->width:I

    .line 118
    iput v1, v3, Lcom/taobao/weex/adapter/DrawableStrategy;->height:I

    .line 119
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2, v3}, Lcom/taobao/weex/adapter/IDrawableLoader;->setDrawable(Ljava/lang/String;Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;Lcom/taobao/weex/adapter/DrawableStrategy;)V

    :goto_8a
    return-object v2
.end method


# virtual methods
.method protected isInternalNode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "\ufeff"

    return-object v0
.end method

.method protected updateSpans(Landroid/text/SpannableStringBuilder;I)V
    .registers 9

    .line 79
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->style:Ljava/util/Map;

    const-string v2, "width"

    .line 81
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "height"

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->style:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    :cond_24
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->attr:Ljava/util/Map;

    .line 82
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->attr:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    :cond_34
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->attr:Ljava/util/Map;

    const-string v2, "src"

    .line 83
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    if-eqz v0, :cond_87

    .line 85
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 86
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->createImgSpan(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/ui/component/richtext/span/ImgSpan;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->attr:Ljava/util/Map;

    const-string v2, "pseudoRef"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 89
    new-instance v0, Lcom/taobao/weex/ui/component/richtext/span/ItemClickSpan;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->mInstanceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->mComponentRef:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->attr:Ljava/util/Map;

    .line 90
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Lcom/taobao/weex/ui/component/richtext/span/ItemClickSpan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_6c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-static {p2}, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;->createSpanFlag(I)I

    move-result v4

    .line 94
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_70

    :cond_87
    return-void
.end method

###### Class com.taobao.weex.ui.component.richtext.node.ImgNode.AnonymousClass1 (com.taobao.weex.ui.component.richtext.node.ImgNode$1)
.class synthetic Lcom/taobao/weex/ui/component/richtext/node/ImgNode$1;
.super Ljava/lang/Object;
.source "ImgNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/richtext/node/ImgNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.taobao.weex.ui.component.richtext.node.ImgNode.ImgNodeCreator (com.taobao.weex.ui.component.richtext.node.ImgNode$ImgNodeCreator)
.class Lcom/taobao/weex/ui/component/richtext/node/ImgNode$ImgNodeCreator;
.super Ljava/lang/Object;
.source "ImgNode.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/richtext/node/RichTextNodeCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/richtext/node/ImgNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImgNodeCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/ui/component/richtext/node/RichTextNodeCreator<",
        "Lcom/taobao/weex/ui/component/richtext/node/ImgNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/ImgNode;
    .registers 6

    .line 49
    new-instance v0, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/richtext/node/ImgNode$1;)V

    return-object v0
.end method

.method public createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/taobao/weex/ui/component/richtext/node/ImgNode;
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
            "Lcom/taobao/weex/ui/component/richtext/node/ImgNode;"
        }
    .end annotation

    .line 54
    new-instance v8, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/component/richtext/node/ImgNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/ui/component/richtext/node/ImgNode$1;)V

    return-object v8
.end method

.method public bridge synthetic createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
    .registers 4

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/richtext/node/ImgNode$ImgNodeCreator;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/ImgNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
    .registers 7

    .line 45
    invoke-virtual/range {p0 .. p6}, Lcom/taobao/weex/ui/component/richtext/node/ImgNode$ImgNodeCreator;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/taobao/weex/ui/component/richtext/node/ImgNode;

    move-result-object p1

    return-object p1
.end method
