###### Class com.facebook.imagepipeline.memory.BucketMap (com.facebook.imagepipeline.memory.BucketMap)
.class public Lcom/facebook/imagepipeline/memory/BucketMap;
.super Ljava/lang/Object;
.source "BucketMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mHead:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field mTail:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mMap:Landroid/util/SparseArray;

    return-void
.end method

.method private maybePrune(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bucket"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_14

    .line 154
    iget-object v0, p1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->value:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 155
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/BucketMap;->prune(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;)V

    .line 156
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mMap:Landroid/util/SparseArray;

    iget p1, p1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->key:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_14
    return-void
.end method

.method private moveToFront(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bucket"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry<",
            "TT;>;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mHead:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    if-ne v0, p1, :cond_5

    return-void

    .line 128
    :cond_5
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/BucketMap;->prune(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;)V

    .line 130
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mHead:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    if-nez v0, :cond_11

    .line 131
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mHead:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    .line 132
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mTail:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    return-void

    .line 136
    :cond_11
    iput-object v0, p1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->next:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    .line 137
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mHead:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    iput-object p1, v0, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->prev:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    .line 138
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mHead:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    return-void
.end method

.method private declared-synchronized prune(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bucket"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_1
    iget-object v0, p1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->prev:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    .line 103
    iget-object v1, p1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->next:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    if-eqz v0, :cond_9

    .line 105
    iput-object v1, v0, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->next:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    :cond_9
    if-eqz v1, :cond_d

    .line 108
    iput-object v0, v1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->prev:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    :cond_d
    const/4 v2, 0x0

    .line 111
    iput-object v2, p1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->prev:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    .line 112
    iput-object v2, p1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->next:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    .line 114
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mHead:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    if-ne p1, v2, :cond_18

    .line 115
    iput-object v1, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mHead:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    .line 118
    :cond_18
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mTail:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    if-ne p1, v1, :cond_1e

    .line 119
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mTail:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 121
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized acquire(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_19

    if-nez p1, :cond_e

    const/4 p1, 0x0

    .line 61
    monitor-exit p0

    return-object p1

    .line 63
    :cond_e
    :try_start_e
    iget-object v0, p1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->value:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/BucketMap;->moveToFront(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_19

    .line 66
    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(ILjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    if-nez v0, :cond_1f

    .line 78
    new-instance v0, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    const/4 v2, 0x0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;-><init>(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;ILjava/util/LinkedList;Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;Lcom/facebook/imagepipeline/memory/BucketMap$1;)V

    .line 79
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    :cond_1f
    iget-object p1, v0, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->value:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/BucketMap;->moveToFront(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 85
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFromEnd()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 143
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mTail:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 145
    monitor-exit p0

    return-object v0

    .line 148
    :cond_8
    :try_start_8
    iget-object v1, v0, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->value:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    .line 149
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/BucketMap;->maybePrune(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_13

    .line 150
    monitor-exit p0

    return-object v1

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized valueCount()I
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 91
    :try_start_2
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BucketMap;->mHead:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    :goto_4
    if-eqz v1, :cond_14

    .line 93
    iget-object v2, v1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->value:Ljava/util/LinkedList;

    if-eqz v2, :cond_11

    .line 94
    iget-object v2, v1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->value:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 96
    :cond_11
    iget-object v1, v1, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->next:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_16

    goto :goto_4

    .line 98
    :cond_14
    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.facebook.imagepipeline.memory.BucketMap.AnonymousClass1 (com.facebook.imagepipeline.memory.BucketMap$1)
.class synthetic Lcom/facebook/imagepipeline/memory/BucketMap$1;
.super Ljava/lang/Object;
.source "BucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/BucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.imagepipeline.memory.BucketMap.LinkedEntry (com.facebook.imagepipeline.memory.BucketMap$LinkedEntry)
.class Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;
.super Ljava/lang/Object;
.source "BucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/BucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LinkedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field key:I

.field next:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry<",
            "TI;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field prev:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry<",
            "TI;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field value:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;ILjava/util/LinkedList;Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;)V
    .registers 5
    .param p1    # Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;
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
            "prev",
            "key",
            "value",
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry<",
            "TI;>;I",
            "Ljava/util/LinkedList<",
            "TI;>;",
            "Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry<",
            "TI;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->prev:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    .line 41
    iput p2, p0, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->key:I

    .line 42
    iput-object p3, p0, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->value:Ljava/util/LinkedList;

    .line 43
    iput-object p4, p0, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->next:Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;ILjava/util/LinkedList;Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;Lcom/facebook/imagepipeline/memory/BucketMap$1;)V
    .registers 6

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;-><init>(Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;ILjava/util/LinkedList;Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkedEntry(key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/imagepipeline/memory/BucketMap$LinkedEntry;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
