###### Class com.taobao.weex.wson.Wson (com.taobao.weex.wson.Wson)
.class public Lcom/taobao/weex/wson/Wson;
.super Ljava/lang/Object;
.source "Wson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/wson/Wson$Builder;,
        Lcom/taobao/weex/wson/Wson$Parser;
    }
.end annotation


# static fields
.field private static final ARRAY_TYPE:B = 0x5bt

.field private static final BOOLEAN_TYPE_FALSE:B = 0x66t

.field private static final BOOLEAN_TYPE_TRUE:B = 0x74t

.field private static final GLOBAL_STRING_CACHE_SIZE:I = 0x800

.field private static final IS_NATIVE_LITTLE_ENDIAN:Z

.field private static final MAP_TYPE:B = 0x7bt

.field private static final METHOD_PREFIX_GET:Ljava/lang/String; = "get"

.field private static final METHOD_PREFIX_IS:Ljava/lang/String; = "is"

.field private static final NULL_TYPE:B = 0x30t

.field private static final NUMBER_BIG_DECIMAL_TYPE:B = 0x65t

.field private static final NUMBER_BIG_INTEGER_TYPE:B = 0x67t

.field private static final NUMBER_DOUBLE_TYPE:B = 0x64t

.field private static final NUMBER_FLOAT_TYPE:B = 0x46t

.field private static final NUMBER_INT_TYPE:B = 0x69t

.field private static final NUMBER_LONG_TYPE:B = 0x6ct

.field private static final STRING_TYPE:B = 0x73t

.field public static final WriteMapNullValue:Z = false

