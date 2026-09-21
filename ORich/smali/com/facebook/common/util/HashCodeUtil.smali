###### Class com.facebook.common.util.HashCodeUtil (com.facebook.common.util.HashCodeUtil)
.class public Lcom/facebook/common/util/HashCodeUtil;
.super Ljava/lang/Object;
.source "HashCodeUtil.java"


# static fields
.field private static final X:I = 0x1f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashCode(I)I
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i1"
        }
    .end annotation

    add-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static hashCode(II)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i1",
            "i2"
        }
    .end annotation

    add-int/lit8 p0, p0, 0x1f

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    return p0
.end method

.method public static hashCode(III)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i1",
            "i2",
            "i3"
        }
    .end annotation

    add-int/lit8 p0, p0, 0x1f

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    return p0
.end method

.method public static hashCode(IIII)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i1",
            "i2",
            "i3",
            "i4"
        }
    .end annotation

    add-int/lit8 p0, p0, 0x1f

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p3

    return p0
.end method

.method public static hashCode(IIIII)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i1",
            "i2",
            "i3",
            "i4",
            "i5"
        }
    .end annotation

    add-int/lit8 p0, p0, 0x1f

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p3

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p4

    return p0
.end method

.method public static hashCode(IIIIII)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i1",
            "i2",
            "i3",
            "i4",
            "i5",
            "i6"
        }
    .end annotation

    add-int/lit8 p0, p0, 0x1f

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p3

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p4

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p5

    return p0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o1"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 32
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_8
    invoke-static {p0}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    goto :goto_9

    .line 36
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_9
    if-nez p1, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_10
    invoke-static {p0, v0}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(II)I

    move-result p0

    return p0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2",
            "o3"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    goto :goto_9

    .line 41
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_9
    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    .line 42
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_11
    if-nez p2, :cond_14

    goto :goto_18

    .line 43
    :cond_14
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 40
    :goto_18
    invoke-static {p0, p1, v0}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(III)I

    move-result p0

    return p0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2",
            "o3",
            "o4"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    goto :goto_9

    .line 49
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_9
    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    .line 50
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_11
    if-nez p2, :cond_15

    const/4 p2, 0x0

    goto :goto_19

    .line 51
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :goto_19
    if-nez p3, :cond_1c

    goto :goto_20

    .line 52
    :cond_1c
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 48
    :goto_20
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(IIII)I

    move-result p0

    return p0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2",
            "o3",
            "o4",
            "o5"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    goto :goto_9

    .line 62
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_9
    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    .line 63
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_11
    if-nez p2, :cond_15

    const/4 p2, 0x0

    goto :goto_19

    .line 64
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :goto_19
    if-nez p3, :cond_1d

    const/4 p3, 0x0

    goto :goto_21

    .line 65
    :cond_1d
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    :goto_21
    if-nez p4, :cond_24

    goto :goto_28

    .line 66
    :cond_24
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 61
    :goto_28
    invoke-static {p0, p1, p2, p3, v0}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(IIIII)I

    move-result p0

    return p0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 13
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2",
            "o3",
            "o4",
            "o5",
            "o6"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v1, 0x0

    goto :goto_a

    .line 77
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    move v1, p0

    :goto_a
    if-nez p1, :cond_e

    const/4 v2, 0x0

    goto :goto_13

    .line 78
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    move v2, p0

    :goto_13
    if-nez p2, :cond_17

    const/4 v3, 0x0

    goto :goto_1c

    .line 79
    :cond_17
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p0

    move v3, p0

    :goto_1c
    if-nez p3, :cond_20

    const/4 v4, 0x0

    goto :goto_25

    .line 80
    :cond_20
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p0

    move v4, p0

    :goto_25
    if-nez p4, :cond_29

    const/4 v5, 0x0

    goto :goto_2e

    .line 81
    :cond_29
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p0

    move v5, p0

    :goto_2e
    if-nez p5, :cond_32

    const/4 v6, 0x0

    goto :goto_37

    .line 82
    :cond_32
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move v6, v0

    .line 76
    :goto_37
    invoke-static/range {v1 .. v6}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(IIIIII)I

    move-result p0

    return p0
.end method
