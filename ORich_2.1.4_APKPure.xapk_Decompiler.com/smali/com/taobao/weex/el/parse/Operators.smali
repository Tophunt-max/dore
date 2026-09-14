###### Class com.taobao.weex.el.parse.Operators (com.taobao.weex.el.parse.Operators)
.class public Lcom/taobao/weex/el/parse/Operators;
.super Ljava/lang/Object;
.source "Operators.java"


# static fields
.field public static final AND:Ljava/lang/String; = "&&"

.field public static final AND_NOT:Ljava/lang/String; = "!"

.field public static final ARRAY_END:C = ']'

.field public static final ARRAY_END_STR:Ljava/lang/String; = "]"

.field public static final ARRAY_SEPRATOR:C = ','

.field public static final ARRAY_SEPRATOR_STR:Ljava/lang/String; = ","

.field public static final ARRAY_START:C = '['

.field public static final ARRAY_START_STR:Ljava/lang/String; = "["

.field public static final BLOCK_END:C = '}'

.field public static final BLOCK_END_STR:Ljava/lang/String; = "}"

.field public static final BLOCK_START:C = '{'

.field public static final BLOCK_START_STR:Ljava/lang/String; = "{"

.field public static final BRACKET_END:C = ')'

.field public static final BRACKET_END_STR:Ljava/lang/String; = ")"

.field public static final BRACKET_START:C = '('

.field public static final BRACKET_START_STR:Ljava/lang/String; = "("

.field public static final CONDITION_IF:C = '?'

.field public static final CONDITION_IF_MIDDLE:C = ':'

.field public static final CONDITION_IF_STRING:Ljava/lang/String; = "?"

.field public static final DIV:Ljava/lang/String; = "/"

.field public static final DOLLAR:C = '$'

.field public static final DOLLAR_STR:Ljava/lang/String; = "$"

.field public static final DOT:C = '.'

.field public static final DOT_STR:Ljava/lang/String; = "."

.field public static final EQUAL:Ljava/lang/String; = "==="

.field public static final EQUAL2:Ljava/lang/String; = "=="

.field public static final G:Ljava/lang/String; = ">"

.field public static final GE:Ljava/lang/String; = ">="

.field public static final KEYWORDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final L:Ljava/lang/String; = "<"

.field public static final LE:Ljava/lang/String; = "<="

.field public static final MOD:Ljava/lang/String; = "%"

.field public static final MUL:Ljava/lang/String; = "*"

.field public static final NOT_EQUAL:Ljava/lang/String; = "!=="

.field public static final NOT_EQUAL2:Ljava/lang/String; = "!="

.field public static OPERATORS_PRIORITY:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final OR:Ljava/lang/String; = "||"

.field public static final PLUS:Ljava/lang/String; = "+"

.field public static final QUOTE:C = '\"'

.field public static final SINGLE_QUOTE:C = '\''

.field public static final SPACE:C = ' '

.field public static final SPACE_STR:Ljava/lang/String; = " "

