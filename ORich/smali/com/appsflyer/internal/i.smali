###### Class com.appsflyer.internal.i (com.appsflyer.internal.i)
.class final Lcom/appsflyer/internal/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/i$e;,
        Lcom/appsflyer/internal/i$d;,
        Lcom/appsflyer/internal/i$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static values(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 26
    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const/4 v1, 0x1

    .line 28
    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const/4 v2, 0x2

    .line 29
    invoke-virtual {p0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method


# virtual methods
.method final AFInAppEventType(Ljava/util/List;)Ljava/util/Map;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 154
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "sVS"

    .line 1130
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_26

    const/4 v5, 0x1

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    :goto_27
    const-string v8, "sVE"

    .line 1131
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_31

    const/4 v9, 0x1

    goto :goto_32

    :cond_31
    const/4 v9, 0x0

    :goto_32
    if-eqz v5, :cond_39

    if-eqz v9, :cond_39

    .line 1134
    sget-object v5, Lcom/appsflyer/internal/i$e;->valueOf:Lcom/appsflyer/internal/i$e;

    goto :goto_40

    :cond_39
    if-eqz v5, :cond_3e

    .line 1136
    sget-object v5, Lcom/appsflyer/internal/i$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/i$e;

    goto :goto_40

    .line 1139
    :cond_3e
    sget-object v5, Lcom/appsflyer/internal/i$e;->values:Lcom/appsflyer/internal/i$e;

    .line 157
    :goto_40
    sget-object v9, Lcom/appsflyer/internal/i$e;->values:Lcom/appsflyer/internal/i$e;

    const-string v10, "er"

    if-eq v5, v9, :cond_290

    const-string v9, "sT"

    .line 158
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    const-string v11, "sN"

    .line 159
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "n"

    if-eqz v11, :cond_5e

    .line 162
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_5e
    const-string v11, "uk"

    .line 164
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :goto_63
    invoke-static {}, Lcom/appsflyer/internal/i$d;->values()[Lcom/appsflyer/internal/i$d;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v12

    aget-object v11, v11, v12

    .line 2099
    new-instance v12, Ljava/util/ArrayList;

    .line 2100
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2099
    invoke-static {v4}, Lcom/appsflyer/internal/i;->values(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2102
    sget-object v4, Lcom/appsflyer/internal/i$e;->valueOf:Lcom/appsflyer/internal/i$e;

    if-ne v5, v4, :cond_89

    .line 2103
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/i;->values(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2106
    :cond_89
    sget-object v2, Lcom/appsflyer/internal/i$d;->AFInAppEventParameterName:Lcom/appsflyer/internal/i$d;

    const/4 v8, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x5

    const-string v15, "##.#"

    if-ne v11, v2, :cond_177

    .line 3046
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3047
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigDecimal;

    move-object v11, v5

    .line 3118
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 3119
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 3121
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    .line 3188
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3189
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 3190
    invoke-virtual {v5, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3191
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 3048
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3049
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 4188
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4189
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 4190
    invoke-virtual {v6, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4191
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 3049
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3050
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3051
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v14, :cond_16a

    .line 3052
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigDecimal;

    const/4 v7, 0x4

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    .line 5118
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    .line 5119
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 5121
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v13, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v6, v6, v13

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v6

    .line 3053
    invoke-virtual {v6, v4}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 5188
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 5189
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 5190
    invoke-virtual {v6, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5191
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 3052
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    .line 3054
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigDecimal;

    const/4 v6, 0x2

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigDecimal;

    invoke-virtual {v4, v6}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 6188
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6189
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 6190
    invoke-virtual {v6, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6191
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 3054
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3056
    :cond_16a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3057
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3058
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_271

    :cond_177
    move-object v11, v5

    .line 7071
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7072
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_202

    .line 7073
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigDecimal;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 7188
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 7189
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v5, v8}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 7190
    invoke-virtual {v5, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 7191
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 7073
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    .line 7074
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigDecimal;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 8188
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 8189
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v5, v8}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 8190
    invoke-virtual {v5, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8191
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 7074
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    .line 7075
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigDecimal;

    const/4 v5, 0x2

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/math/BigDecimal;

    invoke-virtual {v4, v8}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 9188
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 9189
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v5, v8}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 9190
    invoke-virtual {v5, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9191
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 7075
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7077
    :cond_202
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7078
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 10188
    new-instance v7, Ljava/text/DecimalFormat;

    invoke-direct {v7, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 10189
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v7, v8}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 10190
    invoke-virtual {v7, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 10191
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 7078
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7079
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 11188
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 11189
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 11190
    invoke-virtual {v6, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 11191
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 7079
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    .line 7080
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 12188
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 12189
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 12190
    invoke-virtual {v6, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 12191
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 7080
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7081
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7082
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7083
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v5

    :goto_271
    const-string v2, "v"

    .line 167
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Lcom/appsflyer/internal/i$a;->values()[Lcom/appsflyer/internal/i$a;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    .line 12232
    iget-object v2, v2, Lcom/appsflyer/internal/i$a;->valueOf:Ljava/lang/String;

    .line 169
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v2, Lcom/appsflyer/internal/i$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/i$e;

    if-ne v11, v2, :cond_9

    const-string v2, "no_svs"

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 171
    :cond_290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "na"

    .line 172
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29a
    return-object v0
.end method

###### Class com.appsflyer.internal.i.a (com.appsflyer.internal.i$a)
.class final enum Lcom/appsflyer/internal/i$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/i$a;",
        ">;"
    }
.end annotation


# static fields
.field private static enum AFInAppEventParameterName:Lcom/appsflyer/internal/i$a;

.field private static enum AFInAppEventType:Lcom/appsflyer/internal/i$a;

.field private static enum AFKeystoreWrapper:Lcom/appsflyer/internal/i$a;

.field private static final synthetic AFVersionDeclaration:[Lcom/appsflyer/internal/i$a;

.field private static enum init:Lcom/appsflyer/internal/i$a;

.field private static enum values:Lcom/appsflyer/internal/i$a;


# instance fields
.field valueOf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 223
    new-instance v0, Lcom/appsflyer/internal/i$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "uk"

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/i$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/i$a;

    new-instance v0, Lcom/appsflyer/internal/i$a;

    const-string v1, "ACCELEROMETER"

    const/4 v3, 0x1

    const-string v4, "am"

    invoke-direct {v0, v1, v3, v4}, Lcom/appsflyer/internal/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/i$a;->AFKeystoreWrapper:Lcom/appsflyer/internal/i$a;

    new-instance v0, Lcom/appsflyer/internal/i$a;

    const-string v1, "MAGNETOMETER"

    const/4 v4, 0x2

    const-string v5, "mm"

    invoke-direct {v0, v1, v4, v5}, Lcom/appsflyer/internal/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/i$a;->values:Lcom/appsflyer/internal/i$a;

    new-instance v0, Lcom/appsflyer/internal/i$a;

    const-string v1, "RESERVED"

    const/4 v5, 0x3

    const-string v6, "rs"

    invoke-direct {v0, v1, v5, v6}, Lcom/appsflyer/internal/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/i$a;->AFInAppEventType:Lcom/appsflyer/internal/i$a;

    new-instance v0, Lcom/appsflyer/internal/i$a;

    const-string v1, "GYROSCOPE"

    const/4 v6, 0x4

    const-string v7, "gs"

    invoke-direct {v0, v1, v6, v7}, Lcom/appsflyer/internal/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/i$a;->init:Lcom/appsflyer/internal/i$a;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/appsflyer/internal/i$a;

    .line 1222
    sget-object v7, Lcom/appsflyer/internal/i$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/i$a;

    aput-object v7, v1, v2

    sget-object v2, Lcom/appsflyer/internal/i$a;->AFKeystoreWrapper:Lcom/appsflyer/internal/i$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appsflyer/internal/i$a;->values:Lcom/appsflyer/internal/i$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsflyer/internal/i$a;->AFInAppEventType:Lcom/appsflyer/internal/i$a;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    .line 222
    sput-object v1, Lcom/appsflyer/internal/i$a;->AFVersionDeclaration:[Lcom/appsflyer/internal/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput-object p3, p0, Lcom/appsflyer/internal/i$a;->valueOf:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/i$a;
    .registers 2

    .line 222
    const-class v0, Lcom/appsflyer/internal/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/i$a;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/i$a;
    .registers 1

    .line 222
    sget-object v0, Lcom/appsflyer/internal/i$a;->AFVersionDeclaration:[Lcom/appsflyer/internal/i$a;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/i$a;

    return-object v0
.end method

###### Class com.appsflyer.internal.i.d (com.appsflyer.internal.i$d)
.class final enum Lcom/appsflyer/internal/i$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/i$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/i$d;

.field private static enum AFInAppEventType:Lcom/appsflyer/internal/i$d;

.field private static enum AFKeystoreWrapper:Lcom/appsflyer/internal/i$d;

.field private static final synthetic AFVersionDeclaration:[Lcom/appsflyer/internal/i$d;

.field private static enum valueOf:Lcom/appsflyer/internal/i$d;

.field private static enum values:Lcom/appsflyer/internal/i$d;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 206
    new-instance v0, Lcom/appsflyer/internal/i$d;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/i$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/i$d;->AFInAppEventType:Lcom/appsflyer/internal/i$d;

    new-instance v0, Lcom/appsflyer/internal/i$d;

    const-string v1, "ACCELEROMETER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsflyer/internal/i$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/i$d;->AFKeystoreWrapper:Lcom/appsflyer/internal/i$d;

    new-instance v0, Lcom/appsflyer/internal/i$d;

    const-string v1, "MAGNETOMETER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsflyer/internal/i$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/i$d;->AFInAppEventParameterName:Lcom/appsflyer/internal/i$d;

    new-instance v1, Lcom/appsflyer/internal/i$d;

    const-string v5, "RESERVED"

    const/4 v6, 0x3

    invoke-direct {v1, v5, v6}, Lcom/appsflyer/internal/i$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/i$d;->valueOf:Lcom/appsflyer/internal/i$d;

    new-instance v1, Lcom/appsflyer/internal/i$d;

    const-string v5, "GYROSCOPE"

    const/4 v7, 0x4

    invoke-direct {v1, v5, v7}, Lcom/appsflyer/internal/i$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/i$d;->values:Lcom/appsflyer/internal/i$d;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/appsflyer/internal/i$d;

    .line 1205
    sget-object v8, Lcom/appsflyer/internal/i$d;->AFInAppEventType:Lcom/appsflyer/internal/i$d;

    aput-object v8, v5, v2

    sget-object v2, Lcom/appsflyer/internal/i$d;->AFKeystoreWrapper:Lcom/appsflyer/internal/i$d;

    aput-object v2, v5, v3

    aput-object v0, v5, v4

    sget-object v0, Lcom/appsflyer/internal/i$d;->valueOf:Lcom/appsflyer/internal/i$d;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    .line 205
    sput-object v5, Lcom/appsflyer/internal/i$d;->AFVersionDeclaration:[Lcom/appsflyer/internal/i$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/i$d;
    .registers 2

    .line 205
    const-class v0, Lcom/appsflyer/internal/i$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/i$d;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/i$d;
    .registers 1

    .line 205
    sget-object v0, Lcom/appsflyer/internal/i$d;->AFVersionDeclaration:[Lcom/appsflyer/internal/i$d;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/i$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/i$d;

    return-object v0
.end method

###### Class com.appsflyer.internal.i.e (com.appsflyer.internal.i$e)
.class final enum Lcom/appsflyer/internal/i$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/i$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic AFInAppEventType:[Lcom/appsflyer/internal/i$e;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/i$e;

.field public static final enum valueOf:Lcom/appsflyer/internal/i$e;

.field public static final enum values:Lcom/appsflyer/internal/i$e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 199
    new-instance v0, Lcom/appsflyer/internal/i$e;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/i$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/i$e;->values:Lcom/appsflyer/internal/i$e;

    new-instance v1, Lcom/appsflyer/internal/i$e;

    const-string v3, "FIRST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/appsflyer/internal/i$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/i$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/i$e;

    new-instance v3, Lcom/appsflyer/internal/i$e;

    const-string v5, "ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/appsflyer/internal/i$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appsflyer/internal/i$e;->valueOf:Lcom/appsflyer/internal/i$e;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/appsflyer/internal/i$e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 198
    sput-object v5, Lcom/appsflyer/internal/i$e;->AFInAppEventType:[Lcom/appsflyer/internal/i$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/i$e;
    .registers 2

    .line 198
    const-class v0, Lcom/appsflyer/internal/i$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/i$e;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/i$e;
    .registers 1

    .line 198
    sget-object v0, Lcom/appsflyer/internal/i$e;->AFInAppEventType:[Lcom/appsflyer/internal/i$e;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/i$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/i$e;

    return-object v0
.end method
