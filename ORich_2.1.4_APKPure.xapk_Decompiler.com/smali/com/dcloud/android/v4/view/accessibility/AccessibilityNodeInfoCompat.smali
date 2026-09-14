###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat)
.class public Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;,
        Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"

.field public static final ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"

.field public static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80

.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_CLICK:I = 0x10

.field public static final ACTION_COLLAPSE:I = 0x80000

.field public static final ACTION_COPY:I = 0x4000

.field public static final ACTION_CUT:I = 0x10000

.field public static final ACTION_DISMISS:I = 0x100000

.field public static final ACTION_EXPAND:I = 0x40000

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_LONG_CLICK:I = 0x20

.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100

.field public static final ACTION_NEXT_HTML_ELEMENT:I = 0x400

.field public static final ACTION_PASTE:I = 0x8000

.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200

.field public static final ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800

.field public static final ACTION_SCROLL_BACKWARD:I = 0x2000

.field public static final ACTION_SCROLL_FORWARD:I = 0x1000

.field public static final ACTION_SELECT:I = 0x4

.field public static final ACTION_SET_SELECTION:I = 0x20000

.field public static final ACTION_SET_TEXT:I = 0x200000

.field public static final FOCUS_ACCESSIBILITY:I = 0x2

.field public static final FOCUS_INPUT:I = 0x1

.field private static final IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

.field public static final MOVEMENT_GRANULARITY_CHARACTER:I = 0x1

.field public static final MOVEMENT_GRANULARITY_LINE:I = 0x4

.field public static final MOVEMENT_GRANULARITY_PAGE:I = 0x10

.field public static final MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8

.field public static final MOVEMENT_GRANULARITY_WORD:I = 0x2


# instance fields
.field private final mInfo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_e

    .line 2
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_5d

    :cond_e
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1a

    .line 4
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_5d

    :cond_1a
    const/16 v1, 0x13

    if-lt v0, v1, :cond_26

    .line 6
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_5d

    :cond_26
    const/16 v1, 0x12

    if-lt v0, v1, :cond_32

    .line 8
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_5d

    :cond_32
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3e

    .line 10
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_5d

    :cond_3e
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4a

    .line 12
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_5d

    :cond_4a
    const/16 v1, 0xe

    if-lt v0, v1, :cond_56

    .line 14
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_5d

    .line 16
    :cond_56
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    :goto_5d
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
    .registers 1

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    return-object v0
.end method

.method private static getActionSymbolicName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3c

    sparse-switch p0, :sswitch_data_42

    const-string p0, "ACTION_UNKNOWN"

    return-object p0

    :sswitch_c
    const-string p0, "ACTION_SET_SELECTION"

    return-object p0

    :sswitch_f
    const-string p0, "ACTION_CUT"

    return-object p0

    :sswitch_12
    const-string p0, "ACTION_PASTE"

    return-object p0

    :sswitch_15
    const-string p0, "ACTION_COPY"

    return-object p0

    :sswitch_18
    const-string p0, "ACTION_SCROLL_BACKWARD"

    return-object p0

    :sswitch_1b
    const-string p0, "ACTION_SCROLL_FORWARD"

    return-object p0

    :sswitch_1e
    const-string p0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object p0

    :sswitch_21
    const-string p0, "ACTION_NEXT_HTML_ELEMENT"

    return-object p0

    :sswitch_24
    const-string p0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object p0

    :sswitch_27
    const-string p0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object p0

    :sswitch_2a
    const-string p0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object p0

    :sswitch_2d
    const-string p0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object p0

    :sswitch_30
    const-string p0, "ACTION_LONG_CLICK"

    return-object p0

    :sswitch_33
    const-string p0, "ACTION_CLICK"

    return-object p0

    :sswitch_36
    const-string p0, "ACTION_CLEAR_SELECTION"

    return-object p0

    :sswitch_39
    const-string p0, "ACTION_SELECT"

    return-object p0

    :cond_3c
    const-string p0, "ACTION_CLEAR_FOCUS"

    return-object p0

    :cond_3f
    const-string p0, "ACTION_FOCUS"

    return-object p0

    :sswitch_data_42
    .sparse-switch
        0x4 -> :sswitch_39
        0x8 -> :sswitch_36
        0x10 -> :sswitch_33
        0x20 -> :sswitch_30
        0x40 -> :sswitch_2d
        0x80 -> :sswitch_2a
        0x100 -> :sswitch_27
        0x200 -> :sswitch_24
        0x400 -> :sswitch_21
        0x800 -> :sswitch_1e
        0x1000 -> :sswitch_1b
        0x2000 -> :sswitch_18
        0x4000 -> :sswitch_15
        0x8000 -> :sswitch_12
        0x10000 -> :sswitch_f
        0x20000 -> :sswitch_c
    .end sparse-switch
