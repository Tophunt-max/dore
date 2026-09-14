###### Class com.igexin.push.extension.distribution.gbd.i.ak (com.igexin.push.extension.distribution.gbd.i.ak)
.class public Lcom/igexin/push/extension/distribution/gbd/i/ak;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/ak;->a(Ljava/util/Comparator;)V

    return-void
.end method

.method private a(Ljava/util/List;IILjava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;IITE;)Z"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x1

    if-gt p2, p3, :cond_1e

    add-int v1, p2, p3

    shr-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/i/ak;->a:Ljava/util/Comparator;

    invoke-interface {v3, v2, p4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_14

    move p2, v1

    goto :goto_1f

    :cond_14
    if-gez v2, :cond_1a

    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_0

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    move p3, v1

    goto :goto_0

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iput p2, p0, Lcom/igexin/push/extension/distribution/gbd/i/ak;->b:I

    return v0
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/ak;->a:Ljava/util/Comparator;

    if-eqz v0, :cond_6d

    if-eqz p1, :cond_6d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    if-eqz p2, :cond_6d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_6d

    :cond_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v3, v1, -0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_28
    if-ge v5, v0, :cond_6c

    if-ge v6, v1, :cond_6c

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lcom/igexin/push/extension/distribution/gbd/i/ak;->a:Ljava/util/Comparator;

    invoke-interface {v9, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-nez v9, :cond_44

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3f
    add-int/lit8 v5, v5, 0x1

    :goto_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_44
    if-gez v9, :cond_57

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, p1, v5, v2, v8}, Lcom/igexin/push/extension/distribution/gbd/i/ak;->a(Ljava/util/List;IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lcom/igexin/push/extension/distribution/gbd/i/ak;->b:I

    goto :goto_3f

    :cond_54
    iget v5, p0, Lcom/igexin/push/extension/distribution/gbd/i/ak;->b:I

    goto :goto_41

    :cond_57
    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, p2, v6, v3, v7}, Lcom/igexin/push/extension/distribution/gbd/i/ak;->a(Ljava/util/List;IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/igexin/push/extension/distribution/gbd/i/ak;->b:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    :cond_67
    iget v6, p0, Lcom/igexin/push/extension/distribution/gbd/i/ak;->b:I

    :goto_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_6c
    return-object v4

    :cond_6d
    :goto_6d
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/ak;->a:Ljava/util/Comparator;

    return-void
.end method
