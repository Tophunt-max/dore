###### Class io.dcloud.feature.gallery.imageedit.a (io.dcloud.feature.gallery.imageedit.a)
.class abstract Lio/dcloud/feature/gallery/imageedit/a;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lio/dcloud/feature/gallery/imageedit/b$a;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lio/dcloud/feature/gallery/imageedit/c/a$b;


# instance fields
.field protected a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

.field private b:Landroid/widget/RadioGroup;

.field private c:Lio/dcloud/feature/gallery/imageedit/view/IMGColorGroup;

.field private d:Lio/dcloud/feature/gallery/imageedit/b;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ViewSwitcher;

.field private i:Landroid/widget/ViewSwitcher;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private d()V
    .registers 2

    .line 1
    sget v0, Lio/dcloud/base/R$id;->image_canvas:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    .line 2
    sget v0, Lio/dcloud/base/R$id;->rg_modes:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->b:Landroid/widget/RadioGroup;

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0, p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->setDoodleTouchListener(Lio/dcloud/feature/gallery/imageedit/c/a$b;)V

    .line 5
    sget v0, Lio/dcloud/base/R$id;->vs_op:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->h:Landroid/widget/ViewSwitcher;

    .line 6
    sget v0, Lio/dcloud/base/R$id;->vs_op_sub:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->i:Landroid/widget/ViewSwitcher;

    .line 8
    sget v0, Lio/dcloud/base/R$id;->cg_colors:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/gallery/imageedit/view/IMGColorGroup;

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->c:Lio/dcloud/feature/gallery/imageedit/view/IMGColorGroup;

    .line 9
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 11
    sget v0, Lio/dcloud/base/R$id;->layout_op_sub:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->e:Landroid/view/View;

    .line 13
    sget v0, Lio/dcloud/base/R$id;->dcloud_image_edit_head:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->f:Landroid/view/View;

    .line 14
    sget v0, Lio/dcloud/base/R$id;->dcloud_image_edit_foot:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Lio/dcloud/feature/gallery/imageedit/c/b;)V
.end method

.method public b()V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public b(I)V
    .registers 3

    if-ltz p1, :cond_7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->h:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    :cond_7
    return-void
.end method

.method public abstract c()Landroid/graphics/Bitmap;
.end method

.method public c(I)V
    .registers 3

    if-gez p1, :cond_a

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/a;->e:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    .line 3
    :cond_a
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->i:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/a;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_15
    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public l()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->d:Lio/dcloud/feature/gallery/imageedit/b;

    if-nez v0, :cond_13

    .line 2
    new-instance v0, Lio/dcloud/feature/gallery/imageedit/b;

    invoke-direct {v0, p0, p0}, Lio/dcloud/feature/gallery/imageedit/b;-><init>(Landroid/content/Context;Lio/dcloud/feature/gallery/imageedit/b$a;)V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->d:Lio/dcloud/feature/gallery/imageedit/b;

    .line 3
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->d:Lio/dcloud/feature/gallery/imageedit/b;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6
    :cond_13
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->d:Lio/dcloud/feature/gallery/imageedit/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public abstract m()V
.end method

