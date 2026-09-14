###### Class io.dcloud.feature.gallery.imageedit.c.c (io.dcloud.feature.gallery.imageedit.c.c)
.class public Lio/dcloud/feature/gallery/imageedit/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/graphics/Path;

.field private b:I

.field private c:F

.field private d:Lio/dcloud/feature/gallery/imageedit/c/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-direct {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/c;-><init>(Landroid/graphics/Path;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .registers 3

    .line 2
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/c/b;->b:Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-direct {p0, p1, v0}, Lio/dcloud/feature/gallery/imageedit/c/c;-><init>(Landroid/graphics/Path;Lio/dcloud/feature/gallery/imageedit/c/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Lio/dcloud/feature/gallery/imageedit/c/b;)V
    .registers 4

    const/high16 v0, -0x10000

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/feature/gallery/imageedit/c/c;-><init>(Landroid/graphics/Path;Lio/dcloud/feature/gallery/imageedit/c/b;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Lio/dcloud/feature/gallery/imageedit/c/b;I)V
    .registers 5

    const/high16 v0, 0x42900000    # 72.0f

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lio/dcloud/feature/gallery/imageedit/c/c;-><init>(Landroid/graphics/Path;Lio/dcloud/feature/gallery/imageedit/c/b;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Lio/dcloud/feature/gallery/imageedit/c/b;IF)V
    .registers 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x10000

    .line 6
    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->b:I

    const/high16 v0, 0x42900000    # 72.0f

    .line 8
    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->c:F

    .line 10
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/c/b;->b:Lio/dcloud/feature/gallery/imageedit/c/b;

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    .line 33
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->a:Landroid/graphics/Path;

    .line 34
    iput-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    .line 35
    iput p3, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->b:I

    .line 36
    iput p4, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->c:F

    .line 37
    sget-object p3, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne p2, p3, :cond_20

    .line 38
    sget-object p2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :cond_20
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->b:I

    return v0
.end method

.method public a(F)V
    .registers 2

    .line 4
    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->c:F

    return-void
.end method

.method public a(I)V
    .registers 2

    .line 2
    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->b:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 5

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->b:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_15

    .line 6
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->b:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->c:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_15
    return-void
.end method

.method public a(Landroid/graphics/Matrix;)V
    .registers 3

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public a(Lio/dcloud/feature/gallery/imageedit/c/b;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    return-void
.end method

.method public b()Lio/dcloud/feature/gallery/imageedit/c/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    return-object v0
.end method

.method public b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_10

    .line 3
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->c:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_10
    return-void
.end method

.method public c()Landroid/graphics/Path;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public d()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->c:F

    return v0
.end method
