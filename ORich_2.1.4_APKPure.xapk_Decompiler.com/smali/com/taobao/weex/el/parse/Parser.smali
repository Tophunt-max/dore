###### Class com.taobao.weex.el.parse.Parser (com.taobao.weex.el.parse.Parser)
.class public Lcom/taobao/weex/el/parse/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field private code:Ljava/lang/String;

.field private operators:Lcom/taobao/weex/el/parse/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/el/parse/ArrayStack<",
            "Lcom/taobao/weex/el/parse/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private stacks:Lcom/taobao/weex/el/parse/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/el/parse/ArrayStack<",
            "Lcom/taobao/weex/el/parse/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 42
    new-instance p1, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {p1}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    .line 43
    new-instance p1, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {p1}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    return-void
.end method

.method private final doStackOperators(I)V
    .registers 3

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-le v0, p1, :cond_14

    .line 344
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Symbol;

    .line 345
    invoke-virtual {p0, v0}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_0

    :cond_14
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/taobao/weex/el/parse/Token;
    .registers 4

    .line 68
    :try_start_0
    new-instance v0, Lcom/taobao/weex/el/parse/Parser;

    invoke-direct {v0, p0}, Lcom/taobao/weex/el/parse/Parser;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/Parser;->parse()Lcom/taobao/weex/el/parse/Token;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception v0

    .line 71
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :cond_25
    new-instance p0, Lcom/taobao/weex/el/parse/Block;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    return-object p0
.end method


