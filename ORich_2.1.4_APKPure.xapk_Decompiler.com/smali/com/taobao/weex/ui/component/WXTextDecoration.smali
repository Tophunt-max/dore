###### Class com.taobao.weex.ui.component.WXTextDecoration (com.taobao.weex.ui.component.WXTextDecoration)
.class public final enum Lcom/taobao/weex/ui/component/WXTextDecoration;
.super Ljava/lang/Enum;
.source "WXTextDecoration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/ui/component/WXTextDecoration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/component/WXTextDecoration;

.field public static final enum INVALID:Lcom/taobao/weex/ui/component/WXTextDecoration;

.field public static final enum LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

.field public static final enum NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

.field public static final enum UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 22
    new-instance v0, Lcom/taobao/weex/ui/component/WXTextDecoration;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/component/WXTextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/component/WXTextDecoration;->INVALID:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 23
    new-instance v1, Lcom/taobao/weex/ui/component/WXTextDecoration;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/ui/component/WXTextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 24
    new-instance v3, Lcom/taobao/weex/ui/component/WXTextDecoration;

    const-string v5, "UNDERLINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/ui/component/WXTextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 25
    new-instance v5, Lcom/taobao/weex/ui/component/WXTextDecoration;

    const-string v7, "LINETHROUGH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/taobao/weex/ui/component/WXTextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/taobao/weex/ui/component/WXTextDecoration;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 21
    sput-object v7, Lcom/taobao/weex/ui/component/WXTextDecoration;->$VALUES:[Lcom/taobao/weex/ui/component/WXTextDecoration;

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

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXTextDecoration;
    .registers 2

    .line 21
    const-class v0, Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/component/WXTextDecoration;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/ui/component/WXTextDecoration;
    .registers 1

    .line 21
    sget-object v0, Lcom/taobao/weex/ui/component/WXTextDecoration;->$VALUES:[Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/component/WXTextDecoration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/component/WXTextDecoration;

    return-object v0
.end method
