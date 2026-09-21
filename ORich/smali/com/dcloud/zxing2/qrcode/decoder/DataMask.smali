###### Class com.dcloud.zxing2.qrcode.decoder.DataMask (com.dcloud.zxing2.qrcode.decoder.DataMask)
.class abstract Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask111;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask110;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask101;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask100;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask011;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask010;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask001;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask000;
    }
.end annotation


# static fields
.field private static final DATA_MASKS:[Lcom/dcloud/zxing2/qrcode/decoder/DataMask;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dcloud/zxing2/qrcode/decoder/DataMask;

    .line 1
    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask000;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask000;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask001;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask001;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask010;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask010;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask011;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask011;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask100;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask100;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask101;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask101;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask110;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask110;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask111;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask111;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->DATA_MASKS:[Lcom/dcloud/zxing2/qrcode/decoder/DataMask;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;-><init>()V

    return-void
.end method

.method static forReference(I)Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
    .registers 2

    if-ltz p0, :cond_a

    const/4 v0, 0x7

    if-gt p0, v0, :cond_a

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->DATA_MASKS:[Lcom/dcloud/zxing2/qrcode/decoder/DataMask;

    aget-object p0, v0, p0

    return-object p0

    .line 2
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method abstract isMasked(II)Z
.end method

.method final unmaskBitMatrix(Lcom/dcloud/zxing2/common/BitMatrix;I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_16

    const/4 v2, 0x0

    :goto_5
    if-ge v2, p2, :cond_13

    .line 1
    invoke-virtual {p0, v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->isMasked(II)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2
    invoke-virtual {p1, v2, v1}, Lcom/dcloud/zxing2/common/BitMatrix;->flip(II)V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    return-void
.end method

###### Class com.dcloud.zxing2.qrcode.decoder.DataMask.AnonymousClass1 (com.dcloud.zxing2.qrcode.decoder.DataMask$1)
.class synthetic Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.dcloud.zxing2.qrcode.decoder.DataMask.DataMask000 (com.dcloud.zxing2.qrcode.decoder.DataMask$DataMask000)
.class final Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask000;
.super Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMask000"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask000;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .registers 3

    add-int/2addr p1, p2

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    return p2
.end method

###### Class com.dcloud.zxing2.qrcode.decoder.DataMask.DataMask001 (com.dcloud.zxing2.qrcode.decoder.DataMask$DataMask001)
.class final Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask001;
.super Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMask001"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask001;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .registers 3

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-nez p1, :cond_5

    goto :goto_6

    :cond_5
    const/4 p2, 0x0

    :goto_6
    return p2
.end method

###### Class com.dcloud.zxing2.qrcode.decoder.DataMask.DataMask010 (com.dcloud.zxing2.qrcode.decoder.DataMask$DataMask010)
.class final Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask010;
.super Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMask010"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask010;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .registers 3

    .line 1
    rem-int/lit8 p2, p2, 0x3

    if-nez p2, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

###### Class com.dcloud.zxing2.qrcode.decoder.DataMask.DataMask011 (com.dcloud.zxing2.qrcode.decoder.DataMask$DataMask011)
.class final Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask011;
.super Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMask011"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask011;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .registers 3

    add-int/2addr p1, p2

    .line 1
    rem-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

###### Class com.dcloud.zxing2.qrcode.decoder.DataMask.DataMask100 (com.dcloud.zxing2.qrcode.decoder.DataMask$DataMask100)
.class final Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask100;
.super Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMask100"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask100;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .registers 3

    .line 1
    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-nez p1, :cond_a

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :goto_b
    return p2
.end method

###### Class com.dcloud.zxing2.qrcode.decoder.DataMask.DataMask101 (com.dcloud.zxing2.qrcode.decoder.DataMask$DataMask101)
.class final Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask101;
.super Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMask101"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask101;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .registers 3

    mul-int p1, p1, p2

    and-int/lit8 p2, p1, 0x1

    .line 1
    rem-int/lit8 p1, p1, 0x3

    add-int/2addr p2, p1

    if-nez p2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

###### Class com.dcloud.zxing2.qrcode.decoder.DataMask.DataMask110 (com.dcloud.zxing2.qrcode.decoder.DataMask$DataMask110)
.class final Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask110;
.super Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMask110"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask110;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .registers 3

    mul-int p1, p1, p2

    and-int/lit8 p2, p1, 0x1

    .line 1
    rem-int/lit8 p1, p1, 0x3

    add-int/2addr p2, p1

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_c

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

###### Class com.dcloud.zxing2.qrcode.decoder.DataMask.DataMask111 (com.dcloud.zxing2.qrcode.decoder.DataMask$DataMask111)
.class final Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask111;
.super Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMask111"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask111;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .registers 5

    add-int v0, p1, p2

    const/4 v1, 0x1

    and-int/2addr v0, v1

    mul-int p1, p1, p2

    .line 1
    rem-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    and-int/lit8 p1, v0, 0x1

    if-nez p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method
