###### Class com.dcloud.zxing2.aztec.encoder.AztecCode (com.dcloud.zxing2.aztec.encoder.AztecCode)
.class public final Lcom/dcloud/zxing2/aztec/encoder/AztecCode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private codeWords:I

.field private compact:Z

.field private layers:I

.field private matrix:Lcom/dcloud/zxing2/common/BitMatrix;

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeWords()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/aztec/encoder/AztecCode;->codeWords:I

    return v0
.end method

.method public getLayers()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/aztec/encoder/AztecCode;->layers:I

    return v0
.end method

.method public getMatrix()Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/aztec/encoder/AztecCode;->matrix:Lcom/dcloud/zxing2/common/BitMatrix;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/aztec/encoder/AztecCode;->size:I

    return v0
.end method

.method public isCompact()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/zxing2/aztec/encoder/AztecCode;->compact:Z

    return v0
.end method

.method public setCodeWords(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/zxing2/aztec/encoder/AztecCode;->codeWords:I

    return-void
.end method

.method public setCompact(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/dcloud/zxing2/aztec/encoder/AztecCode;->compact:Z

    return-void
.end method

.method public setLayers(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/zxing2/aztec/encoder/AztecCode;->layers:I

    return-void
.end method

.method public setMatrix(Lcom/dcloud/zxing2/common/BitMatrix;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/aztec/encoder/AztecCode;->matrix:Lcom/dcloud/zxing2/common/BitMatrix;

    return-void
.end method

.method public setSize(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/zxing2/aztec/encoder/AztecCode;->size:I

    return-void
.end method
