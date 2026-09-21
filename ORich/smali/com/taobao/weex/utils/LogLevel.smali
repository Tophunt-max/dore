###### Class com.taobao.weex.utils.LogLevel (com.taobao.weex.utils.LogLevel)
.class public final enum Lcom/taobao/weex/utils/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"

# interfaces
.implements Lio/dcloud/feature/uniapp/utils/AbsLogLevel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/utils/LogLevel;",
        ">;",
        "Lio/dcloud/feature/uniapp/utils/AbsLogLevel;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/utils/LogLevel;

.field public static final enum ALL:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum DEBUG:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum ERROR:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum INFO:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum OFF:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum TLOG:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum VERBOSE:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum WARN:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum WTF:Lcom/taobao/weex/utils/LogLevel;


# instance fields
.field name:Ljava/lang/String;

.field priority:I

.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 29
    new-instance v6, Lcom/taobao/weex/utils/LogLevel;

    const-string v1, "OFF"

    const/4 v2, 0x0

    const-string v3, "off"

    const/16 v4, 0x8

    const/4 v5, 0x7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/taobao/weex/utils/LogLevel;->OFF:Lcom/taobao/weex/utils/LogLevel;

    .line 30
    new-instance v0, Lcom/taobao/weex/utils/LogLevel;

    const-string v8, "WTF"

    const/4 v9, 0x1

    const-string v10, "wtf"

    const/4 v11, 0x7

    const/4 v12, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/utils/LogLevel;->WTF:Lcom/taobao/weex/utils/LogLevel;

    .line 31
    new-instance v1, Lcom/taobao/weex/utils/LogLevel;

    const-string v14, "TLOG"

    const/4 v15, 0x2

    const-string v16, "tlog"

    const/16 v17, 0x6

    const/16 v18, 0x6

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/taobao/weex/utils/LogLevel;->TLOG:Lcom/taobao/weex/utils/LogLevel;

    .line 32
    new-instance v2, Lcom/taobao/weex/utils/LogLevel;

    const-string v8, "ERROR"

    const/4 v9, 0x3

    const-string v10, "error"

    const/4 v11, 0x5

    const/4 v12, 0x6

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v2, Lcom/taobao/weex/utils/LogLevel;->ERROR:Lcom/taobao/weex/utils/LogLevel;

    .line 33
    new-instance v3, Lcom/taobao/weex/utils/LogLevel;

    const-string v14, "WARN"

    const/4 v15, 0x4

    const-string v16, "warn"

    const/16 v17, 0x4

    const/16 v18, 0x5

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    .line 34
    new-instance v4, Lcom/taobao/weex/utils/LogLevel;

    const-string v8, "INFO"

    const/4 v9, 0x5

    const-string v10, "info"

    const/4 v11, 0x3

    const/4 v12, 0x4

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v4, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    .line 35
    new-instance v5, Lcom/taobao/weex/utils/LogLevel;

    const-string v14, "DEBUG"

    const/4 v15, 0x6

    const-string v16, "debug"

    const/16 v17, 0x2

    const/16 v18, 0x3

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v5, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    .line 36
    new-instance v13, Lcom/taobao/weex/utils/LogLevel;

    const-string v8, "VERBOSE"

    const/4 v9, 0x7

    const-string v10, "verbose"

    const/4 v11, 0x1

    const/4 v12, 0x2

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v13, Lcom/taobao/weex/utils/LogLevel;->VERBOSE:Lcom/taobao/weex/utils/LogLevel;

    .line 37
    new-instance v7, Lcom/taobao/weex/utils/LogLevel;

    const-string v15, "ALL"

    const/16 v16, 0x8

    const-string v17, "all"

    const/16 v18, 0x0

    const/16 v19, 0x2

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v7, Lcom/taobao/weex/utils/LogLevel;->ALL:Lcom/taobao/weex/utils/LogLevel;

    const/16 v8, 0x9

    new-array v8, v8, [Lcom/taobao/weex/utils/LogLevel;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v0, v8, v6

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v7, v8, v0

    .line 28
    sput-object v8, Lcom/taobao/weex/utils/LogLevel;->$VALUES:[Lcom/taobao/weex/utils/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/taobao/weex/utils/LogLevel;->name:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/taobao/weex/utils/LogLevel;->value:I

    .line 45
    iput p5, p0, Lcom/taobao/weex/utils/LogLevel;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/utils/LogLevel;
    .registers 2

    .line 28
    const-class v0, Lcom/taobao/weex/utils/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/utils/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/utils/LogLevel;
    .registers 1

    .line 28
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->$VALUES:[Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v0}, [Lcom/taobao/weex/utils/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/utils/LogLevel;

    return-object v0
.end method


# virtual methods
.method public compare(Lio/dcloud/feature/uniapp/utils/AbsLogLevel;)I
    .registers 3

    .line 65
    iget v0, p0, Lcom/taobao/weex/utils/LogLevel;->value:I

    invoke-interface {p1}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/taobao/weex/utils/LogLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/taobao/weex/utils/LogLevel;->priority:I

    return v0
.end method

.method public getValue()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/taobao/weex/utils/LogLevel;->value:I

    return v0
.end method
