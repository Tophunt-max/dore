###### Class com.facebook.imagepipeline.debug.CloseableReferenceLeakTracker (com.facebook.imagepipeline.debug.CloseableReferenceLeakTracker)
.class public interface abstract Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;
.super Ljava/lang/Object;
.source "CloseableReferenceLeakTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker$Listener;
    }
.end annotation


# virtual methods
.method public abstract isSet()Z
.end method

.method public abstract setListener(Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker$Listener;)V
    .param p1    # Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker$Listener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract trackCloseableReferenceLeak(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V
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

###### Class com.facebook.imagepipeline.debug.CloseableReferenceLeakTracker.Listener (com.facebook.imagepipeline.debug.CloseableReferenceLeakTracker$Listener)
.class public interface abstract Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker$Listener;
.super Ljava/lang/Object;
.source "CloseableReferenceLeakTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCloseableReferenceLeak(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V
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
