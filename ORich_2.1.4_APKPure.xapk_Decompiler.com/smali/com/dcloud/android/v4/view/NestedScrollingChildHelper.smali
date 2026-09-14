###### Class com.dcloud.android.v4.view.NestedScrollingChildHelper (com.dcloud.android.v4.view.NestedScrollingChildHelper)
.class public Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParent:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_11

    .line 2
    iget-object v1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_11

    .line 2
    iget-object v1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    if-nez p1, :cond_18

    if-eqz p2, :cond_11

    goto :goto_18

    :cond_11
    if-eqz p4, :cond_58

    .line 28
    aput v1, p4, v1

    .line 29
    aput v1, p4, v0

    goto :goto_58

    :cond_18
    :goto_18
    if-eqz p4, :cond_24

    .line 30
    iget-object v2, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 31
    aget v2, p4, v1

    .line 32
    aget v3, p4, v0

    goto :goto_26

    :cond_24
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_26
    if-nez p3, :cond_33

    .line 36
    iget-object p3, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez p3, :cond_31

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 37
    iput-object p3, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 39
    :cond_31
    iget-object p3, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 41
    :cond_33
    aput v1, p3, v1

    .line 42
    aput v1, p3, v0

    .line 43
    iget-object v4, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v4, v5, p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    if-eqz p4, :cond_4f

    .line 46
    iget-object p1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 47
    aget p1, p4, v1

    sub-int/2addr p1, v2

    aput p1, p4, v1

    .line 48
    aget p1, p4, v0

    sub-int/2addr p1, v3

    aput p1, p4, v0

    .line 50
    :cond_4f
    aget p1, p3, v1

    if-nez p1, :cond_57

    aget p1, p3, v0

    if-eqz p1, :cond_58

    :cond_57
    const/4 v1, 0x1

    :cond_58
    :goto_58
    return v1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 16

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    if-nez p1, :cond_1c

    if-nez p2, :cond_1c

    if-nez p3, :cond_1c

    if-eqz p4, :cond_15

    goto :goto_1c

    :cond_15
    if-eqz p5, :cond_47

    .line 22
    aput v1, p5, v1

    .line 23
    aput v1, p5, v0

    goto :goto_47

    :cond_1c
    :goto_1c
    if-eqz p5, :cond_28

    .line 24
    iget-object v2, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 25
    aget v2, p5, v1

    .line 26
    aget v3, p5, v0

    goto :goto_2a

    :cond_28
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 29
    :goto_2a
    iget-object v4, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v4 .. v9}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    if-eqz p5, :cond_46

    .line 33
    iget-object p1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 34
    aget p1, p5, v1

    sub-int/2addr p1, v2

    aput p1, p5, v1

    .line 35
    aget p1, p5, v0

    sub-int/2addr p1, v3

    aput p1, p5, v0

    :cond_46
    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 4
    :cond_9
    iput-boolean p1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 5
    :cond_8
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 6
    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    :goto_16
    if-eqz v0, :cond_34

    .line 9
    iget-object v3, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 10
    iput-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    .line 11
    iget-object v3, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    return v1

    .line 14
    :cond_28
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2f

    .line 15
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 17
    :cond_2f
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_16

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method public stopNestedScroll()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_c

    .line 2
    iget-object v1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    :cond_c
    return-void
.end method
