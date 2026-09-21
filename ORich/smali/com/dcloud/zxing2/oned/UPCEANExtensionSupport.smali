###### Class com.dcloud.zxing2.oned.UPCEANExtensionSupport (com.dcloud.zxing2.oned.UPCEANExtensionSupport)
.class final Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXTENSION_START_PATTERN:[I


# instance fields
.field private final fiveSupport:Lcom/dcloud/zxing2/oned/UPCEANExtension5Support;

.field private final twoSupport:Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_a

    sput-object v0, Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;->twoSupport:Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;

    .line 6
    new-instance v0, Lcom/dcloud/zxing2/oned/UPCEANExtension5Support;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/UPCEANExtension5Support;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;->fiveSupport:Lcom/dcloud/zxing2/oned/UPCEANExtension5Support;

    return-void
.end method


# virtual methods
.method decodeRow(ILcom/dcloud/zxing2/common/BitArray;I)Lcom/dcloud/zxing2/Result;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    const/4 v1, 0x0

    invoke-static {p2, p3, v1, v0}, Lcom/dcloud/zxing2/oned/UPCEANReader;->findGuardPattern(Lcom/dcloud/zxing2/common/BitArray;IZ[I)[I

    move-result-object p3

    .line 3
    :try_start_7
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;->fiveSupport:Lcom/dcloud/zxing2/oned/UPCEANExtension5Support;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dcloud/zxing2/oned/UPCEANExtension5Support;->decodeRow(ILcom/dcloud/zxing2/common/BitArray;[I)Lcom/dcloud/zxing2/Result;

    move-result-object p1
    :try_end_d
    .catch Lcom/dcloud/zxing2/ReaderException; {:try_start_7 .. :try_end_d} :catch_e

    return-object p1

    .line 5
    :catch_e
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;->twoSupport:Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;->decodeRow(ILcom/dcloud/zxing2/common/BitArray;[I)Lcom/dcloud/zxing2/Result;

    move-result-object p1

    return-object p1
.end method
