###### Class com.bumptech.glide.gifdecoder.GifDecoder (com.bumptech.glide.gifdecoder.GifDecoder)
.class public interface abstract Lcom/bumptech/glide/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;,
        Lcom/bumptech/glide/gifdecoder/GifDecoder$GifDecodeStatus;
    }
.end annotation


# static fields
.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARTIAL_DECODE:I = 0x3

.field public static final TOTAL_ITERATION_COUNT_FOREVER:I


# virtual methods
.method public abstract advance()V
.end method

.method public abstract clear()V
.end method

.method public abstract getByteSize()I
.end method

.method public abstract getCurrentFrameIndex()I
.end method

.method public abstract getData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getDelay(I)I
.end method

.method public abstract getFrameCount()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLoopCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNetscapeLoopCount()I
.end method

.method public abstract getNextDelay()I
.end method

.method public abstract getNextFrame()Landroid/graphics/Bitmap;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getTotalIterationCount()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract read(Ljava/io/InputStream;I)I
.end method

.method public abstract read([B)I
.end method

.method public abstract resetFrameIndex()V
.end method

.method public abstract setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
.end method

.method public abstract setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
.end method

.method public abstract setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V
.end method

###### Class com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider (com.bumptech.glide.gifdecoder.GifDecoder$BitmapProvider)
.class public interface abstract Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/gifdecoder/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BitmapProvider"
.end annotation


# virtual methods
.method public abstract obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method public abstract obtainByteArray(I)[B
.end method

.method public abstract obtainIntArray(I)[I
.end method

.method public abstract release(Landroid/graphics/Bitmap;)V
.end method

.method public abstract release([B)V
.end method

.method public abstract release([I)V
.end method

###### Class com.bumptech.glide.gifdecoder.GifDecoder.GifDecodeStatus (com.bumptech.glide.gifdecoder.GifDecoder$GifDecodeStatus)
.class public interface abstract annotation Lcom/bumptech/glide/gifdecoder/GifDecoder$GifDecodeStatus;
.super Ljava/lang/Object;
.source "GifDecoder.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/gifdecoder/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "GifDecodeStatus"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
