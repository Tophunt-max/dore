###### Class com.taobao.weex.layout.MeasureSize (com.taobao.weex.layout.MeasureSize)
.class public Lcom/taobao/weex/layout/MeasureSize;
.super Ljava/lang/Object;
.source "MeasureSize.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private height:F

.field private width:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .registers 2

    .line 36
    iget v0, p0, Lcom/taobao/weex/layout/MeasureSize;->height:F

    return v0
.end method

.method public getWidth()F
    .registers 2

    .line 28
    iget v0, p0, Lcom/taobao/weex/layout/MeasureSize;->width:F

    return v0
.end method

.method public setHeight(F)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/taobao/weex/layout/MeasureSize;->height:F

    return-void
.end method

.method public setWidth(F)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/taobao/weex/layout/MeasureSize;->width:F

    return-void
.end method
