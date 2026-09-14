###### Class com.facebook.common.internal.AndroidPredicates (com.facebook.common.internal.AndroidPredicates)
.class public Lcom/facebook/common/internal/AndroidPredicates;
.super Ljava/lang/Object;
.source "AndroidPredicates.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static False()Lcom/facebook/common/internal/Predicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/common/internal/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/facebook/common/internal/AndroidPredicates$2;

    invoke-direct {v0}, Lcom/facebook/common/internal/AndroidPredicates$2;-><init>()V

    return-object v0
.end method

.method public static True()Lcom/facebook/common/internal/Predicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/common/internal/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/facebook/common/internal/AndroidPredicates$1;

    invoke-direct {v0}, Lcom/facebook/common/internal/AndroidPredicates$1;-><init>()V

    return-object v0
.end method

###### Class com.facebook.common.internal.AndroidPredicates.AnonymousClass1 (com.facebook.common.internal.AndroidPredicates$1)
.class final Lcom/facebook/common/internal/AndroidPredicates$1;
.super Ljava/lang/Object;
.source "AndroidPredicates.java"

# interfaces
.implements Lcom/facebook/common/internal/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/internal/AndroidPredicates;->True()Lcom/facebook/common/internal/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Predicate<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

###### Class com.facebook.common.internal.AndroidPredicates.AnonymousClass2 (com.facebook.common.internal.AndroidPredicates$2)
.class final Lcom/facebook/common/internal/AndroidPredicates$2;
.super Ljava/lang/Object;
.source "AndroidPredicates.java"

# interfaces
.implements Lcom/facebook/common/internal/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/internal/AndroidPredicates;->False()Lcom/facebook/common/internal/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Predicate<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
