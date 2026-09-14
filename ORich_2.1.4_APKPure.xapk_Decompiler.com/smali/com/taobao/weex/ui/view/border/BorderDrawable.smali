###### Class com.taobao.weex.ui.view.border.BorderDrawable (com.taobao.weex.ui.view.border.BorderDrawable)
.class public Lcom/taobao/weex/ui/view/border/BorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BorderDrawable.java"


# static fields
.field public static final BORDER_BOTTOM_LEFT_RADIUS:I = 0x3

.field public static final BORDER_BOTTOM_RIGHT_RADIUS:I = 0x2

.field public static final BORDER_RADIUS_ALL:I = 0x5

.field public static final BORDER_TOP_LEFT_RADIUS:I = 0x0

.field public static final BORDER_TOP_RIGHT_RADIUS:I = 0x1

.field static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_STYLE:Lcom/taobao/weex/ui/view/border/BorderStyle;

.field static final DEFAULT_BORDER_WIDTH:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Border"

.field private static sBorderStyle:[Lcom/taobao/weex/ui/view/border/BorderStyle;


# instance fields
.field private mAlpha:I

.field private mBorderColor:Landroid/util/SparseIntArray;

.field private final mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

.field private mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/dom/CSSShorthand<",
            "Lcom/taobao/weex/dom/CSSShorthand$CORNER;",
            ">;"
        }
    .end annotation
.end field

.field private mBorderStyle:Landroid/util/SparseIntArray;

.field private mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/dom/CSSShorthand<",
            "Lcom/taobao/weex/dom/CSSShorthand$EDGE;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

.field private mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

.field private mColor:I

.field private mNeedUpdatePath:Z

.field private mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/dom/CSSShorthand<",
            "Lcom/taobao/weex/dom/CSSShorthand$CORNER;",
            ">;"
        }
    .end annotation
.end field

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathForBorderOutline:Landroid/graphics/Path;

.field private mRectBounds:Landroid/graphics/RectF;

.field private mShader:Landroid/graphics/Shader;

.field private mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

