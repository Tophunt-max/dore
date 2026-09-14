###### Class com.dcloud.zxing2.oned.rss.expanded.decoders.CurrentParsingState (com.dcloud.zxing2.oned.rss.expanded.decoders.CurrentParsingState)
.class final Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;
    }
.end annotation


# instance fields
.field private encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

.field private position:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 3
    sget-object v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-void
.end method


# virtual methods
.method getPosition()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    return v0
.end method

.method incrementPosition(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    return-void
.end method

.method isAlpha()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isIsoIec646()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->ISO_IEC_646:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isNumeric()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method setAlpha()V
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-void
.end method

.method setIsoIec646()V
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->ISO_IEC_646:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-void
.end method

.method setNumeric()V
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-void
.end method

.method setPosition(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    return-void
.end method

###### Class com.dcloud.zxing2.oned.rss.expanded.decoders.CurrentParsingState.State (com.dcloud.zxing2.oned.rss.expanded.decoders.CurrentParsingState$State)
.class final enum Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

.field public static final enum ALPHA:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

.field public static final enum ISO_IEC_646:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

.field public static final enum NUMERIC:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    const-string v1, "NUMERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 2
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    const-string v3, "ALPHA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 3
    new-instance v3, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    const-string v5, "ISO_IEC_646"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->ISO_IEC_646:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->$VALUES:[Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;
    .registers 2

    .line 1
    const-class v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-object p0
.end method

.method public static values()[Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;
    .registers 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->$VALUES:[Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    invoke-virtual {v0}, [Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-object v0
.end method
