###### Class com.taobao.weex.dom.WXImageQuality (com.taobao.weex.dom.WXImageQuality)
.class public final enum Lcom/taobao/weex/dom/WXImageQuality;
.super Ljava/lang/Enum;
.source "WXImageQuality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/dom/WXImageQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/dom/WXImageQuality;

.field public static final enum AUTO:Lcom/taobao/weex/dom/WXImageQuality;

.field public static final enum HIGH:Lcom/taobao/weex/dom/WXImageQuality;

.field public static final enum LOW:Lcom/taobao/weex/dom/WXImageQuality;

.field public static final enum NORMAL:Lcom/taobao/weex/dom/WXImageQuality;

.field public static final enum ORIGINAL:Lcom/taobao/weex/dom/WXImageQuality;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 23
    new-instance v0, Lcom/taobao/weex/dom/WXImageQuality;

    const-string v1, "ORIGINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/dom/WXImageQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/WXImageQuality;->ORIGINAL:Lcom/taobao/weex/dom/WXImageQuality;

    .line 25
    new-instance v1, Lcom/taobao/weex/dom/WXImageQuality;

    const-string v3, "LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/dom/WXImageQuality;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/dom/WXImageQuality;->LOW:Lcom/taobao/weex/dom/WXImageQuality;

    .line 27
    new-instance v3, Lcom/taobao/weex/dom/WXImageQuality;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/dom/WXImageQuality;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/dom/WXImageQuality;->NORMAL:Lcom/taobao/weex/dom/WXImageQuality;

    .line 29
    new-instance v5, Lcom/taobao/weex/dom/WXImageQuality;

    const-string v7, "HIGH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/taobao/weex/dom/WXImageQuality;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/taobao/weex/dom/WXImageQuality;->HIGH:Lcom/taobao/weex/dom/WXImageQuality;

    .line 31
    new-instance v7, Lcom/taobao/weex/dom/WXImageQuality;

    const-string v9, "AUTO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/taobao/weex/dom/WXImageQuality;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/taobao/weex/dom/WXImageQuality;->AUTO:Lcom/taobao/weex/dom/WXImageQuality;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/taobao/weex/dom/WXImageQuality;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 21
    sput-object v9, Lcom/taobao/weex/dom/WXImageQuality;->$VALUES:[Lcom/taobao/weex/dom/WXImageQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/dom/WXImageQuality;
    .registers 2

    .line 21
    const-class v0, Lcom/taobao/weex/dom/WXImageQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/dom/WXImageQuality;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/dom/WXImageQuality;
    .registers 1

    .line 21
    sget-object v0, Lcom/taobao/weex/dom/WXImageQuality;->$VALUES:[Lcom/taobao/weex/dom/WXImageQuality;

    invoke-virtual {v0}, [Lcom/taobao/weex/dom/WXImageQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/dom/WXImageQuality;

    return-object v0
.end method
