###### Class com.facebook.cache.disk.ScoreBasedEvictionComparatorSupplier (com.facebook.cache.disk.ScoreBasedEvictionComparatorSupplier)
.class public Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;
.super Ljava/lang/Object;
.source "ScoreBasedEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;


# instance fields
.field private final mAgeWeight:F

.field private final mSizeWeight:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ageWeight",
            "sizeWeight"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->mAgeWeight:F

    .line 22
    iput p2, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->mSizeWeight:F

    return-void
.end method


# virtual methods
.method calculateScore(Lcom/facebook/cache/disk/DiskStorage$Entry;J)F
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "now"
        }
    .end annotation

    .line 48
    invoke-interface {p1}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 49
    invoke-interface {p1}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getSize()J

    move-result-wide v0

    .line 50
    iget p1, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->mAgeWeight:F

    long-to-float p2, p2

    mul-float p1, p1, p2

    iget p2, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->mSizeWeight:F

    long-to-float p3, v0

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method public get()Lcom/facebook/cache/disk/EntryEvictionComparator;
    .registers 2

    .line 27
    new-instance v0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;-><init>(Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;)V

    return-object v0
.end method

###### Class com.facebook.cache.disk.ScoreBasedEvictionComparatorSupplier.AnonymousClass1 (com.facebook.cache.disk.ScoreBasedEvictionComparatorSupplier$1)
.class Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;
.super Ljava/lang/Object;
.source "ScoreBasedEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/EntryEvictionComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->get()Lcom/facebook/cache/disk/EntryEvictionComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field now:J

.field final synthetic this$0:Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;


# direct methods
.method constructor <init>(Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->this$0:Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->now:J

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/cache/disk/DiskStorage$Entry;Lcom/facebook/cache/disk/DiskStorage$Entry;)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->this$0:Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;

    iget-wide v1, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->now:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->calculateScore(Lcom/facebook/cache/disk/DiskStorage$Entry;J)F

    move-result p1

    .line 35
    iget-object v0, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->this$0:Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;

    iget-wide v1, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->now:J

    invoke-virtual {v0, p2, v1, v2}, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->calculateScore(Lcom/facebook/cache/disk/DiskStorage$Entry;J)F

    move-result p2

    cmpg-float v0, p1, p2

    if-gez v0, :cond_16

    const/4 p1, 0x1

    goto :goto_1d

    :cond_16
    cmpl-float p1, p2, p1

    if-nez p1, :cond_1c

    const/4 p1, 0x0

    goto :goto_1d

    :cond_1c
    const/4 p1, -0x1

    :goto_1d
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 27
    check-cast p1, Lcom/facebook/cache/disk/DiskStorage$Entry;

    check-cast p2, Lcom/facebook/cache/disk/DiskStorage$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->compare(Lcom/facebook/cache/disk/DiskStorage$Entry;Lcom/facebook/cache/disk/DiskStorage$Entry;)I

    move-result p1

    return p1
.end method
