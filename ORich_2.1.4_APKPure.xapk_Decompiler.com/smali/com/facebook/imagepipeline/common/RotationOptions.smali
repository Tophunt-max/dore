###### Class com.facebook.imagepipeline.common.RotationOptions (com.facebook.imagepipeline.common.RotationOptions)
.class public Lcom/facebook/imagepipeline/common/RotationOptions;
.super Ljava/lang/Object;
.source "RotationOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/common/RotationOptions$RotationAngle;
    }
.end annotation


# static fields
.field private static final DISABLE_ROTATION:I = -0x2

.field public static final NO_ROTATION:I = 0x0

.field public static final ROTATE_180:I = 0xb4

.field public static final ROTATE_270:I = 0x10e

.field public static final ROTATE_90:I = 0x5a

.field private static final ROTATION_OPTIONS_AUTO_ROTATE:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private static final ROTATION_OPTIONS_DISABLE_ROTATION:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private static final ROTATION_OPTIONS_ROTATE_AT_RENDER_TIME:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private static final USE_EXIF_ROTATION_ANGLE:I = -0x1


# instance fields
.field private final mDeferUntilRendered:Z

.field private final mRotation:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 65
    new-instance v0, Lcom/facebook/imagepipeline/common/RotationOptions;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/common/RotationOptions;-><init>(IZ)V

    sput-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->ROTATION_OPTIONS_AUTO_ROTATE:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 68
    new-instance v0, Lcom/facebook/imagepipeline/common/RotationOptions;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Lcom/facebook/imagepipeline/common/RotationOptions;-><init>(IZ)V

    sput-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->ROTATION_OPTIONS_DISABLE_ROTATION:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 71
    new-instance v0, Lcom/facebook/imagepipeline/common/RotationOptions;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/common/RotationOptions;-><init>(IZ)V

    sput-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->ROTATION_OPTIONS_ROTATE_AT_RENDER_TIME:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-void
.end method

.method private constructor <init>(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rotation",
            "canDeferUntilRendered"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->mRotation:I

    .line 115
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->mDeferUntilRendered:Z

    return-void
.end method

.method public static autoRotate()Lcom/facebook/imagepipeline/common/RotationOptions;
    .registers 1

    .line 84
    sget-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->ROTATION_OPTIONS_AUTO_ROTATE:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object v0
.end method

.method public static autoRotateAtRenderTime()Lcom/facebook/imagepipeline/common/RotationOptions;
    .registers 1

    .line 99
    sget-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->ROTATION_OPTIONS_ROTATE_AT_RENDER_TIME:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object v0
.end method

.method public static disableRotation()Lcom/facebook/imagepipeline/common/RotationOptions;
    .registers 1

    .line 89
    sget-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->ROTATION_OPTIONS_DISABLE_ROTATION:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object v0
.end method

.method public static forceRotation(I)Lcom/facebook/imagepipeline/common/RotationOptions;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/facebook/imagepipeline/common/RotationOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/common/RotationOptions;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public canDeferUntilRendered()Z
    .registers 2

    .line 140
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->mDeferUntilRendered:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 153
    :cond_4
    instance-of v1, p1, Lcom/facebook/imagepipeline/common/RotationOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 156
    :cond_a
    check-cast p1, Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 157
    iget v1, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->mRotation:I

    iget v3, p1, Lcom/facebook/imagepipeline/common/RotationOptions;->mRotation:I

    if-ne v1, v3, :cond_19

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->mDeferUntilRendered:Z

    iget-boolean p1, p1, Lcom/facebook/imagepipeline/common/RotationOptions;->mDeferUntilRendered:Z

    if-ne v1, p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public getForcedAngle()I
    .registers 3

    .line 133
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->useImageMetadata()Z

    move-result v0

    if-nez v0, :cond_9

    .line 136
    iget v0, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->mRotation:I

    return v0

    .line 134
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rotation is set to use EXIF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .line 145
    iget v0, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->mRotation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->mDeferUntilRendered:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public rotationEnabled()Z
    .registers 3

    .line 123
    iget v0, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->mRotation:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 162
    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->mRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->mDeferUntilRendered:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%d defer:%b"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useImageMetadata()Z
    .registers 3

    .line 119
    iget v0, p0, Lcom/facebook/imagepipeline/common/RotationOptions;->mRotation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

###### Class com.facebook.imagepipeline.common.RotationOptions.RotationAngle (com.facebook.imagepipeline.common.RotationOptions$RotationAngle)
.class public interface abstract annotation Lcom/facebook/imagepipeline/common/RotationOptions$RotationAngle;
.super Ljava/lang/Object;
.source "RotationOptions.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/common/RotationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RotationAngle"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
