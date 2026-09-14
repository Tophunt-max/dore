###### Class com.bumptech.glide.request.target.CustomViewTarget (com.bumptech.glide.request.target.CustomViewTarget)
.class public abstract Lcom/bumptech/glide/request/target/CustomViewTarget;
.super Ljava/lang/Object;
.source "CustomViewTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomViewTarget"

.field private static final VIEW_TAG_ID:I


# instance fields
.field private attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

.field private isAttachStateListenerAdded:Z

.field private isClearedByUs:Z

.field private overrideTag:I

.field private final sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

.field protected final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    sget v0, Lcom/bumptech/glide/R$id;->glide_custom_view_target_tag:I

    sput v0, Lcom/bumptech/glide/request/target/CustomViewTarget;->VIEW_TAG_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    .line 51
    new-instance v0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    return-void
.end method

.method private getTag()Ljava/lang/Object;
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    iget v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->overrideTag:I

    if-nez v1, :cond_8

    sget v1, Lcom/bumptech/glide/request/target/CustomViewTarget;->VIEW_TAG_ID:I

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private maybeAddAttachStateListener()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    if-eqz v1, :cond_9

    goto :goto_11

    .line 282
    :cond_9
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    :cond_11
    :goto_11
    return-void
.end method

.method private maybeRemoveAttachStateListener()V
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    if-nez v1, :cond_9

    goto :goto_11

    .line 291
    :cond_9
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    :cond_11
    :goto_11
    return-void
.end method

