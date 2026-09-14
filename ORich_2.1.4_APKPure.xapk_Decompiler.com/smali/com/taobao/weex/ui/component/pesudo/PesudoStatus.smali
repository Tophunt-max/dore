###### Class com.taobao.weex.ui.component.pesudo.PesudoStatus (com.taobao.weex.ui.component.pesudo.PesudoStatus)
.class public Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;
.super Ljava/lang/Object;
.source "PesudoStatus.java"


# static fields
.field static final CLASS_ACTIVE:I = 0x0

.field static final CLASS_DISABLED:I = 0x3

.field static final CLASS_ENABLED:I = 0x2

.field static final CLASS_FOCUS:I = 0x1

.field private static final SET:I = 0x1

.field private static final UNSET:I


# instance fields
.field private mStatuses:[I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 37
    iput-object v0, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    :goto_a
    iget-object v2, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 49
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method


# virtual methods
.method public getStatuses()Ljava/lang/String;
    .registers 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, ":active"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const/4 v1, 0x3

    .line 88
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, ":disabled"

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const/4 v2, 0x1

    .line 93
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, ":focus"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_37

    const/4 v0, 0x0

    goto :goto_3b

    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    return-object v0
.end method

.method public isSet(I)Z
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method setStatus(IZ)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    aput p2, v0, p1

    return-void
.end method

.method public setStatus(Ljava/lang/String;Z)V
    .registers 9

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_50

    goto :goto_3b

    :sswitch_10
    const-string v0, ":focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_3b

    :cond_19
    const/4 v5, 0x3

    goto :goto_3b

    :sswitch_1b
    const-string v0, ":enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_3b

    :cond_24
    const/4 v5, 0x2

    goto :goto_3b

    :sswitch_26
    const-string v0, ":disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_3b

    :cond_2f
    const/4 v5, 0x1

    goto :goto_3b

    :sswitch_31
    const-string v0, ":active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v5, 0x0

    :goto_3b
    packed-switch v5, :pswitch_data_62

    goto :goto_4e

    .line 70
    :pswitch_3f
    invoke-virtual {p0, v3, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    goto :goto_4e

    .line 67
    :pswitch_43
    invoke-virtual {p0, v2, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    goto :goto_4e

    .line 64
    :pswitch_47
    invoke-virtual {p0, v1, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    goto :goto_4e

    .line 61
    :pswitch_4b
    invoke-virtual {p0, v4, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    :goto_4e
    return-void

    nop

    :sswitch_data_50
    .sparse-switch
        -0x58a71440 -> :sswitch_31
        -0x58589f4a -> :sswitch_26
        0x2913b5c7 -> :sswitch_1b
        0x68ca68de -> :sswitch_10
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
    .end packed-switch
.end method

.method public updateStatusAndGetUpdateStyles(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->getStatuses()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->getStatuses()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 108
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 113
    new-instance p3, Landroidx/collection/ArrayMap;

    invoke-direct {p3}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz p2, :cond_21

    .line 115
    invoke-interface {p3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 119
    :cond_21
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_42

    :cond_40
    const-string v1, ""

    :goto_42
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_46
    if-eqz p1, :cond_68

    .line 125
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_68
    return-object p3
.end method
