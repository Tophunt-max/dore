###### Class com.nostra13.dcloudimageloader.core.assist.ViewScaleType (com.nostra13.dcloudimageloader.core.assist.ViewScaleType)
.class public final enum Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

.field public static final enum CROP:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

.field public static final enum FIT_INSIDE:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    const-string v1, "FIT_INSIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    .line 2
    new-instance v1, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    const-string v3, "CROP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->$VALUES:[Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;
    .registers 2

    .line 1
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1e

    .line 12
    sget-object p0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    return-object p0

    .line 13
    :cond_1e
    sget-object p0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;
    .registers 2

    .line 1
    const-class v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    return-object p0
.end method

.method public static values()[Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;
    .registers 1

    .line 1
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->$VALUES:[Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    invoke-virtual {v0}, [Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

###### Class com.nostra13.dcloudimageloader.core.assist.ViewScaleType.AnonymousClass1 (com.nostra13.dcloudimageloader.core.assist.ViewScaleType$1)
.class synthetic Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$widget$ImageView$ScaleType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    :try_start_9
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    return-void
.end method
