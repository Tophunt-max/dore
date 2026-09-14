###### Class com.taobao.weex.el.parse.Token (com.taobao.weex.el.parse.Token)
.class public Lcom/taobao/weex/el/parse/Token;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field public static final TYPE_ARRAY:I = 0x7

.field public static final TYPE_BLOCK:I = 0x6

.field public static final TYPE_DOUBLE:I = 0x2

.field public static final TYPE_IDENTIFIER:I = 0x0

.field public static final TYPE_INT:I = 0x1

.field public static final TYPE_KEYWORD:I = 0x4

.field public static final TYPE_OPERATOR:I = 0x5

.field public static final TYPE_STRING:I = 0x3


# instance fields
.field private token:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 55
    iget v0, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    if-nez v0, :cond_b

    .line 56
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/taobao/weex/el/parse/Operators;->el(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x3

    if-ne v0, p1, :cond_11

    .line 58
    iget-object p1, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    return-object p1

    :cond_11
    const/4 p1, 0x1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_25

    .line 61
    :try_start_15
    iget-object p1, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_20

    return-object p1

    .line 63
    :catch_20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_25
    const/4 p1, 0x2

    if-ne v0, p1, :cond_38

    .line 67
    :try_start_28
    iget-object p1, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_33

    return-object p1

    .line 69
    :catch_33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_38
    const/4 p1, 0x4

    if-ne v0, p1, :cond_44

    .line 72
    sget-object p1, Lcom/taobao/weex/el/parse/Operators;->KEYWORDS:Ljava/util/Map;

    iget-object v0, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 74
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unhandled token type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Token;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/weex/el/parse/Token;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
