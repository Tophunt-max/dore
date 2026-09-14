###### Class com.facebook.common.references.CloseableReference (com.facebook.common.references.CloseableReference)
.class public abstract Lcom/facebook/common/references/CloseableReference;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/references/CloseableReference$LeakHandler;,
        Lcom/facebook/common/references/CloseableReference$CloseableRefType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CLOSEABLE_RELEASER:Lcom/facebook/common/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/ResourceReleaser<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_LEAK_HANDLER:Lcom/facebook/common/references/CloseableReference$LeakHandler;

.field public static final REF_TYPE_DEFAULT:I = 0x0

.field public static final REF_TYPE_FINALIZER:I = 0x1

.field public static final REF_TYPE_NOOP:I = 0x3

.field public static final REF_TYPE_REF_COUNT:I = 0x2

.field private static TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/facebook/common/references/CloseableReference;",
            ">;"
        }
    .end annotation
.end field

.field private static sBitmapCloseableRefType:I


# instance fields
.field protected mIsClosed:Z

.field protected final mLeakHandler:Lcom/facebook/common/references/CloseableReference$LeakHandler;

.field protected final mSharedReference:Lcom/facebook/common/references/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final mStacktrace:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    const-class v0, Lcom/facebook/common/references/CloseableReference;

    sput-object v0, Lcom/facebook/common/references/CloseableReference;->TAG:Ljava/lang/Class;

    .line 111
    new-instance v0, Lcom/facebook/common/references/CloseableReference$1;

    invoke-direct {v0}, Lcom/facebook/common/references/CloseableReference$1;-><init>()V

    sput-object v0, Lcom/facebook/common/references/CloseableReference;->DEFAULT_CLOSEABLE_RELEASER:Lcom/facebook/common/references/ResourceReleaser;

    .line 123
    new-instance v0, Lcom/facebook/common/references/CloseableReference$2;

    invoke-direct {v0}, Lcom/facebook/common/references/CloseableReference$2;-><init>()V

    sput-object v0, Lcom/facebook/common/references/CloseableReference;->DEFAULT_LEAK_HANDLER:Lcom/facebook/common/references/CloseableReference$LeakHandler;

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/common/references/SharedReference;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;)V
    .registers 5
    .param p3    # Ljava/lang/Throwable;
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
            "sharedReference",
            "leakHandler",
            "stacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;",
            "Lcom/facebook/common/references/CloseableReference$LeakHandler;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z

    .line 144
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/SharedReference;

    iput-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    .line 145
    invoke-virtual {p1}, Lcom/facebook/common/references/SharedReference;->addReference()V

    .line 146
    iput-object p2, p0, Lcom/facebook/common/references/CloseableReference;->mLeakHandler:Lcom/facebook/common/references/CloseableReference$LeakHandler;

    .line 147
    iput-object p3, p0, Lcom/facebook/common/references/CloseableReference;->mStacktrace:Ljava/lang/Throwable;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;)V
    .registers 6
    .param p4    # Ljava/lang/Throwable;
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
            "t",
            "resourceReleaser",
            "leakHandler",
            "stacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/common/references/ResourceReleaser<",
            "TT;>;",
            "Lcom/facebook/common/references/CloseableReference$LeakHandler;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z

    .line 155
    new-instance v0, Lcom/facebook/common/references/SharedReference;

    invoke-direct {v0, p1, p2}, Lcom/facebook/common/references/SharedReference;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)V

    iput-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    .line 156
    iput-object p3, p0, Lcom/facebook/common/references/CloseableReference;->mLeakHandler:Lcom/facebook/common/references/CloseableReference$LeakHandler;

    .line 157
    iput-object p4, p0, Lcom/facebook/common/references/CloseableReference;->mStacktrace:Ljava/lang/Throwable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .registers 1

    .line 71
    sget-object v0, Lcom/facebook/common/references/CloseableReference;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method public static cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .registers 1
    .param p0    # Lcom/facebook/common/references/CloseableReference;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_7

    .line 326
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull()Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static cloneOrNull(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 342
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/CloseableReference;

    .line 344
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object v0
.end method

.method public static closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    .registers 1
    .param p0    # Lcom/facebook/common/references/CloseableReference;
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
            "Lcom/facebook/common/references/CloseableReference<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 356
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->close()V

    :cond_5
    return-void
.end method

.method public static closeSafely(Ljava/lang/Iterable;)V
    .registers 2
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "references"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/facebook/common/references/CloseableReference<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_16

    .line 367
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    .line 368
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static isValid(Lcom/facebook/common/references/CloseableReference;)Z
    .registers 1
    .param p0    # Lcom/facebook/common/references/CloseableReference;
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
            "Lcom/facebook/common/references/CloseableReference<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_a

    .line 316
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;
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
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;"
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/facebook/common/references/CloseableReference;->DEFAULT_CLOSEABLE_RELEASER:Lcom/facebook/common/references/ResourceReleaser;

    invoke-static {p0, v0}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/Closeable;Lcom/facebook/common/references/CloseableReference$LeakHandler;)Lcom/facebook/common/references/CloseableReference;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "leakHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;",
            "Lcom/facebook/common/references/CloseableReference$LeakHandler;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 189
    :cond_4
    sget-object v1, Lcom/facebook/common/references/CloseableReference;->DEFAULT_CLOSEABLE_RELEASER:Lcom/facebook/common/references/ResourceReleaser;

    .line 193
    invoke-interface {p1}, Lcom/facebook/common/references/CloseableReference$LeakHandler;->requiresStacktrace()Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 189
    :cond_11
    invoke-static {p0, v1, p1, v0}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "resourceReleaser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/common/references/ResourceReleaser<",
            "TT;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;"
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/facebook/common/references/CloseableReference;->DEFAULT_LEAK_HANDLER:Lcom/facebook/common/references/CloseableReference$LeakHandler;

    invoke-static {p0, p1, v0}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;)Lcom/facebook/common/references/CloseableReference;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "t",
            "resourceReleaser",
            "leakHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/common/references/ResourceReleaser<",
            "TT;>;",
            "Lcom/facebook/common/references/CloseableReference$LeakHandler;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 206
    :cond_4
    invoke-interface {p2}, Lcom/facebook/common/references/CloseableReference$LeakHandler;->requiresStacktrace()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 202
    :cond_f
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;)Lcom/facebook/common/references/CloseableReference;
    .registers 6
    .param p3    # Ljava/lang/Throwable;
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
            "t",
            "resourceReleaser",
            "leakHandler",
            "stacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/common/references/ResourceReleaser<",
            "TT;>;",
            "Lcom/facebook/common/references/CloseableReference$LeakHandler;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_4
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    instance-of v0, p0, Lcom/facebook/common/references/HasBitmap;

    if-eqz v0, :cond_17

    .line 224
    :cond_c
    sget v0, Lcom/facebook/common/references/CloseableReference;->sBitmapCloseableRefType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    .line 236
    :cond_17
    new-instance v0, Lcom/facebook/common/references/DefaultCloseableReference;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/common/references/DefaultCloseableReference;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;)V

    return-object v0

    .line 230
    :cond_1d
    new-instance v0, Lcom/facebook/common/references/NoOpCloseableReference;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/common/references/NoOpCloseableReference;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;)V

    return-object v0

    .line 228
    :cond_23
    new-instance v0, Lcom/facebook/common/references/RefCountCloseableReference;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/common/references/RefCountCloseableReference;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;)V

    return-object v0

    .line 226
    :cond_29
    new-instance v0, Lcom/facebook/common/references/FinalizerCloseableReference;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/common/references/FinalizerCloseableReference;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$LeakHandler;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static setDisableCloseableReferencesForBitmaps(I)V
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapCloseableRefType"
        }
    .end annotation

    .line 91
    sput p0, Lcom/facebook/common/references/CloseableReference;->sBitmapCloseableRefType:I

    return-void
