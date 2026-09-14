###### Class com.dcloud.android.v4.view.accessibility.AccessibilityWindowInfoCompat (com.dcloud.android.v4.view.accessibility.AccessibilityWindowInfoCompat)
.class public Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SYSTEM:I = 0x3

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mInfo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_f

    .line 2
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;

    invoke-direct {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;-><init>(Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$1;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    goto :goto_16

    .line 4
    :cond_f
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;

    invoke-direct {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>(Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$1;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    :goto_16
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    return-void
.end method

.method public static obtain()Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 1

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    invoke-interface {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->obtain()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 2

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object p0, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const-string p0, "<UNKNOWN>"

    return-object p0

    :cond_f
    const-string p0, "TYPE_ACCESSIBILITY_OVERLAY"

    return-object p0

    :cond_12
    const-string p0, "TYPE_SYSTEM"

    return-object p0

    :cond_15
    const-string p0, "TYPE_INPUT_METHOD"

    return-object p0

    :cond_18
    const-string p0, "TYPE_APPLICATION"

    return-object p0
.end method

.method static wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 2

    if-eqz p0, :cond_8

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;

    invoke-direct {v0, p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 4
    :cond_13
    check-cast p1, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;

    .line 5
    iget-object v2, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v2, :cond_1e

    .line 6
    iget-object p1, p1, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-eqz p1, :cond_27

    return v1

    .line 9
    :cond_1e
    iget-object p1, p1, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    return v1

    :cond_27
    return v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getChild(I)Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getChildCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getId()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getLayer()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getLayer(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getParent()Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public isAccessibilityFocused()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->isActive(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->isFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const-string v2, "AccessibilityWindowInfo["

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "id="

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", layer="

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->getLayer()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bounds="

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", focused="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasParent="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->getParent()Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_69

    const/4 v1, 0x1

    goto :goto_6a

    :cond_69
    const/4 v1, 0x0

    :goto_6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasChildren="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->getChildCount()I

    move-result v1

    if-lez v1, :cond_79

    goto :goto_7a

    :cond_79
    const/4 v2, 0x0

    :goto_7a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityWindowInfoCompat.AnonymousClass1 (com.dcloud.android.v4.view.accessibility.AccessibilityWindowInfoCompat$1)
.class synthetic Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityWindowInfoCompat.AccessibilityWindowInfoApi21Impl (com.dcloud.android.v4.view.accessibility.AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl)
.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;
.super Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityWindowInfoApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>(Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getChildCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getId(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getId(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getLayer(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getLayer(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRoot(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getType(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getType(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isActive(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->isActive(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->isFocused(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public obtain()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->obtain()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public recycle(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->recycle(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityWindowInfoCompat.AccessibilityWindowInfoImpl (com.dcloud.android.v4.view.accessibility.AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl)
.class interface abstract Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AccessibilityWindowInfoImpl"
.end annotation


# virtual methods
.method public abstract getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public abstract getChild(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public abstract getChildCount(Ljava/lang/Object;)I
.end method

.method public abstract getId(Ljava/lang/Object;)I
.end method

.method public abstract getLayer(Ljava/lang/Object;)I
.end method

.method public abstract getParent(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getRoot(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getType(Ljava/lang/Object;)I
.end method

.method public abstract isAccessibilityFocused(Ljava/lang/Object;)Z
.end method

.method public abstract isActive(Ljava/lang/Object;)Z
.end method

.method public abstract isFocused(Ljava/lang/Object;)Z
.end method

.method public abstract obtain()Ljava/lang/Object;
.end method

.method public abstract obtain(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract recycle(Ljava/lang/Object;)V
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityWindowInfoCompat.AccessibilityWindowInfoStubImpl (com.dcloud.android.v4.view.accessibility.AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl)
.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityWindowInfoStubImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getId(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public getLayer(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRoot(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getType(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public isActive(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public obtain()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public recycle(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