.end method

.method public static obtain()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 1

    .line 5
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    invoke-interface {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(Landroid/view/View;I)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    .line 3
    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 2

    .line 6
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object p0, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method static wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 2

    if-eqz p0, :cond_8

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v0, p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addAction(I)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addAction(Ljava/lang/Object;I)V

    return-void
.end method

.method public addAction(Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->access$100(Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addAction(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addChild(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public addChild(Landroid/view/View;I)V
    .registers 5

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addChild(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public canOpenPopup()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->canOpenPopup(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

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
    check-cast p1, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 5
    iget-object v2, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v2, :cond_1e

    .line 6
    iget-object p1, p1, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-eqz p1, :cond_27

    return v1

    .line 9
    :cond_1e
    iget-object p1, p1, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    return v1

    :cond_27
    return v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v2, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_23

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 6
    new-instance v4, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v4, v3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_23
    return-object v0
.end method

.method public findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->findAccessibilityNodeInfosByViewId(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v2, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_26
    return-object v0

    .line 9
    :cond_27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findFocus(I)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->findFocus(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1
.end method

.method public focusSearch(I)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1
.end method

.method public getActionList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getActionList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_26

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 7
    new-instance v5, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/Object;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_26
    return-object v1

    .line 11
    :cond_27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActions()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getActions(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getChild(I)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getChildCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionInfo()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 3
    :cond_c
    new-instance v2, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    invoke-direct {v2, v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;-><init>(Ljava/lang/Object;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V

    return-object v2
.end method

.method public getCollectionItemInfo()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 3
    :cond_c
    new-instance v2, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    invoke-direct {v2, v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;-><init>(Ljava/lang/Object;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V

    return-object v2
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getError(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getInputType()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getInputType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getLabelFor()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getLabeledBy()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getLiveRegion()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getLiveRegion(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMaxTextLength()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getMaxTextLength(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMovementGranularities()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getMovementGranularities(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getRangeInfo()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 3
    :cond_c
    new-instance v2, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    invoke-direct {v2, v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;-><init>(Ljava/lang/Object;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V

    return-object v2
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextSelectionEnd()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getTextSelectionEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getTextSelectionStart()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getTextSelectionStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getTraversalAfter()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getTraversalBefore()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getViewIdResourceName()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getWindow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getWindowId()I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getWindowId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

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
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isCheckable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContentInvalid()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isContentInvalid(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDismissable()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isDismissable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isEditable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFocusable()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isFocusable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isLongClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultiLine()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isMultiLine(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isSelected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isVisibleToUser(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public performAction(I)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->performAction(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public performAction(ILandroid/os/Bundle;)Z
    .registers 5

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public recycle()V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public refresh()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->refresh(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAction(Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->access$100(Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeChild(Landroid/view/View;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->removeChild(Ljava/lang/Object;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public removeChild(Landroid/view/View;I)Z
    .registers 5

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->removeChild(Ljava/lang/Object;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public setAccessibilityFocused(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setAccessibilityFocused(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCanOpenPopup(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCanOpenPopup(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setCheckable(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCheckable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setChecked(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setChecked(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClickable(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setClickable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p1, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    iget-object p1, p1, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p1, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->access$300(Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentInvalid(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setContentInvalid(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setDismissable(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setDismissable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setEditable(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setEditable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setEnabled(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setError(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFocusable(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setFocusable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setFocused(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setFocused(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setInputType(I)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setInputType(Ljava/lang/Object;I)V

    return-void
.end method

.method public setLabelFor(Landroid/view/View;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLabelFor(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 5

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setLabeledBy(Landroid/view/View;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setLabeledBy(Landroid/view/View;I)V
    .registers 5

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setLiveRegion(I)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLiveRegion(Ljava/lang/Object;I)V

    return-void
.end method

.method public setLongClickable(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLongClickable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setMaxTextLength(I)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setMaxTextLength(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMovementGranularities(I)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setMovementGranularities(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMultiLine(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setMultiLine(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setParent(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setParent(Landroid/view/View;I)V
    .registers 5

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setParent(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setPassword(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setPassword(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setRangeInfo(Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->access$600(Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setScrollable(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setScrollable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSelected(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setSelected(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .registers 5

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setSource(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextSelection(II)V
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTextSelection(Ljava/lang/Object;II)V

    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;I)V
    .registers 5

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;I)V
    .registers 5

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setViewIdResourceName(Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setVisibleToUser(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setVisibleToUser(Ljava/lang/Object;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {p0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; packageName: "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; className: "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; text: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; contentDescription: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; viewId: "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; checkable: "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->isCheckable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; checked: "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; focusable: "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; focused: "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; selected: "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; clickable: "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; longClickable: "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; enabled: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; password: "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; scrollable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; ["

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v1

    :cond_108
    :goto_108
    if-eqz v1, :cond_122

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    not-int v3, v2

    and-int/2addr v1, v3

    .line 33
    invoke-static {v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActionSymbolicName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_108

    const-string v2, ", "

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_108

    :cond_122
    const-string v1, "]"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.AnonymousClass1 (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$1)
.class synthetic Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat)
.class public Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityActionCompat"
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_CLEAR_FOCUS:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_CLEAR_SELECTION:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_CLICK:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_COLLAPSE:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_COPY:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_CUT:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_DISMISS:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_EXPAND:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_FOCUS:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_LONG_CLICK:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_NEXT_HTML_ELEMENT:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_PASTE:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_PREVIOUS_HTML_ELEMENT:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SCROLL_BACKWARD:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SCROLL_FORWARD:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SELECT:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SET_SELECTION:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SET_TEXT:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;


# instance fields
.field private final mAction:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_FOCUS:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 8
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_FOCUS:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 15
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SELECT:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 22
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_SELECTION:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 29
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 36
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_LONG_CLICK:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 43
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x40

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_ACCESSIBILITY_FOCUS:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 50
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x80

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 98
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x100

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 146
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x200

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 167
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x400

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_NEXT_HTML_ELEMENT:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 188
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x800

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_PREVIOUS_HTML_ELEMENT:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 195
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x1000

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 202
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x2000

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 209
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v1, 0x4000

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COPY:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 216
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v1, 0x8000

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_PASTE:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 223
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CUT:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 250
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v1, 0x20000

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_SELECTION:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 257
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v1, 0x40000

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 264
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v1, 0x80000

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 271
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v1, 0x100000

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 291
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v1, 0x200000

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_TEXT:Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;)V
    .registers 4

    .line 2
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public getId()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getAccessibilityActionId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoApi21Impl (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl)
.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;
.super Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->addAction(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getAccessibilityActionId(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getAccessibilityActionId(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getActionList(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getActionList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getError(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getError(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getMaxTextLength(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getMaxTextLength(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getWindow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getWindow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCollectionItemSelected(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21$CollectionItemInfo;->isSelected(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static/range {p1 .. p6}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeChild(Ljava/lang/Object;Landroid/view/View;)Z
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->removeChild(Ljava/lang/Object;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public removeChild(Ljava/lang/Object;Landroid/view/View;I)Z
    .registers 4

    .line 2
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->removeChild(Ljava/lang/Object;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public setError(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->setError(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxTextLength(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->setMaxTextLength(Ljava/lang/Object;I)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoApi22Impl (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl)
.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;
.super Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi22Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    .line 2
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    .line 2
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoIcsImpl (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl)
.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;
.super Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->addAction(Ljava/lang/Object;I)V

    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->addChild(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getActions(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getActions(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getChildCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getWindowId(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isCheckable(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isCheckable(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isChecked(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isClickable(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isClickable(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isEnabled(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFocusable(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isFocusable(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isFocused(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isLongClickable(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isLongClickable(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isPassword(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isScrollable(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isSelected(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public obtain()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->obtain()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtain(Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->obtain(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 3
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public performAction(Ljava/lang/Object;I)Z
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->performAction(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public recycle(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCheckable(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setCheckable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setChecked(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClickable(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setClickable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setEnabled(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setFocusable(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setFocusable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setFocused(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setFocused(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setLongClickable(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setLongClickable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setParent(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setPassword(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setScrollable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSelected(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setSelected(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoImpl (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl)
.class interface abstract Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AccessibilityNodeInfoImpl"
.end annotation


# virtual methods
.method public abstract addAction(Ljava/lang/Object;I)V
.end method

.method public abstract addAction(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract addChild(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract addChild(Ljava/lang/Object;Landroid/view/View;I)V
.end method

.method public abstract canOpenPopup(Ljava/lang/Object;)Z
.end method

.method public abstract findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findAccessibilityNodeInfosByViewId(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public abstract focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public abstract getAccessibilityActionId(Ljava/lang/Object;)I
.end method

.method public abstract getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract getActionList(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActions(Ljava/lang/Object;)I
.end method

.method public abstract getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public abstract getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public abstract getChild(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public abstract getChildCount(Ljava/lang/Object;)I
.end method

.method public abstract getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getCollectionInfoColumnCount(Ljava/lang/Object;)I
.end method

.method public abstract getCollectionInfoRowCount(Ljava/lang/Object;)I
.end method

.method public abstract getCollectionItemColumnIndex(Ljava/lang/Object;)I
.end method

.method public abstract getCollectionItemColumnSpan(Ljava/lang/Object;)I
.end method

.method public abstract getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getCollectionItemRowIndex(Ljava/lang/Object;)I
.end method

.method public abstract getCollectionItemRowSpan(Ljava/lang/Object;)I
.end method

.method public abstract getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract getError(Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
.end method

.method public abstract getInputType(Ljava/lang/Object;)I
.end method

.method public abstract getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getLiveRegion(Ljava/lang/Object;)I
.end method

.method public abstract getMaxTextLength(Ljava/lang/Object;)I
.end method

.method public abstract getMovementGranularities(Ljava/lang/Object;)I
.end method

.method public abstract getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract getParent(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract getTextSelectionEnd(Ljava/lang/Object;)I
.end method

.method public abstract getTextSelectionStart(Ljava/lang/Object;)I
.end method

.method public abstract getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getWindow(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getWindowId(Ljava/lang/Object;)I
.end method

.method public abstract isAccessibilityFocused(Ljava/lang/Object;)Z
.end method

.method public abstract isCheckable(Ljava/lang/Object;)Z
.end method

.method public abstract isChecked(Ljava/lang/Object;)Z
.end method

.method public abstract isClickable(Ljava/lang/Object;)Z
.end method

.method public abstract isCollectionInfoHierarchical(Ljava/lang/Object;)Z
.end method

.method public abstract isCollectionItemHeading(Ljava/lang/Object;)Z
.end method

.method public abstract isCollectionItemSelected(Ljava/lang/Object;)Z
.end method

.method public abstract isContentInvalid(Ljava/lang/Object;)Z
.end method

.method public abstract isDismissable(Ljava/lang/Object;)Z
.end method

.method public abstract isEditable(Ljava/lang/Object;)Z
.end method

.method public abstract isEnabled(Ljava/lang/Object;)Z
.end method

.method public abstract isFocusable(Ljava/lang/Object;)Z
.end method

.method public abstract isFocused(Ljava/lang/Object;)Z
.end method

.method public abstract isLongClickable(Ljava/lang/Object;)Z
.end method

.method public abstract isMultiLine(Ljava/lang/Object;)Z
.end method

.method public abstract isPassword(Ljava/lang/Object;)Z
.end method

.method public abstract isScrollable(Ljava/lang/Object;)Z
.end method

.method public abstract isSelected(Ljava/lang/Object;)Z
.end method

.method public abstract isVisibleToUser(Ljava/lang/Object;)Z
.end method

.method public abstract newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;
.end method

.method public abstract obtain()Ljava/lang/Object;
.end method

.method public abstract obtain(Landroid/view/View;)Ljava/lang/Object;
.end method

.method public abstract obtain(Landroid/view/View;I)Ljava/lang/Object;
.end method

.method public abstract obtain(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract obtainCollectionInfo(IIZI)Ljava/lang/Object;
.end method

.method public abstract obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
.end method

.method public abstract performAction(Ljava/lang/Object;I)Z
.end method

.method public abstract performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
.end method

.method public abstract recycle(Ljava/lang/Object;)V
.end method

.method public abstract refresh(Ljava/lang/Object;)Z
.end method

.method public abstract removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract removeChild(Ljava/lang/Object;Landroid/view/View;)Z
.end method

.method public abstract removeChild(Ljava/lang/Object;Landroid/view/View;I)Z
.end method

.method public abstract setAccessibilityFocused(Ljava/lang/Object;Z)V
.end method

.method public abstract setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public abstract setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public abstract setCanOpenPopup(Ljava/lang/Object;Z)V
.end method

.method public abstract setCheckable(Ljava/lang/Object;Z)V
.end method

.method public abstract setChecked(Ljava/lang/Object;Z)V
.end method

.method public abstract setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end method

.method public abstract setClickable(Ljava/lang/Object;Z)V
.end method

.method public abstract setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end method

.method public abstract setContentInvalid(Ljava/lang/Object;Z)V
.end method

.method public abstract setDismissable(Ljava/lang/Object;Z)V
.end method

.method public abstract setEditable(Ljava/lang/Object;Z)V
.end method

.method public abstract setEnabled(Ljava/lang/Object;Z)V
.end method

.method public abstract setError(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end method

.method public abstract setFocusable(Ljava/lang/Object;Z)V
.end method

.method public abstract setFocused(Ljava/lang/Object;Z)V
.end method

.method public abstract setInputType(Ljava/lang/Object;I)V
.end method

.method public abstract setLabelFor(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V
.end method

.method public abstract setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V
.end method

.method public abstract setLiveRegion(Ljava/lang/Object;I)V
.end method

.method public abstract setLongClickable(Ljava/lang/Object;Z)V
.end method

.method public abstract setMaxTextLength(Ljava/lang/Object;I)V
.end method

.method public abstract setMovementGranularities(Ljava/lang/Object;I)V
.end method

.method public abstract setMultiLine(Ljava/lang/Object;Z)V
.end method

.method public abstract setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end method

.method public abstract setParent(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract setParent(Ljava/lang/Object;Landroid/view/View;I)V
.end method

.method public abstract setPassword(Ljava/lang/Object;Z)V
.end method

.method public abstract setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract setScrollable(Ljava/lang/Object;Z)V
.end method

.method public abstract setSelected(Ljava/lang/Object;Z)V
.end method

.method public abstract setSource(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract setSource(Ljava/lang/Object;Landroid/view/View;I)V
.end method

.method public abstract setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end method

.method public abstract setTextSelection(Ljava/lang/Object;II)V
.end method

.method public abstract setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V
.end method

.method public abstract setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V
.end method

.method public abstract setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract setVisibleToUser(Ljava/lang/Object;Z)V
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoJellybeanImpl (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl)
.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;
.super Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoJellybeanImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->addChild(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->findFocus(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMovementGranularities(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->getMovementGranularities(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isVisibleToUser(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->isVisibleToUser(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public obtain(Landroid/view/View;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->obtain(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setAccessibilityFocused(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setAccesibilityFocused(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setMovementGranularities(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setMovementGranularities(Ljava/lang/Object;I)V

    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setParent(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setSource(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setVisibleToUser(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setVisibleToUser(Ljava/lang/Object;Z)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoJellybeanMr1Impl (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl)
.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;
.super Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoJellybeanMr1Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setLabelFor(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->setLabelFor(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    .line 2
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    .line 2
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoJellybeanMr2Impl (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl)
.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;
.super Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoJellybeanMr2Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfosByViewId(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->findAccessibilityNodeInfosByViewId(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTextSelectionEnd(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->getTextSelectionEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getTextSelectionStart(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->getTextSelectionStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isEditable(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->isEditable(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public refresh(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->refresh(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setEditable(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->setEditable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setTextSelection(Ljava/lang/Object;II)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->setTextSelection(Ljava/lang/Object;II)V

    return-void
.end method

.method public setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;->setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoKitKatImpl (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl)
.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.super Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public canOpenPopup(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->canOpenPopup(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getColumnCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getRowCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnIndex(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnSpan(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowIndex(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowSpan(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getInputType(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getInputType(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getLiveRegion(Ljava/lang/Object;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getLiveRegion(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->isHierarchical(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->isHeading(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isContentInvalid(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isContentInvalid(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isDismissable(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isDismissable(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMultiLine(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isMultiLine(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setCanOpenPopup(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCanOpenPopup(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setContentInvalid(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setContentInvalid(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setDismissable(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setDismissable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setInputType(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setInputType(Ljava/lang/Object;I)V

    return-void
.end method

.method public setLiveRegion(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setLiveRegion(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMultiLine(Ljava/lang/Object;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setMultiLine(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoStubImpl (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl)
.class Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;I)V
    .registers 3

    return-void
.end method

.method public addAction(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public canOpenPopup(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findAccessibilityNodeInfosByViewId(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccessibilityActionId(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getActionList(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getActions(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

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

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getError(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 2

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method public getInputType(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLiveRegion(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getMaxTextLength(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public getMovementGranularities(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextSelectionEnd(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public getTextSelectionStart(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWindow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isCheckable(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isClickable(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isCollectionItemSelected(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isContentInvalid(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isDismissable(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isEditable(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isFocusable(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isLongClickable(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isMultiLine(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isVisibleToUser(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtain()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain(Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtain(Landroid/view/View;I)Ljava/lang/Object;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .registers 7

    const/4 p1, 0x0

    return-object p1
.end method

.method public performAction(Ljava/lang/Object;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public recycle(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public refresh(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public removeChild(Ljava/lang/Object;Landroid/view/View;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public removeChild(Ljava/lang/Object;Landroid/view/View;I)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public setAccessibilityFocused(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

.method public setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

.method public setCanOpenPopup(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setCheckable(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public setClickable(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public setContentInvalid(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setDismissable(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setEditable(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setError(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public setFocusable(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setFocused(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setInputType(Ljava/lang/Object;I)V
    .registers 3

    return-void
.end method

.method public setLabelFor(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public setLiveRegion(Ljava/lang/Object;I)V
    .registers 3

    return-void
.end method

.method public setLongClickable(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setMaxTextLength(Ljava/lang/Object;I)V
    .registers 3

    return-void
.end method

.method public setMovementGranularities(Ljava/lang/Object;I)V
    .registers 3

    return-void
.end method

.method public setMultiLine(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setSelected(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public setTextSelection(Ljava/lang/Object;II)V
    .registers 4

    return-void
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setVisibleToUser(Ljava/lang/Object;Z)V
    .registers 3

    return-void
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionInfoCompat (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$CollectionInfoCompat)
.class public Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionInfoCompat"
.end annotation


# static fields
.field public static final SELECTION_MODE_MULTIPLE:I = 0x2

.field public static final SELECTION_MODE_NONE:I = 0x0

.field public static final SELECTION_MODE_SINGLE:I = 0x1


# instance fields
.field final mInfo:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->mInfo:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static obtain(IIZI)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    .registers 6

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getColumnCount()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionInfoColumnCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getRowCount()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionInfoRowCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHierarchical()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isCollectionInfoHierarchical(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$CollectionItemInfoCompat)
.class public Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionItemInfoCompat"
.end annotation


# instance fields
.field private final mInfo:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    return-object p0
.end method

.method public static obtain(IIIIZZ)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    .registers 14

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v1

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getColumnIndex()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionItemColumnIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getColumnSpan()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionItemColumnSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getRowIndex()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionItemRowIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getRowSpan()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionItemRowSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHeading()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isCollectionItemHeading(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isCollectionItemSelected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

###### Class com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat.RangeInfoCompat (com.dcloud.android.v4.view.accessibility.AccessibilityNodeInfoCompat$RangeInfoCompat)
.class public Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeInfoCompat"
.end annotation


# static fields
.field public static final RANGE_TYPE_FLOAT:I = 0x1

.field public static final RANGE_TYPE_INT:I = 0x0

.field public static final RANGE_TYPE_PERCENT:I = 0x2


# instance fields
.field private final mInfo:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public getCurrent()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;->getCurrent(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getMax()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;->getMax(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getMin()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;->getMin(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getType()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;->getType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
