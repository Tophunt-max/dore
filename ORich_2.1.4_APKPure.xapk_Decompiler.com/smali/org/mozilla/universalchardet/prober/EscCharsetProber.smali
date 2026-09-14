###### Class org.mozilla.universalchardet.prober.EscCharsetProber (org.mozilla.universalchardet.prober.EscCharsetProber)
.class public Lorg/mozilla/universalchardet/prober/EscCharsetProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field private static final hzsModel:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

.field private static final iso2022cnModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

.field private static final iso2022jpModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

.field private static final iso2022krModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;


# instance fields
.field private activeSM:I

.field private codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private detectedCharset:Ljava/lang/String;

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->hzsModel:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    .line 2
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022cnModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    .line 3
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022jpModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    .line 4
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022krModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 3
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 4
    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->hzsModel:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022cnModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 6
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022jpModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022krModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 9
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->detectedCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .registers 2

    const v0, 0x3f7d70a4    # 0.99f

    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 10

    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_4e

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_4e

    .line 2
    iget v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_d
    if-ltz v0, :cond_4b

    .line 3
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-object v2, v2, v0

    aget-byte v3, p1, p2

    invoke-virtual {v2, v3}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    move-result v2

    if-ne v2, v1, :cond_34

    .line 5
    iget v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    if-gtz v2, :cond_27

    .line 7
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p1

    :cond_27
    if-eq v0, v2, :cond_48

    .line 11
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-object v4, v3, v2

    .line 12
    aget-object v5, v3, v0

    aput-object v5, v3, v2

    .line 13
    aput-object v4, v3, v0

    goto :goto_48

    :cond_34
    const/4 v3, 0x2

    if-ne v2, v3, :cond_48

    .line 16
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 17
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCodingStateMachine()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->detectedCharset:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p1

    :cond_48
    :goto_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_4b
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 23
    :cond_4e
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p1
.end method

.method public reset()V
    .registers 4

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    const/4 v0, 0x0

    .line 2
    :goto_5
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5
    :cond_12
    array-length v0, v1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->detectedCharset:Ljava/lang/String;

    return-void
.end method

.method public setOption()V
    .registers 1

    return-void
.end method