.method private setTag(Ljava/lang/Object;)V
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    iget v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->overrideTag:I

    if-nez v1, :cond_8

    sget v1, Lcom/bumptech/glide/request/target/CustomViewTarget;->VIEW_TAG_ID:I

    :cond_8
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final clearOnDetach()Lcom/bumptech/glide/request/target/CustomViewTarget;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/CustomViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_5

    return-object p0

    .line 142
    :cond_5
    new-instance v0, Lcom/bumptech/glide/request/target/CustomViewTarget$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$1;-><init>(Lcom/bumptech/glide/request/target/CustomViewTarget;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 153
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->maybeAddAttachStateListener()V

    return-object p0
.end method

.method public final getRequest()Lcom/bumptech/glide/request/Request;
    .registers 3

    .line 232
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 234
    instance-of v1, v0, Lcom/bumptech/glide/request/Request;

    if-eqz v1, :cond_d

    .line 235
    check-cast v0, Lcom/bumptech/glide/request/Request;

    return-object v0

    .line 237
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not pass non-R.id ids to setTag(id)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    return-void
.end method

.method public final getView()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->clearCallbacksAndListener()V

    .line 212
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;->onResourceCleared(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-boolean p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isClearedByUs:Z

    if-nez p1, :cond_f

    .line 214
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->maybeRemoveAttachStateListener()V

    :cond_f
    return-void
.end method

.method public final onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 204
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->maybeAddAttachStateListener()V

    .line 205
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;->onResourceLoading(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected abstract onResourceCleared(Landroid/graphics/drawable/Drawable;)V
.end method

.method protected onResourceLoading(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

.method final pauseMyRequest()V
    .registers 3

    .line 260
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    .line 262
    iput-boolean v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isClearedByUs:Z

    .line 263
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isClearedByUs:Z

    :cond_f
    return-void
.end method

.method public final removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    return-void
.end method

.method final resumeMyRequest()V
    .registers 3

    .line 251
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 252
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isCleared()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 253
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    :cond_f
    return-void
.end method

.method public final setRequest(Lcom/bumptech/glide/request/Request;)V
    .registers 2

    .line 225
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final useTagId(I)Lcom/bumptech/glide/request/target/CustomViewTarget;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/request/target/CustomViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 170
    iget v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->overrideTag:I

    if-nez v0, :cond_7

    .line 173
    iput p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->overrideTag:I

    return-object p0

    .line 171
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot change the tag id once it has been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final waitForLayout()Lcom/bumptech/glide/request/target/CustomViewTarget;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/CustomViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->waitForLayout:Z

    return-object p0
.end method

###### Class com.bumptech.glide.request.target.CustomViewTarget.AnonymousClass1 (com.bumptech.glide.request.target.CustomViewTarget$1)
.class Lcom/bumptech/glide/request/target/CustomViewTarget$1;
.super Ljava/lang/Object;
.source "CustomViewTarget.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/request/target/CustomViewTarget;->clearOnDetach()Lcom/bumptech/glide/request/target/CustomViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/request/target/CustomViewTarget;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/target/CustomViewTarget;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$1;->this$0:Lcom/bumptech/glide/request/target/CustomViewTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 145
    iget-object p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$1;->this$0:Lcom/bumptech/glide/request/target/CustomViewTarget;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;->resumeMyRequest()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 150
    iget-object p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$1;->this$0:Lcom/bumptech/glide/request/target/CustomViewTarget;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;->pauseMyRequest()V

    return-void
.end method

###### Class com.bumptech.glide.request.target.CustomViewTarget.SizeDeterminer (com.bumptech.glide.request.target.CustomViewTarget$SizeDeterminer)
.class final Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;
.super Ljava/lang/Object;
.source "CustomViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/target/CustomViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeDeterminer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
    }
.end annotation


# static fields
.field private static final PENDING_SIZE:I

.field static maxDisplayLength:Ljava/lang/Integer;


# instance fields
.field private final cbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private layoutListener:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

.field private final view:Landroid/view/View;

.field waitForLayout:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    .line 309
    iput-object p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    return-void
.end method

.method private static getMaxDisplayLength(Landroid/content/Context;)I
    .registers 2

    .line 314
    sget-object v0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->maxDisplayLength:Ljava/lang/Integer;

    if-nez v0, :cond_2c

    const-string v0, "window"

    .line 316
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 317
    invoke-static {p0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 318
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 319
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 320
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->maxDisplayLength:Ljava/lang/Integer;

    .line 322
    :cond_2c
    sget-object p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->maxDisplayLength:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getTargetDimen(III)I
    .registers 6

    sub-int v0, p2, p3

    if-lez v0, :cond_5

    return v0

    .line 426
    :cond_5
    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->waitForLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    sub-int/2addr p1, p3

    if-lez p1, :cond_17

    return p1

    .line 453
    :cond_17
    iget-object p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-nez p1, :cond_3b

    const/4 p1, -0x2

    if-ne p2, p1, :cond_3b

    const/4 p1, 0x4

    const-string p2, "CustomViewTarget"

    .line 454
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_30

    const-string p1, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device\'s screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions."

    .line 455
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_30
    iget-object p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getMaxDisplayLength(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_3b
    return v1
.end method

.method private getTargetHeight()I
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 403
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 404
    :goto_19
    iget-object v2, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getTargetDimen(III)I

    move-result v0

    return v0
.end method

.method private getTargetWidth()I
    .registers 4

    .line 408
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 409
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 410
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 411
    :goto_19
    iget-object v2, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getTargetDimen(III)I

    move-result v0

    return v0
.end method

.method private isDimensionValid(I)Z
    .registers 3

    if-gtz p1, :cond_9

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    return p1
.end method

.method private isViewStateAndSizeValid(II)Z
    .registers 3

    .line 397
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->isDimensionValid(I)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->isDimensionValid(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private notifyCbs(II)V
    .registers 5

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .line 331
    invoke-interface {v1, p1, p2}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    goto :goto_b

    :cond_1b
    return-void
.end method


# virtual methods
.method checkCurrentDimens()V
    .registers 4

    .line 337
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 341
    :cond_9
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getTargetWidth()I

    move-result v0

    .line 342
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getTargetHeight()I

    move-result v1

    .line 343
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->isViewStateAndSizeValid(II)Z

    move-result v2

    if-nez v2, :cond_18

    return-void

    .line 347
    :cond_18
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->notifyCbs(II)V

    .line 348
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->clearCallbacksAndListener()V

    return-void
.end method

.method clearCallbacksAndListener()V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 390
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_11
    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    .line 393
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 5

    .line 352
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getTargetWidth()I

    move-result v0

    .line 353
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getTargetHeight()I

    move-result v1

    .line 354
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->isViewStateAndSizeValid(II)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 355
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void

    .line 361
    :cond_12
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 362
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_1f
    iget-object p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    if-nez p1, :cond_33

    .line 365
    iget-object p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 366
    new-instance v0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;-><init>(Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    .line 367
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_33
    return-void
.end method

.method removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.bumptech.glide.request.target.CustomViewTarget.SizeDeterminer.SizeDeterminerLayoutListener (com.bumptech.glide.request.target.CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener)
.class final Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
.super Ljava/lang/Object;
.source "CustomViewTarget.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizeDeterminerLayoutListener"
.end annotation


# instance fields
.field private final sizeDeterminerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;)V
    .registers 3

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;->sizeDeterminerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    const-string v0, "CustomViewTarget"

    const/4 v1, 0x2

    .line 485
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnGlobalLayoutListener called attachStateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_1d
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;->sizeDeterminerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    if-eqz v0, :cond_2a

    .line 490
    invoke-virtual {v0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->checkCurrentDimens()V

    :cond_2a
    const/4 v0, 0x1

    return v0
.end method
