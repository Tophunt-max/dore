###### Class io.dcloud.feature.gallery.imageedit.c.i.a (io.dcloud.feature.gallery.imageedit.c.i.a)
.class public Lio/dcloud/feature/gallery/imageedit/c/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a:F

    .line 3
    iput p2, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->b:F

    .line 4
    iput p3, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->c:F

    .line 5
    iput p4, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->d:F

    return-void
.end method

.method public static a(Lio/dcloud/feature/gallery/imageedit/c/i/a;Lio/dcloud/feature/gallery/imageedit/c/i/a;)Z
    .registers 2

    .line 8
    iget p0, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->d:F

    iget p1, p1, Lio/dcloud/feature/gallery/imageedit/c/i/a;->d:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public a(FFFF)V
    .registers 5

    .line 1
    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a:F

    .line 2
    iput p2, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->b:F

    .line 3
    iput p3, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->c:F

    .line 4
    iput p4, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->d:F

    return-void
.end method

.method public a(Lio/dcloud/feature/gallery/imageedit/c/i/a;)V
    .registers 4

    .line 5
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->c:F

    iget v1, p1, Lio/dcloud/feature/gallery/imageedit/c/i/a;->c:F

    mul-float v0, v0, v1

    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->c:F

    .line 6
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a:F

    iget v1, p1, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a:F

    .line 7
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->b:F

    iget p1, p1, Lio/dcloud/feature/gallery/imageedit/c/i/a;->b:F

    sub-float/2addr v0, p1

    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->b:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMGHoming{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rotate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/feature/gallery/imageedit/c/i/a;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
