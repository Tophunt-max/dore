###### Class io.dcloud.feature.gallery.imageedit.c.j.c (io.dcloud.feature.gallery.imageedit.c.j.c)
.class public Lio/dcloud/feature/gallery/imageedit/c/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/gallery/imageedit/c/j/e;
.implements Lio/dcloud/feature/gallery/imageedit/c/j/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StickerView:",
        "Landroid/view/View;",
        ":",
        "Lio/dcloud/feature/gallery/imageedit/c/j/a;",
        ">",
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/gallery/imageedit/c/j/e;",
        "Lio/dcloud/feature/gallery/imageedit/c/j/e$a;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TStickerView;"
        }
    .end annotation
.end field

.field private c:Lio/dcloud/feature/gallery/imageedit/c/j/e$a;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStickerView;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->d:Z

    .line 5
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/feature/gallery/imageedit/c/j/e$a;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->c:Lio/dcloud/feature/gallery/imageedit/c/j/e$a;

    return-void
.end method

.method public a()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->d:Z

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Lio/dcloud/feature/gallery/imageedit/c/j/c;->c(Landroid/view/View;)V

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/View;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lio/dcloud/feature/gallery/imageedit/c/j/a;",
            ">(TV;)Z"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->c:Lio/dcloud/feature/gallery/imageedit/c/j/e$a;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/j/e$a;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public b(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lio/dcloud/feature/gallery/imageedit/c/j/a;",
            ">(TV;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->a:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->c:Lio/dcloud/feature/gallery/imageedit/c/j/e$a;

    if-eqz v0, :cond_d

    .line 6
    invoke-interface {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/j/e$a;->b(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method public b(Lio/dcloud/feature/gallery/imageedit/c/j/e$a;)V
    .registers 2

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->c:Lio/dcloud/feature/gallery/imageedit/c/j/e$a;

    return-void
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->d:Z

    return v0
.end method

.method public c(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lio/dcloud/feature/gallery/imageedit/c/j/a;",
            ">(TV;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->c:Lio/dcloud/feature/gallery/imageedit/c/j/e$a;

    if-eqz v0, :cond_a

    .line 4
    invoke-interface {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/j/e$a;->c(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method public c()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/j/c;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public dismiss()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2
    iput-boolean v1, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->d:Z

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_10
    return v1
.end method

.method public getFrame()Landroid/graphics/RectF;
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->a:Landroid/graphics/RectF;

    if-nez v0, :cond_5c

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->a:Landroid/graphics/RectF;

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPivotX()F

    move-result v1

    add-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v2

    add-float/2addr v1, v2

    .line 6
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 8
    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    iget-object v4, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->a:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 11
    :cond_5c
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/c;->a:Landroid/graphics/RectF;

    return-object v0
.end method
