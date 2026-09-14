###### Class io.dcloud.feature.gallery.imageedit.c.b (io.dcloud.feature.gallery.imageedit.c.b)
.class public final enum Lio/dcloud/feature/gallery/imageedit/c/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/gallery/imageedit/c/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/dcloud/feature/gallery/imageedit/c/b;

.field public static final enum b:Lio/dcloud/feature/gallery/imageedit/c/b;

.field public static final enum c:Lio/dcloud/feature/gallery/imageedit/c/b;

.field public static final enum d:Lio/dcloud/feature/gallery/imageedit/c/b;

.field private static final synthetic e:[Lio/dcloud/feature/gallery/imageedit/c/b;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lio/dcloud/feature/gallery/imageedit/c/b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/gallery/imageedit/c/b;->a:Lio/dcloud/feature/gallery/imageedit/c/b;

    .line 2
    new-instance v1, Lio/dcloud/feature/gallery/imageedit/c/b;

    const-string v3, "DOODLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/gallery/imageedit/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->b:Lio/dcloud/feature/gallery/imageedit/c/b;

    .line 3
    new-instance v3, Lio/dcloud/feature/gallery/imageedit/c/b;

    const-string v5, "MOSAIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/gallery/imageedit/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    .line 4
    new-instance v5, Lio/dcloud/feature/gallery/imageedit/c/b;

    const-string v7, "CLIP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/feature/gallery/imageedit/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/dcloud/feature/gallery/imageedit/c/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lio/dcloud/feature/gallery/imageedit/c/b;->e:[Lio/dcloud/feature/gallery/imageedit/c/b;

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

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/gallery/imageedit/c/b;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/gallery/imageedit/c/b;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/gallery/imageedit/c/b;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/c/b;->e:[Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-virtual {v0}, [Lio/dcloud/feature/gallery/imageedit/c/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/gallery/imageedit/c/b;

    return-object v0
.end method
