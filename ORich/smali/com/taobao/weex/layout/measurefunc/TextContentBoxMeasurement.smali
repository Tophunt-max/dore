###### Class com.taobao.weex.layout.measurefunc.TextContentBoxMeasurement (com.taobao.weex.layout.measurefunc.TextContentBoxMeasurement)
.class public Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "TextContentBoxMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;
    }
.end annotation


# static fields
.field private static final DUMMY_CANVAS:Landroid/graphics/Canvas;

.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"


# instance fields
.field private atomicReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field private hasBeenMeasured:Z

.field private layout:Landroid/text/Layout;

.field protected mAlignment:Landroid/text/Layout$Alignment;

.field protected mColor:I

.field protected mFontFamily:Ljava/lang/String;

.field protected mFontSize:I

.field protected mFontStyle:I

.field protected mFontWeight:I

.field protected mIsColorSet:Z

.field protected mLineHeight:I

.field private mNumberOfLines:I

.field private mText:Ljava/lang/String;

.field protected mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

.field protected mTextPaint:Landroid/text/TextPaint;

.field private previousWidth:F

.field private spanned:Landroid/text/Spanned;

.field private textOverflow:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->DUMMY_CANVAS:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/ContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    .line 97
    iput-boolean p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    const/4 p1, -0x1

    .line 99
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    .line 100
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    .line 101
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    .line 102
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    .line 103
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 104
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    .line 109
    sget-object p1, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 115
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p0
.end method