.end method

.method public static useGc()Z
    .registers 2

    .line 86
    sget v0, Lcom/facebook/common/references/CloseableReference;->sBitmapCloseableRefType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method


# virtual methods
.method public abstract clone()Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized cloneOrNull()Lcom/facebook/common/references/CloseableReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 256
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 257
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    .line 259
    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 2

    .line 299
    monitor-enter p0

    .line 300
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z

    if-eqz v0, :cond_7

    .line 301
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z

    .line 304
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    .line 306
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->deleteReference()V

    return-void

    :catchall_11
    move-exception v0

    .line 304
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 378
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_1e

    .line 379
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z

    if-eqz v0, :cond_a

    .line 380
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1b

    .line 388
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    .line 382
    :cond_a
    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_1b

    .line 384
    :try_start_b
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mLeakHandler:Lcom/facebook/common/references/CloseableReference$LeakHandler;

    iget-object v1, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    iget-object v2, p0, Lcom/facebook/common/references/CloseableReference;->mStacktrace:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/references/CloseableReference$LeakHandler;->reportLeak(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V

    .line 386
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1e

    .line 388
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1b
    move-exception v0

    .line 382
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    .line 388
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 389
    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 245
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 246
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnderlyingReferenceTestOnly()Lcom/facebook/common/references/SharedReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 278
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getValueHash()I
    .registers 2

    .line 286
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public declared-synchronized isValid()Z
    .registers 2

    monitor-enter p0

    .line 268
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.facebook.common.references.CloseableReference.AnonymousClass1 (com.facebook.common.references.CloseableReference$1)
.class final Lcom/facebook/common/references/CloseableReference$1;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Lcom/facebook/common/references/ResourceReleaser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/references/CloseableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/ResourceReleaser<",
        "Ljava/io/Closeable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public release(Ljava/io/Closeable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    .line 116
    :try_start_1
    invoke-static {p1, v0}, Lcom/facebook/common/internal/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 112
    check-cast p1, Ljava/io/Closeable;

    invoke-virtual {p0, p1}, Lcom/facebook/common/references/CloseableReference$1;->release(Ljava/io/Closeable;)V

    return-void
.end method

###### Class com.facebook.common.references.CloseableReference.AnonymousClass2 (com.facebook.common.references.CloseableReference$2)
.class final Lcom/facebook/common/references/CloseableReference$2;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Lcom/facebook/common/references/CloseableReference$LeakHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/references/CloseableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportLeak(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V
    .registers 7
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reference",
            "stacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/facebook/common/references/SharedReference;->get()Ljava/lang/Object;

    move-result-object p2

    .line 129
    invoke-static {}, Lcom/facebook/common/references/CloseableReference;->access$000()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 131
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 132
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    if-nez p2, :cond_25

    const/4 p1, 0x0

    goto :goto_2d

    .line 133
    :cond_25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_2d
    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "Finalized without closing: %x %x (type = %s)"

    .line 128
    invoke-static {v0, p1, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public requiresStacktrace()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.facebook.common.references.CloseableReference.CloseableRefType (com.facebook.common.references.CloseableReference$CloseableRefType)
.class public interface abstract annotation Lcom/facebook/common/references/CloseableReference$CloseableRefType;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/references/CloseableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CloseableRefType"
.end annotation

###### Class com.facebook.common.references.CloseableReference.LeakHandler (com.facebook.common.references.CloseableReference$LeakHandler)
.class public interface abstract Lcom/facebook/common/references/CloseableReference$LeakHandler;
.super Ljava/lang/Object;
.source "CloseableReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/references/CloseableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LeakHandler"
.end annotation


# virtual methods
.method public abstract reportLeak(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reference",
            "stacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract requiresStacktrace()Z
.end method
