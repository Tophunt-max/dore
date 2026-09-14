###### Class com.facebook.common.internal.Ints (com.facebook.common.internal.Ints)
.class public Lcom/facebook/common/internal/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs max([I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 42
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 43
    aget v0, p0, v1

    .line 44
    :goto_11
    array-length v1, p0

    if-ge v2, v1, :cond_1d

    .line 45
    aget v1, p0, v2

    if-le v1, v0, :cond_1a

    .line 46
    aget v0, p0, v2

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    return v0
.end method