.method public n()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->getMode()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    .line 2
    sget-object v1, Lio/dcloud/feature/gallery/imageedit/a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_22

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    goto :goto_38

    .line 12
    :cond_18
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    const/4 v0, -0x1

    .line 13
    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/a;->c(I)V

    goto :goto_38

    .line 14
    :cond_22
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->b:Landroid/widget/RadioGroup;

    sget v2, Lio/dcloud/base/R$id;->rb_mosaic:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 15
    invoke-virtual {p0, v1}, Lio/dcloud/feature/gallery/imageedit/a;->c(I)V

    goto :goto_38

    .line 16
    :cond_2d
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->b:Landroid/widget/RadioGroup;

    sget v1, Lio/dcloud/base/R$id;->rb_doodle:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/a;->c(I)V

    :goto_38
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->getMode()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_e

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/a;->f()V

    goto :goto_11

    .line 4
    :cond_e
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_11
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/a;->c:Lio/dcloud/feature/gallery/imageedit/view/IMGColorGroup;

    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGColorGroup;->getCheckColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/gallery/imageedit/a;->a(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lio/dcloud/base/R$id;->rb_doodle:I

    if-ne p1, v0, :cond_e

    .line 3
    sget-object p1, Lio/dcloud/feature/gallery/imageedit/c/b;->b:Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/gallery/imageedit/a;->a(Lio/dcloud/feature/gallery/imageedit/c/b;)V

    goto :goto_61

    .line 4
    :cond_e
    sget v0, Lio/dcloud/base/R$id;->btn_text:I

    if-ne p1, v0, :cond_16

    .line 5
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/a;->l()V

    goto :goto_61

    .line 6
    :cond_16
    sget v0, Lio/dcloud/base/R$id;->rb_mosaic:I

    if-ne p1, v0, :cond_20

    .line 7
    sget-object p1, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/gallery/imageedit/a;->a(Lio/dcloud/feature/gallery/imageedit/c/b;)V

    goto :goto_61

    .line 8
    :cond_20
    sget v0, Lio/dcloud/base/R$id;->btn_clip:I

    if-ne p1, v0, :cond_2a

    .line 9
    sget-object p1, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/gallery/imageedit/a;->a(Lio/dcloud/feature/gallery/imageedit/c/b;)V

    goto :goto_61

    .line 10
    :cond_2a
    sget v0, Lio/dcloud/base/R$id;->btn_undo:I

    if-ne p1, v0, :cond_32

    .line 11
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/a;->m()V

    goto :goto_61

    .line 12
    :cond_32
    sget v0, Lio/dcloud/base/R$id;->tv_done:I

    if-ne p1, v0, :cond_3a

    .line 13
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/a;->h()V

    goto :goto_61

    .line 14
    :cond_3a
    sget v0, Lio/dcloud/base/R$id;->tv_cancel:I

    if-ne p1, v0, :cond_42

    .line 15
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/a;->e()V

    goto :goto_61

    .line 16
    :cond_42
    sget v0, Lio/dcloud/base/R$id;->ib_clip_cancel:I

    if-ne p1, v0, :cond_4a

    .line 17
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/a;->f()V

    goto :goto_61

    .line 18
    :cond_4a
    sget v0, Lio/dcloud/base/R$id;->ib_clip_done:I

    if-ne p1, v0, :cond_52

    .line 19
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/a;->i()V

    goto :goto_61

    .line 20
    :cond_52
    sget v0, Lio/dcloud/base/R$id;->tv_clip_reset:I

    if-ne p1, v0, :cond_5a

    .line 21
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/a;->j()V

    goto :goto_61

    .line 22
    :cond_5a
    sget v0, Lio/dcloud/base/R$id;->ib_clip_rotate:I

    if-ne p1, v0, :cond_61

    .line 23
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/a;->k()V

    :cond_61
    :goto_61
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/a;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 4
    sget v0, Lio/dcloud/base/R$layout;->image_edit_activity:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 5
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/a;->d()V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/a;->g()V

    goto :goto_1d

    .line 8
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    :goto_1d
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_4e

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_4e

    .line 20
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    .line 21
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4e
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/a;->h:Landroid/widget/ViewSwitcher;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/a;->h:Landroid/widget/ViewSwitcher;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    return-void
.end method

###### Class io.dcloud.feature.gallery.imageedit.a.C0044a (io.dcloud.feature.gallery.imageedit.a$a)
.class synthetic Lio/dcloud/feature/gallery/imageedit/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gallery/imageedit/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/feature/gallery/imageedit/c/b;->values()[Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/feature/gallery/imageedit/a$a;->a:[I

    :try_start_9
    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->b:Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/a$a;->a:[I

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/a$a;->a:[I

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->a:Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
