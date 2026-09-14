###### Class com.taobao.weex.utils.BoxShadowUtil (com.taobao.weex.utils.BoxShadowUtil)
.class public Lcom/taobao/weex/utils/BoxShadowUtil;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;,
        Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;,
        Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BoxShadowUtil"

.field private static sBoxShadowEnabled:Z = true

.field private static sColorPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Ljava/util/List;F[F)V
    .registers 4

    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/weex/utils/BoxShadowUtil;->setNormalBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Ljava/util/List;F[F)V
    .registers 4

    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/weex/utils/BoxShadowUtil;->setInsetBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V

    return-void
.end method

.method private static drawShadow(Landroid/graphics/Canvas;Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V
    .registers 10

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    int-to-float v1, v1

    iget v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    int-to-float v2, v2

    iget v4, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 150
    iget-object v1, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    if-eqz v1, :cond_27

    .line 151
    iget-object v1, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 154
    :cond_27
    iget v1, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 155
    iget v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 156
    iget v5, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_36

    .line 157
    iget v5, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    mul-float v5, v5, v3

    add-float/2addr v1, v5

    .line 159
    :cond_36
    iget v5, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_41

    .line 160
    iget v5, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    mul-float v5, v5, v3

    add-float/2addr v2, v5

    .line 162
    :cond_41
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 164
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 165
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    iget v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_69

    .line 170
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v3, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 173
    :cond_69
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v5, 0x0

    .line 175
    :goto_73
    iget-object v6, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    array-length v6, v6

    if-ge v5, v6, :cond_8f

    .line 176
    iget-object v6, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    aget v6, v6, v5

    cmpl-float v6, v6, v4

    if-nez v6, :cond_83

    .line 178
    aput v4, v3, v5

    goto :goto_8c

    .line 180
    :cond_83
    iget-object v6, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    aget v6, v6, v5

    iget v7, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    add-float/2addr v6, v7

    aput v6, v3, v5

    :goto_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 183
    :cond_8f
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 184
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static isBoxShadowEnabled()Z
    .registers 1

    .line 79
    sget-boolean v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    return v0
.end method

.method private static parseBoxShadow(Ljava/lang/String;F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .registers 8

    .line 327
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(FLcom/taobao/weex/utils/BoxShadowUtil$1;)V

    .line 328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-object v1

    :cond_d
    const-string v2, "\\s*,\\s+"

    const-string v3, ","

    .line 335
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "inset"

    .line 338
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_26

    .line 339
    iput-boolean v4, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    const-string v3, ""

    .line 340
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 343
    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 344
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "\\s+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 347
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 348
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string v3, "#"

    .line 349
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    const-string v3, "rgb"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    invoke-static {p0}, Lcom/taobao/weex/utils/WXResourceUtils;->isNamedColor(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    :cond_60
    const/high16 v3, -0x1000000

    .line 350
    invoke-static {p0, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    .line 351
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-interface {v2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 356
    :cond_70
    :try_start_70
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v3, 0x2

    if-ge p0, v3, :cond_78

    return-object v1

    :cond_78
    const/4 p0, 0x0

    .line 360
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_a2

    .line 361
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 362
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p0

    iput p0, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    .line 365
    :cond_a2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_ca

    .line 366
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 367
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p0

    iput p0, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    .line 370
    :cond_ca
    :goto_ca
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_ec

    add-int/lit8 p0, v3, -0x2

    .line 372
    invoke-static {v0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->access$500(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;

    .line 373
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;->parse(Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_70 .. :try_end_e5} :catchall_e8

    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    :catchall_e8
    move-exception p0

    .line 377
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_ec
    return-object v0
.end method

.method public static parseBoxShadows(Ljava/lang/String;F)[Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .registers 8

    .line 303
    sget-object v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_c

    const-string v0, "([rR][gG][bB][aA]?)\\((\\d+\\s*),\\s*(\\d+\\s*),\\s*(\\d+\\s*)(?:,\\s*(\\d+(?:\\.\\d+)?))?\\)"

    .line 304
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    .line 307
    :cond_c
    sget-object v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 310
    :goto_12
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    .line 311
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/high16 v5, -0x1000000

    invoke-static {v1, v5}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "%8s"

    invoke-static {v2, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\s"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_50
    const-string v0, ","

    .line 315
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6d

    .line 316
    array-length v0, p0

    if-lez v0, :cond_6d

    .line 317
    array-length v0, p0

    new-array v0, v0, [Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 318
    :goto_5e
    array-length v1, p0

    if-ge v2, v1, :cond_6c

    .line 319
    aget-object v1, p0, v2

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/BoxShadowUtil;->parseBoxShadow(Ljava/lang/String;F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_6c
    return-object v0

    :cond_6d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setBoxShadow(Landroid/view/View;Ljava/lang/String;[FFF)V
    .registers 14

    .line 83
    sget-boolean v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    const-string v1, "BoxShadowUtil"

    if-nez v0, :cond_c

    const-string p0, "box-shadow was disabled by config"

    .line 84
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p0, :cond_14

    const-string p0, "Target view is null!"

    .line 89
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_2d

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewOverlay;->clear()V

    const-string p0, "Remove all box-shadow"

    .line 95
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_2d
    invoke-static {p1, p3}, Lcom/taobao/weex/utils/BoxShadowUtil;->parseBoxShadows(Ljava/lang/String;F)[Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 100
    array-length v2, v0

    if-nez v2, :cond_37

    goto :goto_84

    .line 105
    :cond_37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 106
    array-length p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_44
    if-ge v3, p1, :cond_58

    aget-object v4, v0, v3

    if-eqz v4, :cond_55

    .line 108
    iget-boolean v6, v4, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    if-eqz v6, :cond_52

    .line 109
    invoke-interface {v8, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_55

    .line 111
    :cond_52
    invoke-interface {v5, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_55
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_58
    if-eqz p2, :cond_73

    .line 117
    array-length p1, p2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_65

    const-string p1, "Length of radii must be 8"

    .line 118
    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 120
    :cond_65
    :goto_65
    array-length p1, p2

    if-ge v2, p1, :cond_73

    .line 121
    aget p1, p2, v2

    invoke-static {p1, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    .line 122
    aput p1, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 127
    :cond_73
    :goto_73
    new-instance p1, Lcom/taobao/weex/utils/BoxShadowUtil$1;

    move-object v3, p1

    move-object v4, p0

    move v6, p4

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/utils/BoxShadowUtil$1;-><init>(Landroid/view/View;Ljava/util/List;F[FLjava/util/List;)V

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 101
    :cond_84
    :goto_84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse box-shadow: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setBoxShadowEnabled(Z)V
    .registers 3

    .line 74
    sput-boolean p0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switch box-shadow status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BoxShadowUtil"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setInsetBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;",
            ">;F[F)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "BoxShadowUtil"

    if-eqz p0, :cond_6b

    if-nez v0, :cond_9

    goto :goto_6b

    .line 277
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_65

    .line 282
    :cond_16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_5f

    .line 283
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    .line 284
    :goto_23
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 285
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 286
    new-instance v14, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v3, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    iget v8, v3, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    iget v9, v3, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    iget v10, v3, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    iget v11, v3, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    const/4 v13, 0x0

    move-object v4, v14

    move-object/from16 v12, p3

    invoke-direct/range {v4 .. v13}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;-><init>(IIFFFFI[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V

    .line 290
    aput-object v14, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 293
    :cond_4f
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_64

    :cond_5f
    const-string v0, "Call setInsetBoxShadow() requires API level 18 or higher."

    .line 297
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    return-void

    :cond_65
    :goto_65
    const-string v0, "Target view is invisible, ignore set shadow."

    .line 278
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6b
    :goto_6b
    const-string v0, "Illegal arguments"

    .line 273
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setNormalBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;",
            ">;F[F)V"
        }
    .end annotation

    move/from16 v0, p2

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    const-string v3, "BoxShadowUtil"

    if-eqz v1, :cond_ff

    if-nez v2, :cond_15

    goto/16 :goto_ff

    .line 206
    :cond_15
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_f9

    .line 208
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 209
    iput v2, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    .line 210
    iput v1, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    move-object/from16 v14, p3

    .line 211
    iput-object v14, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    .line 213
    invoke-virtual {v8}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->getTargetCanvasRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 214
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ge v6, v9, :cond_44

    .line 215
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 218
    :cond_44
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v7, v9, :cond_22

    .line 219
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v7

    goto :goto_22

    :cond_4f
    move-object/from16 v14, p3

    int-to-float v4, v6

    mul-float v4, v4, v0

    float-to-int v4, v4

    int-to-float v8, v7

    mul-float v8, v8, v0

    float-to-int v8, v8

    .line 225
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 226
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v4, v8, :cond_84

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Allocation memory for box-shadow: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v8

    div-int/lit16 v8, v8, 0x400

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " KB"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_84
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 240
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_be

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 241
    invoke-virtual {v8}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->getTargetCanvasRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 242
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v10, v6, v10

    int-to-float v10, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    .line 243
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v7, v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    .line 244
    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v10, v9}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v12, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    .line 246
    invoke-virtual {v8, v0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->scale(F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    move-result-object v8

    .line 247
    invoke-static {v3, v8}, Lcom/taobao/weex/utils/BoxShadowUtil;->drawShadow(Landroid/graphics/Canvas;Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V

    goto :goto_8d

    :cond_be
    sub-int/2addr v6, v2

    .line 251
    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v7, v1

    .line 252
    div-int/lit8 v7, v7, 0x2

    .line 253
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v5, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v15, 0x0

    move-object v9, v0

    move-object/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_fe

    .line 260
    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 261
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_fe

    .line 262
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_fe

    :cond_f9
    const-string v0, "Call setNormalBoxShadow() requires API level 18 or higher."

    .line 267
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fe
    :goto_fe
    return-void

    :cond_ff
    :goto_ff
    const-string v0, "Target view is invisible, ignore set shadow."

    .line 202
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.AnonymousClass1 (com.taobao.weex.utils.BoxShadowUtil$1)
.class final Lcom/taobao/weex/utils/BoxShadowUtil$1;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;->setBoxShadow(Landroid/view/View;Ljava/lang/String;[FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$insetShadows:Ljava/util/List;

.field final synthetic val$normalShadows:Ljava/util/List;

.field final synthetic val$quality:F

.field final synthetic val$radii:[F

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/List;F[FLjava/util/List;)V
    .registers 6

    .line 127
    iput-object p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$target:Landroid/view/View;

    iput-object p2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$normalShadows:Ljava/util/List;

    iput p3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$quality:F

    iput-object p4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$radii:[F

    iput-object p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$insetShadows:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_35

    .line 131
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    .line 132
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$normalShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 133
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$target:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$normalShadows:Ljava/util/List;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$quality:F

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$radii:[F

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/weex/utils/BoxShadowUtil;->access$000(Landroid/view/View;Ljava/util/List;F[F)V

    .line 136
    :cond_22
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$insetShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 137
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$target:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$insetShadows:Ljava/util/List;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$quality:F

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$radii:[F

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/weex/utils/BoxShadowUtil;->access$100(Landroid/view/View;Ljava/util/List;F[F)V

    :cond_35
    return-void
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.BoxShadowOptions (com.taobao.weex.utils.BoxShadowUtil$BoxShadowOptions)
.class public Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoxShadowOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;
    }
.end annotation


# instance fields
.field public blur:F

.field public color:I

.field public hShadow:F

.field public isInset:Z

.field private optionParamParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;",
            ">;"
        }
    .end annotation
.end field

.field public radii:[F

.field public spread:F

.field public topLeft:Landroid/graphics/PointF;

.field public vShadow:F

.field public viewHeight:I

.field public viewWidth:I

.field private viewport:F


# direct methods
.method private constructor <init>(F)V
    .registers 5

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x443b8000    # 750.0f

    .line 572
    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:F

    const/4 v1, 0x0

    .line 576
    iput v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 577
    iput v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 578
    fill-array-data v2, :array_46

    iput-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/high16 v2, -0x1000000

    .line 579
    iput v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    const/4 v2, 0x0

    .line 580
    iput-boolean v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    .line 582
    iput v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    .line 583
    iput v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    const/4 v2, 0x0

    .line 584
    iput-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2a

    .line 588
    iput p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:F

    .line 590
    :cond_2a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    .line 592
    new-instance p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;-><init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V

    .line 603
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;-><init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V

    .line 613
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :array_46
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(FLcom/taobao/weex/utils/BoxShadowUtil$1;)V
    .registers 3

    .line 570
    invoke-direct {p0, p1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)Ljava/util/List;
    .registers 1

    .line 570
    iget-object p0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)F
    .registers 1

    .line 570
    iget p0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:F

    return p0
.end method


# virtual methods
.method public getTargetCanvasRect()Landroid/graphics/Rect;
    .registers 5

    .line 645
    iget v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 646
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 647
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public scale(F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .registers 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8f

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_8f

    .line 619
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:F

    invoke-direct {v0, v1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(F)V

    .line 620
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    .line 621
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    .line 622
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 623
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    const/4 v1, 0x0

    .line 624
    :goto_2b
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3b

    .line 625
    iget-object v3, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    aget v2, v2, v1

    mul-float v2, v2, p1

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 627
    :cond_3b
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    .line 628
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    .line 630
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    if-eqz v1, :cond_68

    .line 631
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    .line 632
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 633
    iget-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 636
    :cond_68
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    .line 637
    iget-boolean v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    iput-boolean v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scaled BoxShadowOptions: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BoxShadowUtil"

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_8f
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "BoxShadowOptions{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "h-shadow="

    .line 656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v2, ", v-shadow="

    .line 657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v2, ", blur="

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v2, ", spread="

    .line 659
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v2, ", corner-radius="

    .line 660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ", color=#"

    .line 661
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ", inset="

    .line 662
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    .line 663
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 664
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.BoxShadowOptions.AnonymousClass1 (com.taobao.weex.utils.BoxShadowUtil$BoxShadowOptions$1)
.class Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"

# interfaces
.implements Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;


# direct methods
.method constructor <init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V
    .registers 2

    .line 592
    iput-object p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;->this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .registers 4

    .line 595
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    .line 596
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 597
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;->this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    invoke-static {v0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->access$600(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    iput p1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    const-string p1, "BoxShadowUtil"

    const-string v0, "Experimental box-shadow attribute: spread"

    .line 598
    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.BoxShadowOptions.AnonymousClass2 (com.taobao.weex.utils.BoxShadowUtil$BoxShadowOptions$2)
.class Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"

# interfaces
.implements Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;


# direct methods
.method constructor <init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V
    .registers 2

    .line 603
    iput-object p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;->this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .registers 4

    .line 606
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    .line 607
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 608
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;->this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    invoke-static {v0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->access$600(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    iput p1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    :cond_1f
    return-void
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.BoxShadowOptions.IParser (com.taobao.weex.utils.BoxShadowUtil$BoxShadowOptions$IParser)
.class interface abstract Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IParser"
.end annotation


# virtual methods
.method public abstract parse(Ljava/lang/String;)V
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.InsetShadowDrawable (com.taobao.weex.utils.BoxShadowUtil$InsetShadowDrawable)
.class Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InsetShadowDrawable"
.end annotation


# static fields
.field private static final BOTTOM_TO_TOP:I = 0x3

.field private static final LEFT_TO_RIGHT:I = 0x0

.field private static final RIGHT_TO_LEFT:I = 0x2

.field private static final TOP_TO_BOTTOM:I = 0x1


# instance fields
.field private blurRadius:F

.field private height:F

.field private paint:Landroid/graphics/Paint;

.field private paths:[Landroid/graphics/Path;

.field private radii:[F

.field private shades:[Landroid/graphics/Shader;

.field private shadowColor:I

.field private shadowXSize:F

.field private shadowYSize:F

.field private width:F


# direct methods
.method private constructor <init>(IIFFFFI[F)V
    .registers 11

    .line 448
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Shader;

    .line 443
    iput-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    new-array v0, v0, [Landroid/graphics/Path;

    .line 444
    iput-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    .line 449
    iput p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    .line 450
    iput p7, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    int-to-float p5, p1

    const/high16 p7, 0x40000000    # 2.0f

    mul-float v0, p3, p7

    add-float/2addr p5, v0

    .line 452
    iput p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->width:F

    int-to-float p5, p2

    mul-float p7, p7, p4

    add-float/2addr p5, p7

    .line 453
    iput p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->height:F

    add-float/2addr p3, p6

    .line 455
    iput p3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowXSize:F

    add-float/2addr p4, p6

    .line 456
    iput p4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowYSize:F

    .line 458
    iput-object p8, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->radii:[F

    const/4 p3, 0x0

    .line 460
    invoke-virtual {p0, p3, p3, p1, p2}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->setBounds(IIII)V

    .line 461
    invoke-direct {p0}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->prepare()V

    return-void
.end method

.method synthetic constructor <init>(IIFFFFI[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V
    .registers 10

    .line 428
    invoke-direct/range {p0 .. p8}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;-><init>(IIFFFFI[F)V

    return-void
.end method

.method private prepare()V
    .registers 36

    move-object/from16 v0, p0

    .line 475
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 476
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->width:F

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 477
    new-instance v2, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->height:F

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 478
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 480
    new-instance v5, Landroid/graphics/PointF;

    iget v6, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowXSize:F

    iget v7, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowYSize:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 481
    new-instance v6, Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowXSize:F

    sub-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 482
    new-instance v7, Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    iget v10, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowYSize:F

    sub-float/2addr v9, v10

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 483
    new-instance v8, Landroid/graphics/PointF;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v7, Landroid/graphics/PointF;->y:F

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 485
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v11, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    sub-float v12, v10, v11

    iget v13, v5, Landroid/graphics/PointF;->y:F

    iget v14, v5, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->y:F

    iget v10, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    move-object v11, v9

    move/from16 v16, v10

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 486
    new-instance v10, Landroid/graphics/LinearGradient;

    iget v11, v5, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->y:F

    iget v13, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    sub-float v21, v12, v13

    iget v12, v5, Landroid/graphics/PointF;->x:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    iget v14, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v25, 0x0

    move-object/from16 v19, v10

    move/from16 v20, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    invoke-direct/range {v19 .. v26}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 487
    new-instance v11, Landroid/graphics/LinearGradient;

    iget v12, v7, Landroid/graphics/PointF;->x:F

    iget v13, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    add-float v28, v12, v13

    iget v12, v7, Landroid/graphics/PointF;->y:F

    iget v13, v7, Landroid/graphics/PointF;->x:F

    iget v14, v7, Landroid/graphics/PointF;->y:F

    iget v15, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    sget-object v34, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v33, 0x0

    move-object/from16 v27, v11

    move/from16 v29, v12

    move/from16 v30, v13

    move/from16 v31, v14

    move/from16 v32, v15

    invoke-direct/range {v27 .. v34}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 488
    new-instance v12, Landroid/graphics/LinearGradient;

    iget v13, v7, Landroid/graphics/PointF;->x:F

    iget v14, v7, Landroid/graphics/PointF;->y:F

    iget v15, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    add-float v18, v14, v15

    iget v14, v7, Landroid/graphics/PointF;->x:F

    iget v15, v7, Landroid/graphics/PointF;->y:F

    move-object/from16 v24, v7

    iget v7, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v22, 0x0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 490
    iget-object v7, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    const/4 v13, 0x0

    aput-object v9, v7, v13

    const/4 v9, 0x1

    .line 491
    aput-object v10, v7, v9

    const/4 v10, 0x2

    .line 492
    aput-object v11, v7, v10

    const/4 v11, 0x3

    .line 493
    aput-object v12, v7, v11

    .line 495
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 496
    iget v12, v1, Landroid/graphics/PointF;->x:F

    iget v14, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 497
    iget v12, v5, Landroid/graphics/PointF;->x:F

    iget v14, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 498
    iget v12, v8, Landroid/graphics/PointF;->x:F

    iget v14, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 499
    iget v12, v4, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 500
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 502
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 503
    iget v14, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v14, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 504
    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v14, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    iget v1, v6, Landroid/graphics/PointF;->x:F

    iget v14, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 506
    iget v1, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 507
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 509
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 510
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 511
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v3, v24

    .line 512
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v14, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 513
    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 514
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 516
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 517
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 518
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 519
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 520
    iget v2, v8, Landroid/graphics/PointF;->x:F

    iget v3, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 521
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 523
    iget-object v2, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    aput-object v7, v2, v13

    .line 524
    aput-object v12, v2, v9

    .line 525
    aput-object v1, v2, v10

    .line 526
    aput-object v5, v2, v11

    .line 528
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    .line 529
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 530
    iget-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 531
    iget-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 536
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 537
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 538
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 539
    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->radii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 540
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 544
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    :goto_22
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3a

    .line 547
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    aget-object v1, v1, v0

    .line 548
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    aget-object v2, v2, v0

    .line 549
    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 550
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3a
    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.OverflowBitmapDrawable (com.taobao.weex.utils.BoxShadowUtil$OverflowBitmapDrawable)
.class Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverflowBitmapDrawable"
.end annotation


# instance fields
.field private paddingX:I

.field private paddingY:I

.field private radii:[F

.field private viewRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[F)V
    .registers 6

    .line 389
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 390
    iget p1, p3, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingX:I

    .line 391
    iget p1, p3, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingY:I

    .line 392
    iput-object p4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->viewRect:Landroid/graphics/Rect;

    .line 393
    iput-object p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->radii:[F

    .line 395
    iget p2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingX:I

    neg-int p2, p2

    neg-int p1, p1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingX:I

    add-int/2addr p3, p5

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingY:I

    add-int/2addr p4, p5

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->setBounds(IIII)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V
    .registers 7

    .line 382
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 399
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 400
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 402
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingX:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingY:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 404
    :try_start_16
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-le v2, v3, :cond_26

    .line 405
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_2f

    .line 408
    :cond_26
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_2b} :catch_2c

    goto :goto_2f

    .line 411
    :catch_2c
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 414
    :goto_2f
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 416
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 417
    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->radii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 419
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 422
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 424
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
