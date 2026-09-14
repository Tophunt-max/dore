###### Class com.dcloud.zxing2.oned.rss.expanded.decoders.DecodedObject (com.dcloud.zxing2.oned.rss.expanded.decoders.DecodedObject)
.class abstract Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final newPosition:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;->newPosition:I

    return-void
.end method


# virtual methods
.method final getNewPosition()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;->newPosition:I

    return v0
.end method
