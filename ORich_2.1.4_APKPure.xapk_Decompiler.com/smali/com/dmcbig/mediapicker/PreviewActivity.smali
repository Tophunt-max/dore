###### Class com.dmcbig.mediapicker.PreviewActivity (com.dmcbig.mediapicker.PreviewActivity)
.class public Lcom/dmcbig/mediapicker/PreviewActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmcbig/mediapicker/PreviewActivity$AdapterFragment;
    }
.end annotation


# instance fields
.field bar_title:Landroid/widget/TextView;

.field bottom:Landroid/view/View;

.field check_image:Landroid/widget/ImageView;

.field check_layout:Landroid/widget/LinearLayout;

.field done:Landroid/widget/Button;

.field doneBtnText:Ljava/lang/String;

.field private editActivityClass:Ljava/lang/Class;

.field private editable:Z

.field fragmentArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field fullImage:Landroid/widget/ImageView;

.field imageEdit:Landroid/widget/TextView;

.field isSingle:Z

.field private max:I

.field preRawList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation
.end field

.field selects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation
.end field

.field top:Landroid/view/View;

.field viewpager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->isSingle:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->editable:Z

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->doneBtnText:Ljava/lang/String;

    return-void
.end method

.method private setTopAndBottomBarColor()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1f

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const-string v1, "#21282C"

    .line 4
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public done(Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "select_result"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "original_preview_index"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->preRawList:Ljava/util/ArrayList;

    const-string v1, "edited_preview_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    const-string v1, "FULL_IMAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public isSelect(Lcom/dmcbig/mediapicker/entity/Media;Ljava/util/ArrayList;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-gtz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 4
    :goto_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 5
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dmcbig/mediapicker/entity/Media;

    .line 6
    iget-object v2, v2, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v1, v0

    goto :goto_24

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_24
    :goto_24
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 15

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7b

    if-nez p1, :cond_7b

    if-eqz p3, :cond_7b

    const-string p1, "IMAGE_INDEX"

    .line 5
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "_id"

    .line 6
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v0, :cond_7b

    if-ne p1, v0, :cond_1b

    goto :goto_7b

    :cond_1b
    const-string p2, "PATH"

    .line 9
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p2, "_display_name"

    .line 10
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p2, "date_added"

    invoke-virtual {p3, p2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const/4 p2, 0x0

    const-string v0, "mime_type"

    .line 12
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-wide/16 v0, 0x0

    const-string p2, "_size"

    .line 13
    invoke-virtual {p3, p2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string p2, "PARENTPATH"

    .line 14
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 15
    new-instance p2, Lcom/dmcbig/mediapicker/entity/Media;

    move-object v1, p2

    invoke-direct/range {v1 .. v10}, Lcom/dmcbig/mediapicker/entity/Media;-><init>(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;)V

    .line 16
    iget-object p3, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->preRawList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dmcbig/mediapicker/entity/Media;

    .line 17
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->selects:Ljava/util/ArrayList;

    invoke-virtual {p0, p3, v0}, Lcom/dmcbig/mediapicker/PreviewActivity;->isSelect(Lcom/dmcbig/mediapicker/entity/Media;Ljava/util/ArrayList;)I

    move-result p3

    if-ltz p3, :cond_61

    .line 19
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->selects:Ljava/util/ArrayList;

    invoke-virtual {v0, p3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_61
    iget-object p3, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->preRawList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p3, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->fragmentArrayList:Ljava/util/ArrayList;

    const-string v0, ""

    invoke-static {p2, v0}, Lcom/dmcbig/mediapicker/view/PreviewFragment;->newInstance(Lcom/dmcbig/mediapicker/entity/Media;Ljava/lang/String;)Lcom/dmcbig/mediapicker/view/PreviewFragment;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    nop

    :cond_7b
    :goto_7b
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->selects:Ljava/util/ArrayList;

    const/16 v1, 0x7c6

    invoke-virtual {p0, v0, v1}, Lcom/dmcbig/mediapicker/PreviewActivity;->done(Ljava/util/ArrayList;I)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BTN_BACK:I

    if-ne p1, v0, :cond_11

    .line 3
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->selects:Ljava/util/ArrayList;

    const/16 v0, 0x7c6

    invoke-virtual {p0, p1, v0}, Lcom/dmcbig/mediapicker/PreviewActivity;->done(Ljava/util/ArrayList;I)V

    goto/16 :goto_b9

    .line 4
    :cond_11
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_DONE:I

    if-ne p1, v0, :cond_1f

    .line 5
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->selects:Ljava/util/ArrayList;

    const v0, 0x12faa62

    invoke-virtual {p0, p1, v0}, Lcom/dmcbig/mediapicker/PreviewActivity;->done(Ljava/util/ArrayList;I)V

    goto/16 :goto_b9

    .line 6
    :cond_1f
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_CHECK_LAYOUT:I

    if-ne p1, v0, :cond_64

    .line 7
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->preRawList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dmcbig/mediapicker/entity/Media;

    .line 8
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->selects:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/dmcbig/mediapicker/PreviewActivity;->isSelect(Lcom/dmcbig/mediapicker/entity/Media;Ljava/util/ArrayList;)I

    move-result v0

    if-gez v0, :cond_4a

    .line 10
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->check_image:Landroid/widget/ImageView;

    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_BNT_SELECTED:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->selects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 13
    :cond_4a
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->check_image:Landroid/widget/ImageView;

    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_BNT_UNSELECTED:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->selects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 16
    :goto_5a
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->selects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/PreviewActivity;->setDoneView(I)V

    goto :goto_b9

    .line 17
    :cond_64
    sget v0, Lio/dcloud/base/R$id;->gallery_preview_edit:I

    if-ne p1, v0, :cond_aa

    .line 19
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    .line 20
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->preRawList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dmcbig/mediapicker/entity/Media;

    .line 21
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->editActivityClass:Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "IMAGE_URI"

    .line 23
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    iget v0, v0, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    const-string v2, "IMAGE_MEDIA_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "IMAGE_INDEX"

    .line 25
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b9

    .line 27
    :cond_aa
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    if-ne p1, v0, :cond_b9

    .line 28
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_b9
    :goto_b9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->requestWindowFeature(I)Z

    .line 3
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_LAYOUT_PREVIEW_MAIN:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->setContentView(I)V

    .line 4
    invoke-direct {p0}, Lcom/dmcbig/mediapicker/PreviewActivity;->setTopAndBottomBarColor()V

    .line 5
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BTN_BACK:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single_select"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->isSingle:Z

    .line 7
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_CHECK_IMAGE:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->check_image:Landroid/widget/ImageView;

    .line 8
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_CHECK_LAYOUT:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->check_layout:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BAR_TITLE:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->bar_title:Landroid/widget/TextView;

    .line 11
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_DONE:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->done:Landroid/widget/Button;

    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_TOP:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->top:Landroid/view/View;

    .line 14
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BOTTOM:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->bottom:Landroid/view/View;

    .line 15
    sget v0, Lio/dcloud/base/R$id;->gallery_preview_edit:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->imageEdit:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    sget v0, Lio/dcloud/base/R$id;->check_origin_image:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->fullImage:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FULL_IMAGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "size_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_c2

    const-string v2, "original"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b1

    const-string v3, "compressed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 24
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_cb

    .line 25
    :cond_b1
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b8

    goto :goto_cb

    .line 28
    :cond_b8
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_cb

    .line 31
    :cond_c2
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :goto_cb
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x65

    const-string v3, "select_mode"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_e4

    .line 35
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :cond_e4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "image_editable"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->editable:Z

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "done_button_text"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->doneBtnText:Ljava/lang/String;

    .line 39
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_109

    .line 40
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->done:Landroid/widget/Button;

    iget-object v2, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->doneBtnText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_109
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v2, 0x7fffffff

    const-string v3, "max_select_count"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->max:I

    :try_start_118
    const-string v0, "io.dcloud.feature.gallery.imageedit.IMGEditActivity"

    .line 44
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->editActivityClass:Ljava/lang/Class;
    :try_end_120
    .catch Ljava/lang/ClassNotFoundException; {:try_start_118 .. :try_end_120} :catch_121

    goto :goto_122

    :catch_121
    nop

    .line 46
    :goto_122
    iget-boolean v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->isSingle:Z

    if-eqz v0, :cond_12b

    .line 47
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_12b
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_VIEWPAGER:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pre_raw_List"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->preRawList:Ljava/util/ArrayList;

    if-eqz v0, :cond_149

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14c

    .line 52
    :cond_149
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PreviewActivity;->onBackPressed()V

    .line 54
    :cond_14c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->selects:Ljava/util/ArrayList;

    .line 55
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->preRawList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    if-eqz v0, :cond_15f

    .line 57
    invoke-virtual {p0, p0, p1}, Lcom/dmcbig/mediapicker/PreviewActivity;->setFullScreen(Landroid/app/Activity;Z)V

    .line 59
    :cond_15f
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->preRawList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/PreviewActivity;->setView(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->bar_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->preRawList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->preRawList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dmcbig/mediapicker/entity/Media;

    .line 4
    iget-object v0, p1, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    const-string v1, ".gif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->editActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_48

    iget v0, p1, Lcom/dmcbig/mediapicker/entity/Media;->mediaType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_48

    iget-boolean v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->editable:Z

    if-nez v0, :cond_41

    goto :goto_48

    .line 7
    :cond_41
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->imageEdit:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4e

    .line 8
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->imageEdit:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :goto_4e
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->check_image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->selects:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lcom/dmcbig/mediapicker/PreviewActivity;->isSelect(Lcom/dmcbig/mediapicker/entity/Media;Ljava/util/ArrayList;)I

    move-result p1

    if-gez p1, :cond_5b

    sget p1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_BNT_UNSELECTED:I

    goto :goto_5d

    :cond_5b
    sget p1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_BNT_SELECTED:I

    :goto_5d
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBarStatus()V
    .registers 3

    const-string v0, "setBarStatus"

    .line 1
    invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->top:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    .line 3
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->top:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-boolean v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->isSingle:Z

    if-nez v0, :cond_2d

    .line 5
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2d

    .line 8
    :cond_1e
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->top:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-boolean v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->isSingle:Z

    if-nez v0, :cond_2d

    .line 10
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method setDoneView(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->doneBtnText:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_DONE:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->doneBtnText:Ljava/lang/String;

    .line 3
    :cond_10
    iget v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->max:I

    const v1, 0x7fffffff

    const-string v2, ")"

    const-string v3, "("

    if-ne v0, v1, :cond_38

    .line 4
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->done:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->doneBtnText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5e

    .line 6
    :cond_38
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->done:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->doneBtnText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->max:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_5e
    return-void
.end method

.method public setFullScreen(Landroid/app/Activity;Z)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p2, :cond_14

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 4
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_21

    .line 7
    :cond_14
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 8
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_21
    return-void
.end method

.method setView(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dmcbig/mediapicker/PreviewActivity;->setDoneView(I)V

    .line 2
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->bar_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->preRawList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->preRawList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dmcbig/mediapicker/entity/Media;

    .line 5
    iget-object v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    const-string v2, ".gif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->editActivityClass:Ljava/lang/Class;

    if-eqz v1, :cond_43

    iget v0, v0, Lcom/dmcbig/mediapicker/entity/Media;->mediaType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_43

    iget-boolean v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->editable:Z

    if-nez v0, :cond_49

    .line 6
    :cond_43
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->imageEdit:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    :cond_49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->fragmentArrayList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dmcbig/mediapicker/entity/Media;

    .line 9
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->fragmentArrayList:Ljava/util/ArrayList;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/dmcbig/mediapicker/view/PreviewFragment;->newInstance(Lcom/dmcbig/mediapicker/entity/Media;Ljava/lang/String;)Lcom/dmcbig/mediapicker/view/PreviewFragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 11
    :cond_6c
    new-instance p1, Lcom/dmcbig/mediapicker/PreviewActivity$AdapterFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->fragmentArrayList:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0, v1}, Lcom/dmcbig/mediapicker/PreviewActivity$AdapterFragment;-><init>(Lcom/dmcbig/mediapicker/PreviewActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

###### Class com.dmcbig.mediapicker.PreviewActivity.AdapterFragment (com.dmcbig.mediapicker.PreviewActivity$AdapterFragment)
.class public Lcom/dmcbig/mediapicker/PreviewActivity$AdapterFragment;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmcbig/mediapicker/PreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterFragment"
.end annotation


# instance fields
.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dmcbig/mediapicker/PreviewActivity;


# direct methods
.method public constructor <init>(Lcom/dmcbig/mediapicker/PreviewActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/PreviewActivity$AdapterFragment;->this$0:Lcom/dmcbig/mediapicker/PreviewActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 3
    iput-object p3, p0, Lcom/dmcbig/mediapicker/PreviewActivity$AdapterFragment;->mFragments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity$AdapterFragment;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PreviewActivity$AdapterFragment;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x2

    return p1
.end method