.field private mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    sget-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle;->SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;

    sput-object v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->DEFAULT_BORDER_STYLE:Lcom/taobao/weex/ui/view/border/BorderStyle;

    .line 76
    invoke-static {}, Lcom/taobao/weex/ui/view/border/BorderStyle;->values()[Lcom/taobao/weex/ui/view/border/BorderStyle;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->sBorderStyle:[Lcom/taobao/weex/ui/view/border/BorderStyle;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 114
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 98
    iput v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    const/16 v0, 0xff

    .line 103
    iput v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    .line 110
    new-instance v0, Lcom/taobao/weex/ui/view/border/BorderEdge;

    invoke-direct {v0}, Lcom/taobao/weex/ui/view/border/BorderEdge;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    return-void
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .registers 12

    .line 435
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_10

    .line 436
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    goto :goto_17

    .line 438
    :cond_10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 441
    :goto_17
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_1c

    return-void

    .line 444
    :cond_1c
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    .line 445
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 446
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v8

    .line 447
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v9

    .line 449
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    if-nez v2, :cond_45

    .line 450
    new-instance v2, Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    invoke-direct {v2}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    .line 452
    :cond_45
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-direct {p0, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->set(FFFLandroid/graphics/RectF;)V

    .line 453
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    if-nez v2, :cond_5d

    .line 454
    new-instance v2, Lcom/taobao/weex/ui/view/border/TopRightCorner;

    invoke-direct {v2}, Lcom/taobao/weex/ui/view/border/TopRightCorner;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    .line 456
    :cond_5d
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-direct {p0, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v1, v9, v4}, Lcom/taobao/weex/ui/view/border/TopRightCorner;->set(FFFLandroid/graphics/RectF;)V

    .line 457
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    if-nez v2, :cond_75

    .line 458
    new-instance v2, Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    invoke-direct {v2}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    .line 460
    :cond_75
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-direct {p0, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v9, v8, v4}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->set(FFFLandroid/graphics/RectF;)V

    .line 461
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    if-nez v2, :cond_8d

    .line 462
    new-instance v2, Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    invoke-direct {v2}, Lcom/taobao/weex/ui/view/border/BottomLeftCorner;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    .line 464
    :cond_8d
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-direct {p0, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v8, v0, v4}, Lcom/taobao/weex/ui/view/border/BottomLeftCorner;->set(FFFLandroid/graphics/RectF;)V

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move v5, v1

    move v6, v8

    move v7, v9

    .line 466
    invoke-direct/range {v2 .. v7}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->isDefAllDrawRoundRect(Landroid/graphics/Canvas;FFFF)Z

    move-result v2

    if-nez v2, :cond_e2

    .line 467
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V

    .line 468
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2, v3, v9, v4}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V

    .line 469
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2, v3, v8, v4}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V

    .line 470
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V

    :cond_e2
    return-void
.end method

.method private drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V
    .registers 5

    .line 524
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/border/BorderEdge;->getBorderWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_15

    .line 525
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/border/BorderEdge;->getEdge()Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->preparePaint(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)V

    .line 526
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Lcom/taobao/weex/ui/view/border/BorderEdge;->drawEdge(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_15
    return-void
.end method

.method private getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F
    .registers 3

    .line 516
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v0, :cond_9

    .line 517
    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private getScaleFactor(Landroid/graphics/RectF;)F
    .registers 8

    .line 406
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 407
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    add-float/2addr v0, v1

    .line 408
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 409
    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    add-float/2addr v1, v2

    .line 410
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 411
    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    add-float/2addr v2, v3

    .line 412
    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 413
    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    add-float/2addr v3, v4

    .line 414
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 415
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-direct {p0, v4, v5, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateFactor(Ljava/util/List;FF)V

    .line 416
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p0, v4, v0, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateFactor(Ljava/util/List;FF)V

    .line 417
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0, v4, v0, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateFactor(Ljava/util/List;FF)V

    .line 418
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-direct {p0, v4, p1, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateFactor(Ljava/util/List;FF)V

    .line 420
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6f

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_79

    .line 423
    :cond_6f
    invoke-static {v4}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_79
    return p1
.end method

.method private isDefAllDrawRoundRect(Landroid/graphics/Canvas;FFFF)Z
    .registers 10

    .line 485
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_b2

    .line 487
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/TopRightCorner;->getOuterCornerRadius()F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_b2

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/BottomLeftCorner;->getOuterCornerRadius()F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_b2

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    .line 488
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getOuterCornerRadius()F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_b2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_b2

    cmpl-float v1, p2, p3

    if-nez v1, :cond_b2

    cmpl-float p4, p2, p4

    if-nez p4, :cond_b2

    cmpl-float p4, p2, p5

    if-nez p4, :cond_b2

    .line 491
    sget-object p4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, p4}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result p4

    iget p5, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {p4, p5}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result p4

    .line 492
    sget-object p5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, p5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result p5

    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {p5, v1}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result p5

    .line 493
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v1

    iget v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v1

    .line 494
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v2

    iget v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v2

    if-ne p4, p5, :cond_b2

    if-ne p4, v1, :cond_b2

    if-ne p4, v2, :cond_b2

    .line 497
    iget-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object p5, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p4, p5, v1, p3, v2}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/ui/view/border/BorderEdge;->getEdge()Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->preparePaint(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)V

    .line 498
    iget-object p3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 499
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    .line 502
    iget-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->top:F

    add-float/2addr p4, p2

    iput p4, p3, Landroid/graphics/RectF;->top:F

    .line 503
    iget-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    iput p4, p3, Landroid/graphics/RectF;->bottom:F

    .line 504
    iget-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->left:F

    add-float/2addr p4, p2

    iput p4, p3, Landroid/graphics/RectF;->left:F

    .line 505
    iget-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    iput p4, p3, Landroid/graphics/RectF;->right:F

    .line 507
    iget-object p2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 p1, 0x1

    return p1

    :cond_b2
    const/4 p1, 0x0

    return p1
.end method

.method private prepareBorderPath(IIIILandroid/graphics/RectF;Landroid/graphics/Path;)V
    .registers 14

    .line 347
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v0, :cond_64

    .line 348
    invoke-direct {p0, p5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderRadius(Landroid/graphics/RectF;)V

    .line 349
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_12

    .line 350
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 352
    :cond_12
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 354
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    .line 355
    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float p4, p4

    sub-float v6, v0, p4

    aput v6, v4, v5

    const/4 v5, 0x1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    aput v0, v4, v5

    const/4 v0, 0x2

    int-to-float p2, p2

    sub-float v5, v1, p2

    aput v5, v4, v0

    const/4 v0, 0x3

    sub-float/2addr v1, p1

    aput v1, v4, v0

    const/4 p1, 0x4

    sub-float p2, v2, p2

    aput p2, v4, p1

    const/4 p1, 0x5

    int-to-float p2, p3

    sub-float/2addr v2, p2

    aput v2, v4, p1

    const/4 p1, 0x6

    sub-float p3, v3, p4

    aput p3, v4, p1

    const/4 p1, 0x7

    sub-float/2addr v3, p2

    aput v3, v4, p1

    .line 356
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p6, p5, v4, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_69

    .line 370
    :cond_64
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p6, p5, p1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :goto_69
    return-void
.end method

.method private prepareBorderRadius(Landroid/graphics/RectF;)V
    .registers 6

    .line 378
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v0, :cond_a0

    .line 379
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getScaleFactor(Landroid/graphics/RectF;)F

    move-result p1

    .line 380
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_13

    .line 381
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 383
    :cond_13
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_64

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_64

    .line 384
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 385
    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    mul-float v2, v2, p1

    .line 384
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    .line 386
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 387
    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    mul-float v2, v2, p1

    .line 386
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    .line 388
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 389
    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    mul-float v2, v2, p1

    .line 388
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    .line 390
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 391
    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    mul-float v2, v2, p1

    .line 390
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    goto :goto_a0

    .line 393
    :cond_64
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 394
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 393
    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    .line 395
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 396
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 395
    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    .line 397
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 398
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 397
    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    .line 399
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 400
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 399
    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    :cond_a0
    :goto_a0
    return-void
.end method

.method private preparePaint(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)V
    .registers 6

    .line 531
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    .line 532
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v1

    iget v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v1

    .line 533
    sget-object v2, Lcom/taobao/weex/ui/view/border/BorderDrawable;->sBorderStyle:[Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v3

    aget-object v2, v2, v3

    .line 534
    invoke-virtual {v2, v0, v1, p1}, Lcom/taobao/weex/ui/view/border/BorderStyle;->getLineShader(FILcom/taobao/weex/dom/CSSShorthand$EDGE;)Landroid/graphics/Shader;

    move-result-object p1

    .line 535
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 536
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 537
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private updateBorderOutline()V
    .registers 9

    .line 331
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 333
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    if-nez v0, :cond_12

    .line 334
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    .line 336
    :cond_12
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 337
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderPath(IIIILandroid/graphics/RectF;Landroid/graphics/Path;)V

    :cond_2a
    return-void
.end method

.method private updateFactor(Ljava/util/List;FF)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;FF)V"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_d

    div-float/2addr p2, p3

    .line 430
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateBorderOutline()V

    .line 122
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 124
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    iget v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v0

    .line 125
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    if-eqz v2, :cond_37

    .line 126
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_53

    :cond_37
    ushr-int/lit8 v2, v0, 0x18

    if-eqz v2, :cond_53

    .line 131
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 134
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 137
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawBorders(Landroid/graphics/Canvas;)V

    .line 140
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 160
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    return v0
.end method

.method getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    const/high16 v1, -0x1000000

    invoke-static {v0, p1, v1}, Lcom/taobao/weex/ui/view/border/BorderUtil;->fetchFromSparseArray(Landroid/util/SparseIntArray;II)I

    move-result p1

    return p1
.end method

.method public getBorderInnerRadius(Landroid/graphics/RectF;)[F
    .registers 8

    .line 241
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderRadius(Landroid/graphics/RectF;)V

    .line 242
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez p1, :cond_e

    .line 243
    new-instance p1, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 245
    :cond_e
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    .line 246
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 248
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    .line 249
    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v3, :cond_65

    .line 250
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    sub-float/2addr p1, v3

    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 251
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 252
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 253
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_65
    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 p1, 0x2

    aput v0, v3, p1

    const/4 p1, 0x3

    aput v0, v3, p1

    const/4 p1, 0x4

    aput v1, v3, p1

    const/4 p1, 0x5

    aput v1, v3, p1

    const/4 p1, 0x6

    aput v2, v3, p1

    const/4 p1, 0x7

    aput v2, v3, p1

    return-object v3
.end method

.method public getBorderRadius(Landroid/graphics/RectF;)[F
    .registers 7

    .line 224
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderRadius(Landroid/graphics/RectF;)V

    .line 225
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez p1, :cond_e

    .line 226
    new-instance p1, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 228
    :cond_e
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    .line 229
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    .line 230
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 231
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 p1, 0x2

    aput v0, v3, p1

    const/4 p1, 0x3

    aput v0, v3, p1

    const/4 p1, 0x4

    aput v1, v3, p1

    const/4 p1, 0x5

    aput v1, v3, p1

    const/4 p1, 0x6

    aput v2, v3, p1

    const/4 p1, 0x7

    aput v2, v3, p1

    return-object v3
.end method

.method getBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I
    .registers 4

    .line 293
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    sget-object v1, Lcom/taobao/weex/ui/view/border/BorderStyle;->SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/taobao/weex/ui/view/border/BorderUtil;->fetchFromSparseArray(Landroid/util/SparseIntArray;II)I

    move-result p1

    return p1
.end method

.method getBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    return p1
.end method

.method public getColor()I
    .registers 2

    .line 297
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    return v0
.end method

.method public getContentPath(Landroid/graphics/RectF;)Landroid/graphics/Path;
    .registers 10

    .line 325
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    move-object v6, v7

    .line 326
    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderPath(IIIILandroid/graphics/RectF;Landroid/graphics/Path;)V

    return-object v7
.end method

.method public getOpacity()I
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    goto :goto_12

    :cond_6
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    .line 174
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getOpacityFromColor(I)I

    move-result v0

    :goto_12
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    .line 182
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 185
    :cond_d
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateBorderOutline()V

    .line 186
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_15
    return-void
.end method

.method public hasImage()Z
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isRounded()Z
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v0, :cond_35

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 316
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 317
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 318
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 319
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_35

    :cond_33
    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 146
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 152
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    if-eq p1, v0, :cond_9

    .line 153
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    .line 154
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V
    .registers 6

    .line 262
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    if-nez v0, :cond_17

    .line 263
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    .line 264
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 266
    :cond_17
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v0

    if-eq v0, p2, :cond_29

    .line 267
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/taobao/weex/ui/view/border/BorderUtil;->updateSparseArray(Landroid/util/SparseIntArray;II)V

    .line 268
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    :cond_29
    return-void
.end method

.method public setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V
    .registers 5

    .line 206
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_b

    .line 207
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 209
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_49

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->ALL:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    if-ne p1, v0, :cond_54

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 211
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 212
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 213
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 214
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_54

    .line 215
    :cond_49
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    const/4 p1, 0x1

    .line 216
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 217
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    :cond_54
    return-void
.end method

.method public setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V
    .registers 6

    .line 277
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    if-nez v0, :cond_1b

    .line 278
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    .line 279
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v1

    sget-object v2, Lcom/taobao/weex/ui/view/border/BorderDrawable;->DEFAULT_BORDER_STYLE:Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 282
    :cond_1b
    :try_start_1b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/ui/view/border/BorderStyle;->valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/view/border/BorderStyle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result p2

    .line 283
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v0

    if-eq v0, p2, :cond_46

    .line 284
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/taobao/weex/ui/view/border/BorderUtil;->updateSparseArray(Landroid/util/SparseIntArray;II)V

    .line 285
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_3b} :catch_3c

    goto :goto_46

    :catch_3c
    move-exception p1

    .line 288
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Border"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_b

    .line 192
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_20

    .line 195
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 197
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    :cond_20
    return-void
.end method

.method public setColor(I)V
    .registers 2

    .line 301
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    .line 302
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setImage(Landroid/graphics/Shader;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    .line 307
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    return-void
.end method
