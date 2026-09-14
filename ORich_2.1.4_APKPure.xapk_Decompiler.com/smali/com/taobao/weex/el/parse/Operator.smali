###### Class com.taobao.weex.el.parse.Operator (com.taobao.weex.el.parse.Operator)
.class Lcom/taobao/weex/el/parse/Operator;
.super Lcom/taobao/weex/el/parse/Token;
.source "Operator.java"


# instance fields
.field public first:Lcom/taobao/weex/el/parse/Token;

.field public second:Lcom/taobao/weex/el/parse/Token;

.field public self:Lcom/taobao/weex/el/parse/Token;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 38
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Operator;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_20a

    goto/16 :goto_104

    :sswitch_13
    const-string v1, "==="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_104

    :cond_1d
    const/16 v4, 0x12

    goto/16 :goto_104

    :sswitch_21
    const-string v1, "!=="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto/16 :goto_104

    :cond_2b
    const/16 v4, 0x11

    goto/16 :goto_104

    :sswitch_2f
    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto/16 :goto_104

    :cond_39
    const/16 v4, 0x10

    goto/16 :goto_104

    :sswitch_3d
    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto/16 :goto_104

    :cond_47
    const/16 v4, 0xf

    goto/16 :goto_104

    :sswitch_4b
    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    goto/16 :goto_104

    :cond_55
    const/16 v4, 0xe

    goto/16 :goto_104

    :sswitch_59
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    goto/16 :goto_104

    :cond_63
    const/16 v4, 0xd

    goto/16 :goto_104

    :sswitch_67
    const-string v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    goto/16 :goto_104

    :cond_71
    const/16 v4, 0xc

    goto/16 :goto_104

    :sswitch_75
    const-string v1, "!="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    goto/16 :goto_104

    :cond_7f
    const/16 v4, 0xb

    goto/16 :goto_104

    :sswitch_83
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    goto/16 :goto_104

    :cond_8d
    const/16 v4, 0xa

    goto/16 :goto_104

    :sswitch_91
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    goto/16 :goto_104

    :cond_9b
    const/16 v4, 0x9

    goto/16 :goto_104

    :sswitch_9f
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    goto/16 :goto_104

    :cond_a9
    const/16 v4, 0x8

    goto/16 :goto_104

    :sswitch_ad
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    goto :goto_104

    :cond_b6
    const/4 v4, 0x7

    goto :goto_104

    :sswitch_b8
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    goto :goto_104

    :cond_c1
    const/4 v4, 0x6

    goto :goto_104

    :sswitch_c3
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    goto :goto_104

    :cond_cc
    const/4 v4, 0x5

    goto :goto_104

    :sswitch_ce
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d7

    goto :goto_104

    :cond_d7
    const/4 v4, 0x4

    goto :goto_104

    :sswitch_d9
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e2

    goto :goto_104

    :cond_e2
    const/4 v4, 0x3

    goto :goto_104

    :sswitch_e4
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    goto :goto_104

    :cond_ed
    const/4 v4, 0x2

    goto :goto_104

    :sswitch_ef
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f8

    goto :goto_104

    :cond_f8
    const/4 v4, 0x1

    goto :goto_104

    :sswitch_fa
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_103

    goto :goto_104

    :cond_103
    const/4 v4, 0x0

    :goto_104
    packed-switch v4, :pswitch_data_258

    .line 92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " operator is not supported"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :pswitch_11e
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12f

    :cond_12e
    const/4 v2, 0x1

    :cond_12f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_134
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v0

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v4, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v4

    cmpl-double p1, v0, v4

    if-ltz p1, :cond_145

    const/4 v2, 0x1

    :cond_145
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 46
    :pswitch_14a
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->isEquals(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 74
    :pswitch_157
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v0

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v4, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v4

    cmpg-double p1, v0, v4

    if-gtz p1, :cond_168

    const/4 v2, 0x1

    :cond_168
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_16d
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17e

    const/4 v2, 0x1

    :cond_17e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 50
    :pswitch_183
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->isEquals(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_191
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, v2, p1}, Lcom/taobao/weex/el/parse/Operators;->condition(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_19c
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v0

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v4, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v4

    cmpl-double p1, v0, v4

    if-lez p1, :cond_1ad

    const/4 v2, 0x1

    :cond_1ad
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 71
    :pswitch_1b2
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v0

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v4, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v4

    cmpg-double p1, v0, v4

    if-gez p1, :cond_1c3

    const/4 v2, 0x1

    :cond_1c3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 86
    :pswitch_1c8
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->div(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 42
    :pswitch_1d1
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->dot(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 80
    :pswitch_1da
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->sub(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 77
    :pswitch_1e3
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->plus(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_1ec
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->mul(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 89
    :pswitch_1f5
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->mod(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 56
    :pswitch_1fe
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_data_20a
    .sparse-switch
        0x21 -> :sswitch_fa
        0x25 -> :sswitch_ef
        0x2a -> :sswitch_e4
        0x2b -> :sswitch_d9
        0x2d -> :sswitch_ce
        0x2e -> :sswitch_c3
        0x2f -> :sswitch_b8
        0x3c -> :sswitch_ad
        0x3e -> :sswitch_9f
        0x3f -> :sswitch_91
        0x5b -> :sswitch_83
        0x43c -> :sswitch_75
        0x4c0 -> :sswitch_67
        0x781 -> :sswitch_59
        0x7a0 -> :sswitch_4b
        0x7bf -> :sswitch_3d
        0xf80 -> :sswitch_2f
        0x8381 -> :sswitch_21
        0xec9d -> :sswitch_13
    .end sparse-switch

    :pswitch_data_258
    .packed-switch 0x0
        :pswitch_1fe
        :pswitch_1f5
        :pswitch_1ec
        :pswitch_1e3
        :pswitch_1da
        :pswitch_1d1
        :pswitch_1c8
        :pswitch_1b2
        :pswitch_19c
        :pswitch_191
        :pswitch_1d1
        :pswitch_183
        :pswitch_16d
        :pswitch_157
        :pswitch_14a
        :pswitch_134
        :pswitch_11e
        :pswitch_183
        :pswitch_14a
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 98
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Operator;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "}"

    if-eqz v0, :cond_25

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_25
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    const-string v2, "{"

    if-nez v0, :cond_4c

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Operator;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Operator;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
