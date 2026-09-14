###### Class io.dcloud.feature.gg.Range (io.dcloud.feature.gg.Range)
.class Lio/dcloud/feature/gg/Range;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private end:D

.field private start:D

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(DDLjava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/dcloud/feature/gg/Range;->start:D

    .line 3
    iput-wide p3, p0, Lio/dcloud/feature/gg/Range;->end:D

    .line 4
    iput-object p5, p0, Lio/dcloud/feature/gg/Range;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contains(D)Z
    .registers 6

    .line 1
    iget-wide v0, p0, Lio/dcloud/feature/gg/Range;->start:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_e

    iget-wide v0, p0, Lio/dcloud/feature/gg/Range;->end:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/Range;->type:Ljava/lang/String;

    return-object v0
.end method
