###### Class com.nostra13.dcloudimageloader.core.assist.deque.LIFOLinkedBlockingDeque (com.nostra13.dcloudimageloader.core.assist.deque.LIFOLinkedBlockingDeque)
.class public Lcom/nostra13/dcloudimageloader/core/assist/deque/LIFOLinkedBlockingDeque;
.super Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x391aa861e4d4f950L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
