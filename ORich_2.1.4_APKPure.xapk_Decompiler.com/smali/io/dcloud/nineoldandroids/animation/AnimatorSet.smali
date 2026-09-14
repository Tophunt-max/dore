###### Class io.dcloud.nineoldandroids.animation.AnimatorSet (io.dcloud.nineoldandroids.animation.AnimatorSet)
.class public final Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.super Lio/dcloud/nineoldandroids/animation/Animator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;,
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;,
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;,
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;,
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;
    }
.end annotation


# instance fields
.field private mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

.field private mDuration:J

.field private mNeedsSort:Z

.field private mNodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

.field private mSortedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStarted:Z

.field mTerminated:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/Animator;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 60
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    const-wide/16 v1, 0x0

    .line 63
    iput-wide v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    .line 66
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    const-wide/16 v0, -0x1

    .line 72
    iput-wide v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDuration:J

    return-void
.end method

.method static synthetic access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    return-void
.end method

.method static synthetic access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method private sortNodes()V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9c

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_16
    if-lt v3, v2, :cond_83

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :goto_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3d

    .line 32
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 33
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_35

    goto/16 :goto_a5

    .line 34
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_42
    if-lt v2, v5, :cond_4e

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1d

    .line 53
    :cond_4e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 54
    iget-object v6, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v6, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v6, :cond_80

    .line 56
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_62
    if-lt v7, v6, :cond_65

    goto :goto_80

    .line 58
    :cond_65
    iget-object v8, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 59
    iget-object v9, v8, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    iget-object v9, v8, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_7d

    .line 61
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    add-int/lit8 v7, v7, 0x1

    goto :goto_62

    :cond_80
    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 62
    :cond_83
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 63
    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v5, :cond_95

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_98

    .line 64
    :cond_95
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_98
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    .line 97
    :cond_9c
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_a3
    if-lt v2, v0, :cond_a6

    :goto_a5
    return-void

    .line 99
    :cond_a6
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 100
    iget-object v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v4, :cond_e9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e9

    .line 101
    iget-object v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_bf
    if-lt v5, v4, :cond_c2

    goto :goto_e9

    .line 103
    :cond_c2
    iget-object v6, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 104
    iget-object v7, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-nez v7, :cond_d5

    .line 105
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 107
    :cond_d5
    iget-object v7, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v8, v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e6

    .line 108
    iget-object v7, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v6, v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e6
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 114
    :cond_e9
    :goto_e9
    iput-boolean v1, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a3
.end method


