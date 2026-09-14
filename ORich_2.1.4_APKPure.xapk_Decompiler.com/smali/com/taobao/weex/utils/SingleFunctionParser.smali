###### Class com.taobao.weex.utils.SingleFunctionParser (com.taobao.weex.utils.SingleFunctionParser)
.class public Lcom/taobao/weex/utils/SingleFunctionParser;
.super Lcom/taobao/weex/utils/FunctionParser;
.source "SingleFunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;,
        Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/taobao/weex/utils/FunctionParser<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper<",
            "TV;>;)V"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/taobao/weex/utils/SingleFunctionParser$1;

    invoke-direct {v0, p2}, Lcom/taobao/weex/utils/SingleFunctionParser$1;-><init>(Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/utils/FunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$Mapper;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper<",
            "TV;>;)V"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/taobao/weex/utils/SingleFunctionParser$2;

    invoke-direct {v0, p2}, Lcom/taobao/weex/utils/SingleFunctionParser$2;-><init>(Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/utils/FunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$Mapper;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/taobao/weex/utils/SingleFunctionParser;->parse()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 78
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 79
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.taobao.weex.utils.SingleFunctionParser.AnonymousClass1 (com.taobao.weex.utils.SingleFunctionParser$1)
.class Lcom/taobao/weex/utils/SingleFunctionParser$1;
.super Ljava/lang/Object;
.source "SingleFunctionParser.java"

# interfaces
.implements Lcom/taobao/weex/utils/FunctionParser$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/SingleFunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/utils/FunctionParser$Mapper<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;


# direct methods
.method constructor <init>(Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/taobao/weex/utils/SingleFunctionParser$1;->val$mapper:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    iget-object v3, p0, Lcom/taobao/weex/utils/SingleFunctionParser$1;->val$mapper:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;

    invoke-interface {v3, v2}, Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;->map(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 54
    :cond_24
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

###### Class com.taobao.weex.utils.SingleFunctionParser.AnonymousClass2 (com.taobao.weex.utils.SingleFunctionParser$2)
.class Lcom/taobao/weex/utils/SingleFunctionParser$2;
.super Ljava/lang/Object;
.source "SingleFunctionParser.java"

# interfaces
.implements Lcom/taobao/weex/utils/FunctionParser$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/SingleFunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/utils/FunctionParser$Mapper<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;


# direct methods
.method constructor <init>(Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/taobao/weex/utils/SingleFunctionParser$2;->val$mapper:Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/taobao/weex/utils/SingleFunctionParser$2;->val$mapper:Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;

    invoke-interface {v1, p2}, Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;->map(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

###### Class com.taobao.weex.utils.SingleFunctionParser.FlatMapper (com.taobao.weex.utils.SingleFunctionParser$FlatMapper)
.class public interface abstract Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;
.super Ljava/lang/Object;
.source "SingleFunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/SingleFunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FlatMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract map(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation
.end method

###### Class com.taobao.weex.utils.SingleFunctionParser.NonUniformMapper (com.taobao.weex.utils.SingleFunctionParser$NonUniformMapper)
.class public interface abstract Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;
.super Ljava/lang/Object;
.source "SingleFunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/SingleFunctionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NonUniformMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract map(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end method
