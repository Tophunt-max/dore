###### Class com.taobao.weex.ui.component.richtext.WXRichTextView (com.taobao.weex.ui.component.richtext.WXRichTextView)
.class public Lcom/taobao/weex/ui/component/richtext/WXRichTextView;
.super Lcom/taobao/weex/ui/view/WXTextView;
.source "WXRichTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateSelection(Landroid/view/MotionEvent;Landroid/text/Spannable;)Z
    .registers 8

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    if-nez v0, :cond_5b

    .line 82
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 85
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 86
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;->getPaddingTop()I

    move-result v4

    sub-int/2addr p1, v4

    .line 88
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    .line 89
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;->getScrollY()I

    move-result v4

    add-int/2addr p1, v4

    .line 91
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v4

    .line 92
    invoke-virtual {v4, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    int-to-float v3, v3

    .line 93
    invoke-virtual {v4, p1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 95
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, p1, p1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 97
    array-length v3, p1

    if-eqz v3, :cond_58

    if-ne v0, v1, :cond_48

    .line 99
    aget-object p1, p1, v2

    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_57

    .line 101
    :cond_48
    aget-object v0, p1, v2

    .line 102
    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    aget-object p1, p1, v2

    .line 103
    invoke-interface {p2, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 101
    invoke-static {p2, v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :goto_57
    return v1

    .line 108
    :cond_58
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :cond_5b
    return v2
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 44
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_24

    .line 47
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 48
    invoke-direct {p0, p1, v1}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;->updateSelection(Landroid/view/MotionEvent;Landroid/text/Spannable;)Z

    move-result p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    if-nez p1, :cond_29

    if-eqz v0, :cond_2a

    :cond_29
    const/4 v2, 0x1

    :cond_2a
    return v2
.end method

.method public setTextLayout(Landroid/text/Layout;)V
    .registers 5

    .line 61
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->setTextLayout(Landroid/text/Layout;)V

    .line 62
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_2b

    .line 63
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/Spanned;

    .line 64
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Lcom/taobao/weex/ui/component/richtext/span/ImgSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/taobao/weex/ui/component/richtext/span/ImgSpan;

    if-eqz p1, :cond_2b

    .line 66
    array-length v0, p1

    :goto_21
    if-ge v2, v0, :cond_2b

    aget-object v1, p1, v2

    .line 67
    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/component/richtext/span/ImgSpan;->setView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_2b
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    .line 55
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    const/4 p1, 0x1

    return p1
.end method
