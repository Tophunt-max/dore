###### Class com.taobao.weex.common.WXImageStrategy (com.taobao.weex.common.WXImageStrategy)
.class public Lcom/taobao/weex/common/WXImageStrategy;
.super Ljava/lang/Object;
.source "WXImageStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/WXImageStrategy$ImageListener;
    }
.end annotation


# instance fields
.field public blurRadius:I

.field imageListener:Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

.field public instanceId:Ljava/lang/String;

.field public isClipping:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isSharpen:Z

.field public placeHolder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/taobao/weex/common/WXImageStrategy;->instanceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/taobao/weex/common/WXImageStrategy;->imageListener:Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    return-object v0
.end method

.method public setImageListener(Lcom/taobao/weex/common/WXImageStrategy$ImageListener;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/taobao/weex/common/WXImageStrategy;->imageListener:Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    return-void
.end method

###### Class com.taobao.weex.common.WXImageStrategy.ImageListener (com.taobao.weex.common.WXImageStrategy$ImageListener)
.class public interface abstract Lcom/taobao/weex/common/WXImageStrategy$ImageListener;
.super Ljava/lang/Object;
.source "WXImageStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXImageStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageListener"
.end annotation


# virtual methods
.method public abstract onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V
.end method
