###### Class pl.droidsonroids.gif.R (pl.droidsonroids.gif.R)
.class public final Lpl/droidsonroids/gif/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/R$attr;,
        Lpl/droidsonroids/gif/R$styleable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class pl.droidsonroids.gif.R.attr (pl.droidsonroids.gif.R$attr)
.class public final Lpl/droidsonroids/gif/R$attr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final freezesAnimation:I = 0x7f020096

.field public static final gifSource:I = 0x7f020098

.field public static final isOpaque:I = 0x7f0200ad

.field public static final loopCount:I = 0x7f0200c7


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class pl.droidsonroids.gif.R.styleable (pl.droidsonroids.gif.R$styleable)
.class public final Lpl/droidsonroids/gif/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final GifTextureView:[I

.field public static final GifTextureView_gifSource:I = 0x0

.field public static final GifTextureView_isOpaque:I = 0x1

.field public static final GifView:[I

.field public static final GifView_freezesAnimation:I = 0x0

.field public static final GifView_loopCount:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lpl/droidsonroids/gif/R$styleable;->GifTextureView:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lpl/droidsonroids/gif/R$styleable;->GifView:[I

    return-void

    :array_10
    .array-data 4
        0x7f020098
        0x7f0200ad
    .end array-data

    :array_18
    .array-data 4
        0x7f020096
        0x7f0200c7
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