# virtual methods
.method doOperator(Lcom/taobao/weex/el/parse/Symbol;)V
    .registers 6

    .line 254
    iget-object v0, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 255
    iget-object v1, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    const-string v2, "("

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ab

    iget-object v1, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    const-string v2, "{"

    .line 256
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ab

    iget-object v1, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    const-string v3, "["

    .line 257
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ab

    iget-object v1, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    const-string v3, "$"

    .line 258
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto/16 :goto_ab

    .line 261
    :cond_2c
    iget-object v1, p1, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    return-void

    .line 264
    :cond_35
    iget v1, p1, Lcom/taobao/weex/el/parse/Symbol;->pos:I

    .line 265
    iget p1, p1, Lcom/taobao/weex/el/parse/Symbol;->pos:I

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 266
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    .line 267
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Symbol;

    iget v2, v2, Lcom/taobao/weex/el/parse/Symbol;->pos:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 270
    :cond_56
    new-instance v2, Lcom/taobao/weex/el/parse/Operator;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lcom/taobao/weex/el/parse/Operator;-><init>(Ljava/lang/String;I)V

    const-string v3, "!"

    .line 271
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 272
    iget-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {p1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result p1

    if-le p1, v1, :cond_7b

    .line 273
    iget-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/el/parse/Token;

    .line 274
    iput-object p1, v2, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    .line 275
    iget-object p1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {p1, v1, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->add(ILjava/lang/Object;)V

    :cond_7b
    return-void

    .line 280
    :cond_7c
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-le v0, v1, :cond_ab

    .line 281
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Token;

    iput-object v0, v2, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    .line 285
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-le v0, p1, :cond_a1

    .line 286
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/el/parse/ArrayStack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Token;

    iput-object v0, v2, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    goto :goto_a6

    .line 288
    :cond_a1
    iget-object v0, v2, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    if-nez v0, :cond_a6

    return-void

    .line 292
    :cond_a6
    :goto_a6
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, p1, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->add(ILjava/lang/Object;)V

    :cond_ab
    :goto_ab
    return-void
.end method

.method final hasNext()Z
    .registers 3

    .line 458
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method final hasNextToken()Z
    .registers 4

    .line 464
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 465
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ne v0, v1, :cond_19

    .line 467
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_0

    :cond_19
    return v2

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method final nextToken()C
    .registers 4

    .line 476
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_8
    const/16 v1, 0x20

    if-ne v0, v1, :cond_24

    .line 478
    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 479
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    if-gt v1, v2, :cond_1d

    goto :goto_24

    .line 482
    :cond_1d
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    :cond_24
    :goto_24
    return v0
.end method

.method public final parse()Lcom/taobao/weex/el/parse/Token;
    .registers 4

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 49
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    goto :goto_0

    .line 51
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 52
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Symbol;

    .line 53
    invoke-virtual {p0, v0}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_a

    .line 55
    :cond_1e
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 56
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Token;

    return-object v0

    .line 58
    :cond_30
    new-instance v0, Lcom/taobao/weex/el/parse/Block;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->getList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method final scanArray()V
    .registers 11

    .line 112
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v1

    .line 115
    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x1

    if-ltz v3, :cond_25

    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    sub-int/2addr v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_25

    :cond_23
    const/4 v2, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v2, 0x7

    .line 118
    :goto_26
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    new-instance v7, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v8, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v8}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v8

    const-string v9, "["

    invoke-direct {v7, v9, v8}, Lcom/taobao/weex/el/parse/Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 119
    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 120
    :cond_3d
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 121
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    move-result v3

    const/16 v7, 0x5d

    if-ne v3, v7, :cond_3d

    .line 127
    :cond_4b
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v3

    if-gt v3, v0, :cond_62

    .line 128
    :goto_53
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-le v0, v1, :cond_61

    .line 129
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto :goto_53

    :cond_61
    return-void

    .line 134
    :cond_62
    :goto_62
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v3

    if-le v3, v1, :cond_7e

    .line 135
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/el/parse/Symbol;

    .line 136
    iget-object v7, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v7}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v7

    if-le v7, v0, :cond_62

    .line 137
    invoke-virtual {p0, v3}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_62

    .line 140
    :cond_7e
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v0

    .line 141
    :goto_85
    iget-object v7, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v7}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v7

    if-ge v3, v7, :cond_99

    .line 142
    iget-object v7, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v7, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 144
    :cond_99
    :goto_99
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v3

    if-le v3, v0, :cond_a7

    .line 145
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto :goto_99

    :cond_a7
    if-eq v2, v5, :cond_df

    .line 147
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_df

    .line 153
    :cond_b2
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Token;

    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_c7

    .line 156
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/el/parse/Token;

    goto :goto_ce

    .line 158
    :cond_c7
    new-instance v3, Lcom/taobao/weex/el/parse/Block;

    const/4 v4, 0x6

    invoke-direct {v3, v1, v4}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    move-object v1, v3

    .line 160
    :goto_ce
    new-instance v3, Lcom/taobao/weex/el/parse/Operator;

    const-string v4, "."

    invoke-direct {v3, v4, v2}, Lcom/taobao/weex/el/parse/Operator;-><init>(Ljava/lang/String;I)V

    .line 161
    iput-object v0, v3, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    .line 162
    iput-object v1, v3, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    .line 163
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void

    .line 148
    :cond_df
    :goto_df
    new-instance v0, Lcom/taobao/weex/el/parse/Block;

    invoke-direct {v0, v1, v5}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    .line 149
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void
.end method

.method scanBracket()V
    .registers 8

    .line 167
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v1

    .line 169
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x7b

    if-ne v2, v4, :cond_3f

    .line 170
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    new-instance v4, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v5

    const-string v6, "{"

    invoke-direct {v4, v6, v5}, Lcom/taobao/weex/el/parse/Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 171
    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 172
    :cond_30
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 173
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    move-result v2

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_30

    goto :goto_64

    .line 178
    :cond_3f
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    new-instance v4, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v5, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v5

    const-string v6, "("

    invoke-direct {v4, v6, v5}, Lcom/taobao/weex/el/parse/Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 179
    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 180
    :cond_56
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 181
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    move-result v2

    const/16 v4, 0x29

    if-ne v2, v4, :cond_56

    .line 186
    :cond_64
    :goto_64
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-gt v2, v0, :cond_7b

    .line 187
    :goto_6c
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-le v0, v1, :cond_7a

    .line 188
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto :goto_6c

    :cond_7a
    return-void

    .line 192
    :cond_7b
    :goto_7b
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-le v2, v1, :cond_97

    .line 193
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Symbol;

    .line 194
    iget-object v4, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v4}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v4

    if-le v4, v0, :cond_7b

    .line 195
    invoke-virtual {p0, v2}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_7b

    .line 198
    :cond_97
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v0

    .line 199
    :goto_9e
    iget-object v4, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v4}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v4

    if-ge v2, v4, :cond_b2

    .line 200
    iget-object v4, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v4, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 202
    :cond_b2
    :goto_b2
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-le v2, v0, :cond_c0

    .line 203
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto :goto_b2

    .line 205
    :cond_c0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_d1

    .line 206
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    goto :goto_dc

    .line 208
    :cond_d1
    new-instance v0, Lcom/taobao/weex/el/parse/Block;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/el/parse/Block;-><init>(Ljava/util/List;I)V

    .line 209
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    :goto_dc
    return-void
