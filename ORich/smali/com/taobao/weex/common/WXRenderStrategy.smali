###### Class com.taobao.weex.common.WXRenderStrategy (com.taobao.weex.common.WXRenderStrategy)
.class public final enum Lcom/taobao/weex/common/WXRenderStrategy;
.super Ljava/lang/Enum;
.source "WXRenderStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/common/WXRenderStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/common/WXRenderStrategy;

.field public static final enum APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

.field public static final enum APPEND_ONCE:Lcom/taobao/weex/common/WXRenderStrategy;

.field public static final enum DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

.field public static final enum DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

.field public static final enum JSON_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;


# instance fields
.field private flag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 22
    new-instance v0, Lcom/taobao/weex/common/WXRenderStrategy;

    const-string v1, "APPEND_ASYNC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/taobao/weex/common/WXRenderStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 23
    new-instance v1, Lcom/taobao/weex/common/WXRenderStrategy;

    const-string v3, "APPEND_ONCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/taobao/weex/common/WXRenderStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ONCE:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 24
    new-instance v3, Lcom/taobao/weex/common/WXRenderStrategy;

    const-string v5, "DATA_RENDER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/taobao/weex/common/WXRenderStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 25
    new-instance v5, Lcom/taobao/weex/common/WXRenderStrategy;

    const-string v7, "DATA_RENDER_BINARY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/taobao/weex/common/WXRenderStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 26
    new-instance v7, Lcom/taobao/weex/common/WXRenderStrategy;

    const-string v9, "JSON_RENDER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/taobao/weex/common/WXRenderStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/taobao/weex/common/WXRenderStrategy;->JSON_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/taobao/weex/common/WXRenderStrategy;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 21
    sput-object v9, Lcom/taobao/weex/common/WXRenderStrategy;->$VALUES:[Lcom/taobao/weex/common/WXRenderStrategy;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/taobao/weex/common/WXRenderStrategy;->flag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/common/WXRenderStrategy;
    .registers 2

    .line 21
    const-class v0, Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/common/WXRenderStrategy;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/common/WXRenderStrategy;
    .registers 1

    .line 21
    sget-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->$VALUES:[Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {v0}, [Lcom/taobao/weex/common/WXRenderStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/common/WXRenderStrategy;

    return-object v0
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/taobao/weex/common/WXRenderStrategy;->flag:Ljava/lang/String;

    return-object v0
.end method
