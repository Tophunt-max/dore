###### Class io.dcloud.common.adapter.ui.fresh.LoadingLayout (io.dcloud.common.adapter.ui.fresh.LoadingLayout)
.class public abstract Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout;


# instance fields
.field private mContainer:Landroid/view/View;

.field private mCurState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

.field private mPreState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->NONE:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->mCurState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 6
    iput-object p3, p0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->mPreState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 37
    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected abstract createLoadingView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public abstract getContentSize()I
.end method

.method protected getPreState()Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->mPreState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    return-object v0
.end method

.method public getState()Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->mCurState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    return-void
.end method

.method protected onNoMoreData()V
    .registers 1

    return-void
.end method

.method public onPull(F)V
    .registers 2

    return-void
.end method

.method protected onPullToRefresh()V
    .registers 1

    return-void
.end method

.method protected onRefreshing()V
    .registers 1

    return-void
.end method

.method protected onReleaseToRefresh()V
    .registers 1

    return-void
.end method

.method protected onReset()V
    .registers 1

    return-void
.end method

.method protected onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;)V
    .registers 3

    .line 1
    sget-object p2, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout$1;->$SwitchMap$io$dcloud$common$adapter$ui$fresh$ILoadingLayout$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_28

    const/4 p2, 0x2

    if-eq p1, p2, :cond_24

    const/4 p2, 0x3

    if-eq p1, p2, :cond_20

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1c

    const/4 p2, 0x5

    if-eq p1, p2, :cond_18

    goto :goto_2b

    .line 19
    :cond_18
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->onNoMoreData()V

    goto :goto_2b

    .line 20
    :cond_1c
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->onRefreshing()V

    goto :goto_2b

    .line 21
    :cond_20
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->onPullToRefresh()V

    goto :goto_2b

    .line 22
    :cond_24
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->onReleaseToRefresh()V

    goto :goto_2b

    .line 23
    :cond_28
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->onReset()V

    :goto_2b
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public setState(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->mCurState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    if-eq v0, p1, :cond_b

    .line 2
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->mPreState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 3
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->mCurState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 4
    invoke-virtual {p0, p1, v0}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;)V

    :cond_b
    return-void
.end method

.method public show(Z)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-ne p1, v0, :cond_d

    return-void

    .line 5
    :cond_d
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_1b

    const/4 v2, -0x2

    .line 8
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1d

    .line 10
    :cond_1b
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1d
    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x4

    .line 12
    :goto_21
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_24
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.fresh.LoadingLayout.AnonymousClass1 (io.dcloud.common.adapter.ui.fresh.LoadingLayout$1)
.class synthetic Lio/dcloud/common/adapter/ui/fresh/LoadingLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$dcloud$common$adapter$ui$fresh$ILoadingLayout$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->values()[Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout$1;->$SwitchMap$io$dcloud$common$adapter$ui$fresh$ILoadingLayout$State:[I

    :try_start_9
    sget-object v1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RESET:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout$1;->$SwitchMap$io$dcloud$common$adapter$ui$fresh$ILoadingLayout$State:[I

    sget-object v1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RELEASE_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout$1;->$SwitchMap$io$dcloud$common$adapter$ui$fresh$ILoadingLayout$State:[I

    sget-object v1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->PULL_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout$1;->$SwitchMap$io$dcloud$common$adapter$ui$fresh$ILoadingLayout$State:[I

    sget-object v1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->REFRESHING:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout$1;->$SwitchMap$io$dcloud$common$adapter$ui$fresh$ILoadingLayout$State:[I

    sget-object v1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->NO_MORE_DATA:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method
