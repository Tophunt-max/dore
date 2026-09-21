###### Class io.dcloud.feature.gallery.imageedit.c.a (io.dcloud.feature.gallery.imageedit.c.a)
.class public Lio/dcloud/feature/gallery/imageedit/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gallery/imageedit/c/a$b;,
        Lio/dcloud/feature/gallery/imageedit/c/a$c;
    }
.end annotation


# static fields
.field private static final E:Landroid/graphics/Bitmap;


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:Landroid/graphics/Paint;

.field private C:Landroid/graphics/Matrix;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/gallery/imageedit/c/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Lio/dcloud/feature/gallery/imageedit/c/a$b;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

.field private n:Z

.field private o:Landroid/graphics/Path;

.field private p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

.field private q:Lio/dcloud/feature/gallery/imageedit/c/b;

.field private r:Z

.field private s:Landroid/graphics/RectF;

.field private t:Z

.field private u:Z

.field private v:Lio/dcloud/feature/gallery/imageedit/c/j/a;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/gallery/imageedit/c/j/a;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/gallery/imageedit/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/gallery/imageedit/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x64

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/gallery/imageedit/c/a;->E:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->f:Landroid/graphics/RectF;

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->g:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->h:F

    .line 18
    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->i:F

    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->j:F

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->k:Z

    .line 22
    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->l:Z

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->n:Z

    .line 31
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->o:Landroid/graphics/Path;

    .line 36
    new-instance v2, Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-direct {v2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;-><init>()V

    iput-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    .line 43
    sget-object v2, Lio/dcloud/feature/gallery/imageedit/c/b;->a:Lio/dcloud/feature/gallery/imageedit/c/b;

    iput-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    .line 45
    sget-object v3, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v2, v3, :cond_46

    const/4 v2, 0x1

    goto :goto_47

    :cond_46
    const/4 v2, 0x0

    :goto_47
    iput-boolean v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->r:Z

    .line 50
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->s:Landroid/graphics/RectF;

    .line 55
    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->t:Z

    .line 60
    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->u:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->w:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->x:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->y:Ljava/util/List;

    .line 88
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    .line 101
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->o:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->z:Landroid/graphics/Paint;

    .line 105
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->z:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->z:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->z:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/CornerPathEffect;

    invoke-direct {v2, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 109
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->z:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 110
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->z:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->D:Ljava/util/List;

    .line 463
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/c/a;->E:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->a:Landroid/graphics/Bitmap;

    .line 465
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v3, :cond_bb

    .line 466
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->g()V

    :cond_bb
    return-void
.end method

.method private a()V
    .registers 3

    .line 81
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->D:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/gallery/imageedit/c/a$c;

    if-eqz v1, :cond_8

    .line 84
    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/a$c;->a()V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method private b(F)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/gallery/imageedit/c/j/a;

    .line 3
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->getFrame()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4
    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/e;->getRotation()F

    move-result v2

    add-float/2addr v2, p1

    invoke-interface {v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/e;->setRotation(F)V

    .line 5
    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->getFrame()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/e;->getPivotX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/e;->setX(F)V

    .line 6
    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->getFrame()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/e;->getPivotY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/e;->setY(F)V

    goto :goto_17

    :cond_55
    return-void
.end method

.method private b(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 53
    :cond_3
    invoke-interface {p1}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->b()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 55
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 56
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_16
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->v:Lio/dcloud/feature/gallery/imageedit/c/j/a;

    if-ne v0, p1, :cond_21

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->v:Lio/dcloud/feature/gallery/imageedit/c/j/a;

    goto :goto_21

    .line 62
    :cond_1e
    invoke-interface {p1}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->dismiss()Z

    :cond_21
    :goto_21
    return-void
.end method

.method private c(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 3
    :cond_3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->v:Lio/dcloud/feature/gallery/imageedit/c/j/a;

    invoke-direct {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V

    .line 5
    invoke-interface {p1}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->v:Lio/dcloud/feature/gallery/imageedit/c/j/a;

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_19

    .line 9
    :cond_16
    invoke-interface {p1}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->a()Z

    :goto_19
    return-void
.end method

.method private c(Z)V
    .registers 3

    .line 22
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->r:Z

    if-eq p1, v0, :cond_15

    if-eqz p1, :cond_c

    .line 23
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v0

    neg-float v0, v0

    goto :goto_10

    :cond_c
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->f()F

    move-result v0

    :goto_10
    invoke-direct {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(F)V

    .line 24
    iput-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->r:Z

    :cond_15
    return-void
.end method

.method private d(FF)V
    .registers 7

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->d(FF)V

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_29

    return-void

    .line 10
    :cond_29
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->v()V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->t:Z

    .line 13
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->o()V

    return-void
.end method

.method private g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->B:Landroid/graphics/Paint;

    if-nez v0, :cond_18

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->B:Landroid/graphics/Paint;

    const/high16 v1, -0x34000000    # -3.3554432E7f

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_18
    return-void
.end method

.method private l()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_55

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    goto :goto_55

    .line 5
    :cond_9
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    sget-object v2, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v1, v2, :cond_55

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42800000    # 64.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 8
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v2, 0x8

    .line 10
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 14
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->A:Landroid/graphics/Paint;

    const/4 v3, 0x0

    if-nez v2, :cond_4d

    .line 15
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->A:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 17
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->A:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 20
    :cond_4d
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->a:Landroid/graphics/Bitmap;

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->b:Landroid/graphics/Bitmap;

    :cond_55
    :goto_55
    return-void
.end method

.method private n()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->t:Z

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->h(FF)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_23

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->f()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a(Landroid/graphics/RectF;F)V

    :cond_23
    return-void
.end method

.method private o()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_11

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->f()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a(Landroid/graphics/RectF;F)V

    :cond_11
    return-void
.end method

.method private v()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 6
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->s:Landroid/graphics/RectF;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->s:Landroid/graphics/RectF;

    .line 8
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 15
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 18
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method


# virtual methods
.method public a(FF)Lio/dcloud/feature/gallery/imageedit/c/i/a;
    .registers 8

    .line 49
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->b(FF)Landroid/graphics/RectF;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 52
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 54
    new-instance v1, Lio/dcloud/feature/gallery/imageedit/c/i/a;

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    .line 55
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr p1, v2

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    .line 56
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr v2, v0

    add-float/2addr p2, v2

    .line 57
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e()F

    move-result v0

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v2

    invoke-direct {v1, p1, p2, v0, v2}, Lio/dcloud/feature/gallery/imageedit/c/i/a;-><init>(FFFF)V

    return-object v1
.end method

.method public a(FFFF)Lio/dcloud/feature/gallery/imageedit/c/i/a;
    .registers 8

    .line 98
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_5d

    .line 99
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->d(Z)V

    .line 100
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->m:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    if-eqz v0, :cond_5d

    .line 101
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v1, v0, p3, p4}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a(Lio/dcloud/feature/gallery/imageedit/c/g/a$a;FF)V

    .line 103
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 104
    iget-object p4, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v0

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p4, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 105
    iget-object p4, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p4, p3, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 107
    iget-object p4, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {p4, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->b(FF)Landroid/graphics/RectF;

    move-result-object p4

    .line 108
    new-instance v0, Lio/dcloud/feature/gallery/imageedit/c/i/a;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e()F

    move-result v1

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->f()F

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/i/a;-><init>(FFFF)V

    .line 109
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-static {p4, p3, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/k/a;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)Lio/dcloud/feature/gallery/imageedit/c/i/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a(Lio/dcloud/feature/gallery/imageedit/c/i/a;)V

    return-object v0

    :cond_5d
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(F)V
    .registers 3

    .line 137
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a(F)V

    return-void
.end method

.method public a(FFF)V
    .registers 8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_7

    return-void

    .line 115
    :cond_7
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x461c4000    # 10000.0f

    cmpl-float v1, v1, v2

    if-gez v1, :cond_34

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    .line 116
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_39

    :cond_34
    sub-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    .line 120
    :cond_39
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 121
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object p3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 122
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object p3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 125
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    iget-object p3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    .line 130
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->w:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_59
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/dcloud/feature/gallery/imageedit/c/j/a;

    .line 131
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-interface {p3}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->getFrame()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 132
    invoke-interface {p3}, Lio/dcloud/feature/gallery/imageedit/c/e;->getX()F

    move-result v0

    invoke-interface {p3}, Lio/dcloud/feature/gallery/imageedit/c/e;->getPivotX()F

    move-result v1

    add-float/2addr v0, v1

    .line 133
    invoke-interface {p3}, Lio/dcloud/feature/gallery/imageedit/c/e;->getY()F

    move-result v1

    invoke-interface {p3}, Lio/dcloud/feature/gallery/imageedit/c/e;->getPivotY()F

    move-result v2

    add-float/2addr v1, v2

    .line 134
    invoke-interface {p3, p1}, Lio/dcloud/feature/gallery/imageedit/c/e;->a(F)V

    .line 135
    invoke-interface {p3}, Lio/dcloud/feature/gallery/imageedit/c/e;->getX()F

    move-result v2

    invoke-interface {p3}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->getFrame()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v2, v0

    invoke-interface {p3, v2}, Lio/dcloud/feature/gallery/imageedit/c/e;->setX(F)V

    .line 136
    invoke-interface {p3}, Lio/dcloud/feature/gallery/imageedit/c/e;->getY()F

    move-result v0

    invoke-interface {p3}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->getFrame()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    add-float/2addr v0, v2

    sub-float/2addr v0, v1

    invoke-interface {p3, v0}, Lio/dcloud/feature/gallery/imageedit/c/e;->setY(F)V

    goto :goto_59

    :cond_a6
    return-void
.end method

.method public a(I)V
    .registers 4

    .line 110
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->i:F

    int-to-float p1, p1

    add-float/2addr v0, p1

    const/high16 p1, 0x42b40000    # 90.0f

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x5a

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->j:F

    .line 111
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 112
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 114
    :cond_1f
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->f()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a(Landroid/graphics/RectF;F)V

    return-void
.end method

.method public a(II)V
    .registers 4

    .line 153
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    if-eqz v0, :cond_9

    int-to-float p1, p1

    int-to-float p2, p2

    .line 154
    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e(FF)V

    :cond_9
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 3

    if-eqz p1, :cond_1b

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1b

    .line 5
    :cond_9
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->a:Landroid/graphics/Bitmap;

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->b:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_12

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->b:Landroid/graphics/Bitmap;

    .line 13
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->l()V

    .line 15
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->n()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .registers 5

    .line 87
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->h()Z

    move-result v0

    if-nez v0, :cond_34

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e()F

    move-result v0

    .line 90
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 92
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/gallery/imageedit/c/c;

    .line 93
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->z:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Lio/dcloud/feature/gallery/imageedit/c/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_1f

    .line 95
    :cond_31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_34
    return-void
.end method

.method public a(Landroid/graphics/Canvas;FF)V
    .registers 4

    .line 96
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    sget-object p3, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne p2, p3, :cond_b

    .line 97
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {p2, p1}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a(Landroid/graphics/Canvas;)V

    :cond_b
    return-void
.end method

.method public a(Landroid/graphics/Canvas;I)V
    .registers 7

    .line 85
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->A:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public a(Lio/dcloud/feature/gallery/imageedit/c/a$b;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->c:Lio/dcloud/feature/gallery/imageedit/c/a$b;

    return-void
.end method

.method public a(Lio/dcloud/feature/gallery/imageedit/c/a$c;)V
    .registers 3

    .line 77
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->D:Ljava/util/List;

    if-nez v0, :cond_b

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->D:Ljava/util/List;

    .line 80
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lio/dcloud/feature/gallery/imageedit/c/b;)V
    .registers 5

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, p1, :cond_5

    return-void

    .line 18
    :cond_5
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->v:Lio/dcloud/feature/gallery/imageedit/c/j/a;

    invoke-direct {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V

    .line 20
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne p1, v0, :cond_12

    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->c(Z)V

    .line 24
    :cond_12
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne p1, v0, :cond_52

    .line 29
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->g()V

    .line 32
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->h:F

    .line 33
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->g:Landroid/graphics/RectF;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 35
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 36
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 37
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 38
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->g:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 41
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->f()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a(Landroid/graphics/RectF;F)V

    goto :goto_5f

    .line 44
    :cond_52
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne p1, v0, :cond_59

    .line 45
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->l()V

    .line 48
    :cond_59
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a(Z)V

    :goto_5f
    return-void
.end method

.method public a(Lio/dcloud/feature/gallery/imageedit/c/c;FF)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 59
    :cond_3
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 61
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 62
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result p3

    neg-float p3, p3

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p2, p3, v0, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 63
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object p3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget p3, p3, Landroid/graphics/RectF;->top:F

    neg-float p3, p3

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 64
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 65
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/c;->a(Landroid/graphics/Matrix;)V

    .line 67
    sget-object p2, Lio/dcloud/feature/gallery/imageedit/c/a$a;->a:[I

    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/c/c;->b()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_5e

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4f

    goto :goto_6c

    .line 73
    :cond_4f
    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/c/c;->d()F

    move-result p2

    mul-float p2, p2, v1

    invoke-virtual {p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/c;->a(F)V

    .line 74
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->y:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 75
    :cond_5e
    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/c/c;->d()F

    move-result p2

    mul-float p2, p2, v1

    invoke-virtual {p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/c;->a(F)V

    .line 76
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->x:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6c
    return-void
.end method

.method public a(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lio/dcloud/feature/gallery/imageedit/c/j/a;",
            ">(TS;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 58
    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->c(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V

    :cond_5
    return-void
.end method

.method public a(Z)V
    .registers 3

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->l:Z

    const-string p1, "IMGImage"

    const-string v0, "Homing cancel"

    .line 152
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(FFZ)Z
    .registers 5

    .line 138
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    sget-object p2, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1b

    .line 141
    iget-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->l:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    .line 143
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v0, p3}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->b(Z)V

    .line 144
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v0, p2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a(Z)V

    .line 145
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {p2, p3}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->c(Z)V

    return p1

    .line 149
    :cond_1b
    iget-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->r:Z

    if-eqz p1, :cond_26

    iget-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->l:Z

    if-nez p1, :cond_26

    .line 150
    invoke-direct {p0, p3}, Lio/dcloud/feature/gallery/imageedit/c/a;->c(Z)V

    :cond_26
    return p3
.end method

.method public b()Landroid/graphics/RectF;
    .registers 2

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    return-object v0
.end method

.method public b(FF)Lio/dcloud/feature/gallery/imageedit/c/i/a;
    .registers 10

    .line 8
    new-instance v0, Lio/dcloud/feature/gallery/imageedit/c/i/a;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e()F

    move-result v1

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->f()F

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/i/a;-><init>(FFFF)V

    .line 10
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    sget-object v2, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v1, v2, :cond_c9

    .line 11
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 12
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 13
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->f()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 15
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 16
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->f()F

    move-result v2

    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p2, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 17
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p2, p1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 19
    invoke-static {v1, p1}, Lio/dcloud/feature/gallery/imageedit/c/k/a;->b(Landroid/graphics/RectF;Landroid/graphics/RectF;)Lio/dcloud/feature/gallery/imageedit/c/i/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a(Lio/dcloud/feature/gallery/imageedit/c/i/a;)V

    goto/16 :goto_100

    .line 21
    :cond_53
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 24
    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v3}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->d()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 31
    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->f()F

    move-result v4

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 32
    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v4, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v4, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->b(FF)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 34
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-static {v1, v2, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/k/a;->b(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)Lio/dcloud/feature/gallery/imageedit/c/i/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a(Lio/dcloud/feature/gallery/imageedit/c/i/a;)V

    goto :goto_100

    .line 38
    :cond_99
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->f()F

    move-result p2

    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, p2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 39
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 40
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-static {v1, v2, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/k/a;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)Lio/dcloud/feature/gallery/imageedit/c/i/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a(Lio/dcloud/feature/gallery/imageedit/c/i/a;)V

    goto :goto_100

    .line 45
    :cond_c9
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 46
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->f()F

    move-result v3

    iget-object v4, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 47
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 49
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->s:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 50
    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 51
    iget-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->k:Z

    invoke-static {v2, v1, p1}, Lio/dcloud/feature/gallery/imageedit/c/k/a;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;Z)Lio/dcloud/feature/gallery/imageedit/c/i/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a(Lio/dcloud/feature/gallery/imageedit/c/i/a;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->k:Z

    :goto_100
    return-object v0
.end method

.method public b(FFF)V
    .registers 5

    .line 76
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(FFF)V

    return-void
.end method

.method public b(I)V
    .registers 3

    .line 78
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .registers 5

    .line 65
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    :goto_d
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 75
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public b(Lio/dcloud/feature/gallery/imageedit/c/a$c;)V
    .registers 3

    .line 63
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->D:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 64
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public b(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->l:Z

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)I
    .registers 6

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 12
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->k()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e()F

    move-result v1

    .line 15
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 17
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/gallery/imageedit/c/c;

    .line 18
    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->z:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3}, Lio/dcloud/feature/gallery/imageedit/c/c;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_28

    .line 20
    :cond_3a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3d
    return v0
.end method

.method public c()Lio/dcloud/feature/gallery/imageedit/c/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    return-object v0
.end method

.method public c(FF)Lio/dcloud/feature/gallery/imageedit/c/i/a;
    .registers 6

    .line 2
    new-instance v0, Lio/dcloud/feature/gallery/imageedit/c/i/a;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e()F

    move-result v1

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/i/a;-><init>(FFFF)V

    return-object v0
.end method

.method public c(F)V
    .registers 2

    .line 21
    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->i:F

    return-void
.end method

.method public d()F
    .registers 2

    .line 21
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->i:F

    return v0
.end method

.method public d(F)V
    .registers 4

    .line 22
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(FFF)V

    return-void
.end method

.method public d(Landroid/graphics/Canvas;)V
    .registers 9

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_39

    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->n:Z

    if-eqz v0, :cond_39

    .line 15
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 16
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->o:Landroid/graphics/Path;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v2, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v3

    iget v5, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v3

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v3, v4

    move v4, v5

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 20
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_39
    return-void
.end method

.method public d(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V

    return-void
.end method

.method public e()F
    .registers 3

    .line 12
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public e(F)V
    .registers 2

    .line 11
    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->j:F

    return-void
.end method

.method public e(FF)V
    .registers 3

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->n:Z

    .line 9
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->m()Z

    .line 10
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {p2, p1}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->d(Z)V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .registers 6

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->c()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    goto :goto_26

    :cond_24
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    :goto_26
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->f:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public e(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->v:Lio/dcloud/feature/gallery/imageedit/c/j/a;

    if-ne v0, p1, :cond_8

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->v:Lio/dcloud/feature/gallery/imageedit/c/j/a;

    goto :goto_d

    .line 4
    :cond_8
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_d
    return-void
.end method

.method public f()F
    .registers 2

    .line 29
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->j:F

    return v0
.end method

.method public f(FF)V
    .registers 6

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->n:Z

    .line 22
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->v:Lio/dcloud/feature/gallery/imageedit/c/j/a;

    invoke-direct {p0, v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V

    .line 23
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    sget-object v2, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v1, v2, :cond_1c

    .line 24
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v1, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a(FF)Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->m:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    .line 25
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->d(Z)V

    goto :goto_2b

    .line 26
    :cond_1c
    sget-object p1, Lio/dcloud/feature/gallery/imageedit/c/b;->b:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-eq v1, p1, :cond_24

    sget-object p1, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v1, p1, :cond_2b

    .line 27
    :cond_24
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->c:Lio/dcloud/feature/gallery/imageedit/c/a$b;

    if-eqz p1, :cond_2b

    .line 28
    invoke-interface {p1}, Lio/dcloud/feature/gallery/imageedit/c/a$b;->b()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public f(Landroid/graphics/Canvas;)V
    .registers 9

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 4
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/gallery/imageedit/c/j/a;

    .line 6
    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->b()Z

    move-result v2

    if-nez v2, :cond_12

    .line 7
    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/e;->getX()F

    move-result v2

    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/e;->getPivotX()F

    move-result v3

    add-float/2addr v2, v3

    .line 8
    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/e;->getY()F

    move-result v3

    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/e;->getPivotY()F

    move-result v4

    add-float/2addr v3, v4

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    iget-object v4, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/e;->getX()F

    move-result v5

    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/e;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 12
    iget-object v4, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/e;->getScale()F

    move-result v5

    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/e;->getScale()F

    move-result v6

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 13
    iget-object v4, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-interface {v1}, Lio/dcloud/feature/gallery/imageedit/c/e;->getRotation()F

    move-result v5

    invoke-virtual {v4, v5, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 15
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 16
    invoke-interface {v1, p1}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->a(Landroid/graphics/Canvas;)V

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_12

    .line 20
    :cond_68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public f(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->v:Lio/dcloud/feature/gallery/imageedit/c/j/a;

    if-eq v0, p1, :cond_7

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->c(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V

    :cond_7
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/c/a;->E:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    return-void
.end method

.method public g(FF)V
    .registers 3

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->q:Lio/dcloud/feature/gallery/imageedit/c/b;

    sget-object p2, Lio/dcloud/feature/gallery/imageedit/c/b;->b:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-eq p1, p2, :cond_a

    sget-object p2, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne p1, p2, :cond_11

    .line 6
    :cond_a
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->c:Lio/dcloud/feature/gallery/imageedit/c/a$b;

    if-eqz p1, :cond_11

    .line 7
    invoke-interface {p1}, Lio/dcloud/feature/gallery/imageedit/c/a$b;->a()V

    .line 10
    :cond_11
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->m:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    if-eqz p1, :cond_18

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->m:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    :cond_18
    return-void
.end method

.method public h(FF)V
    .registers 7

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_4f

    cmpl-float v1, p2, v0

    if-nez v1, :cond_a

    goto :goto_4f

    .line 2
    :cond_a
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->t:Z

    if-nez v0, :cond_17

    .line 5
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/a;->d(FF)V

    goto :goto_44

    .line 9
    :cond_17
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 14
    :goto_44
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->d(FF)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->u:Z

    .line 17
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->a()V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public h()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->r:Z

    return v0
.end method

.method public j()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->u:Z

    return v0
.end method

.method public k()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->b()Z

    move-result v0

    return v0
.end method

.method public p()V
    .registers 1

    return-void
.end method

.method public q()V
    .registers 1

    return-void
.end method

.method public r()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    return-void
.end method

.method public s()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v0

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e(F)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->p:Lio/dcloud/feature/gallery/imageedit/c/g/b;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->f()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->a(Landroid/graphics/RectF;F)V

    return-void
.end method

.method public t()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->v:Lio/dcloud/feature/gallery/imageedit/c/j/a;

    invoke-direct {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V

    return-void
.end method

.method public u()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e()F

    move-result v1

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->d:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 4
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_38

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v1, v0

    .line 8
    :cond_38
    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->c(F)V

    .line 9
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->h:F

    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e(F)V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->k:Z

    return-void
.end method

.method public w()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method public x()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/a;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_13
    return-void
.end method

###### Class io.dcloud.feature.gallery.imageedit.c.a.C0045a (io.dcloud.feature.gallery.imageedit.c.a$a)
.class synthetic Lio/dcloud/feature/gallery/imageedit/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gallery/imageedit/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/feature/gallery/imageedit/c/b;->values()[Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/feature/gallery/imageedit/c/a$a;->a:[I

    :try_start_9
    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->b:Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/c/a$a;->a:[I

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class io.dcloud.feature.gallery.imageedit.c.a.b (io.dcloud.feature.gallery.imageedit.c.a$b)
.class public interface abstract Lio/dcloud/feature/gallery/imageedit/c/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gallery/imageedit/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

###### Class io.dcloud.feature.gallery.imageedit.c.a.c (io.dcloud.feature.gallery.imageedit.c.a$c)
.class public interface abstract Lio/dcloud/feature/gallery/imageedit/c/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gallery/imageedit/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a()V
.end method
