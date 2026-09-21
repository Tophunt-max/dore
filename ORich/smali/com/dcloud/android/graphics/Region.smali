###### Class com.dcloud.android.graphics.Region (com.dcloud.android.graphics.Region)
.class public Lcom/dcloud/android/graphics/Region;
.super Landroid/graphics/Region;
.source "SourceFile"


# instance fields
.field private HOLD_SCREEN_COUNT:I

.field fillScreenCounter:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/dcloud/android/graphics/Region;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Landroid/graphics/Region;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/dcloud/android/graphics/Region;->HOLD_SCREEN_COUNT:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/dcloud/android/graphics/Region;->fillScreenCounter:I

    .line 14
    iput p1, p0, Lcom/dcloud/android/graphics/Region;->HOLD_SCREEN_COUNT:I

    return-void
.end method


# virtual methods
.method public count()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/graphics/Region;->fillScreenCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dcloud/android/graphics/Region;->fillScreenCounter:I

    return-void
.end method

.method public fillWholeScreen()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/dcloud/android/graphics/Region;->fillScreenCounter:I

    iget v1, p0, Lcom/dcloud/android/graphics/Region;->HOLD_SCREEN_COUNT:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getFillScreenCounter()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/graphics/Region;->fillScreenCounter:I

    return v0
.end method
