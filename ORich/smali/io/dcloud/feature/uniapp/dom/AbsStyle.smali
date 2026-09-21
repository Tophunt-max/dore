###### Class io.dcloud.feature.uniapp.dom.AbsStyle (io.dcloud.feature.uniapp.dom.AbsStyle)
.class public abstract Lio/dcloud/feature/uniapp/dom/AbsStyle;
.super Ljava/lang/Object;
.source "AbsStyle.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final UNSET:I = -0x1

.field private static final serialVersionUID:J = 0x87b2de63f392e16L


# instance fields
.field protected mBindingStyle:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mPesudoResetStyleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mPesudoStyleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    .line 65
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->processPesudoClasses(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;-><init>()V

    .line 70
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->putAll(Ljava/util/Map;Z)V

    return-void
.end method

.method private addBindingStyleIfStatement(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    .line 510
    invoke-static {p2}, Lcom/taobao/weex/dom/binding/ELUtils;->isBinding(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 511
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mBindingStyle:Landroidx/collection/ArrayMap;

    if-nez v0, :cond_11

    .line 512
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mBindingStyle:Landroidx/collection/ArrayMap;

    .line 514
    :cond_11
    invoke-static {p2}, Lcom/taobao/weex/dom/binding/ELUtils;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 515
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mBindingStyle:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public static getFontFamily(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_f

    const-string v0, "fontFamily"

    .line 168
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public static getFontSize(Ljava/util/Map;IF)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;IF)I"
        }
    .end annotation

    if-nez p0, :cond_9

    int-to-float p0, p1

    .line 155
    invoke-static {p0, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p0

    :goto_7
    float-to-int p0, p0

    return p0

    :cond_9
    const-string v0, "fontSize"

    .line 157
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_16

    goto :goto_17

    :cond_16
    move p1, p0

    :goto_17
    int-to-float p0, p1

    .line 161
    invoke-static {p0, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p0

    goto :goto_7
.end method

.method public static getFontStyle(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "fontStyle"

    .line 142
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_d

    return v0

    .line 146
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "italic"

    .line 147
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 v0, 0x2

    :cond_1a
    return v0
.end method

.method public static getFontWeight(Ljava/util/Map;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_55

    const-string v2, "fontWeight"

    .line 120
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_58

    goto :goto_52

    :sswitch_1c
    const-string v3, "bold"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_52

    :cond_25
    const/4 v2, 0x4

    goto :goto_52

    :sswitch_27
    const-string v3, "900"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto :goto_52

    :cond_30
    const/4 v2, 0x3

    goto :goto_52

    :sswitch_32
    const-string v3, "800"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_52

    :cond_3b
    const/4 v2, 0x2

    goto :goto_52

    :sswitch_3d
    const-string v3, "700"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto :goto_52

    :cond_46
    const/4 v2, 0x1

    goto :goto_52

    :sswitch_48
    const-string v3, "600"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    packed-switch v2, :pswitch_data_6e

    :cond_55
    const/4 v0, 0x0

    :pswitch_56
    return v0

    nop

    :sswitch_data_58
    .sparse-switch
        0xd0b6 -> :sswitch_48
        0xd477 -> :sswitch_3d
        0xd838 -> :sswitch_32
        0xdbf9 -> :sswitch_27
        0x2e3a85 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
    .end packed-switch
.end method

.method public static getLineHeight(Ljava/util/Map;F)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;F)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "lineHeight"

    .line 212
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_11

    return v0

    :cond_11
    int-to-float p0, p0

    .line 217
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getLines(Ljava/util/Map;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const-string v0, "lines"

    .line 205
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getTextAlignment(Ljava/util/Map;)Landroid/text/Layout$Alignment;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/text/Layout$Alignment;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    invoke-static {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getTextAlignment(Ljava/util/Map;Z)Landroid/text/Layout$Alignment;

    move-result-object p0

    return-object p0
.end method

.method public static getTextAlignment(Ljava/util/Map;Z)Landroid/text/Layout$Alignment;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroid/text/Layout$Alignment;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 181
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_7

    :cond_5
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_7
    const-string v0, "textAlign"

    .line 182
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "left"

    .line 183
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 184
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2f

    :cond_1a
    const-string v0, "center"

    .line 186
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 187
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_2f

    :cond_25
    const-string v0, "right"

    .line 189
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 190
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :cond_2f
    :goto_2f
    return-object p1
.end method

.method public static getTextColor(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const-string v1, "color"

    .line 113
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_12

    .line 114
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public static getTextDecoration(Ljava/util/Map;)Lcom/taobao/weex/ui/component/WXTextDecoration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/ui/component/WXTextDecoration;"
        }
    .end annotation

    if-eqz p0, :cond_4a

    const-string v0, "textDecoration"

    .line 87
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_4a

    .line 90
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4e

    goto :goto_3b

    :sswitch_1b
    const-string v1, "none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_3b

    :cond_24
    const/4 v0, 0x2

    goto :goto_3b

    :sswitch_26
    const-string v1, "underline"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_3b

    :cond_2f
    const/4 v0, 0x1

    goto :goto_3b

    :sswitch_31
    const-string v1, "line-through"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    packed-switch v0, :pswitch_data_5c

    .line 102
    sget-object p0, Lcom/taobao/weex/ui/component/WXTextDecoration;->INVALID:Lcom/taobao/weex/ui/component/WXTextDecoration;

    goto :goto_4c

    .line 99
    :pswitch_41
    sget-object p0, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    goto :goto_4c

    .line 93
    :pswitch_44
    sget-object p0, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    goto :goto_4c

    .line 96
    :pswitch_47
    sget-object p0, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    goto :goto_4c

    .line 88
    :cond_4a
    :goto_4a
    sget-object p0, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    :goto_4c
    return-object p0

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x45d81614 -> :sswitch_31
        -0x3d363934 -> :sswitch_26
        0x33af38 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_47
        :pswitch_44
        :pswitch_41
    .end packed-switch
.end method

.method public static getTextOverflow(Ljava/util/Map;)Landroid/text/TextUtils$TruncateAt;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/text/TextUtils$TruncateAt;"
        }
    .end annotation

    const-string v0, "textOverflow"

    .line 197
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "ellipsis"

    .line 198
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 199
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method private initPesudoMapsIfNeed(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoStyleMap:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 464
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoStyleMap:Ljava/util/Map;

    .line 466
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    if-nez v0, :cond_16

    .line 467
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    .line 469
    :cond_16
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 470
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_23
    return-void
.end method

.method private parseBindingStylesStatements(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_47

    .line 486
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_47

    .line 489
    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 490
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 491
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 492
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 493
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->addBindingStyleIfStatement(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 494
    iget-object v2, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoStyleMap:Ljava/util/Map;

    if-eqz v2, :cond_38

    .line 495
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_38
    iget-object v2, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    if-eqz v2, :cond_43

    .line 498
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_43
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_47
    :goto_47
    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 328
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public abstract clone()Lio/dcloud/feature/uniapp/dom/AbsStyle;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->clone()Lio/dcloud/feature/uniapp/dom/AbsStyle;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 333
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    .line 338
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 318
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 349
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .registers 2

    const-string v0, "backgroundColor"

    .line 290
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    goto :goto_f

    .line 291
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getBindingStyle()Landroidx/collection/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mBindingStyle:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public getBlur()Ljava/lang/String;
    .registers 3

    const-string v0, "filter"

    .line 75
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_a
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBorderColor()Ljava/lang/String;
    .registers 2

    const-string v0, "borderColor"

    .line 229
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    .line 230
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public getBorderRadius()F
    .registers 3

    const-string v0, "borderRadius"

    .line 221
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 222
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v0, 0x7fc00000    # Float.NaN

    :cond_12
    return v0
.end method

.method public getBorderStyle()Ljava/lang/String;
    .registers 2

    const-string v0, "borderStyle"

    .line 234
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    .line 235
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public getBottom()F
    .registers 3

    const-string v0, "bottom"

    .line 279
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 280
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v0, 0x7fc00000    # Float.NaN

    :cond_12
    return v0
.end method

.method public getLeft()F
    .registers 3

    const-string v0, "left"

    .line 255
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 256
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v0, 0x7fc00000    # Float.NaN

    :cond_12
    return v0
.end method

.method public getOpacity()F
    .registers 2

    const-string v0, "opacity"

    .line 303
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 308
    :cond_b
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getOverflow()Ljava/lang/String;
    .registers 2

    const-string v0, "overflow"

    .line 312
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "visible"

    goto :goto_f

    .line 313
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getPesudoResetStyles()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 396
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    .line 398
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPesudoStyles()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoStyleMap:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 403
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoStyleMap:Ljava/util/Map;

    .line 405
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoStyleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRight()F
    .registers 3

    const-string v0, "right"

    .line 263
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 264
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v0, 0x7fc00000    # Float.NaN

    :cond_12
    return v0
.end method

.method public getTimeFontSize(I)I
    .registers 3

    const-string v0, "timeFontSize"

    .line 295
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_d

    goto :goto_e

    :cond_d
    move p1, v0

    :goto_e
    return p1
.end method

.method public getTop()F
    .registers 3

    const-string v0, "top"

    .line 271
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 272
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v0, 0x7fc00000    # Float.NaN

    :cond_12
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 323
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 354
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFixed()Z
    .registers 3

    const-string v0, "position"

    .line 247
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 251
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSticky()Z
    .registers 3

    const-string v0, "position"

    .line 239
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 243
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sticky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public parseStatements()V
    .registers 2

    .line 477
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 478
    invoke-direct {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->parseBindingStylesStatements(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    :cond_a
    return-void
.end method

.method processPesudoClasses(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/String;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 410
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 412
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ":"

    .line 414
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    .line 415
    invoke-direct {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->initPesudoMapsIfNeed(Ljava/util/Map;)V

    .line 416
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":enabled"

    .line 417
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4f

    .line 419
    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3e

    .line 421
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 423
    :cond_3e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v4, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoResetStyleMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_4f
    const-string v7, ""

    .line 427
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 430
    iget-object v6, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoStyleMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_69

    .line 432
    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    .line 433
    iget-object v7, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mPesudoStyleMap:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_69
    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_75
    if-eqz v1, :cond_82

    .line 439
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_82

    .line 440
    iget-object p1, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_82
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 40
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 365
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->addBindingStyleIfStatement(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 368
    :cond_8
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public putAll(Ljava/util/Map;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;Z)V"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-nez p2, :cond_a

    .line 384
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->processPesudoClasses(Ljava/util/Map;)V

    :cond_a
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 446
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 451
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 531
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateStyle(Ljava/util/Map;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;Z)V"
        }
    .end annotation

    .line 389
    invoke-direct {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->parseBindingStylesStatements(Ljava/util/Map;)Ljava/util/Map;

    .line 390
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->putAll(Ljava/util/Map;Z)V

    return-void
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsStyle;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
