###### Class io.dcloud.f.a.c.c.b (io.dcloud.f.a.c.c.b)
.class public Lio/dcloud/f/a/c/c/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Lio/dcloud/f/a/b/a$c;

.field private f:Lio/dcloud/ads/base/entry/AdData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/f/a/b/a$c;Lio/dcloud/ads/base/entry/AdData;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lio/dcloud/f/a/c/c/b;->e:Lio/dcloud/f/a/b/a$c;

    .line 3
    iput-object p3, p0, Lio/dcloud/f/a/c/c/b;->f:Lio/dcloud/ads/base/entry/AdData;

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lio/dcloud/base/R$layout;->dcloud_ad_splash_container:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lio/dcloud/f/a/c/c/b;->b:Landroid/view/ViewGroup;

    .line 5
    sget p2, Lio/dcloud/base/R$id;->ad_dcloud_main_skip:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/f/a/c/c/b;->c:Landroid/view/View;

    .line 6
    iget-object p1, p0, Lio/dcloud/f/a/c/c/b;->b:Landroid/view/ViewGroup;

    sget p2, Lio/dcloud/base/R$id;->ad_dcloud_main_img:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/dcloud/f/a/c/c/b;->d:Landroid/widget/ImageView;

    .line 7
    iget-object p1, p0, Lio/dcloud/f/a/c/c/b;->b:Landroid/view/ViewGroup;

    sget p2, Lio/dcloud/base/R$id;->ad_dcloud_main_click:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Lio/dcloud/f/a/c/c/b;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lio/dcloud/f/a/c/c/b;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lio/dcloud/f/a/c/c/b;->b:Landroid/view/ViewGroup;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 12
    invoke-virtual {p3}, Lio/dcloud/ads/base/entry/AdData;->g()[B

    move-result-object p1

    if-nez p1, :cond_57

    .line 13
    invoke-virtual {p3}, Lio/dcloud/ads/base/entry/AdData;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_65

    .line 15
    :cond_57
    invoke-virtual {p3}, Lio/dcloud/ads/base/entry/AdData;->g()[B

    move-result-object p1

    invoke-virtual {p3}, Lio/dcloud/ads/base/entry/AdData;->g()[B

    move-result-object p2

    array-length p2, p2

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 17
    :goto_65
    new-instance p2, Lio/dcloud/f/a/c/c/a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lio/dcloud/f/a/c/c/a;-><init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    iput-object p2, p0, Lio/dcloud/f/a/c/c/b;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/f/a/b/a$c;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/f/a/c/c/b;->e:Lio/dcloud/f/a/b/a$c;

    return-object p0
.end method

.method static synthetic b(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/ads/base/entry/AdData;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/f/a/c/c/b;->f:Lio/dcloud/ads/base/entry/AdData;

    return-object p0
.end method

.method static synthetic c(Lio/dcloud/f/a/c/c/b;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/f/a/c/c/b;->d:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 2
    :cond_3
    new-instance v0, Lio/dcloud/f/a/c/c/b$a;

    invoke-direct {v0, p0}, Lio/dcloud/f/a/c/c/b$a;-><init>(Lio/dcloud/f/a/c/c/b;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    new-instance v0, Lio/dcloud/f/a/c/c/b$b;

    invoke-direct {v0, p0, p1}, Lio/dcloud/f/a/c/c/b$b;-><init>(Lio/dcloud/f/a/c/c/b;Landroid/view/ViewGroup;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b;->f:Lio/dcloud/ads/base/entry/AdData;

    invoke-virtual {v0, p1}, Lio/dcloud/ads/base/entry/AdData;->a(Landroid/view/MotionEvent;)V

    goto :goto_18

    .line 3
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 4
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b;->f:Lio/dcloud/ads/base/entry/AdData;

    invoke-virtual {v0, p1}, Lio/dcloud/ads/base/entry/AdData;->b(Landroid/view/MotionEvent;)V

    .line 6
    :cond_18
    :goto_18
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/dcloud/base/R$id;->ad_dcloud_main_skip:I

    if-ne v0, v1, :cond_10

    .line 2
    iget-object p1, p0, Lio/dcloud/f/a/c/c/b;->e:Lio/dcloud/f/a/b/a$c;

    if-eqz p1, :cond_28

    .line 3
    invoke-interface {p1}, Lio/dcloud/f/a/b/a$c;->onSkippedAd()V

    goto :goto_28

    .line 5
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lio/dcloud/base/R$id;->ad_dcloud_main_img:I

    if-ne p1, v0, :cond_28

    .line 6
    iget-object p1, p0, Lio/dcloud/f/a/c/c/b;->e:Lio/dcloud/f/a/b/a$c;

    if-eqz p1, :cond_1f

    .line 7
    invoke-interface {p1}, Lio/dcloud/f/a/b/a$c;->onAdClicked()V

    .line 9
    :cond_1f
    iget-object p1, p0, Lio/dcloud/f/a/c/c/b;->f:Lio/dcloud/ads/base/entry/AdData;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/dcloud/ads/base/entry/AdData;->a(Landroid/content/Context;)V

    :cond_28
    :goto_28
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

###### Class io.dcloud.f.a.c.c.b.a (io.dcloud.f.a.c.c.b$a)
.class Lio/dcloud/f/a/c/c/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/f/a/c/c/b;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/f/a/c/c/b;


# direct methods
.method constructor <init>(Lio/dcloud/f/a/c/c/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/f/a/c/c/b$a;->a:Lio/dcloud/f/a/c/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$a;->a:Lio/dcloud/f/a/c/c/b;

    invoke-static {v0}, Lio/dcloud/f/a/c/c/b;->a(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/f/a/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$a;->a:Lio/dcloud/f/a/c/c/b;

    invoke-static {v0}, Lio/dcloud/f/a/c/c/b;->a(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/f/a/b/a$c;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/f/a/b/a$c;->onAdShowEnd()V

    :cond_11
    return-void
.end method

###### Class io.dcloud.f.a.c.c.b.RunnableC0041b (io.dcloud.f.a.c.c.b$b)
.class Lio/dcloud/f/a/c/c/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/f/a/c/c/b;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lio/dcloud/f/a/c/c/b;


# direct methods
.method constructor <init>(Lio/dcloud/f/a/c/c/b;Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    iput-object p2, p0, Lio/dcloud/f/a/c/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lio/dcloud/f/a/d/a;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 3
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    invoke-static {v0}, Lio/dcloud/f/a/c/c/b;->a(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/f/a/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 4
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    invoke-static {v0}, Lio/dcloud/f/a/c/c/b;->a(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/f/a/b/a$c;

    move-result-object v0

    const v1, 0xea6a

    const-string v2, "\u5e7f\u544a\u5bb9\u5668\u4e0d\u53ef\u89c1"

    invoke-interface {v0, v1, v2}, Lio/dcloud/f/a/b/a$c;->onAdShowError(ILjava/lang/String;)V

    goto/16 :goto_be

    .line 7
    :cond_20
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    iget-object v1, v0, Lio/dcloud/f/a/c/c/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_aa

    .line 8
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iget-object v1, p0, Lio/dcloud/f/a/c/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iget-object v1, p0, Lio/dcloud/f/a/c/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 13
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$b;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    invoke-static {v0}, Lio/dcloud/f/a/c/c/b;->b(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/ads/base/entry/AdData;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lio/dcloud/f/a/c/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lio/dcloud/f/a/c/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lio/dcloud/ads/base/entry/AdData;->a(Landroid/graphics/RectF;)V

    .line 15
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    invoke-static {v0}, Lio/dcloud/f/a/c/c/b;->c(Lio/dcloud/f/a/c/c/b;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    iget-object v1, v1, Lio/dcloud/f/a/c/c/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    invoke-static {v0}, Lio/dcloud/f/a/c/c/b;->a(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/f/a/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 17
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    invoke-static {v0}, Lio/dcloud/f/a/c/c/b;->a(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/f/a/b/a$c;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/f/a/b/a$c;->onAdShow()V

    .line 19
    :cond_89
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    invoke-static {v0}, Lio/dcloud/f/a/c/c/b;->b(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/ads/base/entry/AdData;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/ads/base/entry/AdData;->a()V

    .line 22
    invoke-static {}, Lio/dcloud/f/a/c/b/f;->a()Lio/dcloud/f/a/c/b/f;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    invoke-static {v2}, Lio/dcloud/f/a/c/c/b;->b(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/ads/base/entry/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/ads/base/entry/AdData;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/f/a/c/b/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_be

    .line 24
    :cond_aa
    invoke-static {v0}, Lio/dcloud/f/a/c/c/b;->a(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/f/a/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 25
    iget-object v0, p0, Lio/dcloud/f/a/c/c/b$b;->b:Lio/dcloud/f/a/c/c/b;

    invoke-static {v0}, Lio/dcloud/f/a/c/c/b;->a(Lio/dcloud/f/a/c/c/b;)Lio/dcloud/f/a/b/a$c;

    move-result-object v0

    const v1, 0xea64

    const-string v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lio/dcloud/f/a/b/a$c;->onAdShowError(ILjava/lang/String;)V

    :cond_be
    :goto_be
    return-void
.end method
