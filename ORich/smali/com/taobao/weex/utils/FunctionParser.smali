###### Class com.taobao.weex.utils.FunctionParser (com.taobao.weex.utils.FunctionParser)
.class public Lcom/taobao/weex/utils/FunctionParser;
.super Ljava/lang/Object;
.source "FunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/FunctionParser$Lexer;,
        Lcom/taobao/weex/utils/FunctionParser$WXInterpretationException;,
        Lcom/taobao/weex/utils/FunctionParser$Mapper;,
        Lcom/taobao/weex/utils/FunctionParser$Token;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final SPACE:C = ' '


# instance fields
.field private lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

.field private mapper:Lcom/taobao/weex/utils/FunctionParser$Mapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/utils/FunctionParser$Mapper<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$Mapper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/FunctionParser$Mapper<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Lexer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$1;)V

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    .line 47
    iput-object p2, p0, Lcom/taobao/weex/utils/FunctionParser;->mapper:Lcom/taobao/weex/utils/FunctionParser$Mapper;

    return-void
.end method

.method private definition()Ljava/util/LinkedHashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 63
    :cond_5
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser;->function()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 64
    iget-object v1, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$200(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    if-eq v1, v2, :cond_5

    return-object v0
.end method

.method private function()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 70
    sget-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v1}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    move-result-object v1

    .line 71
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    .line 72
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_19
    iget-object v2, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v2}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$200(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    if-ne v2, v3, :cond_32

    .line 74
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    .line 75
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 77
    :cond_32
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lcom/taobao/weex/utils/FunctionParser;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/taobao/weex/utils/FunctionParser;->mapper:Lcom/taobao/weex/utils/FunctionParser$Mapper;

    invoke-interface {v2, v1, v0}, Lcom/taobao/weex/utils/FunctionParser$Mapper;->map(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;
    .registers 4

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$200(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v0

    if-ne p1, v0, :cond_31

    .line 84
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$300(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$100(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    .line 89
    :catch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "Token doesn\'t match"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {p1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$400(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_31
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public parse()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser;->lexer:Lcom/taobao/weex/utils/FunctionParser$Lexer;

    invoke-static {v0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->access$100(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Z

    .line 57
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser;->definition()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

###### Class com.taobao.weex.utils.FunctionParser.AnonymousClass1 (com.taobao.weex.utils.FunctionParser$1)
.class synthetic Lcom/taobao/weex/utils/FunctionParser$1;
.super Ljava/lang/Object;
.source "FunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/FunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.taobao.weex.utils.FunctionParser.Lexer (com.taobao.weex.utils.FunctionParser$Lexer)
.class Lcom/taobao/weex/utils/FunctionParser$Lexer;
.super Ljava/lang/Object;
.source "FunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/FunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lexer"
.end annotation


# static fields
.field private static final A_LOWER:C = 'a'

.field private static final A_UPPER:C = 'A'

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final DOT:C = '.'

.field private static final LEFT_PARENT:Ljava/lang/String; = "("

.field private static final MINUS:C = '-'

.field private static final NINE:C = '9'

.field private static final PLUS:C = '+'

.field private static final RIGHT_PARENT:Ljava/lang/String; = ")"

.field private static final ZERO:C = '0'

.field private static final Z_LOWER:C = 'z'

.field private static final Z_UPPER:C = 'Z'


# instance fields
.field private current:Lcom/taobao/weex/utils/FunctionParser$Token;

.field private pointer:I

.field private source:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    .line 159
    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$1;)V
    .registers 3

    .line 139
    invoke-direct {p0, p1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Z
    .registers 1

    .line 139
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->moveOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Lcom/taobao/weex/utils/FunctionParser$Token;
    .registers 1

    .line 139
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->getCurrentToken()Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Ljava/lang/String;
    .registers 1

    .line 139
    invoke-direct {p0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/utils/FunctionParser$Lexer;)Ljava/lang/String;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    return-object p0
.end method

.method private getCurrentToken()Lcom/taobao/weex/utils/FunctionParser$Token;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    return-object v0
.end method

.method private getCurrentTokenValue()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    return-object v0
.end method

.method private isCharacterOrDigit(C)Z
    .registers 3

    const/16 v0, 0x30

    if-gt v0, p1, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p1, :cond_10

    const/16 v0, 0x7a

    if-le p1, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p1, :cond_1a

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1a

    :cond_18
    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private isFuncName(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 223
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 224
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-gt v3, v2, :cond_14

    const/16 v3, 0x7a

    if-le v2, v3, :cond_21

    :cond_14
    const/16 v3, 0x41

    if-gt v3, v2, :cond_1c

    const/16 v3, 0x5a

    if-le v2, v3, :cond_21

    :cond_1c
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_21

    return v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method private moveOn(Ljava/lang/String;)V
    .registers 4

    const-string v0, "("

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 204
    sget-object p1, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 205
    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    goto :goto_40

    :cond_f
    const-string v0, ")"

    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 207
    sget-object p1, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 208
    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    goto :goto_40

    :cond_1e
    const-string v0, ","

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 210
    sget-object p1, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 211
    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    goto :goto_40

    .line 212
    :cond_2d
    invoke-direct {p0, p1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->isFuncName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 213
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 214
    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    goto :goto_40

    .line 216
    :cond_3a
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 217
    iput-object p1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    :goto_40
    return-void
.end method

.method private moveOn()Z
    .registers 5

    .line 171
    iget v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    .line 173
    :goto_2
    iget v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    iget-object v2, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_49

    .line 174
    iget-object v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_24

    .line 176
    iget v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    if-ne v0, v1, :cond_49

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 181
    :cond_24
    invoke-direct {p0, v1}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->isCharacterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_43

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_43

    const/16 v2, 0x25

    if-eq v1, v2, :cond_43

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_43

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_3b

    goto :goto_43

    .line 185
    :cond_3b
    iget v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    if-ne v0, v1, :cond_49

    add-int/2addr v1, v3

    .line 186
    iput v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    goto :goto_49

    .line 183
    :cond_43
    :goto_43
    iget v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    goto :goto_2

    .line 191
    :cond_49
    :goto_49
    iget v1, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->pointer:I

    if-eq v0, v1, :cond_57

    .line 192
    iget-object v2, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->source:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-direct {p0, v0}, Lcom/taobao/weex/utils/FunctionParser$Lexer;->moveOn(Ljava/lang/String;)V

    return v3

    :cond_57
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 197
    iput-object v0, p0, Lcom/taobao/weex/utils/FunctionParser$Lexer;->value:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

###### Class com.taobao.weex.utils.FunctionParser.Mapper (com.taobao.weex.utils.FunctionParser$Mapper)
.class public interface abstract Lcom/taobao/weex/utils/FunctionParser$Mapper;
.super Ljava/lang/Object;
.source "FunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/FunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Mapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract map(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

###### Class com.taobao.weex.utils.FunctionParser.Token (com.taobao.weex.utils.FunctionParser$Token)
.class final enum Lcom/taobao/weex/utils/FunctionParser$Token;
.super Ljava/lang/Enum;
.source "FunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/FunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/utils/FunctionParser$Token;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 95
    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string v1, "FUNC_NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    new-instance v1, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string v3, "PARAM_VALUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    new-instance v3, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string v5, "LEFT_PARENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    new-instance v5, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string v7, "RIGHT_PARENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    new-instance v7, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string v9, "COMMA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/taobao/weex/utils/FunctionParser$Token;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 94
    sput-object v9, Lcom/taobao/weex/utils/FunctionParser$Token;->$VALUES:[Lcom/taobao/weex/utils/FunctionParser$Token;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/utils/FunctionParser$Token;
    .registers 2

    .line 94
    const-class v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/utils/FunctionParser$Token;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/utils/FunctionParser$Token;
    .registers 1

    .line 94
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->$VALUES:[Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-virtual {v0}, [Lcom/taobao/weex/utils/FunctionParser$Token;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/utils/FunctionParser$Token;

    return-object v0
.end method

###### Class com.taobao.weex.utils.FunctionParser.WXInterpretationException (com.taobao.weex.utils.FunctionParser$WXInterpretationException)
.class Lcom/taobao/weex/utils/FunctionParser$WXInterpretationException;
.super Ljava/lang/RuntimeException;
.source "FunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/FunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WXInterpretationException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
