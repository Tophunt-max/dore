###### Class io.dcloud.feature.gallery.imageedit.c.i.b (io.dcloud.feature.gallery.imageedit.c.i.b)
.class public Lio/dcloud/feature/gallery/imageedit/c/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lio/dcloud/feature/gallery/imageedit/c/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/dcloud/feature/gallery/imageedit/c/i/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLio/dcloud/feature/gallery/imageedit/c/i/a;Lio/dcloud/feature/gallery/imageedit/c/i/a;)Lio/dcloud/feature/gallery/imageedit/c/i/a;
    .registers 8

    .line 1
    iget v0, p2, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a:F

    iget v1, p3, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 2
    iget v1, p2, Lio/dcloud/feature/gallery/imageedit/c/i/a;->b:F

    iget v2, p3, Lio/dcloud/feature/gallery/imageedit/c/i/a;->b:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 3
    iget v2, p2, Lio/dcloud/feature/gallery/imageedit/c/i/a;->c:F

    iget v3, p3, Lio/dcloud/feature/gallery/imageedit/c/i/a;->c:F

    sub-float/2addr v3, v2

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    .line 4
    iget p2, p2, Lio/dcloud/feature/gallery/imageedit/c/i/a;->d:F

    iget p3, p3, Lio/dcloud/feature/gallery/imageedit/c/i/a;->d:F

    sub-float/2addr p3, p2

    mul-float p1, p1, p3

    add-float/2addr p2, p1

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/i/b;->a:Lio/dcloud/feature/gallery/imageedit/c/i/a;

    if-nez p1, :cond_2c

    .line 7
    new-instance p1, Lio/dcloud/feature/gallery/imageedit/c/i/a;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/dcloud/feature/gallery/imageedit/c/i/a;-><init>(FFFF)V

    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/i/b;->a:Lio/dcloud/feature/gallery/imageedit/c/i/a;

    goto :goto_2f

    .line 9
    :cond_2c
    invoke-virtual {p1, v0, v1, v2, p2}, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a(FFFF)V

    .line 12
    :goto_2f
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/i/b;->a:Lio/dcloud/feature/gallery/imageedit/c/i/a;

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p2, Lio/dcloud/feature/gallery/imageedit/c/i/a;

    check-cast p3, Lio/dcloud/feature/gallery/imageedit/c/i/a;

    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/gallery/imageedit/c/i/b;->a(FLio/dcloud/feature/gallery/imageedit/c/i/a;Lio/dcloud/feature/gallery/imageedit/c/i/a;)Lio/dcloud/feature/gallery/imageedit/c/i/a;

    move-result-object p1

    return-object p1
.end method
