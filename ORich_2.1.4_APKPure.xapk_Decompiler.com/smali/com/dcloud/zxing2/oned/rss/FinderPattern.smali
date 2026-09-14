###### Class com.dcloud.zxing2.oned.rss.FinderPattern (com.dcloud.zxing2.oned.rss.FinderPattern)
.class public final Lcom/dcloud/zxing2/oned/rss/FinderPattern;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final resultPoints:[Lcom/dcloud/zxing2/ResultPoint;

.field private final startEnd:[I

.field private final value:I


# direct methods
.method public constructor <init>(I[IIII)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->value:I

    .line 3
    iput-object p2, p0, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->startEnd:[I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/dcloud/zxing2/ResultPoint;

    .line 4
    new-instance p2, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float p3, p3

    int-to-float p5, p5

    invoke-direct {p2, p3, p5}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    new-instance p2, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float p3, p4

    invoke-direct {p2, p3, p5}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iput-object p1, p0, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->resultPoints:[Lcom/dcloud/zxing2/ResultPoint;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4
    :cond_6
    check-cast p1, Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    .line 5
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->value:I

    iget p1, p1, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->value:I

    if-ne v0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->resultPoints:[Lcom/dcloud/zxing2/ResultPoint;

    return-object v0
.end method

.method public getStartEnd()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->startEnd:[I

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->value:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->value:I

    return v0
.end method
