###### Class io.dcloud.feature.weex_text.DCTextContentBoxMeasurement (io.dcloud.feature.weex_text.DCTextContentBoxMeasurement)
.class public Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;
.super Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
.source "DCTextContentBoxMeasurement.java"


# instance fields
.field private decode:Z

.field private space:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    const-string p1, ""

    .line 22
    iput-object p1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->space:Ljava/lang/String;

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->decode:Z

    return-void
.end method


# virtual methods
.method protected createSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 5

    .line 43
    iget-object v0, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->space:Ljava/lang/String;

    if-eqz v0, :cond_35

    const-string v1, "ensp"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_1d

    const-string v0, "&ensp;"

    .line 45
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_35

    .line 47
    :cond_1d
    iget-object v0, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->space:Ljava/lang/String;

    const-string v2, "emsp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "&emsp;"

    .line 48
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    :cond_35
    :goto_35
    invoke-super {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method public layoutBefore()V
    .registers 4

    .line 31
    iget-object v0, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "space"

    .line 32
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->space:Ljava/lang/String;

    const-string v1, "decode"

    .line 33
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_21
    const-string v0, "false"

    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->decode:Z

    .line 34
    invoke-super {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layoutBefore()V

    return-void
.end method

.method protected updateSpannable(Landroid/text/Spannable;I)V
    .registers 11

    .line 56
    iget-object v0, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_a5

    .line 58
    :cond_e
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 59
    iget v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mFontSize:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_36

    .line 60
    iget-object v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_3e

    .line 63
    :cond_36
    iget-object v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 65
    :goto_3e
    iget v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mLineHeight:I

    if-eq v1, v7, :cond_51

    .line 66
    new-instance v3, Lcom/taobao/weex/dom/WXLineHeightSpan;

    iget v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mLineHeight:I

    invoke-direct {v3, v1}, Lcom/taobao/weex/dom/WXLineHeightSpan;-><init>(I)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 69
    :cond_51
    new-instance v3, Landroid/text/style/AlignmentSpan$Standard;

    iget-object v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-direct {v3, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 71
    iget v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mFontStyle:I

    if-ne v1, v7, :cond_6c

    iget v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mFontWeight:I

    if-ne v1, v7, :cond_6c

    iget-object v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    if-eqz v1, :cond_7f

    .line 72
    :cond_6c
    new-instance v3, Lcom/taobao/weex/dom/WXCustomStyleSpan;

    iget v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mFontStyle:I

    iget v2, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mFontWeight:I

    iget-object v4, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    invoke-direct {v3, v1, v2, v4}, Lcom/taobao/weex/dom/WXCustomStyleSpan;-><init>(IILjava/lang/String;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 74
    :cond_7f
    iget-boolean v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mIsColorSet:Z

    if-eqz v1, :cond_8a

    .line 75
    iget-object v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 77
    :cond_8a
    iget-object v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object v2, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-eq v1, v2, :cond_96

    iget-object v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object v2, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-ne v1, v2, :cond_a5

    .line 78
    :cond_96
    new-instance v3, Lcom/taobao/weex/dom/TextDecorationSpan;

    iget-object v1, p0, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-direct {v3, v1}, Lcom/taobao/weex/dom/TextDecorationSpan;-><init>(Lcom/taobao/weex/ui/component/WXTextDecoration;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/weex_text/DCTextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_a5
    :goto_a5
    return-void
.end method