.field private static fieldsCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final globalStringBytesCache:[Ljava/lang/String;

.field private static final localCharsBufferCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field private static methodsCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static specialClass:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lcom/taobao/weex/wson/Wson;->IS_NATIVE_LITTLE_ENDIAN:Z

    .line 757
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->localCharsBufferCache:Ljava/lang/ThreadLocal;

    const/16 v0, 0x800

    new-array v0, v0, [Ljava/lang/String;

    .line 758
    sput-object v0, Lcom/taobao/weex/wson/Wson;->globalStringBytesCache:[Ljava/lang/String;

    .line 768
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->methodsCache:Landroidx/collection/LruCache;

    .line 769
    new-instance v0, Landroidx/collection/LruCache;

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->fieldsCache:Landroidx/collection/LruCache;

    .line 770
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->specialClass:Landroidx/collection/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 2

    .line 50
    invoke-static {p0, p1}, Lcom/taobao/weex/wson/Wson;->getBeanMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 2

    .line 50
    invoke-static {p0, p1}, Lcom/taobao/weex/wson/Wson;->getBeanFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/ThreadLocal;
    .registers 1

    .line 50
    sget-object v0, Lcom/taobao/weex/wson/Wson;->localCharsBufferCache:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$700()Z
    .registers 1

    .line 50
    sget-boolean v0, Lcom/taobao/weex/wson/Wson;->IS_NATIVE_LITTLE_ENDIAN:Z

    return v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/taobao/weex/wson/Wson;->globalStringBytesCache:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Landroidx/collection/LruCache;
    .registers 1

    .line 50
    sget-object v0, Lcom/taobao/weex/wson/Wson;->specialClass:Landroidx/collection/LruCache;

    return-object v0
.end method

.method private static final getBeanFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 802
    sget-object v0, Lcom/taobao/weex/wson/Wson;->fieldsCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3e

    .line 804
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 806
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_39

    aget-object v3, p1, v2

    .line 807
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_23

    goto :goto_2e

    .line 810
    :cond_23
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_31

    .line 813
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 811
    :cond_31
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getBeanMethod JSONField Annotation Not Handled, Use toJSON"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 815
    :cond_39
    sget-object p1, Lcom/taobao/weex/wson/Wson;->fieldsCache:Landroidx/collection/LruCache;

    invoke-virtual {p1, p0, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    return-object v0
.end method

.method private static final getBeanMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 774
    sget-object v0, Lcom/taobao/weex/wson/Wson;->methodsCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_5a

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 778
    array-length v1, p1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_55

    aget-object v3, p1, v2

    .line 779
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_22

    goto :goto_4a

    .line 782
    :cond_22
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2b

    goto :goto_4a

    .line 785
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "get"

    .line 786
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3f

    const-string v5, "is"

    .line 787
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 788
    :cond_3f
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_4d

    .line 791
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 789
    :cond_4d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getBeanMethod JSONField Annotation Not Handled, Use toJSON"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 794
    :cond_55
    sget-object p1, Lcom/taobao/weex/wson/Wson;->methodsCache:Landroidx/collection/LruCache;

    invoke-virtual {p1, p0, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    return-object v0
.end method

.method public static final parse([B)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 98
    :cond_4
    :try_start_4
    new-instance v1, Lcom/taobao/weex/wson/Wson$Parser;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/wson/Wson$Parser;-><init>([BLcom/taobao/weex/wson/Wson$1;)V

    .line 99
    invoke-static {v1}, Lcom/taobao/weex/wson/Wson$Parser;->access$100(Lcom/taobao/weex/wson/Wson$Parser;)Ljava/lang/Object;

    move-result-object p0

    .line 100
    invoke-static {v1}, Lcom/taobao/weex/wson/Wson$Parser;->access$200(Lcom/taobao/weex/wson/Wson$Parser;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    const-string v1, "parseWson"

    .line 103
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final toWson(Ljava/lang/Object;)[B
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 116
    :cond_4
    new-instance v1, Lcom/taobao/weex/wson/Wson$Builder;

    invoke-direct {v1, v0}, Lcom/taobao/weex/wson/Wson$Builder;-><init>(Lcom/taobao/weex/wson/Wson$1;)V

    .line 117
    invoke-static {v1, p0}, Lcom/taobao/weex/wson/Wson$Builder;->access$400(Lcom/taobao/weex/wson/Wson$Builder;Ljava/lang/Object;)[B

    move-result-object p0

    .line 118
    invoke-static {v1}, Lcom/taobao/weex/wson/Wson$Builder;->access$500(Lcom/taobao/weex/wson/Wson$Builder;)V

    return-object p0
.end method

###### Class com.taobao.weex.wson.Wson.AnonymousClass1 (com.taobao.weex.wson.Wson$1)
.class synthetic Lcom/taobao/weex/wson/Wson$1;
.super Ljava/lang/Object;
.source "Wson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/wson/Wson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.taobao.weex.wson.Wson.Builder (com.taobao.weex.wson.Wson$Builder)
.class final Lcom/taobao/weex/wson/Wson$Builder;
.super Ljava/lang/Object;
.source "Wson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/wson/Wson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final refsLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buffer:[B

.field private position:I

.field private refs:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 360
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    .line 361
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_14
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 370
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    .line 372
    :goto_1a
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    if-eqz v1, :cond_2a

    .line 374
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_33

    .line 376
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    :goto_33
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/wson/Wson$1;)V
    .registers 2

    .line 355
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/wson/Wson$Builder;Ljava/lang/Object;)[B
    .registers 2

    .line 355
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->toWson(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/wson/Wson$Builder;)V
    .registers 1

    .line 355
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Builder;->close()V

    return-void
.end method

.method private final close()V
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    array-length v1, v0

    const/16 v2, 0x4000

    if-gt v1, v2, :cond_c

    .line 390
    sget-object v1, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 392
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 393
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_21

    .line 395
    :cond_1c
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_21
    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    .line 398
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    const/4 v0, 0x0

    .line 399
    iput v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final ensureCapacity(I)V
    .registers 5

    .line 736
    iget v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/2addr p1, v0

    .line 738
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    array-length v1, v0

    sub-int v1, p1, v1

    if-lez v1, :cond_1f

    .line 739
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    const/16 v2, 0x4000

    if-ge v1, v2, :cond_13

    const/16 v1, 0x4000

    :cond_13
    sub-int v2, v1, p1

    if-gez v2, :cond_18

    goto :goto_19

    :cond_18
    move p1, v1

    .line 747
    :goto_19
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    :cond_1f
    return-void
.end method

.method private final toMap(Ljava/lang/Object;)Ljava/util/Map;
    .registers 11

    .line 618
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 620
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 621
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 622
    invoke-static {v2, v1}, Lcom/taobao/weex/wson/Wson;->access$1000(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 623
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 624
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "get"

    .line 625
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_57

    new-array v5, v7, [Ljava/lang/Object;

    .line 626
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 628
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v6, v7, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 630
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_57
    const-string v6, "is"

    .line 632
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    new-array v5, v7, [Ljava/lang/Object;

    .line 633
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v6, v7, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 637
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 641
    :cond_88
    invoke-static {v2, v1}, Lcom/taobao/weex/wson/Wson;->access$1100(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 642
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_90
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 643
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 644
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    goto :goto_90

    .line 647
    :cond_a7
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_ae

    goto :goto_90

    .line 651
    :cond_ae
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b1} :catch_b3

    goto :goto_90

    :cond_b2
    return-object v0

    :catch_b3
    move-exception p1

    .line 654
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_bb

    .line 655
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 657
    :cond_bb
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final toWson(Ljava/lang/Object;)[B
    .registers 5

    .line 382
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    .line 383
    iget p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    new-array v0, p1, [B

    .line 384
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private final writeAdapterObject(Ljava/lang/Object;)V
    .registers 5

    .line 605
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$900()Landroidx/collection/LruCache;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 606
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    return-void

    .line 610
    :cond_1a
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeMap(Ljava/util/Map;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_22

    goto :goto_3d

    .line 612
    :catch_22
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$900()Landroidx/collection/LruCache;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    :goto_3d
    return-void
.end method

.method private final writeByte(B)V
    .registers 4

    .line 600
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 601
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final writeDouble(D)V
    .registers 3

    .line 696
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/wson/Wson$Builder;->writeLong(J)V

    return-void
.end method

.method private final writeFloat(F)V
    .registers 6

    .line 700
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 701
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v1, 0x3

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 702
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 703
    aput-byte v3, v0, v2

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 704
    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x4

    .line 705
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final writeLong(J)V
    .registers 9

    .line 709
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v1, 0x7

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x6

    const/16 v3, 0x8

    ushr-long v4, p1, v3

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 710
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 711
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x4

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 712
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 713
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x2

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 714
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 715
    aput-byte v4, v0, v2

    const/16 v2, 0x38

    ushr-long/2addr p1, v2

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 716
    aput-byte p1, v0, v1

    add-int/2addr v1, v3

    .line 717
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final writeMap(Ljava/util/Map;)V
    .registers 6

    .line 577
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 579
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 580
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1e
    const/16 v1, 0x8

    .line 585
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    const/16 v1, 0x7b

    .line 586
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 587
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 588
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 589
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_47

    goto :goto_34

    .line 592
    :cond_47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeMapKeyUTF16(Ljava/lang/String;)V

    .line 593
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_34

    :cond_5a
    return-void
.end method

.method private final writeMapKeyUTF16(Ljava/lang/String;)V
    .registers 2

    .line 664
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final writeNumber(Ljava/lang/Number;)V
    .registers 7

    const/16 v0, 0xc

    .line 512
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 513
    instance-of v0, p1, Ljava/lang/Integer;

    const/16 v1, 0x69

    if-eqz v0, :cond_16

    .line 514
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 515
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeVarInt(I)V

    return-void

    .line 519
    :cond_16
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_27

    const/16 v0, 0x46

    .line 520
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 521
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeFloat(F)V

    return-void

    .line 524
    :cond_27
    instance-of v0, p1, Ljava/lang/Double;

    const/16 v2, 0x64

    if-eqz v0, :cond_38

    .line 525
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 526
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    return-void

    .line 530
    :cond_38
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_49

    const/16 v0, 0x6c

    .line 531
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 532
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeLong(J)V

    return-void

    .line 536
    :cond_49
    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_96

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_52

    goto :goto_96

    .line 543
    :cond_52
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_63

    const/16 v0, 0x67

    .line 544
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 545
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void

    .line 549
    :cond_63
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_89

    .line 550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 552
    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 553
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 554
    invoke-direct {p0, v3, v4}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    goto :goto_88

    :cond_80
    const/16 p1, 0x65

    .line 556
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 557
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    :goto_88
    return-void

    :cond_89
    const/16 v0, 0x73

    .line 561
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 562
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void

    .line 538
    :cond_96
    :goto_96
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 539
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeVarInt(I)V

    return-void
.end method

.method private final writeObject(Ljava/lang/Object;)V
    .registers 9

    .line 403
    instance-of v0, p1, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    if-eqz v0, :cond_13

    .line 404
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    const/16 v0, 0x73

    .line 405
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 406
    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void

    .line 408
    :cond_13
    instance-of v0, p1, Ljava/util/Map;

    const/16 v2, 0x30

    if-eqz v0, :cond_3e

    .line 409
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 410
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 411
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 414
    :cond_28
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    check-cast p1, Ljava/util/Map;

    .line 416
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeMap(Ljava/util/Map;)V

    .line 417
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 419
    :cond_3e
    instance-of v0, p1, Ljava/util/List;

    const/16 v3, 0x5b

    const/16 v4, 0x8

    if-eqz v0, :cond_87

    .line 420
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 421
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 422
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 425
    :cond_55
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 427
    check-cast p1, Ljava/util/List;

    .line 428
    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 429
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 430
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 431
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_6d

    .line 433
    :cond_7b
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 435
    :cond_87
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_91

    .line 436
    check-cast p1, Ljava/lang/Number;

    .line 437
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeNumber(Ljava/lang/Number;)V

    return-void

    .line 439
    :cond_91
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_ac

    .line 440
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 441
    check-cast p1, Ljava/lang/Boolean;

    .line 442
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a6

    const/16 p1, 0x74

    .line 443
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    goto :goto_ab

    :cond_a6
    const/16 p1, 0x66

    .line 445
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    :goto_ab
    return-void

    :cond_ac
    if-nez p1, :cond_b5

    .line 449
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 450
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 452
    :cond_b5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 453
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 454
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 455
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 458
    :cond_ce
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 460
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 461
    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 462
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    const/4 v1, 0x0

    :goto_e1
    if-ge v1, v0, :cond_ed

    .line 464
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 465
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e1

    .line 467
    :cond_ed
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 469
    :cond_f9
    instance-of v0, p1, Ljava/util/Date;

    const/16 v5, 0x64

    const/16 v6, 0xa

    if-eqz v0, :cond_112

    .line 470
    invoke-direct {p0, v6}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 471
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    .line 472
    invoke-direct {p0, v5}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 473
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    goto :goto_16f

    .line 474
    :cond_112
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_12b

    .line 475
    invoke-direct {p0, v6}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 476
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    .line 477
    invoke-direct {p0, v5}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 478
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    goto :goto_16f

    .line 479
    :cond_12b
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_170

    .line 480
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 481
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 482
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 485
    :cond_13e
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 487
    check-cast p1, Ljava/util/Collection;

    .line 488
    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 489
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 490
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_156
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_164

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 491
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_156

    .line 493
    :cond_164
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_16f
    return-void

    .line 495
    :cond_170
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 496
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 497
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    goto :goto_1a4

    .line 499
    :cond_17f
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_196

    .line 501
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_199

    .line 503
    :cond_196
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeAdapterObject(Ljava/lang/Object;)V

    .line 505
    :goto_199
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1a4
    return-void
.end method

.method private final writeUInt(I)V
    .registers 5

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_16

    .line 726
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 727
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 730
    :cond_16
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 731
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final writeUTF16String(Ljava/lang/CharSequence;)V
    .registers 9

    .line 674
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x8

    .line 675
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 676
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 677
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$700()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    :goto_15
    if-ge v2, v0, :cond_4b

    .line 679
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 680
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 681
    aput-byte v1, v3, v5

    add-int/lit8 v4, v4, 0x2

    .line 682
    iput v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_30
    :goto_30
    if-ge v2, v0, :cond_4b

    .line 686
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 687
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v5, v4, 0x1

    int-to-byte v6, v1

    aput-byte v6, v3, v5

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 688
    aput-byte v1, v3, v4

    add-int/lit8 v4, v4, 0x2

    .line 689
    iput v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_4b
    return-void
.end method

.method private final writeVarInt(I)V
    .registers 3

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    .line 721
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    return-void
.end method

###### Class com.taobao.weex.wson.Wson.Parser (com.taobao.weex.wson.Wson$Parser)
.class final Lcom/taobao/weex/wson/Wson$Parser;
.super Ljava/lang/Object;
.source "Wson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/wson/Wson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Parser"
.end annotation


# instance fields
.field private buffer:[B

.field private charsBuffer:[C

.field private position:I


# direct methods
.method private constructor <init>([B)V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 133
    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    .line 134
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$600()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    if-eqz p1, :cond_1f

    .line 136
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$600()Ljava/lang/ThreadLocal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_25

    :cond_1f
    const/16 p1, 0x200

    new-array p1, p1, [C

    .line 138
    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    :goto_25
    return-void
.end method

.method synthetic constructor <init>([BLcom/taobao/weex/wson/Wson$1;)V
    .registers 3

    .line 126
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Parser;-><init>([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/wson/Wson$Parser;)Ljava/lang/Object;
    .registers 1

    .line 126
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->parse()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/wson/Wson$Parser;)V
    .registers 1

    .line 126
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->close()V

    return-void
.end method

.method private final close()V
    .registers 4

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    .line 150
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    if-eqz v1, :cond_13

    .line 151
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 153
    :cond_13
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    return-void
.end method

.method private final parse()Ljava/lang/Object;
    .registers 2

    .line 144
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final readArray()Ljava/lang/Object;
    .registers 5

    .line 203
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    .line 204
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_16

    .line 206
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-object v1
.end method

.method private final readDouble()Ljava/lang/Object;
    .registers 10

    .line 331
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v0, v2

    if-lez v4, :cond_20

    double-to-long v2, v0

    long-to-double v4, v2

    sub-double v4, v0, v4

    const-wide/high16 v6, 0x10000000000000L

    cmpg-double v8, v4, v6

    if-gez v8, :cond_20

    .line 336
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 339
    :cond_20
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private readFloat()Ljava/lang/Object;
    .registers 5

    .line 343
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x4

    .line 347
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 348
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private final readLong()J
    .registers 11

    .line 318
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v2, v1, 0x7

    aget-byte v2, v0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x6

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x5

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v9, 0x10

    shl-long/2addr v6, v9

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x4

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v9, 0x18

    shl-long/2addr v6, v9

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v9, 0x20

    shl-long/2addr v6, v9

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v9, 0x28

    shl-long/2addr v6, v9

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    aget-byte v0, v0, v1

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    add-long/2addr v2, v4

    add-int/2addr v1, v8

    .line 326
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    return-wide v2
.end method

.method private final readMap()Ljava/lang/Object;
    .registers 6

    .line 192
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    .line 193
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1a

    .line 195
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readMapKeyUTF16()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 197
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    return-object v1
.end method

.method private final readMapKeyUTF16()Ljava/lang/String;
    .registers 9

    .line 219
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    .line 220
    div-int/lit8 v0, v0, 0x2

    .line 221
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    array-length v1, v1

    if-ge v1, v0, :cond_f

    .line 222
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    :cond_f
    const/16 v1, 0x1505

    .line 225
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$700()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3b

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v0, :cond_5e

    .line 227
    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v4, v4, v7

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v6, v4

    int-to-char v4, v6

    .line 229
    iget-object v6, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v4, v6, v2

    shl-int/lit8 v6, v1, 0x5

    add-int/2addr v6, v1

    add-int v1, v6, v4

    add-int/lit8 v5, v5, 0x2

    .line 231
    iput v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_3b
    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v0, :cond_5e

    .line 235
    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v6, v4

    int-to-char v4, v6

    .line 237
    iget-object v6, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v4, v6, v2

    shl-int/lit8 v6, v1, 0x5

    add-int/2addr v6, v1

    add-int v1, v6, v4

    add-int/lit8 v5, v5, 0x2

    .line 239
    iput v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 242
    :cond_5e
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$800()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    and-int/2addr v1, v2

    .line 243
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$800()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_89

    .line 245
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v0, :cond_89

    const/4 v5, 0x0

    :goto_75
    if-ge v5, v0, :cond_86

    .line 248
    iget-object v6, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aget-char v6, v6, v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_83

    const/4 v4, 0x0

    goto :goto_86

    :cond_83
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    :cond_86
    :goto_86
    if-eqz v4, :cond_89

    return-object v2

    .line 257
    :cond_89
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    invoke-direct {v2, v4, v3, v0}, Ljava/lang/String;-><init>([CII)V

    const/16 v3, 0x40

    if-ge v0, v3, :cond_9a

    .line 259
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$800()[Ljava/lang/String;

    move-result-object v0

    aput-object v2, v0, v1

    :cond_9a
    return-object v2
.end method

.method private final readObject()Ljava/lang/Object;
    .registers 5

    .line 157
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readType()B

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_98

    const/16 v1, 0x46

    if-eq v0, v1, :cond_93

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_8e

    const/16 v1, 0x69

    if-eq v0, v1, :cond_85

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_7c

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_77

    const/16 v1, 0x73

    if-eq v0, v1, :cond_72

    const/16 v1, 0x74

    if-eq v0, v1, :cond_6f

    packed-switch v0, :pswitch_data_9a

    .line 184
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wson unhandled type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " length "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :pswitch_53
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUTF16String()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 178
    :pswitch_5d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 176
    :pswitch_60
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUTF16String()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 170
    :pswitch_6a
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readDouble()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 180
    :cond_6f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 160
    :cond_72
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUTF16String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_77
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readMap()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 172
    :cond_7c
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 162
    :cond_85
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readVarInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 168
    :cond_8e
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readArray()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 164
    :cond_93
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readFloat()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_98
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_9a
    .packed-switch 0x64
        :pswitch_6a
        :pswitch_60
        :pswitch_5d
        :pswitch_53
    .end packed-switch
.end method

.method private final readType()B
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 213
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    return v0
.end method

.method private final readUInt()I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 305
    :goto_2
    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v2, v2, v3

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_23

    and-int/lit8 v2, v2, 0x7f

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v3, v3, 0x1

    .line 308
    iput v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    const/16 v2, 0x23

    if-gt v1, v2, :cond_1b

    goto :goto_2

    .line 310
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable length quantity is too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    add-int/lit8 v3, v3, 0x1

    .line 313
    iput v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private final readUTF16String()Ljava/lang/String;
    .registers 8

    .line 265
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 266
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    array-length v1, v1

    if-ge v1, v0, :cond_f

    .line 267
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    .line 269
    :cond_f
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$700()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_52

    .line 271
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v3, v3, v6

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v5, v3

    int-to-char v3, v5

    .line 273
    iget-object v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v3, v5, v1

    add-int/lit8 v4, v4, 0x2

    .line 274
    iput v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_34
    const/4 v1, 0x0

    :goto_35
    if-ge v1, v0, :cond_52

    .line 278
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v5, v3

    int-to-char v3, v5

    .line 280
    iget-object v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v3, v5, v1

    add-int/lit8 v4, v4, 0x2

    .line 281
    iput v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 284
    :cond_52
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    invoke-direct {v1, v3, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method private final readVarInt()I
    .registers 4

    .line 292
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    shl-int/lit8 v1, v0, 0x1f

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x1

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method
