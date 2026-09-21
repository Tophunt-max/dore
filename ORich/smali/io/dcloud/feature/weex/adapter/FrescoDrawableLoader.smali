###### Class io.dcloud.feature.weex.adapter.FrescoDrawableLoader (io.dcloud.feature.weex.adapter.FrescoDrawableLoader)
.class public Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;
.super Ljava/lang/Object;
.source "FrescoDrawableLoader.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IDrawableLoader;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;)Landroid/content/Context;
    .registers 1

    .line 14
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public setDrawable(Ljava/lang/String;Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;Lcom/taobao/weex/adapter/DrawableStrategy;)V
    .registers 10

    .line 22
    invoke-static {}, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;->getInstance()Lio/dcloud/feature/uniapp/adapter/UniImageLoadAdapter;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;->mContext:Landroid/content/Context;

    iget v3, p3, Lcom/taobao/weex/adapter/DrawableStrategy;->width:I

    iget v4, p3, Lcom/taobao/weex/adapter/DrawableStrategy;->height:I

    new-instance v5, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader$1;

    invoke-direct {v5, p0, p2}, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader$1;-><init>(Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;)V

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lio/dcloud/feature/uniapp/adapter/UniImageLoadAdapter;->loadImageBitmap(Landroid/content/Context;Ljava/lang/String;IILio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoDrawableLoader.AnonymousClass1 (io.dcloud.feature.weex.adapter.FrescoDrawableLoader$1)
.class Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader$1;
.super Ljava/lang/Object;
.source "FrescoDrawableLoader.java"

# interfaces
.implements Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;->setDrawable(Ljava/lang/String;Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;Lcom/taobao/weex/adapter/DrawableStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;

.field final synthetic val$drawableTarget:Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;)V
    .registers 3

    .line 22
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader$1;->val$drawableTarget:Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 25
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;->access$000(Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 p2, 0x77

    .line 26
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 27
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader$1;->val$drawableTarget:Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;->setDrawable(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 22
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader$1;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