.end method

.method final scanIdentifier()V
    .registers 5

    .line 428
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v0, 0x1

    .line 429
    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 430
    :goto_6
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    .line 431
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 432
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 433
    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_6

    .line 439
    :cond_21
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 441
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_38

    return-void

    .line 444
    :cond_38
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3c
    const/4 v1, 0x0

    .line 447
    sget-object v2, Lcom/taobao/weex/el/parse/Operators;->KEYWORDS:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 448
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v2, v2, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/el/parse/Operators;->isDot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    :cond_5d
    const/4 v1, 0x4

    .line 452
    :cond_5e
    new-instance v2, Lcom/taobao/weex/el/parse/Token;

    invoke-direct {v2, v0, v1}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    .line 453
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void
.end method

.method scanIf()V
    .registers 6

    .line 299
    new-instance v0, Lcom/taobao/weex/el/parse/Operator;

    const-string v1, "?"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/el/parse/Operator;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 301
    invoke-direct {p0, v1}, Lcom/taobao/weex/el/parse/Parser;->doStackOperators(I)V

    .line 302
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 303
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Symbol;

    iget v2, v2, Lcom/taobao/weex/el/parse/Symbol;->pos:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 305
    :cond_22
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-le v2, v1, :cond_34

    .line 306
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/el/parse/Token;

    iput-object v1, v0, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    .line 309
    :cond_34
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v1

    .line 310
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    .line 311
    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 312
    :cond_46
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 313
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_46

    .line 317
    :cond_54
    :goto_54
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v3

    if-le v3, v2, :cond_68

    .line 318
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/el/parse/Symbol;

    .line 319
    invoke-virtual {p0, v3}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    goto :goto_54

    .line 322
    :cond_68
    :goto_68
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-le v2, v1, :cond_7b

    .line 323
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Token;

    iput-object v2, v0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    goto :goto_68

    .line 325
    :cond_7b
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    .line 326
    :cond_81
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 327
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    .line 328
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNextToken()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 329
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNextToken()C

    .line 331
    :cond_93
    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v3

    if-gt v3, v2, :cond_81

    .line 335
    :cond_9b
    invoke-direct {p0, v2}, Lcom/taobao/weex/el/parse/Parser;->doStackOperators(I)V

    .line 336
    :goto_9e
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v2

    if-le v2, v1, :cond_b1

    .line 337
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v2}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Token;

    iput-object v2, v0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    goto :goto_9e

    .line 339
    :cond_b1
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void
.end method

.method final scanNextToken()C
    .registers 4

    .line 80
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->nextToken()C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_f

    .line 82
    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    return v0

    .line 84
    :cond_f
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 85
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanIdentifier()V

    goto/16 :goto_81

    :cond_1a
    const/16 v1, 0x28

    if-eq v0, v1, :cond_7e

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_23

    goto :goto_7e

    :cond_23
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2b

    .line 89
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanArray()V

    goto :goto_81

    :cond_2b
    const/16 v1, 0x22

    if-eq v0, v1, :cond_7a

    const/16 v1, 0x27

    if-ne v0, v1, :cond_34

    goto :goto_7a

    :cond_34
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_48

    .line 92
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 93
    :cond_48
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 94
    :cond_4e
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanNumber()V

    goto :goto_81

    :cond_52
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_5a

    .line 96
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanIf()V

    goto :goto_81

    :cond_5a
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_73

    const/16 v1, 0x29

    if-eq v0, v1, :cond_73

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_73

    const/16 v1, 0x20

    if-eq v0, v1, :cond_73

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_6f

    goto :goto_73

    .line 105
    :cond_6f
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanOperator()V

    goto :goto_81

    .line 102
    :cond_73
    :goto_73
    iget v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    return v0

    .line 91
    :cond_7a
    :goto_7a
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanString()V

    goto :goto_81

    .line 87
    :cond_7e
    :goto_7e
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->scanBracket()V

    :goto_81
    return v0