.method private adjustSpansRange(Landroid/text/Spanned;Landroid/text/Spannable;)V
    .registers 10

    .line 438
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 439
    array-length v1, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_32

    aget-object v4, v0, v3

    .line 440
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 441
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-nez v5, :cond_2f

    .line 442
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v5

    if-ne v6, v5, :cond_2f

    .line 443
    invoke-interface {p2, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 444
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v4, v2, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_32
    return-void
.end method

.method private createLayout(FLandroid/text/Layout;)Landroid/text/Layout;
    .registers 16

    .line 354
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_8

    if-nez p2, :cond_1e

    .line 355
    :cond_8
    new-instance p2, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v4, v0

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 360
    :cond_1e
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8a

    if-lez v0, :cond_8a

    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v0, v1, :cond_8a

    .line 362
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 363
    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    if-ge v0, v1, :cond_8a

    if-lez v0, :cond_4c

    .line 367
    new-instance p2, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_51

    .line 369
    :cond_4c
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 371
    :goto_51
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-interface {v3, v0, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p1, v5

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->textOverflow:Landroid/text/TextUtils$TruncateAt;

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->truncate(Landroid/text/Editable;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 373
    iget-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->adjustSpansRange(Landroid/text/Spanned;Landroid/text/Spannable;)V

    .line 374
    iput-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    .line 375
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v6, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    iget-object v7, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v8, v0

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p1

    :cond_8a
    return-object p2
.end method

.method private getTextWidth(Landroid/text/TextPaint;FZ)F
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    if-nez v0, :cond_9

    if-eqz p3, :cond_7

    return p2

    :cond_7
    const/4 p1, 0x0

    return p1

    :cond_9
    if-eqz p3, :cond_c

    goto :goto_1d

    .line 331
    :cond_c
    iget-object p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-static {p3, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p1

    .line 332
    invoke-static {p2}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result p3

    if-nez p3, :cond_1c

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1d

    :cond_1c
    move p2, p1

    :cond_1d
    :goto_1d
    return p2
.end method

.method private recalculateLayout(F)V
    .registers 4

    .line 450
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_31

    .line 452
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    if-eqz v1, :cond_2f

    .line 454
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createLayout(FLandroid/text/Layout;)Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    .line 455
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    goto :goto_31

    .line 457
    :cond_2f
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    :cond_31
    :goto_31
    return-void
.end method

.method private swap()V
    .registers 3

    .line 486
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_c

    .line 487
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 488
    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    :cond_c
    const/4 v0, 0x0

    .line 490
    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    return-void
.end method

.method private truncate(Landroid/text/Editable;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Landroid/text/Spanned;
    .registers 17

    move-object v8, p1

    .line 397
    new-instance v9, Landroid/text/SpannedString;

    const-string v0, ""

    invoke-direct {v9, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_79

    const/4 v10, 0x1

    if-eqz p4, :cond_4f

    const-string v0, "\u2026"

    .line 400
    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 401
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 402
    array-length v1, v0

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v1, :cond_4f

    aget-object v4, v0, v3

    .line 403
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 404
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-nez v5, :cond_4c

    .line 405
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    sub-int/2addr v5, v10

    if-ne v6, v5, :cond_4c

    .line 406
    invoke-interface {p1, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 407
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v4, v2, v5, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 415
    :cond_4f
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v10, :cond_79

    .line 416
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int/2addr v0, v10

    if-eqz p4, :cond_5e

    add-int/lit8 v0, v0, -0x1

    :cond_5e
    add-int/lit8 v1, v0, 0x1

    .line 420
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 421
    new-instance v11, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 422
    invoke-virtual {v11}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt v0, v10, :cond_4f

    goto :goto_7a

    :cond_79
    move-object v8, v9

    :goto_7a
    return-object v8
.end method

.method private updateStyleAndText()V
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateStyleImp(Ljava/util/Map;)V

    .line 199
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/dom/WXAttr;->getValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    return-void
.end method

.method private updateStyleImp(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a6

    const-string v0, "lines"

    .line 228
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_15

    .line 229
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getLines(Ljava/util/Map;)I

    move-result v0

    if-lez v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, -0x1

    .line 230
    :goto_13
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    :cond_15
    const-string v0, "fontSize"

    .line 232
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 233
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v0

    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    :cond_33
    const-string v0, "fontWeight"

    .line 235
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 236
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    :cond_41
    const-string v0, "fontStyle"

    .line 238
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 239
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    :cond_4f
    const-string v0, "color"

    .line 241
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 242
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getTextColor(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mColor:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_67

    const/4 v0, 0x1

    goto :goto_68

    :cond_67
    const/4 v0, 0x0

    .line 243
    :goto_68
    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    :cond_6a
    const-string v0, "textDecoration"

    .line 245
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 246
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getTextDecoration(Ljava/util/Map;)Lcom/taobao/weex/ui/component/WXTextDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    :cond_78
    const-string v0, "fontFamily"

    .line 248
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 249
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    .line 251
    :cond_86
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayoutRTL()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/dom/WXStyle;->getTextAlignment(Ljava/util/Map;Z)Landroid/text/Layout$Alignment;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mAlignment:Landroid/text/Layout$Alignment;

    .line 252
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getTextOverflow(Ljava/util/Map;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->textOverflow:Landroid/text/TextUtils$TruncateAt;

    .line 253
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/dom/WXStyle;->getLineHeight(Ljava/util/Map;F)I

    move-result p1

    if-eq p1, v1, :cond_a6

    .line 255
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    :cond_a6
    return-void
.end method

.method private warmUpTextLayoutCache(Landroid/text/Layout;)Z
    .registers 3

    .line 472
    :try_start_0
    sget-object v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->DUMMY_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p1, 0x1

    goto :goto_e

    :catch_7
    move-exception p1

    const-string v0, "TextWarmUp"

    .line 475
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->eTag(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_e
    return p1
.end method


# virtual methods
.method protected createSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 3

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 270
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 271
    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateSpannable(Landroid/text/Spannable;I)V

    return-object v0

    .line 274
    :cond_11
    new-instance p1, Landroid/text/SpannableString;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public forceRelayout()V
    .registers 5

    .line 212
    invoke-virtual {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layoutBefore()V

    .line 215
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    sget v1, Lcom/taobao/weex/layout/MeasureMode;->EXACTLY:I

    sget v2, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->measure(FFII)V

    .line 218
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    invoke-virtual {p0, v0, v3}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layoutAfter(FF)V

    return-void
.end method

.method public layoutAfter(FF)V
    .registers 4

    .line 166
    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p2, :cond_71

    .line 167
    iget-boolean p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    if-eqz p2, :cond_26

    .line 168
    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    if-eqz p2, :cond_2c

    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 170
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p2

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;F)F

    move-result p2

    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_2c

    .line 172
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->recalculateLayout(F)V

    goto :goto_2c

    .line 175
    :cond_26
    invoke-direct {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateStyleAndText()V

    .line 176
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->recalculateLayout(F)V

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 179
    iget-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    if-eqz p1, :cond_58

    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_58

    .line 181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p1, p2, :cond_58

    .line 182
    iget-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->warmUpTextLayoutCache(Landroid/text/Layout;)Z

    .line 185
    :cond_58
    invoke-direct {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->swap()V

    .line 186
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p1

    new-instance p2, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;

    invoke-direct {p2, p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;-><init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)V

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 193
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p1, p2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_71
    return-void
.end method

.method public layoutBefore()V
    .registers 3

    .line 122
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 124
    invoke-direct {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateStyleAndText()V

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    return-void
.end method

.method public measureInternal(FFII)V
    .registers 8

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 135
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    sget v2, Lcom/taobao/weex/layout/MeasureMode;->EXACTLY:I

    if-ne p3, v2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-direct {p0, v1, p1, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->getTextWidth(Landroid/text/TextPaint;FZ)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4d

    .line 137
    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    if-eqz v2, :cond_4d

    const/4 p3, 0x0

    .line 138
    invoke-direct {p0, v0, p3}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createLayout(FLandroid/text/Layout;)Landroid/text/Layout;

    move-result-object p3

    iput-object p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    .line 139
    invoke-virtual {p3}, Landroid/text/Layout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    .line 140
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_34

    .line 141
    iget-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_3f

    .line 143
    :cond_34
    iget-object p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {p3}, Landroid/text/Layout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 146
    :goto_3f
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_57

    .line 147
    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    goto :goto_57

    .line 150
    :cond_4d
    sget v0, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    if-ne p3, v0, :cond_52

    const/4 p1, 0x0

    .line 153
    :cond_52
    sget p3, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    if-ne p4, p3, :cond_57

    const/4 p2, 0x0

    .line 157
    :cond_57
    :goto_57
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mMeasureWidth:F

    .line 158
    iput p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mMeasureHeight:F

    return-void
.end method

.method protected setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    .registers 6

    .line 306
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method protected updateSpannable(Landroid/text/Spannable;I)V
    .registers 11

    .line 278
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 279
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_1a

    .line 280
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_20

    .line 283
    :cond_1a
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 286
    :goto_20
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    if-eq v0, v7, :cond_31

    .line 287
    new-instance v2, Lcom/taobao/weex/dom/WXLineHeightSpan;

    invoke-direct {v2, v0}, Lcom/taobao/weex/dom/WXLineHeightSpan;-><init>(I)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 290
    :cond_31
    new-instance v2, Landroid/text/style/AlignmentSpan$Standard;

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-direct {v2, v0}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 292
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    if-ne v0, v7, :cond_4c

    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    if-ne v0, v7, :cond_4c

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    if-eqz v0, :cond_5f

    .line 293
    :cond_4c
    new-instance v2, Lcom/taobao/weex/dom/WXCustomStyleSpan;

    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Lcom/taobao/weex/dom/WXCustomStyleSpan;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 296
    :cond_5f
    iget-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    if-eqz v0, :cond_6a

    .line 297
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 300
    :cond_6a
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-eq v0, v1, :cond_76

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-ne v0, v1, :cond_85

    .line 301
    :cond_76
    new-instance v2, Lcom/taobao/weex/dom/TextDecorationSpan;

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-direct {v2, v0}, Lcom/taobao/weex/dom/TextDecorationSpan;-><init>(Lcom/taobao/weex/ui/component/WXTextDecoration;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_85
    return-void
.end method

###### Class com.taobao.weex.layout.measurefunc.TextContentBoxMeasurement.AnonymousClass1 (com.taobao.weex.layout.measurefunc.TextContentBoxMeasurement$1)
.class Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;
.super Ljava/lang/Object;
.source "TextContentBoxMeasurement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layoutAfter(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;


# direct methods
.method constructor <init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-static {v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->access$000(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 190
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-static {v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->access$200(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-static {v1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->access$100(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->updateExtra(Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

###### Class com.taobao.weex.layout.measurefunc.TextContentBoxMeasurement.SetSpanOperation (com.taobao.weex.layout.measurefunc.TextContentBoxMeasurement$SetSpanOperation)
.class Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;
.super Ljava/lang/Object;
.source "TextContentBoxMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSpanOperation"
.end annotation


# instance fields
.field protected final end:I

.field protected final flag:I

.field protected final start:I

.field final synthetic this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

.field protected final what:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;IILjava/lang/Object;)V
    .registers 11

    const/16 v5, 0x11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 80
    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;-><init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;IILjava/lang/Object;I)V

    return-void
.end method

.method constructor <init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;IILjava/lang/Object;I)V
    .registers 6

    .line 83
    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->start:I

    .line 85
    iput p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->end:I

    .line 86
    iput-object p4, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->what:Ljava/lang/Object;

    .line 87
    iput p5, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->flag:I

    return-void
.end method


# virtual methods
.method public execute(Landroid/text/Spannable;)V
    .registers 6

    .line 91
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->what:Ljava/lang/Object;

    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->start:I

    iget v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->end:I

    iget v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->flag:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
