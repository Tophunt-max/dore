###### Class org.mozilla.universalchardet.prober.CharsetProber (org.mozilla.universalchardet.prober.CharsetProber)
.class public abstract Lorg/mozilla/universalchardet/prober/CharsetProber;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    }
.end annotation


# static fields
.field public static final ASCII_A:I = 0x61

.field public static final ASCII_A_CAPITAL:I = 0x41

.field public static final ASCII_GT:I = 0x3e

.field public static final ASCII_LT:I = 0x3c

.field public static final ASCII_SP:I = 0x20

.field public static final ASCII_Z:I = 0x7a

.field public static final ASCII_Z_CAPITAL:I = 0x5a

.field public static final SHORTCUT_THRESHOLD:F = 0.95f


# instance fields
.field private active:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/prober/CharsetProber;->active:Z

    return-void
.end method

.method private isAscii(B)Z
    .registers 2

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private isAsciiSymbol(B)Z
    .registers 3

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x41

    if-lt p1, v0, :cond_15

    const/16 v0, 0x5a

    if-le p1, v0, :cond_e

    const/16 v0, 0x61

    if-lt p1, v0, :cond_15

    :cond_e
    const/16 v0, 0x7a

    if-le p1, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method


# virtual methods
.method public filterWithEnglishLetters([BII)Ljava/nio/ByteBuffer;
    .registers 10

    .line 1
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/2addr p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_8
    if-ge p2, p3, :cond_36

    .line 11
    aget-byte v4, p1, p2

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_12

    const/4 v3, 0x0

    goto :goto_17

    :cond_12
    const/16 v5, 0x3c

    if-ne v4, v5, :cond_17

    const/4 v3, 0x1

    .line 19
    :cond_17
    :goto_17
    invoke-direct {p0, v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAscii(B)Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-direct {p0, v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAsciiSymbol(B)Z

    move-result v4

    if-eqz v4, :cond_33

    if-le p2, v2, :cond_31

    if-nez v3, :cond_31

    sub-int v4, p2, v2

    .line 23
    invoke-virtual {v0, p1, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v2, 0x20

    .line 24
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_31
    add-int/lit8 v2, p2, 0x1

    :cond_33
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_36
    if-nez v3, :cond_3e

    if-le p2, v2, :cond_3e

    sub-int/2addr p2, v2

    .line 35
    invoke-virtual {v0, p1, v2, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_3e
    return-object v0
.end method

.method public filterWithoutEnglishLetters([BII)Ljava/nio/ByteBuffer;
    .registers 10

    .line 1
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/2addr p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_8
    if-ge p2, p3, :cond_31

    .line 11
    aget-byte v4, p1, p2

    .line 12
    invoke-direct {p0, v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAscii(B)Z

    move-result v5

    if-nez v5, :cond_14

    const/4 v3, 0x1

    goto :goto_2e

    .line 14
    :cond_14
    invoke-direct {p0, v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAsciiSymbol(B)Z

    move-result v4

    if-eqz v4, :cond_2e

    if-eqz v3, :cond_2c

    if-le p2, v2, :cond_2c

    sub-int v3, p2, v2

    .line 20
    invoke-virtual {v0, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v2, 0x20

    .line 21
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    goto :goto_2e

    :cond_2c
    add-int/lit8 v2, p2, 0x1

    :cond_2e
    :goto_2e
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_31
    if-eqz v3, :cond_39

    if-le p2, v2, :cond_39

    sub-int/2addr p2, v2

    .line 33
    invoke-virtual {v0, p1, v2, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_39
    return-object v0
.end method

.method public abstract getCharSetName()Ljava/lang/String;
.end method

.method public abstract getConfidence()F
.end method

.method public abstract getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
.end method

.method public abstract handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
.end method

.method public isActive()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/prober/CharsetProber;->active:Z

    return v0
.end method

.method public abstract reset()V
.end method

.method public setActive(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/universalchardet/prober/CharsetProber;->active:Z

    return-void
.end method

.method public abstract setOption()V
.end method

###### Class org.mozilla.universalchardet.prober.CharsetProber.ProbingState (org.mozilla.universalchardet.prober.CharsetProber$ProbingState)
.class public final enum Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/universalchardet/prober/CharsetProber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProbingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field public static final enum DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field public static final enum FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field public static final enum NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    const-string v1, "DETECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    new-instance v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    const-string v3, "FOUND_IT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 3
    new-instance v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    const-string v5, "NOT_ME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->$VALUES:[Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 2

    .line 1
    const-class v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 1

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->$VALUES:[Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    invoke-virtual {v0}, [Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method
