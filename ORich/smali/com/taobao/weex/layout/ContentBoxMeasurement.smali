###### Class com.taobao.weex.layout.ContentBoxMeasurement (com.taobao.weex.layout.ContentBoxMeasurement)
.class public abstract Lcom/taobao/weex/layout/ContentBoxMeasurement;
.super Ljava/lang/Object;
.source "ContentBoxMeasurement.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/taobao/weex/common/Destroyable;


# instance fields
.field protected mComponent:Lcom/taobao/weex/ui/component/WXComponent;

.field protected mMeasureHeight:F

.field protected mMeasureWidth:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-void
.end method

.method public getHeight()F
    .registers 2

    .line 70
    iget v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureHeight:F

    return v0
.end method

.method public getWidth()F
    .registers 2

    .line 65
    iget v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureWidth:F

    return v0
.end method

.method public abstract layoutAfter(FF)V
.end method

.method public abstract layoutBefore()V
.end method

.method public final measure(FFII)V
    .registers 5

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/layout/ContentBoxMeasurement;->measureInternal(FFII)V

    return-void
.end method

.method public abstract measureInternal(FFII)V
.end method
