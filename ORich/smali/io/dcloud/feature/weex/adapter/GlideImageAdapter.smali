###### Class io.dcloud.feature.weex.adapter.GlideImageAdapter (io.dcloud.feature.weex.adapter.GlideImageAdapter)
.class public Lio/dcloud/feature/weex/adapter/GlideImageAdapter;
.super Ljava/lang/Object;
.source "GlideImageAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .registers 4

    .line 22
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter;->onImageFinish(Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private static onImageFinish(Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .registers 5

    if-eqz p0, :cond_10

    .line 89
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXImageStrategy;->getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 91
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXImageStrategy;->getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/taobao/weex/common/WXImageStrategy$ImageListener;->onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V

    :cond_10
    return-void
.end method

.method public static setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V
    .registers 6

    .line 24
    new-instance p2, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    invoke-direct {p2, p1, p0, p3}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Lcom/taobao/weex/common/WXImageStrategy;)V

    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p0, p1, :cond_17

    .line 81
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_20

    .line 83
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    :goto_20
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.GlideImageAdapter.AnonymousClass1 (io.dcloud.feature.weex.adapter.GlideImageAdapter$1)
.class final Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;
.super Ljava/lang/Object;
.source "GlideImageAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/GlideImageAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;Lcom/taobao/weex/common/WXImageStrategy;)V
    .registers 4

    .line 24
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 28
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_aa

    .line 31
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 32
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 35
    :cond_1b
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$url:Ljava/lang/String;

    const-string v1, "//"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_38
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_aa

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_4d

    goto :goto_aa

    .line 42
    :cond_4d
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 43
    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 45
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 46
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 47
    invoke-virtual {v1, v3, v2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 48
    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ".gif"

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 50
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$1;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$1;-><init>(Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_aa

    .line 64
    :cond_90
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;-><init>(Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_aa
    :goto_aa
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.GlideImageAdapter.AnonymousClass1.C00571 (io.dcloud.feature.weex.adapter.GlideImageAdapter$1$1)
.class Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$1;
.super Ljava/lang/Object;
.source "GlideImageAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$1;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 53
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$1;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$1;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p2, p2, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$url:Ljava/lang/String;

    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$1;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p3, p3, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter;->access$000(Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    return p4
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 59
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$1;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$1;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p2, p2, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$url:Ljava/lang/String;

    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$1;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p3, p3, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    const/4 p4, 0x1

    invoke-static {p1, p2, p3, p4}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter;->access$000(Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6

    .line 50
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual/range {p0 .. p5}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$1;->onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method

###### Class io.dcloud.feature.weex.adapter.GlideImageAdapter.AnonymousClass1.AnonymousClass2 (io.dcloud.feature.weex.adapter.GlideImageAdapter$1$2)
.class Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;
.super Ljava/lang/Object;
.source "GlideImageAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p2, p2, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$url:Ljava/lang/String;

    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p3, p3, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter;->access$000(Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    return p4
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 73
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p2, p2, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$url:Ljava/lang/String;

    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p3, p3, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    const/4 p4, 0x1

    invoke-static {p1, p2, p3, p4}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter;->access$000(Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6

    .line 64
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
