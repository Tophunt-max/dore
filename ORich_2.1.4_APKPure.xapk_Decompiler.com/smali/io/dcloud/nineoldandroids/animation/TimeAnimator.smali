###### Class io.dcloud.nineoldandroids.animation.TimeAnimator (io.dcloud.nineoldandroids.animation.TimeAnimator)
.class public Lio/dcloud/nineoldandroids/animation/TimeAnimator;
.super Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    return-void
.end method


# virtual methods
.method animateValue(F)V
    .registers 2

    return-void
.end method

.method animationFrame(J)Z
    .registers 14

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 3
    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_12

    .line 4
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    goto :goto_1a

    :cond_12
    sub-long v3, p1, v3

    .line 6
    iput-wide v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v3, -0x1

    .line 8
    iput-wide v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 11
    :cond_1a
    :goto_1a
    iget-object v5, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mListener:Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;

    if-eqz v5, :cond_32

    .line 12
    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long v7, p1, v3

    .line 13
    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_29

    goto :goto_2b

    :cond_29
    sub-long v1, p1, v3

    :goto_2b
    move-wide v9, v1

    .line 14
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    move-object v6, p0

    .line 15
    invoke-interface/range {v5 .. v10}, Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;->onTimeUpdate(Lio/dcloud/nineoldandroids/animation/TimeAnimator;JJ)V

    :cond_32
    const/4 p1, 0x0

    return p1
.end method

.method initAnimation()V
    .registers 1

    return-void
.end method

.method public setTimeListener(Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mListener:Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.TimeAnimator.TimeListener (io.dcloud.nineoldandroids.animation.TimeAnimator$TimeListener)
.class public interface abstract Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/TimeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimeListener"
.end annotation


# virtual methods
.method public abstract onTimeUpdate(Lio/dcloud/nineoldandroids/animation/TimeAnimator;JJ)V
.end method