.field public static final SUB:Ljava/lang/String; = "-"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 453
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/4 v1, 0x0

    .line 455
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "}"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, ")"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, " "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, ","

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "||"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "&&"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "==="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "=="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "!=="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "!="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ">"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, ">="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "<"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "-"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "*"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "/"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "%"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "!"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "."

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "["

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "("

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string v2, "{"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/el/parse/Operators;->KEYWORDS:Ljava/util/Map;

    const-string v1, "null"

    const/4 v2, 0x0

    .line 496
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "true"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "false"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "undefined"

    .line 499
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static condition(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-eqz p0, :cond_b

    .line 218
    invoke-virtual {p0, p3}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->isTrue(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p0, :cond_15

    if-eqz p1, :cond_1c

    .line 222
    invoke-virtual {p1, p3}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_15
    if-eqz p2, :cond_1c

    .line 226
    invoke-virtual {p2, p3}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static div(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 180
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    :goto_9
    if-eqz p1, :cond_f

    .line 183
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 185
    :cond_f
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static dot(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_47

    if-nez p1, :cond_6

    goto :goto_47

    .line 37
    :cond_6
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v0

    .line 42
    :cond_d
    invoke-virtual {p1}, Lcom/taobao/weex/el/parse/Token;->getType()I

    move-result v0

    if-eqz v0, :cond_37

    .line 43
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 44
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_25

    .line 45
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_25
    if-nez p2, :cond_2a

    const-string p2, ""

    goto :goto_32

    .line 47
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 48
    :goto_32
    invoke-static {p0, p2}, Lcom/taobao/weex/el/parse/Operators;->el(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_3b

    .line 50
    :cond_37
    invoke-virtual {p1, p0}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_3b
    if-eqz p2, :cond_3e

    return-object p2

    .line 55
    :cond_3e
    invoke-virtual {p1}, Lcom/taobao/weex/el/parse/Token;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/weex/el/parse/Operators;->specialKey(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_47
    :goto_47
    return-object v0
.end method

.method public static el(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 72
    :cond_4
    instance-of v1, p0, Lcom/taobao/weex/el/parse/ArrayStack;

    if-eqz v1, :cond_2b

    .line 73
    move-object v1, p0

    check-cast v1, Lcom/taobao/weex/el/parse/ArrayStack;

    .line 74
    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_11
    if-ltz v2, :cond_2b

    .line 75
    invoke-virtual {v1, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 76
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_28

    .line 77
    check-cast v3, Ljava/util/Map;

    .line 78
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 79
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 84
    :cond_2b
    instance-of v1, p0, Ljava/util/Stack;

    if-eqz v1, :cond_52

    .line 85
    move-object v1, p0

    check-cast v1, Ljava/util/Stack;

    .line 86
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_38
    if-ltz v2, :cond_52

    .line 87
    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 88
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_4f

    .line 89
    check-cast v3, Ljava/util/Map;

    .line 90
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 91
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 97
    :cond_52
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_5d

    .line 98
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 101
    :cond_5d
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_6e

    .line 102
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    .line 104
    :try_start_64
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6c} :catch_6d

    return-object p0

    :catch_6d
    nop

    .line 107
    :cond_6e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 109
    :try_start_78
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_80} :catch_81

    return-object p0

    :catch_81
    :cond_81
    return-object v0
.end method

.method public static getNumber(Ljava/lang/Object;)D
    .registers 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 351
    :cond_5
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_10

    .line 352
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 355
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_18

    :catch_18
    return-wide v0
.end method

.method public static isDot(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x2e

    if-eq p0, v1, :cond_d

    const/16 v1, 0x5b

    if-ne p0, v1, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 335
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 336
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_15

    return v1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    return v0
.end method

.method public static isEquals(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_e

    .line 266
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_f

    :cond_e
    move-object p0, v1

    :goto_f
    if-eqz p1, :cond_15

    .line 270
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_15
    const/4 p1, 0x0

    if-nez p0, :cond_2b

    if-nez v1, :cond_1b

    return v0

    .line 276
    :cond_1b
    instance-of p0, v1, Ljava/lang/CharSequence;

    if-eqz p0, :cond_2a

    .line 277
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    return v0

    :cond_2a
    return p1

    :cond_2b
    if-nez v1, :cond_39

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    return v0

    :cond_38
    return p1

    .line 289
    :cond_39
    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_65

    .line 290
    instance-of p2, v1, Ljava/lang/Number;

    if-eqz p2, :cond_54

    .line 291
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double p0, v2, v4

    if-nez p0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    return v0

    .line 293
    :cond_54
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v1}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    cmpl-double p0, v2, v4

    if-nez p0, :cond_63

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    :goto_64
    return v0

    .line 295
    :cond_65
    instance-of p2, v1, Ljava/lang/Number;

    if-eqz p2, :cond_7a

    .line 296
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double p0, v2, v4

    if-nez p0, :cond_78

    goto :goto_79

    :cond_78
    const/4 v0, 0x0

    :goto_79
    return v0

    .line 298
    :cond_7a
    instance-of p1, p0, Ljava/lang/CharSequence;

    if-nez p1, :cond_88

    instance-of p1, v1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_83

    goto :goto_88

    .line 302
    :cond_83
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 300
    :cond_88
    :goto_88
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isOpEnd(C)Z
    .registers 2

    const/16 v0, 0x29

    if-eq p0, v0, :cond_13

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_13

    const/16 v0, 0x20

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static isOpEnd(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->isOpEnd(C)Z

    move-result p0

    return p0
.end method

.method public static isTrue(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 313
    :cond_4
    instance-of v1, p0, Ljava/lang/Number;

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    .line 314
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0

    .line 316
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "false"

    .line 317
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "undefined"

    .line 318
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "null"

    .line 319
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_40

    .line 322
    :cond_38
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3f

    return v0

    :cond_3f
    return v2

    :cond_40
    :goto_40
    return v0
.end method

.method public static mod(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 204
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    :goto_9
    if-eqz p1, :cond_f

    .line 207
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    :cond_f
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v0

    rem-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static mul(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 192
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    :goto_9
    if-eqz p1, :cond_f

    .line 195
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 197
    :cond_f
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v0

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static plus(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 140
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    :goto_9
    if-eqz p1, :cond_10

    .line 143
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_11

    :cond_10
    move-object p1, v0

    .line 145
    :goto_11
    instance-of p2, p0, Ljava/lang/CharSequence;

    const-string v1, ""

    if-nez p2, :cond_5a

    instance-of p2, p1, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1c

    goto :goto_5a

    .line 151
    :cond_1c
    instance-of p2, p0, Ljava/lang/Number;

    if-nez p2, :cond_4c

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_25

    goto :goto_4c

    :cond_25
    if-nez p0, :cond_2a

    if-nez p1, :cond_2a

    return-object v0

    :cond_2a
    if-nez p0, :cond_31

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 160
    :cond_31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_40

    goto :goto_44

    :cond_40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_44
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :cond_4c
    :goto_4c
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_5a
    :goto_5a
    if-nez p0, :cond_5d

    return-object p1

    .line 149
    :cond_5d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_6c

    goto :goto_70

    :cond_6c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_70
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static specialKey(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "length"

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 117
    instance-of p1, p0, Ljava/lang/CharSequence;

    if-eqz p1, :cond_17

    .line 118
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 120
    :cond_17
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_26

    .line 121
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_26
    if-eqz p1, :cond_33

    .line 124
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 126
    :cond_33
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_42

    .line 127
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 129
    :cond_42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 130
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_55
    const/4 p0, 0x0

    return-object p0
.end method

.method public static sub(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 168
    invoke-virtual {p0, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    :goto_9
    if-eqz p1, :cond_f

    .line 171
    invoke-virtual {p1, p2}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    :cond_f
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {v0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D
    .registers 2

    if-nez p0, :cond_5

    const-wide/16 p0, 0x0

    return-wide p0

    .line 251
    :cond_5
    invoke-virtual {p0, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 252
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->getNumber(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 240
    :cond_4
    invoke-virtual {p0, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 241
    invoke-static {p0}, Lcom/taobao/weex/el/parse/Operators;->isTrue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
