###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat (io.dcloud.nineoldandroids.animation.PreHoneycombCompat)
.class final Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static ALPHA:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static PIVOT_X:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static PIVOT_Y:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static ROTATION:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static ROTATION_X:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static ROTATION_Y:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static SCALE_X:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static SCALE_Y:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static SCROLL_X:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static SCROLL_Y:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static TRANSLATION_X:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static TRANSLATION_Y:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static X:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static Y:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$1;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->ALPHA:Lio/dcloud/nineoldandroids/util/Property;

    .line 12
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$2;

    const-string v1, "pivotX"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->PIVOT_X:Lio/dcloud/nineoldandroids/util/Property;

    .line 23
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$3;

    const-string v1, "pivotY"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->PIVOT_Y:Lio/dcloud/nineoldandroids/util/Property;

    .line 34
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$4;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->TRANSLATION_X:Lio/dcloud/nineoldandroids/util/Property;

    .line 45
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$5;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->TRANSLATION_Y:Lio/dcloud/nineoldandroids/util/Property;

    .line 56
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$6;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->ROTATION:Lio/dcloud/nineoldandroids/util/Property;

    .line 67
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$7;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->ROTATION_X:Lio/dcloud/nineoldandroids/util/Property;

    .line 78
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$8;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->ROTATION_Y:Lio/dcloud/nineoldandroids/util/Property;

    .line 89
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$9;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->SCALE_X:Lio/dcloud/nineoldandroids/util/Property;

    .line 100
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$10;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->SCALE_Y:Lio/dcloud/nineoldandroids/util/Property;

    .line 111
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$11;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->SCROLL_X:Lio/dcloud/nineoldandroids/util/Property;

    .line 122
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$12;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->SCROLL_Y:Lio/dcloud/nineoldandroids/util/Property;

    .line 133
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$13;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->X:Lio/dcloud/nineoldandroids/util/Property;

    .line 144
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$14;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->Y:Lio/dcloud/nineoldandroids/util/Property;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass1 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$1)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$1;
.super Lio/dcloud/nineoldandroids/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$1;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setAlpha(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$1;->setValue(Landroid/view/View;F)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass10 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$10)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$10;
.super Lio/dcloud/nineoldandroids/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getScaleY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$10;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setScaleY(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$10;->setValue(Landroid/view/View;F)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass11 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$11)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$11;
.super Lio/dcloud/nineoldandroids/util/IntProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/IntProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getScrollX()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$11;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;I)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setScrollX(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$11;->setValue(Landroid/view/View;I)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass12 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$12)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$12;
.super Lio/dcloud/nineoldandroids/util/IntProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/IntProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getScrollY()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$12;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;I)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setScrollY(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$12;->setValue(Landroid/view/View;I)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass13 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$13)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$13;
.super Lio/dcloud/nineoldandroids/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$13;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setX(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$13;->setValue(Landroid/view/View;F)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass14 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$14)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$14;
.super Lio/dcloud/nineoldandroids/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$14;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setY(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$14;->setValue(Landroid/view/View;F)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass2 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$2)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$2;
.super Lio/dcloud/nineoldandroids/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getPivotX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$2;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setPivotX(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$2;->setValue(Landroid/view/View;F)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass3 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$3)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$3;
.super Lio/dcloud/nineoldandroids/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getPivotY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$3;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setPivotY(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$3;->setValue(Landroid/view/View;F)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass4 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$4)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$4;
.super Lio/dcloud/nineoldandroids/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getTranslationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$4;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setTranslationX(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$4;->setValue(Landroid/view/View;F)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass5 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$5)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$5;
.super Lio/dcloud/nineoldandroids/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$5;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$5;->setValue(Landroid/view/View;F)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass6 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$6)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$6;
.super Lio/dcloud/nineoldandroids/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getRotation()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$6;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setRotation(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$6;->setValue(Landroid/view/View;F)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass7 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$7)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$7;
.super Lio/dcloud/nineoldandroids/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getRotationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$7;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setRotationX(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$7;->setValue(Landroid/view/View;F)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass8 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$8)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$8;
.super Lio/dcloud/nineoldandroids/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getRotationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$8;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setRotationY(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$8;->setValue(Landroid/view/View;F)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PreHoneycombCompat.AnonymousClass9 (io.dcloud.nineoldandroids.animation.PreHoneycombCompat$9)
.class Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$9;
.super Lio/dcloud/nineoldandroids/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/nineoldandroids/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getScaleX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$9;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setScaleX(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$9;->setValue(Landroid/view/View;F)V

    return-void
.end method
