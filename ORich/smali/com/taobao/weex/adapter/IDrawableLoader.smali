###### Class com.taobao.weex.adapter.IDrawableLoader (com.taobao.weex.adapter.IDrawableLoader)
.class public interface abstract Lcom/taobao/weex/adapter/IDrawableLoader;
.super Ljava/lang/Object;
.source "IDrawableLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/adapter/IDrawableLoader$AnimatedTarget;,
        Lcom/taobao/weex/adapter/IDrawableLoader$StaticTarget;,
        Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;
    }
.end annotation


# virtual methods
.method public abstract setDrawable(Ljava/lang/String;Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;Lcom/taobao/weex/adapter/DrawableStrategy;)V
.end method

###### Class com.taobao.weex.adapter.IDrawableLoader.AnimatedTarget (com.taobao.weex.adapter.IDrawableLoader$AnimatedTarget)
.class public interface abstract Lcom/taobao/weex/adapter/IDrawableLoader$AnimatedTarget;
.super Ljava/lang/Object;
.source "IDrawableLoader.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/adapter/IDrawableLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimatedTarget"
.end annotation


# virtual methods
.method public abstract setAnimatedDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

###### Class com.taobao.weex.adapter.IDrawableLoader.DrawableTarget (com.taobao.weex.adapter.IDrawableLoader$DrawableTarget)
.class public interface abstract Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;
.super Ljava/lang/Object;
.source "IDrawableLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/adapter/IDrawableLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrawableTarget"
.end annotation


# virtual methods
.method public abstract setDrawable(Landroid/graphics/drawable/Drawable;Z)V
.end method

###### Class com.taobao.weex.adapter.IDrawableLoader.StaticTarget (com.taobao.weex.adapter.IDrawableLoader$StaticTarget)
.class public interface abstract Lcom/taobao/weex/adapter/IDrawableLoader$StaticTarget;
.super Ljava/lang/Object;
.source "IDrawableLoader.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/adapter/IDrawableLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StaticTarget"
.end annotation


# virtual methods
.method public abstract setDrawable(Landroid/graphics/drawable/Drawable;Z)V
.end method
