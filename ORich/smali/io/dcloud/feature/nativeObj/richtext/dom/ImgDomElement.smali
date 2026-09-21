###### Class io.dcloud.feature.nativeObj.richtext.dom.ImgDomElement (io.dcloud.feature.nativeObj.richtext.dom.ImgDomElement)
.class public Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;
.super Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;
    }
.end annotation


# instance fields
.field public height:Ljava/lang/String;

.field public href:Ljava/lang/String;

.field mAsycLoader:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;

.field public src:Ljava/lang/String;

.field public width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getSrc()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->src:Ljava/lang/String;

    return-object v0
.end method

.method public makeSpan(Lio/dcloud/feature/nativeObj/richtext/IAssets;Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    .line 1
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;->style:Ljava/util/HashMap;

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    const-string v3, "width"

    .line 2
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 3
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;->style:Ljava/util/HashMap;

    const-string v5, "height"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto :goto_23

    :cond_22
    move-object v2, v3

    .line 5
    :goto_23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v3, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->height:Ljava/lang/String;

    .line 6
    :cond_2b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    iget-object v2, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->width:Ljava/lang/String;

    :cond_33
    const/high16 v5, -0x40000000    # -2.0f

    .line 7
    invoke-interface {v1, v2, v5}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->convertWidth(Ljava/lang/String;F)F

    move-result v2

    float-to-int v7, v2

    .line 8
    invoke-interface {v1, v3, v5}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->convertHeight(Ljava/lang/String;F)F

    move-result v2

    float-to-int v8, v2

    .line 10
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->src:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 12
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10800a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v10, v3

    goto :goto_64

    .line 14
    :cond_54
    iget-object v3, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->src:Ljava/lang/String;

    invoke-interface {v1, v3}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->convert2InputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 15
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 16
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v10, v5

    :goto_64
    if-lez v7, :cond_68

    move v3, v7

    goto :goto_6c

    .line 20
    :cond_68
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    :goto_6c
    if-lez v8, :cond_70

    move v5, v8

    goto :goto_74

    :cond_70
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    :goto_74
    const/4 v6, 0x0

    invoke-virtual {v10, v6, v6, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    new-instance v5, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

    iget-object v11, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->src:Ljava/lang/String;

    iget-object v13, v0, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;->onClickEvent:Ljava/lang/String;

    iget-object v14, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->href:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v9, v5

    invoke-direct/range {v9 .. v14}, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "\ufffc"

    .line 23
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    invoke-virtual/range {p3 .. p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual/range {p3 .. p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v9, 0x11

    invoke-virtual {v4, v5, v3, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz v2, :cond_ac

    .line 26
    new-instance v10, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;

    iget-object v6, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->src:Ljava/lang/String;

    iget-object v9, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->href:Ljava/lang/String;

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v9}, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;-><init>(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v1, v10}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->loadResource(Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;)V

    :cond_ac
    return-void
.end method

.method public parseDomElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/feature/nativeObj/richtext/dom/DomElement;->parseDomElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "src"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->src:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "width"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->width:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->height:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "href"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;->href:Ljava/lang/String;

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.richtext.dom.ImgDomElement.AsycLoader (io.dcloud.feature.nativeObj.richtext.dom.ImgDomElement$AsycLoader)
.class public Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsycLoader"
.end annotation


# instance fields
.field public height:I

.field href:Ljava/lang/String;

.field public self:Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

.field public spaned:Landroid/text/SpannableStringBuilder;

.field public textView:Landroid/widget/TextView;

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;Ljava/lang/String;IILjava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->href:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->textView:Landroid/widget/TextView;

    .line 5
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->spaned:Landroid/text/SpannableStringBuilder;

    .line 6
    iput-object p3, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->self:Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

    .line 7
    iput-object p4, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->url:Ljava/lang/String;

    .line 8
    iput p5, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->width:I

    .line 9
    iput p6, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->height:I

    .line 10
    iput-object p7, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->href:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->spaned:Landroid/text/SpannableStringBuilder;

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->self:Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

    .line 3
    invoke-virtual {v1}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_80

    .line 5
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after w="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->width:I

    if-lez v5, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    :goto_22
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";h="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->height:I

    if-lez v5, :cond_2f

    goto :goto_33

    :cond_2f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    :goto_33
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "DnetImg"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v2, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->width:I

    if-lez v2, :cond_44

    goto :goto_48

    :cond_44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_48
    iget v5, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->height:I

    if-lez v5, :cond_4d

    goto :goto_51

    :cond_4d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    :goto_51
    const/4 p1, 0x0

    invoke-virtual {v3, p1, p1, v2, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 8
    new-instance p1, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

    invoke-virtual {v1}, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;->getOnClickEvent()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->href:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 10
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ltz v2, :cond_80

    if-ltz v3, :cond_80

    .line 12
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 13
    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 14
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->textView:Landroid/widget/TextView;

    new-instance v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader$1;-><init>(Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_80
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.richtext.dom.ImgDomElement.AsycLoader.AnonymousClass1 (io.dcloud.feature.nativeObj.richtext.dom.ImgDomElement$AsycLoader$1)
.class Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->onComplete(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader$1;->this$0:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader$1;->this$0:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;

    iget-object v1, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->textView:Landroid/widget/TextView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->spaned:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader$1;->this$0:Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/richtext/dom/ImgDomElement$AsycLoader;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method
