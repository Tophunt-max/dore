###### Class com.dcloud.android.v4.widget.IRefreshAble (com.dcloud.android.v4.widget.IRefreshAble)
.class public interface abstract Lcom/dcloud/android/v4/widget/IRefreshAble;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/widget/IRefreshAble$OnRefreshListener;
    }
.end annotation


# virtual methods
.method public abstract beginRefresh()V
.end method

.method public abstract endRefresh()V
.end method

.method public abstract hasRefreshOperator()Z
.end method

.method public abstract isRefreshEnable()Z
.end method

.method public abstract isRefreshing()Z
.end method

.method public abstract onInit(Landroid/view/ViewGroup;Landroid/view/View;Lcom/dcloud/android/v4/widget/IRefreshAble$OnRefreshListener;)V
.end method

.method public abstract onResize(IIF)V
.end method

.method public abstract onSelfDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract onSelfTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract parseData(Lorg/json/JSONObject;IIF)V
.end method

.method public abstract setRefreshEnable(Z)V
.end method

###### Class com.dcloud.android.v4.widget.IRefreshAble.OnRefreshListener (com.dcloud.android.v4.widget.IRefreshAble$OnRefreshListener)
.class public interface abstract Lcom/dcloud/android/v4/widget/IRefreshAble$OnRefreshListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/widget/IRefreshAble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRefreshListener"
.end annotation


# static fields
.field public static final STATE_REFRESHING:I = 0x3


# virtual methods
.method public abstract onRefresh(I)V
.end method
