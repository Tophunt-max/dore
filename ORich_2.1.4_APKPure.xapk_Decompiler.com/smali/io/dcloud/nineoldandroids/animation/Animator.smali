###### Class io.dcloud.nineoldandroids.animation.Animator (io.dcloud.nineoldandroids.animation.Animator)
.class public abstract Lio/dcloud/nineoldandroids/animation/Animator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;
    }
.end annotation


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .registers 1

    return-void
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/Animator;
    .registers 7

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Animator;

    .line 3
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_27

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_16
    if-lt v3, v2, :cond_19

    goto :goto_27

    .line 8
    :cond_19
    iget-object v4, v0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_24} :catch_28

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_27
    :goto_27
    return-object v0

    .line 13
    :catch_28
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
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Animator;->clone()Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .registers 1

    return-void
.end method

.method public abstract getDuration()J
.end method

.method public getListeners()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract getStartDelay()J
.end method

.method public abstract isRunning()Z
.end method

.method public isStarted()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public removeAllListeners()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    :cond_a
    return-void
.end method

.method public removeListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    :cond_13
    return-void
.end method

.method public abstract setDuration(J)Lio/dcloud/nineoldandroids/animation/Animator;
.end method

.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)V
.end method

.method public abstract setStartDelay(J)V
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public setupEndValues()V
    .registers 1

    return-void
.end method

.method public setupStartValues()V
    .registers 1

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.Animator.AnimatorListener (io.dcloud.nineoldandroids.animation.Animator$AnimatorListener)
.class public interface abstract Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimatorListener"
.end annotation


# virtual methods
.method public abstract onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
.end method

.method public abstract onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
.end method

.method public abstract onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V
.end method

.method public abstract onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V
.end method
