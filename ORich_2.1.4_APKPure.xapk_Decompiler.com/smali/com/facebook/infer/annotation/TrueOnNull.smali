###### Class com.facebook.infer.annotation.TrueOnNull (com.facebook.infer.annotation.TrueOnNull)
.class public interface abstract annotation Lcom/facebook/infer/annotation/TrueOnNull;
.super Ljava/lang/Object;
.source "TrueOnNull.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation
