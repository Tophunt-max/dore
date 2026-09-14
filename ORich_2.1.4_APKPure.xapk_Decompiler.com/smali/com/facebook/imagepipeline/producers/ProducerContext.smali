###### Class com.facebook.imagepipeline.producers.ProducerContext (com.facebook.imagepipeline.producers.ProducerContext)
.class public interface abstract Lcom/facebook/imagepipeline/producers/ProducerContext;
.super Ljava/lang/Object;
.source "ProducerContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/ProducerContext$ExtraKeys;
    }
.end annotation


# virtual methods
.method public abstract addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation
.end method

.method public abstract getCallerContext()Ljava/lang/Object;
.end method

.method public abstract getEncodedImageOrigin()Lcom/facebook/imagepipeline/image/EncodedImageOrigin;
.end method

.method public abstract getExtra(Ljava/lang/String;)Ljava/lang/Object;
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
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "valueIfNotFound"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getExtras()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;
.end method

.method public abstract getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;
.end method

.method public abstract getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
.end method

.method public abstract getPriority()Lcom/facebook/imagepipeline/common/Priority;
.end method

.method public abstract getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;
.end method

.method public abstract getUiComponentId()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract isIntermediateResultExpected()Z
.end method

.method public abstract isPrefetch()Z
.end method

.method public abstract putExtras(Ljava/util/Map;)V
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract putOriginExtra(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "origin"
        }
    .end annotation
.end method

.method public abstract putOriginExtra(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "origin",
            "subcategory"
        }
    .end annotation
.end method

.method public abstract setEncodedImageOrigin(Lcom/facebook/imagepipeline/image/EncodedImageOrigin;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedImageOrigin"
        }
    .end annotation
.end method

.method public abstract setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation
.end method

###### Class com.facebook.imagepipeline.producers.ProducerContext.ExtraKeys (com.facebook.imagepipeline.producers.ProducerContext$ExtraKeys)
.class public interface abstract annotation Lcom/facebook/imagepipeline/producers/ProducerContext$ExtraKeys;
.super Ljava/lang/Object;
.source "ProducerContext.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/ProducerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ExtraKeys"
.end annotation


# static fields
.field public static final ENCODED_HEIGHT:Ljava/lang/String; = "encoded_height"

.field public static final ENCODED_SIZE:Ljava/lang/String; = "encoded_size"

.field public static final ENCODED_WIDTH:Ljava/lang/String; = "encoded_width"

.field public static final IMAGE_FORMAT:Ljava/lang/String; = "image_format"

.field public static final MULTIPLEX_BITMAP_COUNT:Ljava/lang/String; = "multiplex_bmp_cnt"

.field public static final MULTIPLEX_ENCODED_COUNT:Ljava/lang/String; = "multiplex_enc_cnt"

.field public static final NORMALIZED_URI:Ljava/lang/String; = "uri_norm"

.field public static final ORIGIN:Ljava/lang/String; = "origin"

.field public static final ORIGIN_SUBCATEGORY:Ljava/lang/String; = "origin_sub"

.field public static final SOURCE_URI:Ljava/lang/String; = "uri_source"