.end method

.method final scanNumber()V
    .registers 9

    .line 358
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 359
    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x2e

    const/16 v4, 0x65

    const/4 v5, 0x1

    if-eq v1, v4, :cond_1d

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    .line 362
    :goto_1e
    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 363
    :goto_23
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Parser;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 364
    iget-object v6, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v7, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 365
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3b

    if-eq v6, v3, :cond_3b

    if-ne v6, v4, :cond_46

    :cond_3b
    if-eq v6, v4, :cond_3f

    if-ne v6, v3, :cond_40

    :cond_3f
    const/4 v1, 0x0

    .line 372
    :cond_40
    iget v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_23

    .line 377
    :cond_46
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    .line 378
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    return-void

    :cond_57
    if-eqz v1, :cond_5f

    .line 383
    new-instance v1, Lcom/taobao/weex/el/parse/Token;

    invoke-direct {v1, v0, v5}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    goto :goto_65

    .line 385
    :cond_5f
    new-instance v1, Lcom/taobao/weex/el/parse/Token;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    .line 387
    :goto_65
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void
.end method

.method scanOperator()V
    .registers 7

    .line 218
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v1, v0, 0x3

    .line 219
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 220
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-lt v2, v4, :cond_2b

    .line 222
    sget-object v2, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 223
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 226
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v3, :cond_3e

    .line 227
    sget-object v2, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 228
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_3e
    sget-object v2, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    add-int/2addr v0, v4

    .line 233
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 234
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " illegal code operator"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v0, "weex"

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    return-void

    .line 238
    :cond_7f
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 239
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v0, v0, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 240
    sget-object v2, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/taobao/weex/el/parse/Operators;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_be

    .line 241
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/el/parse/Symbol;

    .line 242
    invoke-virtual {p0, v0}, Lcom/taobao/weex/el/parse/Parser;->doOperator(Lcom/taobao/weex/el/parse/Symbol;)V

    .line 245
    :cond_be
    invoke-static {v1}, Lcom/taobao/weex/el/parse/Operators;->isOpEnd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 246
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->operators:Lcom/taobao/weex/el/parse/ArrayStack;

    new-instance v2, Lcom/taobao/weex/el/parse/Symbol;

    iget-object v3, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v3}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/taobao/weex/el/parse/Symbol;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 248
    :cond_d4
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    return-void
.end method

.method final scanString()V
    .registers 7

    .line 392
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    .line 393
    new-instance v1, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {v1}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    .line 394
    iget-object v2, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 395
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_19
    add-int/lit8 v0, v0, 0x1

    .line 397
    iput v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_62

    .line 398
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v4, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_5c

    .line 400
    iget-object v4, p0, Lcom/taobao/weex/el/parse/Parser;->code:Ljava/lang/String;

    iget v5, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4f

    .line 401
    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    .line 402
    invoke-virtual {v1}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v0

    if-nez v0, :cond_5f

    .line 403
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_62

    .line 407
    :cond_4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 411
    :cond_5c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    :cond_5f
    :goto_5f
    iget v0, p0, Lcom/taobao/weex/el/parse/Parser;->position:I

    goto :goto_19

    .line 414
    :cond_62
    :goto_62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    new-instance v1, Lcom/taobao/weex/el/parse/Token;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    .line 416
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Parser;->stacks:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    return-void
.end method
