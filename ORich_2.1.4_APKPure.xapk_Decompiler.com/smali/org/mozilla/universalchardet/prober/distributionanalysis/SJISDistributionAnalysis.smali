###### Class org.mozilla.universalchardet.prober.distributionanalysis.SJISDistributionAnalysis (org.mozilla.universalchardet.prober.distributionanalysis.SJISDistributionAnalysis)
.class public Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;
.super Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;
.source "SourceFile"


# static fields
.field public static final HIGHBYTE_BEGIN_1:I = 0x81

.field public static final HIGHBYTE_BEGIN_2:I = 0xe0

.field public static final HIGHBYTE_END_1:I = 0x9f

.field public static final HIGHBYTE_END_2:I = 0xef

.field public static final LOWBYTE_BEGIN_1:I = 0x40

.field public static final LOWBYTE_BEGIN_2:I = 0x80


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOrder([BI)I
    .registers 6

    .line 1
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x81

    if-lt v0, v1, :cond_10

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_10

    sub-int/2addr v0, v1

    :goto_d
    mul-int/lit16 v0, v0, 0xbc

    goto :goto_1c

    :cond_10
    const/16 v1, 0xe0

    if-lt v0, v1, :cond_2c

    const/16 v2, 0xef

    if-gt v0, v2, :cond_2c

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1f

    goto :goto_d

    :goto_1c
    add-int/lit8 p2, p2, 0x1

    .line 9
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p2, p1, -0x40

    add-int/2addr v0, p2

    const/16 p2, 0x80

    if-lt p1, p2, :cond_2b

    add-int/lit8 v0, v0, -0x1

    :cond_2b
    return v0

    :cond_2c
    const/4 p1, -0x1

    return p1
.end method
