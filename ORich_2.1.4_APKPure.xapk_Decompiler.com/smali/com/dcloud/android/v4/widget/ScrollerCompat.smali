###### Class com.dcloud.android.v4.widget.ScrollerCompat (com.dcloud.android.v4.widget.ScrollerCompat)
.class public Lcom/dcloud/android/v4/widget/ScrollerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;,
        Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplBase;,
        Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;,
        Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# instance fields
.field mScroller:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 3
    new-instance v0, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;

    invoke-direct {v0}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    goto :goto_21

    :cond_e
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1a

    .line 5
    new-instance v0, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;

    invoke-direct {v0}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    goto :goto_21

    .line 7
    :cond_1a
    new-instance v0, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplBase;

    invoke-direct {v0}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplBase;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    :goto_21
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/dcloud/android/v4/widget/ScrollerCompat;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/dcloud/android/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lcom/dcloud/android/v4/widget/ScrollerCompat;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lcom/dcloud/android/v4/widget/ScrollerCompat;
    .registers 3

    .line 2
    new-instance v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;

    invoke-direct {v0, p0, p1}, Lcom/dcloud/android/v4/widget/ScrollerCompat;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public abortAnimation()V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->abortAnimation(Ljava/lang/Object;)V

    return-void
.end method

.method public computeScrollOffset()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->computeScrollOffset(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIII)V
    .registers 20

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v10, p0

    iget-object v1, v10, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->fling(Ljava/lang/Object;IIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 24

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    move-object v12, p0

    iget-object v1, v12, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v0 .. v11}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->fling(Ljava/lang/Object;IIIIIIIIII)V

    return-void
.end method

.method public getCurrVelocity()F
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrVelocity(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getCurrX()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getCurrY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalX()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getFinalX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalY()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->getFinalY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOverScrolled()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->isOverScrolled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .registers 6

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->notifyHorizontalEdgeReached(Ljava/lang/Object;III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .registers 6

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->notifyVerticalEdgeReached(Ljava/lang/Object;III)V

    return-void
.end method

.method public startScroll(IIII)V
    .registers 11

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->startScroll(Ljava/lang/Object;IIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .registers 13

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->IMPL:Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/ScrollerCompat;->mScroller:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;->startScroll(Ljava/lang/Object;IIIII)V

    return-void
.end method

###### Class com.dcloud.android.v4.widget.ScrollerCompat.ScrollerCompatImpl (com.dcloud.android.v4.widget.ScrollerCompat$ScrollerCompatImpl)
.class interface abstract Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ScrollerCompatImpl"
.end annotation


# virtual methods
.method public abstract abortAnimation(Ljava/lang/Object;)V
.end method

.method public abstract computeScrollOffset(Ljava/lang/Object;)Z
.end method

.method public abstract createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
.end method

.method public abstract fling(Ljava/lang/Object;IIIIIIII)V
.end method

.method public abstract fling(Ljava/lang/Object;IIIIIIIIII)V
.end method

.method public abstract getCurrVelocity(Ljava/lang/Object;)F
.end method

.method public abstract getCurrX(Ljava/lang/Object;)I
.end method

.method public abstract getCurrY(Ljava/lang/Object;)I
.end method

.method public abstract getFinalX(Ljava/lang/Object;)I
.end method

.method public abstract getFinalY(Ljava/lang/Object;)I
.end method

.method public abstract isFinished(Ljava/lang/Object;)Z
.end method

.method public abstract isOverScrolled(Ljava/lang/Object;)Z
.end method

.method public abstract notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
.end method

.method public abstract notifyVerticalEdgeReached(Ljava/lang/Object;III)V
.end method

.method public abstract startScroll(Ljava/lang/Object;IIII)V
.end method

.method public abstract startScroll(Ljava/lang/Object;IIIII)V
.end method

###### Class com.dcloud.android.v4.widget.ScrollerCompat.ScrollerCompatImplBase (com.dcloud.android.v4.widget.ScrollerCompat$ScrollerCompatImplBase)
.class Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortAnimation(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p1

    return p1
.end method

.method public createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .registers 4

    if-eqz p2, :cond_8

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto :goto_d

    :cond_8
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    :goto_d
    return-object v0
.end method

.method public fling(Ljava/lang/Object;IIIIIIII)V
    .registers 19

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return-void
.end method

.method public fling(Ljava/lang/Object;IIIIIIIIII)V
    .registers 21

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return-void
.end method

.method public getCurrVelocity(Ljava/lang/Object;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getCurrX(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    return p1
.end method

.method public getCurrY(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    return p1
.end method

.method public getFinalX(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    return p1
.end method

.method public getFinalY(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    return p1
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    return p1
.end method

.method public isOverScrolled(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
    .registers 5

    return-void
.end method

.method public notifyVerticalEdgeReached(Ljava/lang/Object;III)V
    .registers 5

    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIII)V
    .registers 6

    .line 1
    check-cast p1, Landroid/widget/Scroller;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/Scroller;->startScroll(IIII)V

    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
    .registers 13

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

###### Class com.dcloud.android.v4.widget.ScrollerCompat.ScrollerCompatImplGingerbread (com.dcloud.android.v4.widget.ScrollerCompat$ScrollerCompatImplGingerbread)
.class Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplGingerbread"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortAnimation(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->abortAnimation(Ljava/lang/Object;)V

    return-void
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->computeScrollOffset(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fling(Ljava/lang/Object;IIIIIIII)V
    .registers 10

    .line 1
    invoke-static/range {p1 .. p9}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->fling(Ljava/lang/Object;IIIIIIII)V

    return-void
.end method

.method public fling(Ljava/lang/Object;IIIIIIIIII)V
    .registers 12

    .line 2
    invoke-static/range {p1 .. p11}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->fling(Ljava/lang/Object;IIIIIIIIII)V

    return-void
.end method

.method public getCurrVelocity(Ljava/lang/Object;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getCurrX(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->getCurrX(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getCurrY(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->getCurrY(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getFinalX(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->getFinalX(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getFinalY(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->getFinalY(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->isFinished(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isOverScrolled(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->isOverScrolled(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->notifyHorizontalEdgeReached(Ljava/lang/Object;III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(Ljava/lang/Object;III)V
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->notifyVerticalEdgeReached(Ljava/lang/Object;III)V

    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIII)V
    .registers 6

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->startScroll(Ljava/lang/Object;IIII)V

    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
    .registers 7

    .line 2
    invoke-static/range {p1 .. p6}, Lcom/dcloud/android/v4/widget/ScrollerCompatGingerbread;->startScroll(Ljava/lang/Object;IIIII)V

    return-void
.end method

###### Class com.dcloud.android.v4.widget.ScrollerCompat.ScrollerCompatImplIcs (com.dcloud.android.v4.widget.ScrollerCompat$ScrollerCompatImplIcs)
.class Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;
.super Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplIcs"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrVelocity(Ljava/lang/Object;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/widget/ScrollerCompatIcs;->getCurrVelocity(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method
