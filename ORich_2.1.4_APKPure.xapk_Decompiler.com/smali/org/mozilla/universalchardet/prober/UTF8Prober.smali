###### Class org.mozilla.universalchardet.prober.UTF8Prober (org.mozilla.universalchardet.prober.UTF8Prober)
.class public Lorg/mozilla/universalchardet/prober/UTF8Prober;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field public static final ONE_CHAR_PROB:F = 0.5f

.field private static final smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# instance fields
.field private codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private numOfMBChar:I

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    .line 3
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v1, Lorg/mozilla/universalchardet/prober/UTF8Prober;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 5
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/UTF8Prober;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .registers 4

    .line 1
    iget v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    const v1, 0x3f7d70a4    # 0.99f

    const/4 v2, 0x6

    if-ge v0, v2, :cond_18

    const/4 v0, 0x0

    .line 2
    :goto_9
    iget v2, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    if-ge v0, v2, :cond_14

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0

    :cond_18
    return v1
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 7

    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2d

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-byte v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 3
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_2d

    :cond_13
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    .line 7
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_2d

    :cond_1b
    if-nez v0, :cond_2a

    .line 11
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCurrentCharLen()I

    move-result v0

    if-lt v0, v2, :cond_2a

    .line 12
    iget v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    :cond_2a
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 17
    :cond_2d
    :goto_2d
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne p1, p2, :cond_42

    .line 18
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/UTF8Prober;->getConfidence()F

    move-result p1

    const p2, 0x3f733333    # 0.95f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_42

    .line 19
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 23
    :cond_42
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p1
.end method

.method public reset()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    .line 3
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-void
.end method

.method public setOption()V
    .registers 1

    return-void
.end method
