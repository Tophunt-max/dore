###### Class org.mozilla.universalchardet.prober.HebrewProber (org.mozilla.universalchardet.prober.HebrewProber)
.class public Lorg/mozilla/universalchardet/prober/HebrewProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field public static final FINAL_KAF:I = 0xea

.field public static final FINAL_MEM:I = 0xed

.field public static final FINAL_NUN:I = 0xef

.field public static final FINAL_PE:I = 0xf3

.field public static final FINAL_TSADI:I = 0xf5

.field public static final MIN_FINAL_CHAR_DISTANCE:I = 0x5

.field public static final MIN_MODEL_DISTANCE:F = 0.01f

.field public static final NORMAL_KAF:I = 0xeb

.field public static final NORMAL_MEM:I = 0xee

.field public static final NORMAL_NUN:I = 0xf0

.field public static final NORMAL_PE:I = 0xf4

.field public static final NORMAL_TSADI:I = 0xf6

.field public static final SPACE:B = 0x20t


# instance fields
.field private beforePrev:B

.field private finalCharLogicalScore:I

.field private finalCharVisualScore:I

.field private logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private prev:B

.field private visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 3
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 4
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->reset()V

    return-void
.end method

.method protected static isFinal(B)Z
    .registers 2

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xea

    if-eq p0, v0, :cond_19

    const/16 v0, 0xed

    if-eq p0, v0, :cond_19

    const/16 v0, 0xef

    if-eq p0, v0, :cond_19

    const/16 v0, 0xf3

    if-eq p0, v0, :cond_19

    const/16 v0, 0xf5

    if-ne p0, v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method protected static isNonFinal(B)Z
    .registers 2

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xeb

    if-eq p0, v0, :cond_15

    const/16 v0, 0xee

    if-eq p0, v0, :cond_15

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_15

    const/16 v0, 0xf4

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_b

    .line 3
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    return-object v0

    :cond_b
    const/4 v1, -0x5

    if-gt v0, v1, :cond_11

    .line 6
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    return-object v0

    .line 10
    :cond_11
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v1

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_28

    .line 12
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    return-object v0

    :cond_28
    const v2, -0x43dc28f6    # -0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_32

    .line 15
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    return-object v0

    :cond_32
    if-gez v0, :cond_37

    .line 20
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    return-object v0

    .line 24
    :cond_37
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 2
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    if-ne v0, v1, :cond_13

    return-object v1

    .line 6
    :cond_13
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_9

    return-object v1

    :cond_9
    add-int/2addr p3, p2

    :goto_a
    if-ge p2, p3, :cond_51

    .line 8
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_34

    .line 10
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    if-eq v2, v1, :cond_48

    .line 11
    iget-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    invoke-static {v1}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isFinal(B)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 12
    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    goto :goto_48

    .line 13
    :cond_25
    iget-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    invoke-static {v1}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isNonFinal(B)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 14
    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    goto :goto_48

    .line 18
    :cond_34
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    if-ne v2, v1, :cond_48

    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 19
    invoke-static {v2}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isFinal(B)Z

    move-result v2

    if-eqz v2, :cond_48

    if-eq v0, v1, :cond_48

    .line 21
    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    .line 24
    :cond_48
    :goto_48
    iget-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    iput-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    .line 25
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 28
    :cond_51
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    .line 2
    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    const/16 v0, 0x20

    .line 6
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 7
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    return-void
.end method

.method public setModalProbers(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 2
    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    return-void
.end method

.method public setOption()V
    .registers 1

    return-void
.end method
