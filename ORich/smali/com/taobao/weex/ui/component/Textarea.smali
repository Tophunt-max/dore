###### Class com.taobao.weex.ui.component.Textarea (com.taobao.weex.ui.component.Textarea)
.class public Lcom/taobao/weex/ui/component/Textarea;
.super Lcom/taobao/weex/ui/component/AbstractEditComponent;
.source "Textarea.java"


# static fields
.field public static final DEFAULT_ROWS:I = 0x2


# instance fields
.field private mNumberOfLines:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/AbstractEditComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x2

    .line 36
    iput p1, p0, Lcom/taobao/weex/ui/component/Textarea;->mNumberOfLines:I

    return-void
.end method


# virtual methods
.method protected appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 5

    .line 50
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V

    .line 51
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/Textarea;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "rows"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 55
    :try_start_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1a} :catch_1c

    move v1, v0

    goto :goto_20

    :catch_1c
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 63
    :cond_20
    :goto_20
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setLines(I)V

    .line 64
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXEditText;->setMinLines(I)V

    return-void
.end method

.method protected getMeasureHeight()F
    .registers 3

    .line 96
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/Textarea;->getMeasuredLineHeight()F

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/Textarea;->mNumberOfLines:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method protected getVerticalGravity()I
    .registers 2

    const/16 v0, 0x30

    return v0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .registers 2

    .line 33
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/Textarea;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 3

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setAllowDisableMovement(Z)V

    .line 45
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "rows"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 81
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_10
    const/4 p1, 0x0

    .line 76
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/Textarea;->setRows(I)V

    :cond_1e
    const/4 p1, 0x1

    return p1
.end method

.method public setRows(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "rows"
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/Textarea;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    if-eqz v0, :cond_e

    if-gtz p1, :cond_b

    goto :goto_e

    .line 91
    :cond_b
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setLines(I)V

    :cond_e
    :goto_e
    return-void
.end method

.method protected updateStyleAndAttrs()V
    .registers 3

    .line 101
    invoke-super {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->updateStyleAndAttrs()V

    .line 102
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/Textarea;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "rows"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    .line 105
    :cond_10
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 106
    check-cast v0, Ljava/lang/String;

    .line 108
    :try_start_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_30

    .line 110
    iput v0, p0, Lcom/taobao/weex/ui/component/Textarea;->mNumberOfLines:I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_30

    :catch_1f
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_30

    .line 115
    :cond_24
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_30

    .line 116
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/Textarea;->mNumberOfLines:I

    :cond_30
    :goto_30
    return-void
.end method
