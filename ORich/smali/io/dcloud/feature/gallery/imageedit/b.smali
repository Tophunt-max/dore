###### Class io.dcloud.feature.gallery.imageedit.b (io.dcloud.feature.gallery.imageedit.b)
.class public Lio/dcloud/feature/gallery/imageedit/b;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gallery/imageedit/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lio/dcloud/feature/gallery/imageedit/b$a;

.field private c:Lio/dcloud/feature/gallery/imageedit/c/d;

.field private d:Lio/dcloud/feature/gallery/imageedit/view/IMGColorGroup;

.field private e:I

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/feature/gallery/imageedit/b$a;)V
    .registers 4

    .line 1
    sget v0, Lio/dcloud/base/R$style;->ImageTextDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    .line 8
    sget v0, Lio/dcloud/base/R$layout;->image_text_dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 9
    iput-object p2, p0, Lio/dcloud/feature/gallery/imageedit/b;->b:Lio/dcloud/feature/gallery/imageedit/b$a;

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 12
    invoke-virtual {p2, p1, p1}, Landroid/view/Window;->setLayout(II)V

    :cond_18
    return-void
.end method

.method private a()V
    .registers 6

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/b;->b:Lio/dcloud/feature/gallery/imageedit/b$a;

    if-eqz v1, :cond_31

    .line 5
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/b;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_24

    .line 6
    iget v1, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    if-ne v1, v2, :cond_27

    const/high16 v2, -0x1000000

    goto :goto_27

    :cond_24
    const/4 v1, 0x0

    .line 13
    iget v2, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    .line 15
    :cond_27
    :goto_27
    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/b;->b:Lio/dcloud/feature/gallery/imageedit/b$a;

    new-instance v4, Lio/dcloud/feature/gallery/imageedit/c/d;

    invoke-direct {v4, v0, v2, v1}, Lio/dcloud/feature/gallery/imageedit/c/d;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v4}, Lio/dcloud/feature/gallery/imageedit/b$a;->a(Lio/dcloud/feature/gallery/imageedit/c/d;)V

    .line 17
    :cond_31
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private b()V
    .registers 4

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mCursorDrawableRes"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    sget v2, Lio/dcloud/base/R$drawable;->image_edit_cursor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1c
    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/feature/gallery/imageedit/c/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->c:Lio/dcloud/feature/gallery/imageedit/c/d;

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->d:Lio/dcloud/feature/gallery/imageedit/view/IMGColorGroup;

    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGColorGroup;->getCheckColor()I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 3
    iget p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1d

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_22

    .line 6
    :cond_1d
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 8
    :goto_22
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    iget p2, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_37

    .line 10
    :cond_2a
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    iget p2, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    :goto_37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lio/dcloud/base/R$id;->tv_done:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v1, :cond_15

    .line 3
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/b;->a()V

    .line 4
    iput v3, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_5c

    .line 6
    :cond_15
    sget v1, Lio/dcloud/base/R$id;->tv_cancel:I

    if-ne v0, v1, :cond_24

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 8
    iput v3, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    .line 9
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_5c

    .line 10
    :cond_24
    sget v1, Lio/dcloud/base/R$id;->textview_1:I

    if-ne v0, v1, :cond_5c

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 13
    iget p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    if-ne p1, v3, :cond_43

    .line 14
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_48

    .line 16
    :cond_43
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 18
    :goto_48
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_5c

    .line 20
    :cond_50
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 21
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    sget p1, Lio/dcloud/base/R$id;->cg_colors:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/gallery/imageedit/view/IMGColorGroup;

    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->d:Lio/dcloud/feature/gallery/imageedit/view/IMGColorGroup;

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 5
    sget p1, Lio/dcloud/base/R$id;->et_text:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    .line 7
    sget p1, Lio/dcloud/base/R$id;->tv_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget p1, Lio/dcloud/base/R$id;->tv_done:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget p1, Lio/dcloud/base/R$id;->textview_1:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->f:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/b;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method protected onStart()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->c:Lio/dcloud/feature/gallery/imageedit/c/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 4
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->c:Lio/dcloud/feature/gallery/imageedit/c/d;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/d;->b()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    .line 6
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 7
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/b;->b()V

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->c:Lio/dcloud/feature/gallery/imageedit/c/d;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/d;->a()I

    move-result v0

    if-nez v0, :cond_3b

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_48

    .line 13
    :cond_3b
    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    .line 14
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 15
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 18
    :goto_48
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->c:Lio/dcloud/feature/gallery/imageedit/c/d;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/d;->d()Z

    move-result v0

    if-nez v0, :cond_59

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_59
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->c:Lio/dcloud/feature/gallery/imageedit/c/d;

    goto :goto_69

    .line 23
    :cond_5d
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 28
    :goto_69
    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    .line 29
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->d:Lio/dcloud/feature/gallery/imageedit/view/IMGColorGroup;

    iget v1, p0, Lio/dcloud/feature/gallery/imageedit/b;->e:I

    invoke-virtual {v0, v1}, Lio/dcloud/feature/gallery/imageedit/view/IMGColorGroup;->setCheckColor(I)V

    .line 30
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

###### Class io.dcloud.feature.gallery.imageedit.b.a (io.dcloud.feature.gallery.imageedit.b$a)
.class public interface abstract Lio/dcloud/feature/gallery/imageedit/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gallery/imageedit/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lio/dcloud/feature/gallery/imageedit/c/d;)V
.end method
