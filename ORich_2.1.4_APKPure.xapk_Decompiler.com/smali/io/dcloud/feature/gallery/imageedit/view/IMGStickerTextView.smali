###### Class io.dcloud.feature.gallery.imageedit.view.IMGStickerTextView (io.dcloud.feature.gallery.imageedit.view.IMGStickerTextView)
.class public Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;
.super Lio/dcloud/feature/gallery/imageedit/view/IMGStickerView;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/gallery/imageedit/b$a;


# static fields
.field private static o:F = -1.0f


# instance fields
.field private l:Landroid/widget/TextView;

.field private m:Lio/dcloud/feature/gallery/imageedit/c/d;

.field private n:Lio/dcloud/feature/gallery/imageedit/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getDialog()Lio/dcloud/feature/gallery/imageedit/b;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->n:Lio/dcloud/feature/gallery/imageedit/b;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Lio/dcloud/feature/gallery/imageedit/b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/dcloud/feature/gallery/imageedit/b;-><init>(Landroid/content/Context;Lio/dcloud/feature/gallery/imageedit/b$a;)V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->n:Lio/dcloud/feature/gallery/imageedit/b;

    .line 4
    :cond_f
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->n:Lio/dcloud/feature/gallery/imageedit/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->l:Landroid/widget/TextView;

    .line 2
    sget p1, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->o:F

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->l:Landroid/widget/TextView;

    const/16 v0, 0x1a

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->l:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->l:Landroid/widget/TextView;

    return-object p1
.end method

.method public a(Lio/dcloud/feature/gallery/imageedit/c/d;)V
    .registers 3

    .line 7
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->m:Lio/dcloud/feature/gallery/imageedit/c/d;

    if-eqz p1, :cond_25

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 9
    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/c/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->m:Lio/dcloud/feature/gallery/imageedit/c/d;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/d;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->m:Lio/dcloud/feature/gallery/imageedit/c/d;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/d;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_25
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 5

    .line 1
    sget v0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->o:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_18

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x41c00000    # 24.0f

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->o:F

    .line 7
    :cond_18
    invoke-super {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->getDialog()Lio/dcloud/feature/gallery/imageedit/b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->m:Lio/dcloud/feature/gallery/imageedit/c/d;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/gallery/imageedit/b;->a(Lio/dcloud/feature/gallery/imageedit/c/d;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public getText()Lio/dcloud/feature/gallery/imageedit/c/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->m:Lio/dcloud/feature/gallery/imageedit/c/d;

    return-object v0
.end method

.method public setText(Lio/dcloud/feature/gallery/imageedit/c/d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->m:Lio/dcloud/feature/gallery/imageedit/c/d;

    if-eqz p1, :cond_25

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 3
    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/c/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->m:Lio/dcloud/feature/gallery/imageedit/c/d;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/d;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->m:Lio/dcloud/feature/gallery/imageedit/c/d;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/d;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_25
    return-void
.end method
