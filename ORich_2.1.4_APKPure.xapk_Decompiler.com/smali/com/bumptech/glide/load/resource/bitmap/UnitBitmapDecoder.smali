###### Class com.bumptech.glide.load.resource.bitmap.UnitBitmapDecoder (com.bumptech.glide.load.resource.bitmap.UnitBitmapDecoder)
.class public final Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;
.super Ljava/lang/Object;
.source "UnitBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder$NonOwnedBitmapResource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Landroid/graphics/Bitmap;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance p2, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder$NonOwnedBitmapResource;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder$NonOwnedBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;->decode(Landroid/graphics/Bitmap;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Options;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;->handles(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method

###### Class com.bumptech.glide.load.resource.bitmap.UnitBitmapDecoder.NonOwnedBitmapResource (com.bumptech.glide.load.resource.bitmap.UnitBitmapDecoder$NonOwnedBitmapResource)
.class final Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder$NonOwnedBitmapResource;
.super Ljava/lang/Object;
.source "UnitBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonOwnedBitmapResource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder$NonOwnedBitmapResource;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder$NonOwnedBitmapResource;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder$NonOwnedBitmapResource;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 38
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder$NonOwnedBitmapResource;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 1

    return-void
.end method
