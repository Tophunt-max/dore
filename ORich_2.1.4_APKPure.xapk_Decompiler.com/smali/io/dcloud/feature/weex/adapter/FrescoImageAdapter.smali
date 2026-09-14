###### Class io.dcloud.feature.weex.adapter.FrescoImageAdapter (io.dcloud.feature.weex.adapter.FrescoImageAdapter)
.class public Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;
.super Ljava/lang/Object;
.source "FrescoImageAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;Landroid/graphics/drawable/Drawable;)V
    .registers 7

    if-eqz p1, :cond_ac

    .line 124
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_a

    goto/16 :goto_ac

    .line 127
    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_15

    const/4 p0, 0x0

    .line 128
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_15
    const-string p2, "//"

    .line 132
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_30

    :cond_2f
    move-object p2, p0

    .line 135
    :goto_30
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 136
    invoke-static {}, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->newBuilder()Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->build()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v0

    .line 138
    invoke-static {p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p2

    .line 139
    invoke-virtual {p2, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setImageDecodeOptions(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p2

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p2, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setAutoRotateEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p2

    .line 141
    invoke-virtual {p2, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setLocalThumbnailPreviewsEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p2

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 142
    invoke-virtual {p2, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setLowestPermittedRequestLevel(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p2

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p2, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setProgressiveRenderingEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p2

    .line 144
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    .line 145
    instance-of v1, p1, Lcom/facebook/drawee/view/DraweeView;

    if-eqz v1, :cond_93

    .line 146
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;

    invoke-direct {v1, p3, p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;-><init>(Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 187
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object p0

    .line 188
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 189
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 190
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 191
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object p0

    if-eqz p4, :cond_8d

    .line 193
    move-object p2, p1

    check-cast p2, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    invoke-virtual {p2}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p2

    check-cast p2, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    invoke-virtual {p2, p4}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->setPlaceholderImage(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :cond_8d
    check-cast p1, Lcom/facebook/drawee/view/DraweeView;

    invoke-virtual {p1, p0}, Lcom/facebook/drawee/view/DraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    goto :goto_ac

    .line 197
    :cond_93
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object p4

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p4, p2, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p2

    .line 200
    new-instance p4, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;

    invoke-direct {p4, p1, p3, p0}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;-><init>(Landroid/widget/ImageView;Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;->getInstance()Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    move-result-object p0

    invoke-interface {p2, p4, p0}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    :cond_ac
    :goto_ac
    return-void
.end method


# virtual methods
.method public setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V
    .registers 13

    .line 74
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_c

    const/4 p1, 0x0

    .line 76
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_c
    return-void

    :cond_d
    if-eqz p4, :cond_27

    .line 81
    iget-object v0, p4, Lcom/taobao/weex/common/WXImageStrategy;->placeHolder:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 82
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v7, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;Ljava/lang/String;Lcom/taobao/weex/common/WXImageStrategy;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v7, p1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V

    goto :goto_3b

    .line 114
    :cond_27
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    new-instance v7, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$2;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v7, p1, p2}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    :goto_3b
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoImageAdapter.AnonymousClass1 (io.dcloud.feature.weex.adapter.FrescoImageAdapter$1)
.class Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;
.super Ljava/lang/Object;
.source "FrescoImageAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;

.field final synthetic val$quality:Lcom/taobao/weex/dom/WXImageQuality;

.field final synthetic val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;Ljava/lang/String;Lcom/taobao/weex/common/WXImageStrategy;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;)V
    .registers 6

    .line 82
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iput-object p4, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->val$view:Landroid/widget/ImageView;

    iput-object p5, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->val$quality:Lcom/taobao/weex/dom/WXImageQuality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread_setImage--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrescoImage"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :try_start_18
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iget-object v0, v0, Lcom/taobao/weex/common/WXImageStrategy;->placeHolder:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 90
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iget-object v0, v0, Lcom/taobao/weex/common/WXImageStrategy;->placeHolder:Ljava/lang/String;

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_55

    .line 93
    :cond_35
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iget-object v1, v1, Lcom/taobao/weex/common/WXImageStrategy;->placeHolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 94
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_4f} :catch_50

    goto :goto_55

    :catch_50
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    .line 101
    :goto_55
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    new-instance v2, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1$1;

    invoke-direct {v2, p0, v1}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1$1;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoImageAdapter.AnonymousClass1.RunnableC00551 (io.dcloud.feature.weex.adapter.FrescoImageAdapter$1$1)
.class Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1$1;
.super Ljava/lang/Object;
.source "FrescoImageAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;

.field final synthetic val$placeholderDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 103
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1$1;->val$placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 106
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;

    iget-object v0, v0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;

    iget-object v1, v1, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->val$view:Landroid/widget/ImageView;

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;

    iget-object v2, v2, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->val$quality:Lcom/taobao/weex/dom/WXImageQuality;

    iget-object v3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;

    iget-object v3, v3, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iget-object v4, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$1$1;->val$placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, v3, v4}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;->access$000(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoImageAdapter.AnonymousClass2 (io.dcloud.feature.weex.adapter.FrescoImageAdapter$2)
.class Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$2;
.super Ljava/lang/Object;
.source "FrescoImageAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;

.field final synthetic val$quality:Lcom/taobao/weex/dom/WXImageQuality;

.field final synthetic val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V
    .registers 6

    .line 114
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$2;->val$view:Landroid/widget/ImageView;

    iput-object p4, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$2;->val$quality:Lcom/taobao/weex/dom/WXImageQuality;

    iput-object p5, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$2;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 117
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$2;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$2;->val$view:Landroid/widget/ImageView;

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$2;->val$quality:Lcom/taobao/weex/dom/WXImageQuality;

    iget-object v3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$2;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;->access$000(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoImageAdapter.AnonymousClass3 (io.dcloud.feature.weex.adapter.FrescoImageAdapter$3)
.class final Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "FrescoImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/BaseControllerListener<",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    .line 146
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Error loading %s"

    invoke-static {v0, p2, p1, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXImageStrategy;->getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 183
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXImageStrategy;->getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$view:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v2, v1}, Lcom/taobao/weex/common/WXImageStrategy$ImageListener;->onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V

    :cond_27
    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    .line 156
    :cond_3
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXImageStrategy;->getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 157
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 158
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "width"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "height"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result p2

    if-lez p2, :cond_41

    .line 161
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    invoke-virtual {p2}, Lcom/taobao/weex/common/WXImageStrategy;->getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    move-result-object p2

    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$view:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, v1, p1}, Lcom/taobao/weex/common/WXImageStrategy$ImageListener;->onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V

    goto :goto_4f

    .line 163
    :cond_41
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    invoke-virtual {p2}, Lcom/taobao/weex/common/WXImageStrategy;->getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    move-result-object p2

    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->val$view:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-interface {p2, p3, v0, v1, p1}, Lcom/taobao/weex/common/WXImageStrategy$ImageListener;->onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .registers 4

    .line 146
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public onIntermediateImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;)V
    .registers 3

    const-string p1, ""

    const-string p2, "Intermediate image received"

    .line 170
    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 146
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$3;->onIntermediateImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoImageAdapter.AnonymousClass4 (io.dcloud.feature.weex.adapter.FrescoImageAdapter$4)
.class final Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;
.super Lcom/facebook/datasource/BaseDataSubscriber;
.source "FrescoImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/BaseDataSubscriber<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;)V
    .registers 4

    .line 201
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;->val$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/datasource/BaseDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .registers 6

    .line 228
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXImageStrategy;->getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 229
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXImageStrategy;->getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;->val$view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/taobao/weex/common/WXImageStrategy$ImageListener;->onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V

    :cond_19
    return-void
.end method

.method public onNewResultImpl(Lcom/facebook/datasource/DataSource;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .line 204
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    if-eqz p1, :cond_46

    .line 208
    :try_start_8
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 209
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableImage;

    .line 210
    instance-of v1, v0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    if-eqz v1, :cond_24

    .line 211
    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 212
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    :cond_24
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXImageStrategy;->getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 218
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXImageStrategy;->getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter$4;->val$view:Landroid/widget/ImageView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXImageStrategy$ImageListener;->onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_41

    .line 221
    :cond_3d
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    goto :goto_46

    :catchall_41
    move-exception v0

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 222
    throw v0

    :cond_46
    :goto_46
    return-void
.end method
