###### Class io.dcloud.feature.uniapp.dom.AbsCSSShorthand (io.dcloud.feature.uniapp.dom.AbsCSSShorthand)
.class public abstract Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.super Ljava/lang/Object;
.source "AbsCSSShorthand.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;,
        Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;,
        Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;,
        Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "+",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;",
        ">;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private values:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    if-eqz p1, :cond_1c

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 60
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    :cond_1c
    return-void
.end method

.method public constructor <init>([F)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->replace([F)V

    return-void
.end method

.method private getInternal(Ljava/lang/Enum;)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "+",
            "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;",
            ">;)F"
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_2a

    :cond_21
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    :goto_2b
    return p1
.end method

.method private setInternal(Ljava/lang/Enum;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "+",
            "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;",
            ">;F)V"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_2a

    .line 108
    :cond_21
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput p2, v0, p1

    goto :goto_2f

    .line 106
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([FF)V

    :goto_2f
    return-void
.end method


# virtual methods
.method public clone()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 101
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->clone()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public get(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;)F
    .registers 2

    .line 91
    invoke-direct {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->getInternal(Ljava/lang/Enum;)F

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Enum;)F
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "+",
            "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;",
            ">;)F"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->getInternal(Ljava/lang/Enum;)F

    move-result p1

    return p1
.end method

.method public final replace([F)V
    .registers 2

    .line 96
    iput-object p1, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    return-void
.end method

.method public set(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;F)V
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->setInternal(Ljava/lang/Enum;F)V

    return-void
.end method

.method public set(Ljava/lang/Enum;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "+",
            "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;",
            ">;F)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->setInternal(Ljava/lang/Enum;F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, ""

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0
.end method

###### Class io.dcloud.feature.uniapp.dom.AbsCSSShorthand.CORNER (io.dcloud.feature.uniapp.dom.AbsCSSShorthand$CORNER)
.class public final enum Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;
.super Ljava/lang/Enum;
.source "AbsCSSShorthand.java"

# interfaces
.implements Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CORNER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;",
        ">;",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum BORDER_BOTTOM_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum BORDER_BOTTOM_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum BORDER_TOP_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum BORDER_TOP_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 39
    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v1, "BORDER_TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_TOP_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    new-instance v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v3, "BORDER_TOP_RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    .line 40
    new-instance v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v5, "BORDER_BOTTOM_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    new-instance v5, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v7, "BORDER_BOTTOM_LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    new-instance v7, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v9, "ALL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 38
    sput-object v9, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;
    .registers 2

    .line 38
    const-class v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;
    .registers 1

    .line 38
    sget-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    invoke-virtual {v0}, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    return-object v0
.end method

###### Class io.dcloud.feature.uniapp.dom.AbsCSSShorthand.CSSProperty (io.dcloud.feature.uniapp.dom.AbsCSSShorthand$CSSProperty)
.class public interface abstract Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;
.super Ljava/lang/Object;
.source "AbsCSSShorthand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "CSSProperty"
.end annotation

###### Class io.dcloud.feature.uniapp.dom.AbsCSSShorthand.EDGE (io.dcloud.feature.uniapp.dom.AbsCSSShorthand$EDGE)
.class public final enum Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;
.super Ljava/lang/Enum;
.source "AbsCSSShorthand.java"

# interfaces
.implements Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EDGE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;",
        ">;",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum BOTTOM:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum TOP:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 35
    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->TOP:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    new-instance v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v3, "BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->BOTTOM:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    new-instance v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v5, "LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    new-instance v5, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    new-instance v7, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v9, "ALL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 34
    sput-object v9, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;
    .registers 2

    .line 34
    const-class v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;
    .registers 1

    .line 34
    sget-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v0}, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    return-object v0
.end method

###### Class io.dcloud.feature.uniapp.dom.AbsCSSShorthand.TYPE (io.dcloud.feature.uniapp.dom.AbsCSSShorthand$TYPE)
.class public final enum Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;
.super Ljava/lang/Enum;
.source "AbsCSSShorthand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

.field public static final enum BORDER:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

.field public static final enum MARGIN:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

.field public static final enum PADDING:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 44
    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const-string v1, "MARGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->MARGIN:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    new-instance v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const-string v3, "PADDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->PADDING:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    new-instance v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const-string v5, "BORDER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->BORDER:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 43
    sput-object v5, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;
    .registers 2

    .line 43
    const-class v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;
    .registers 1

    .line 43
    sget-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {v0}, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    return-object v0
.end method
