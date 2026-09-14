###### Class com.facebook.binaryresource.ByteArrayBinaryResource (com.facebook.binaryresource.ByteArrayBinaryResource)
.class public Lcom/facebook/binaryresource/ByteArrayBinaryResource;
.super Ljava/lang/Object;
.source "ByteArrayBinaryResource.java"

# interfaces
.implements Lcom/facebook/binaryresource/BinaryResource;


# instance fields
.field private final mBytes:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/facebook/binaryresource/ByteArrayBinaryResource;->mBytes:[B

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/facebook/binaryresource/ByteArrayBinaryResource;->mBytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public read()[B
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/facebook/binaryresource/ByteArrayBinaryResource;->mBytes:[B

    return-object v0
.end method

.method public size()J
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/facebook/binaryresource/ByteArrayBinaryResource;->mBytes:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
