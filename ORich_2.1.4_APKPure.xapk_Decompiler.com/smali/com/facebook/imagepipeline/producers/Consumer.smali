###### Class com.facebook.imagepipeline.producers.Consumer (com.facebook.imagepipeline.producers.Consumer)
.class public interface abstract Lcom/facebook/imagepipeline/producers/Consumer;
.super Ljava/lang/Object;
.source "Consumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/Consumer$Status;
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
.field public static final DO_NOT_CACHE_ENCODED:I = 0x2

.field public static final IS_LAST:I = 0x1

.field public static final IS_PARTIAL_RESULT:I = 0x8

.field public static final IS_PLACEHOLDER:I = 0x4

.field public static final IS_RESIZING_DONE:I = 0x10

.field public static final NO_FLAGS:I


# virtual methods
.method public abstract onCancellation()V
.end method

.method public abstract onFailure(Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation
.end method

.method public abstract onNewResult(Ljava/lang/Object;I)V
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
            "newResult",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract onProgressUpdate(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method

###### Class com.facebook.imagepipeline.producers.Consumer.Status (com.facebook.imagepipeline.producers.Consumer$Status)
.class public interface abstract annotation Lcom/facebook/imagepipeline/producers/Consumer$Status;
.super Ljava/lang/Object;
.source "Consumer.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Status"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
