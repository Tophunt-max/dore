###### Class pl.droidsonroids.gif.MultiCallback (pl.droidsonroids.gif.MultiCallback)
.class public Lpl/droidsonroids/gif/MultiCallback;
.super Ljava/lang/Object;
.source "MultiCallback.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseViewInvalidate:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/MultiCallback;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    iput-boolean p1, p0, Lpl/droidsonroids/gif/MultiCallback;->mUseViewInvalidate:Z

    return-void
.end method


# virtual methods
.method public addView(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 5

    const/4 v0, 0x0

    .line 97
    :goto_1
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 98
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 99
    invoke-virtual {v1}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    if-nez v2, :cond_1e

    .line 102
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_21
    iget-object v0, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    invoke-direct {v1, p1}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    const/4 v0, 0x0

    .line 47
    :goto_1
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 48
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 49
    invoke-virtual {v1}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v2, :cond_2b

    .line 51
    iget-boolean v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mUseViewInvalidate:Z

    if-eqz v1, :cond_27

    instance-of v1, v2, Landroid/view/View;

    if-eqz v1, :cond_27

    .line 52
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_30

    .line 54
    :cond_27
    invoke-interface {v2, p1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_30

    .line 58
    :cond_2b
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_33
    return-void
.end method

.method public removeView(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 5

    const/4 v0, 0x0

    .line 114
    :goto_1
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 115
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 116
    invoke-virtual {v1}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v2, :cond_1b

    if-ne v2, p1, :cond_20

    .line 119
    :cond_1b
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 8

    const/4 v0, 0x0

    .line 65
    :goto_1
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 66
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 67
    invoke-virtual {v1}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v2, :cond_1d

    .line 69
    invoke-interface {v2, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto :goto_22

    .line 72
    :cond_1d
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 6

    const/4 v0, 0x0

    .line 79
    :goto_1
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 80
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 81
    invoke-virtual {v1}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v2, :cond_1d

    .line 83
    invoke-interface {v2, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto :goto_22

    .line 86
    :cond_1d
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

###### Class pl.droidsonroids.gif.MultiCallback.CallbackWeakReference (pl.droidsonroids.gif.MultiCallback$CallbackWeakReference)
.class final Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "MultiCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/MultiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CallbackWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Landroid/graphics/drawable/Drawable$Callback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 2

    .line 126
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_21

    .line 138
    :cond_12
    invoke-virtual {p0}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast p1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne v2, p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0

    :cond_21
    :goto_21
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 143
    invoke-virtual {p0}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_d

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method
