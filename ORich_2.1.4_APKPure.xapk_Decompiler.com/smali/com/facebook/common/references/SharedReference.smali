###### Class com.facebook.common.references.SharedReference (com.facebook.common.references.SharedReference)
.class public Lcom/facebook/common/references/SharedReference;
.super Ljava/lang/Object;
.source "SharedReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/references/SharedReference$NullReferenceException;
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


# static fields
.field private static final sLiveObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRefCount:I

.field private final mResourceReleaser:Lcom/facebook/common/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/ResourceReleaser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lcom/facebook/common/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "resourceReleaser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/common/references/ResourceReleaser<",
            "TT;>;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/references/SharedReference;->mValue:Ljava/lang/Object;

    .line 92
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/common/references/ResourceReleaser;

    iput-object p2, p0, Lcom/facebook/common/references/SharedReference;->mResourceReleaser:Lcom/facebook/common/references/ResourceReleaser;

    const/4 p2, 0x1

    .line 93
    iput p2, p0, Lcom/facebook/common/references/SharedReference;->mRefCount:I

    .line 94
    invoke-static {p1}, Lcom/facebook/common/references/SharedReference;->addLiveReference(Ljava/lang/Object;)V

    return-void
.end method

.method private static addLiveReference(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/facebook/common/references/CloseableReference;->useGc()Z

    move-result v0

    if-eqz v0, :cond_f

    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_e

    instance-of v0, p0, Lcom/facebook/common/references/HasBitmap;

    if-eqz v0, :cond_f

    :cond_e
    return-void

    .line 107
    :cond_f
    sget-object v0, Lcom/facebook/common/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    monitor-enter v0

    .line 108
    :try_start_12
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_23

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 112
    :cond_23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_31

    throw p0
.end method

.method private declared-synchronized decreaseRefCount()I
    .registers 3

    monitor-enter p0

    .line 216
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/common/references/SharedReference;->ensureValid()V

    .line 217
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->mRefCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 219
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->mRefCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/common/references/SharedReference;->mRefCount:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 220
    monitor-exit p0

    return v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ensureValid()V
    .registers 2

    .line 229
    invoke-static {p0}, Lcom/facebook/common/references/SharedReference;->isValid(Lcom/facebook/common/references/SharedReference;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 230
    :cond_7
    new-instance v0, Lcom/facebook/common/references/SharedReference$NullReferenceException;

    invoke-direct {v0}, Lcom/facebook/common/references/SharedReference$NullReferenceException;-><init>()V

    throw v0
.end method

.method public static isValid(Lcom/facebook/common/references/SharedReference;)Z
    .registers 1
    .param p0    # Lcom/facebook/common/references/SharedReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_a

    .line 164
    invoke-virtual {p0}, Lcom/facebook/common/references/SharedReference;->isValid()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static removeLiveReference(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/facebook/common/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    monitor-enter v0

    .line 125
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_1d

    const-string v1, "SharedReference"

    const-string v3, "No entry in sLiveObjects for value of type %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, v2, v4

    .line 128
    invoke-static {v1, v3, v2}, Lcom/facebook/common/logging/FLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33

    .line 130
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_27

    .line 131
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 133
    :cond_27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public static reportData()Ljava/lang/String;
    .registers 3

    const-string v0, "SharedReference"

    .line 250
    invoke-static {v0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/String;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    .line 251
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const-string v2, "live_objects_count"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addReference()V
    .registers 2

    monitor-enter p0

    .line 172
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/common/references/SharedReference;->ensureValid()V

    .line 173
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/references/SharedReference;->mRefCount:I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 174
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addReferenceIfValid()Z
    .registers 2

    monitor-enter p0

    .line 178
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/common/references/SharedReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 179
    invoke-virtual {p0}, Lcom/facebook/common/references/SharedReference;->addReference()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    const/4 v0, 0x1

    .line 180
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    .line 182
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteReference()V
    .registers 3

    .line 198
    invoke-direct {p0}, Lcom/facebook/common/references/SharedReference;->decreaseRefCount()I

    move-result v0

    if-nez v0, :cond_1b

    .line 200
    monitor-enter p0

    .line 201
    :try_start_7
    iget-object v0, p0, Lcom/facebook/common/references/SharedReference;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 202
    iput-object v1, p0, Lcom/facebook/common/references/SharedReference;->mValue:Ljava/lang/Object;

    .line 203
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_18

    if-eqz v0, :cond_1b

    .line 205
    iget-object v1, p0, Lcom/facebook/common/references/SharedReference;->mResourceReleaser:Lcom/facebook/common/references/ResourceReleaser;

    invoke-interface {v1, v0}, Lcom/facebook/common/references/ResourceReleaser;->release(Ljava/lang/Object;)V

    .line 206
    invoke-static {v0}, Lcom/facebook/common/references/SharedReference;->removeLiveReference(Ljava/lang/Object;)V

    goto :goto_1b

    :catchall_18
    move-exception v0

    .line 203
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    :goto_1b
    return-void
.end method

.method public declared-synchronized deleteReferenceIfValid()Z
    .registers 2

    monitor-enter p0

    .line 186
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/common/references/SharedReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 187
    invoke-virtual {p0}, Lcom/facebook/common/references/SharedReference;->deleteReference()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    const/4 v0, 0x1

    .line 188
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    .line 190
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/references/SharedReference;->mValue:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRefCountTestOnly()I
    .registers 2

    monitor-enter p0

    .line 236
    :try_start_1
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->mRefCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValid()Z
    .registers 2

    monitor-enter p0

    .line 154
    :try_start_1
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->mRefCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.facebook.common.references.SharedReference.NullReferenceException (com.facebook.common.references.SharedReference$NullReferenceException)
.class public Lcom/facebook/common/references/SharedReference$NullReferenceException;
.super Ljava/lang/RuntimeException;
.source "SharedReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/references/SharedReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullReferenceException"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Null shared reference"

    .line 245
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
