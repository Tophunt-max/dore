###### Class com.dcloud.android.v4.view.ViewCompatBase (com.dcloud.android.v4.view.ViewCompatBase)
.class Lcom/dcloud/android/v4/view/ViewCompatBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewCompatBase"

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/dcloud/android/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/dcloud/android/v4/view/TintableBackgroundView;

    .line 2
    invoke-interface {p0}, Lcom/dcloud/android/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/dcloud/android/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/dcloud/android/v4/view/TintableBackgroundView;

    .line 2
    invoke-interface {p0}, Lcom/dcloud/android/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method static getMinimumHeight(Landroid/view/View;)I
    .registers 4

    .line 1
    sget-boolean v0, Lcom/dcloud/android/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 3
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "mMinHeight"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/dcloud/android/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_12

    .line 8
    :catch_12
    sput-boolean v0, Lcom/dcloud/android/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    .line 11
    :cond_14
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_23

    .line 13
    :try_start_18
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_23

    return p0

    :catch_23
    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method static getMinimumWidth(Landroid/view/View;)I
    .registers 4

    .line 1
    sget-boolean v0, Lcom/dcloud/android/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 3
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "mMinWidth"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/dcloud/android/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_12

    .line 8
    :catch_12
    sput-boolean v0, Lcom/dcloud/android/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    .line 11
    :cond_14
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_23

    .line 13
    :try_start_18
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_23

    return p0

    :catch_23
    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method static isAttachedToWindow(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static isLaidOut(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    instance-of v0, p0, Lcom/dcloud/android/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_9

    .line 2
    check-cast p0, Lcom/dcloud/android/v4/view/TintableBackgroundView;

    invoke-interface {p0, p1}, Lcom/dcloud/android/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    instance-of v0, p0, Lcom/dcloud/android/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_9

    .line 2
    check-cast p0, Lcom/dcloud/android/v4/view/TintableBackgroundView;

    invoke-interface {p0, p1}, Lcom/dcloud/android/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method
