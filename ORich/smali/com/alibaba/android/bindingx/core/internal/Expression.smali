###### Class com.alibaba.android.bindingx.core.internal.Expression (com.alibaba.android.bindingx.core.internal.Expression)
.class Lcom/alibaba/android/bindingx/core/internal/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# instance fields
.field private root:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_3
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/Expression;->root:Lorg/json/JSONObject;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    goto :goto_17

    :catchall_11
    move-exception p1

    const-string v0, "[Expression] expression is illegal. \n "

    .line 40
    invoke-static {v0, p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/Expression;->root:Lorg/json/JSONObject;

    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    .line 77
    instance-of v0, p1, Lcom/alibaba/android/bindingx/core/internal/JSObjectInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    instance-of v0, p2, Lcom/alibaba/android/bindingx/core/internal/JSObjectInterface;

    if-eqz v0, :cond_f

    if-ne p1, p2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1

    .line 80
    :cond_f
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1c

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 83
    :cond_1c
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_31

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_31

    .line 85
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toBoolean(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-ne p1, p2, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1

    .line 86
    :cond_31
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-direct {p0, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    cmpl-double v0, v3, p1

    if-nez v0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    return v1
.end method

.method private execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "type"

    .line 110
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "children"

    .line 111
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_3a8

    goto/16 :goto_145

    :sswitch_1c
    const-string v3, "BooleanLiteral"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_145

    :cond_26
    const/16 v7, 0x16

    goto/16 :goto_145

    :sswitch_2a
    const-string v3, "StringLiteral"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_145

    :cond_34
    const/16 v7, 0x15

    goto/16 :goto_145

    :sswitch_38
    const-string v3, "Identifier"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_145

    :cond_42
    const/16 v7, 0x14

    goto/16 :goto_145

    :sswitch_46
    const-string v3, "NumericLiteral"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_145

    :cond_50
    const/16 v7, 0x13

    goto/16 :goto_145

    :sswitch_54
    const-string v3, "==="

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_145

    :cond_5e
    const/16 v7, 0x12

    goto/16 :goto_145

    :sswitch_62
    const-string v3, "!=="

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_145

    :cond_6c
    const/16 v7, 0x11

    goto/16 :goto_145

    :sswitch_70
    const-string v3, "||"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_145

    :cond_7a
    const/16 v7, 0x10

    goto/16 :goto_145

    :sswitch_7e
    const-string v3, ">="

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_145

    :cond_88
    const/16 v7, 0xf

    goto/16 :goto_145

    :sswitch_8c
    const-string v3, "=="

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_145

    :cond_96
    const/16 v7, 0xe

    goto/16 :goto_145

    :sswitch_9a
    const-string v3, "<="

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto/16 :goto_145

    :cond_a4
    const/16 v7, 0xd

    goto/16 :goto_145

    :sswitch_a8
    const-string v3, "**"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto/16 :goto_145

    :cond_b2
    const/16 v7, 0xc

    goto/16 :goto_145

    :sswitch_b6
    const-string v3, "&&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto/16 :goto_145

    :cond_c0
    const/16 v7, 0xb

    goto/16 :goto_145

    :sswitch_c4
    const-string v3, "!="

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    goto/16 :goto_145

    :cond_ce
    const/16 v7, 0xa

    goto/16 :goto_145

    :sswitch_d2
    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    goto/16 :goto_145

    :cond_dc
    const/16 v7, 0x9

    goto/16 :goto_145

    :sswitch_e0
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    goto/16 :goto_145

    :cond_ea
    const/16 v7, 0x8

    goto/16 :goto_145

    :sswitch_ee
    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f7

    goto :goto_145

    :cond_f7
    const/4 v7, 0x7

    goto :goto_145

    :sswitch_f9
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_102

    goto :goto_145

    :cond_102
    const/4 v7, 0x6

    goto :goto_145

    :sswitch_104
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10d

    goto :goto_145

    :cond_10d
    const/4 v7, 0x5

    goto :goto_145

    :sswitch_10f
    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_118

    goto :goto_145

    :cond_118
    const/4 v7, 0x4

    goto :goto_145

    :sswitch_11a
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_123

    goto :goto_145

    :cond_123
    const/4 v7, 0x3

    goto :goto_145

    :sswitch_125
    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    goto :goto_145

    :cond_12e
    const/4 v7, 0x2

    goto :goto_145

    :sswitch_130
    const-string v3, "!"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_139

    goto :goto_145

    :cond_139
    const/4 v7, 0x1

    goto :goto_145

    :sswitch_13b
    const-string v3, "CallExpression"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_144

    goto :goto_145

    :cond_144
    const/4 v7, 0x0

    :goto_145
    const-string v0, "value"

    packed-switch v7, :pswitch_data_406

    const/4 p1, 0x0

    return-object p1

    .line 118
    :pswitch_14c
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 114
    :pswitch_155
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 120
    :pswitch_15a
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 116
    :pswitch_163
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 160
    :pswitch_16c
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->strictlyEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 164
    :pswitch_185
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->strictlyEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 173
    :pswitch_19f
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 174
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    return-object p1

    .line 176
    :cond_1ae
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 153
    :pswitch_1b7
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    cmpl-double v2, v0, p1

    if-ltz v2, :cond_1d4

    const/4 v5, 0x1

    :cond_1d4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 158
    :pswitch_1d9
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 155
    :pswitch_1f2
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_20f

    const/4 v5, 0x1

    :cond_20f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 146
    :pswitch_214
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 168
    :pswitch_235
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 169
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_244

    return-object p1

    .line 171
    :cond_244
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 162
    :pswitch_24d
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 130
    :pswitch_267
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_280

    .line 131
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 133
    :cond_280
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 149
    :pswitch_289
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    cmpl-double v2, v0, p1

    if-lez v2, :cond_2a6

    const/4 v5, 0x1

    :cond_2a6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 151
    :pswitch_2ab
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    cmpg-double v2, v0, p1

    if-gez v2, :cond_2c8

    const/4 v5, 0x1

    :cond_2c8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 142
    :pswitch_2cd
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 138
    :pswitch_2eb
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 136
    :pswitch_309
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 140
    :pswitch_327
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 144
    :pswitch_346
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    rem-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 178
    :pswitch_364
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toBoolean(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 122
    :pswitch_376
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 125
    :goto_38d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v5, v2, :cond_3a1

    .line 126
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    :try_start_397
    invoke-direct {p0, v2, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2
    :try_end_39b
    .catchall {:try_start_397 .. :try_end_39b} :catchall_3a6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_38d

    .line 127
    :cond_3a1
    invoke-interface {p1, v0}, Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;->execute(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_3a6
    move-exception p1

    .line 126
    throw p1

    :sswitch_data_3a8
    .sparse-switch
        -0x6814284a -> :sswitch_13b
        0x21 -> :sswitch_130
        0x25 -> :sswitch_125
        0x2a -> :sswitch_11a
        0x2b -> :sswitch_10f
        0x2d -> :sswitch_104
        0x2f -> :sswitch_f9
        0x3c -> :sswitch_ee
        0x3e -> :sswitch_e0
        0x3f -> :sswitch_d2
        0x43c -> :sswitch_c4
        0x4c0 -> :sswitch_b6
        0x540 -> :sswitch_a8
        0x781 -> :sswitch_9a
        0x7a0 -> :sswitch_8c
        0x7bf -> :sswitch_7e
        0xf80 -> :sswitch_70
        0x8381 -> :sswitch_62
        0xec9d -> :sswitch_54
        0xb465102 -> :sswitch_46
        0x165a88c9 -> :sswitch_38
        0x400a833e -> :sswitch_2a
        0x6c419b87 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_406
    .packed-switch 0x0
        :pswitch_376
        :pswitch_364
        :pswitch_346
        :pswitch_327
        :pswitch_309
        :pswitch_2eb
        :pswitch_2cd
        :pswitch_2ab
        :pswitch_289
        :pswitch_267
        :pswitch_24d
        :pswitch_235
        :pswitch_214
        :pswitch_1f2
        :pswitch_1d9
        :pswitch_1b7
        :pswitch_19f
        :pswitch_185
        :pswitch_16c
        :pswitch_163
        :pswitch_15a
        :pswitch_155
        :pswitch_14c
    .end packed-switch
.end method

.method private strictlyEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 90
    instance-of v0, p1, Lcom/alibaba/android/bindingx/core/internal/JSObjectInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    instance-of v0, p2, Lcom/alibaba/android/bindingx/core/internal/JSObjectInterface;

    if-nez v0, :cond_a

    return v1

    .line 94
    :cond_a
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_13

    return v1

    .line 98
    :cond_13
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1c

    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_1c

    return v1

    .line 102
    :cond_1c
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_25

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_25

    return v1

    :cond_25
    if-ne p1, p2, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method private toBoolean(Ljava/lang/Object;)Z
    .registers 6

    .line 61
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, ""

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 63
    :cond_b
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1f

    .line 64
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return p1

    .line 65
    :cond_1f
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private toNumber(Ljava/lang/Object;)D
    .registers 4

    .line 53
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 54
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 55
    :cond_b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1d

    .line 56
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1a

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_1c

    :cond_1a
    const-wide/16 v0, 0x0

    :goto_1c
    return-wide v0

    .line 57
    :cond_1d
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 69
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    .line 70
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "true"

    goto :goto_11

    :cond_f
    const-string p1, "false"

    :goto_11
    return-object p1

    .line 71
    :cond_12
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_21

    .line 72
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :cond_21
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method execute(Ljava/util/Map;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/Expression;->root:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