# virtual methods
.method public cancel()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 2
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_2b

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    move-object v0, v1

    goto :goto_2b

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 7
    invoke-interface {v0, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_19

    .line 10
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 13
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->cancel()V

    goto :goto_5c

    .line 14
    :cond_3b
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5c

    .line 15
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_5c

    :cond_50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 16
    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Animator;->cancel()V

    goto :goto_49

    :cond_5c
    :goto_5c
    if-eqz v0, :cond_73

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_69

    goto :goto_73

    :cond_69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 21
    invoke-interface {v1, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_62

    :cond_73
    :goto_73
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    :cond_76
    return-void
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/Animator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet;
    .registers 9

    .line 2
    invoke-super {p0}, Lio/dcloud/nineoldandroids/animation/Animator;->clone()Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 13
    iput-boolean v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7c

    .line 55
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_41
    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_48

    return-object v0

    :cond_48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 57
    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v2, :cond_41

    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_63

    goto :goto_41

    :cond_63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 59
    iget-object v6, v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 60
    new-instance v7, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 61
    iget v5, v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    .line 62
    invoke-direct {v7, v6, v5}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 64
    invoke-virtual {v4, v7}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V

    goto :goto_5c

    .line 65
    :cond_7c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 66
    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    move-result-object v4

    .line 67
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v3, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v3, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 71
    iput-object v3, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 72
    iput-object v3, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 73
    iput-object v3, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 74
    iput-object v3, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 77
    iget-object v4, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 80
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_aa
    :goto_aa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_c8

    if-eqz v3, :cond_35

    .line 89
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_be

    goto/16 :goto_35

    :cond_be
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 90
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b6

    .line 91
    :cond_c8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 92
    instance-of v7, v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v7, :cond_aa

    if-nez v3, :cond_d9

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :cond_d9
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa
.end method

.method public end()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 2
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 3
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_40

    .line 5
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->sortNodes()V

    .line 6
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_40

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 7
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-nez v2, :cond_38

    .line 8
    new-instance v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v2, p0, p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet;)V

    iput-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    .line 10
    :cond_38
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v1, v2}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_20

    .line 13
    :cond_40
    :goto_40
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_47

    .line 14
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->cancel()V

    .line 16
    :cond_47
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_68

    .line 17
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_68

    :cond_5c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 18
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->end()V

    goto :goto_55

    .line 21
    :cond_68
    :goto_68
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_87

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7d

    goto :goto_87

    :cond_7d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 25
    invoke-interface {v1, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_76

    :cond_87
    :goto_87
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    :cond_8a
    return-void
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    return-object v0

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 3
    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public getDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getStartDelay()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 2
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .registers 3

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 2
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/Animator;)V

    return-object v0

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public playSequentially(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3a

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3a

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1c

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_3a

    .line 12
    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-lt v2, v1, :cond_24

    goto :goto_3a

    .line 13
    :cond_24
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1, v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->before(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_1c

    :cond_3a
    :goto_3a
    return-void
.end method

.method public varargs playSequentially([Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 6

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_f

    .line 3
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_22

    .line 5
    :cond_f
    :goto_f
    array-length v1, p1

    sub-int/2addr v1, v0

    if-lt v2, v1, :cond_14

    goto :goto_22

    .line 6
    :cond_14
    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->before(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_f

    :cond_22
    :goto_22
    return-void
.end method

.method public playTogether(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_28

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v0, 0x0

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_28

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator;

    if-nez v0, :cond_24

    .line 10
    invoke-virtual {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v0

    goto :goto_10

    .line 12
    :cond_24
    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->with(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_10

    :cond_28
    :goto_28
    return-void
.end method

.method public varargs playTogether([Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 5

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v1, 0x0

    .line 2
    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 3
    :goto_c
    array-length v2, p1

    if-lt v0, v2, :cond_10

    goto :goto_18

    .line 4
    :cond_10
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->with(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    :goto_18
    return-void
.end method

.method public bridge synthetic setDuration(J)Lio/dcloud/nineoldandroids/animation/Animator;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lio/dcloud/nineoldandroids/animation/AnimatorSet;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_21

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    .line 7
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDuration:J

    return-object p0

    .line 8
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 11
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1, p1, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/Animator;

    goto :goto_c

    .line 12
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration must be a value of zero or greater"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 2
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1, p1}, Lio/dcloud/nineoldandroids/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_6
.end method

.method public setStartDelay(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 2
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    .line 3
    instance-of v2, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    if-eqz v2, :cond_1f

    .line 4
    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_6

    .line 5
    :cond_1f
    instance-of v2, v1, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    if-eqz v2, :cond_6

    .line 6
    check-cast v1, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v1, p1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public setupEndValues()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 2
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->setupEndValues()V

    goto :goto_6
.end method

.method public setupStartValues()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 2
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->setupStartValues()V

    goto :goto_6
.end method

.method public start()V
    .registers 11

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 6
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->sortNodes()V

    .line 8
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-lt v2, v1, :cond_105

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_18
    if-lt v2, v1, :cond_ac

    .line 50
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_40

    .line 51
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_60

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 52
    iget-object v3, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    .line 53
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_40
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 56
    fill-array-data v1, :array_144

    invoke-static {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 57
    iget-wide v6, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual {v1, v6, v7}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 58
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    new-instance v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;

    invoke-direct {v2, p0, v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 74
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    .line 76
    :goto_60
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_7e

    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_6f
    if-lt v3, v2, :cond_72

    goto :goto_7e

    .line 81
    :cond_72
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v6, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 84
    :cond_7e
    :goto_7e
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_ab

    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    cmp-long v3, v1, v4

    if-nez v3, :cond_ab

    .line 87
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 88
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_ab

    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_9c
    if-lt v0, v2, :cond_9f

    goto :goto_ab

    .line 93
    :cond_9f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    :cond_ab
    :goto_ab
    return-void

    .line 94
    :cond_ac
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 95
    iget-object v5, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-nez v5, :cond_bf

    .line 96
    new-instance v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v5, p0, p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet;)V

    iput-object v5, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    .line 98
    :cond_bf
    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v5, :cond_f7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_ca

    goto :goto_f7

    .line 101
    :cond_ca
    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_d1
    if-lt v6, v5, :cond_de

    .line 107
    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    goto :goto_fa

    .line 108
    :cond_de
    iget-object v7, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 109
    iget-object v8, v7, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v8, v8, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    .line 110
    new-instance v9, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;

    iget v7, v7, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    invoke-direct {v9, p0, v4, v7}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 111
    invoke-virtual {v8, v9}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d1

    .line 112
    :cond_f7
    :goto_f7
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_fa
    iget-object v4, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    iget-object v5, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v4, v5}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_18

    .line 123
    :cond_105
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 125
    iget-object v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_13f

    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_13f

    .line 128
    new-instance v5, Ljava/util/ArrayList;

    .line 129
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_124
    :goto_124
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_12b

    goto :goto_13f

    :cond_12b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 133
    instance-of v6, v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;

    if-nez v6, :cond_139

    .line 134
    instance-of v6, v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v6, :cond_124

    .line 135
    :cond_139
    iget-object v6, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v6, v5}, Lio/dcloud/nineoldandroids/animation/Animator;->removeListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_124

    :cond_13f
    :goto_13f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    nop

    :array_144
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

###### Class io.dcloud.nineoldandroids.animation.AnimatorSet.AnonymousClass1 (io.dcloud.nineoldandroids.animation.AnimatorSet$1)
.class Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;
.super Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

.field private final synthetic val$nodesToStart:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    .line 508
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 509
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->canceled:Z

    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 5

    .line 1
    iget-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->canceled:Z

    if-nez p1, :cond_29

    .line 2
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_b
    if-lt v0, p1, :cond_e

    goto :goto_29

    .line 4
    :cond_e
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 5
    iget-object v2, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    .line 6
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_29
    :goto_29
    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.AnimatorSet.AnimatorSetListener (io.dcloud.nineoldandroids.animation.AnimatorSet$AnimatorSetListener)
.class Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorSetListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

.field final synthetic this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-boolean v0, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-nez v0, :cond_30

    .line 4
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_30

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_30

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_1b
    if-lt v0, p1, :cond_1e

    goto :goto_30

    .line 8
    :cond_1e
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v1, v2}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_30
    :goto_30
    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 7

    .line 1
    invoke-virtual {p1, p0}, Lio/dcloud/nineoldandroids/animation/Animator;->removeListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-boolean p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-nez p1, :cond_68

    .line 8
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$4(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2d
    if-lt v3, v1, :cond_30

    goto :goto_3b

    .line 12
    :cond_30
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-boolean v4, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    if-nez v4, :cond_65

    const/4 v0, 0x0

    :goto_3b
    if-eqz v0, :cond_68

    .line 20
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_5f

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_4e
    if-lt v1, v0, :cond_51

    goto :goto_5f

    .line 25
    :cond_51
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v3, v4}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 28
    :cond_5f
    :goto_5f
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$5(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Z)V

    goto :goto_68

    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_68
    :goto_68
    return-void
.end method

.method public onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.AnimatorSet.Builder (io.dcloud.nineoldandroids.animation.AnimatorSet$Builder)
.class public Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

.field final synthetic this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_2c

    .line 4
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lio/dcloud/nineoldandroids/animation/Animator;)V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 5
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-void
.end method


# virtual methods
.method public after(J)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 9
    fill-array-data v0, :array_12

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 11
    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->after(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    return-object p0

    nop

    :array_12
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public after(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_25

    .line 3
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 4
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_25
    new-instance p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 8
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V

    return-object p0
.end method

.method public before(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_25

    .line 3
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 4
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_25
    new-instance p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 8
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V

    return-object p0
.end method

.method public with(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_25

    .line 3
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 4
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_25
    new-instance p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 8
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V

    return-object p0
.end method

###### Class io.dcloud.nineoldandroids.animation.AnimatorSet.Dependency (io.dcloud.nineoldandroids.animation.AnimatorSet$Dependency)
.class Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dependency"
.end annotation


# static fields
.field static final AFTER:I = 0x1

.field static final WITH:I


# instance fields
.field public node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

.field public rule:I


# direct methods
.method public constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 3
    iput p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.AnimatorSet.DependencyListener (io.dcloud.nineoldandroids.animation.AnimatorSet$DependencyListener)
.class Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

.field private mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

.field private mRule:I


# direct methods
.method public constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    .line 3
    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 4
    iput p3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    return-void
.end method

.method private startIfReady(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-boolean v0, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-lt v2, v1, :cond_14

    goto :goto_2e

    .line 8
    :cond_14
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v3, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 9
    iget v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    iget v5, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    if-ne v4, v5, :cond_54

    .line 10
    iget-object v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v4, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    if-ne v4, p1, :cond_54

    .line 14
    invoke-virtual {p1, p0}, Lio/dcloud/nineoldandroids/animation/Animator;->removeListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    move-object v0, v3

    .line 18
    :goto_2e
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_53

    .line 21
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    .line 22
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v0, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    return-void

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 4

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->startIfReady(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_8
    return-void
.end method

.method public onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->startIfReady(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_7
    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.AnimatorSet.Node (io.dcloud.nineoldandroids.animation.AnimatorSet$Node)
.class Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public animation:Lio/dcloud/nineoldandroids/animation/Animator;

.field public dependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field

.field public done:Z

.field public nodeDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public nodeDependents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public tmpDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 19
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 26
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    .line 43
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    return-void
.end method


# virtual methods
.method public addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 5
    :cond_12
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 7
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_28
    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 10
    iget-object v0, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-nez v0, :cond_35

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 13
    :cond_35
    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;
    .registers 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 3
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->clone()Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;
    :try_end_e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 6
    :catch_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method
