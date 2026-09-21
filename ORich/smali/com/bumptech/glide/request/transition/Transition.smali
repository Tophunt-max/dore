###### Class com.bumptech.glide.request.transition.Transition (com.bumptech.glide.request.transition.Transition)
.class public interface abstract Lcom/bumptech/glide/request/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract transition(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;",
            ")Z"
        }
    .end annotation
.end method

###### Class com.bumptech.glide.request.transition.Transition.ViewAdapter (com.bumptech.glide.request.transition.Transition$ViewAdapter)
.class public interface abstract Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewAdapter"
.end annotation


# virtual methods
.method public abstract getCurrentDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract setDrawable(Landroid/graphics/drawable/Drawable;)V
.end method
