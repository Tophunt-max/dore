###### Class io.dcloud.feature.gallery.imageedit.view.WindowInsertLinearLayout (io.dcloud.feature.gallery.imageedit.view.WindowInsertLinearLayout)
.class public Lio/dcloud/feature/gallery/imageedit/view/WindowInsertLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Lio/dcloud/feature/gallery/imageedit/view/WindowInsertLinearLayout$a;

    invoke-direct {p1, p0}, Lio/dcloud/feature/gallery/imageedit/view/WindowInsertLinearLayout$a;-><init>(Lio/dcloud/feature/gallery/imageedit/view/WindowInsertLinearLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_17

    const/4 v0, 0x0

    .line 3
    :goto_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    return-object p1
.end method

###### Class io.dcloud.feature.gallery.imageedit.view.WindowInsertLinearLayout.a (io.dcloud.feature.gallery.imageedit.view.WindowInsertLinearLayout$a)
.class Lio/dcloud/feature/gallery/imageedit/view/WindowInsertLinearLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gallery/imageedit/view/WindowInsertLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/gallery/imageedit/view/WindowInsertLinearLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gallery/imageedit/view/WindowInsertLinearLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/WindowInsertLinearLayout$a;->a:Lio/dcloud/feature/gallery/imageedit/view/WindowInsertLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x14

    if-lt p1, p2, :cond_b

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/WindowInsertLinearLayout$a;->a:Lio/dcloud/feature/gallery/imageedit/view/WindowInsertLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestApplyInsets()V

    :cond_b
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    return-void
.end method
