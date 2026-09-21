###### Class io.dcloud.common.ui.PermissionGuideWindow (io.dcloud.common.ui.PermissionGuideWindow)
.class public Lio/dcloud/common/ui/PermissionGuideWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# static fields
.field private static f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/dcloud/common/ui/PermissionGuideWindow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->b:Landroid/os/Handler;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->a:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lio/dcloud/common/ui/PermissionGuideWindow;
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/ui/PermissionGuideWindow;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 2
    :cond_a
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lio/dcloud/common/ui/PermissionGuideWindow;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/PermissionGuideWindow;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/dcloud/common/ui/PermissionGuideWindow;->f:Ljava/lang/ref/WeakReference;

    .line 4
    :cond_16
    sget-object p0, Lio/dcloud/common/ui/PermissionGuideWindow;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/ui/PermissionGuideWindow;

    return-object p0
.end method


# virtual methods
.method public dismissWindow()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->c:Landroid/view/WindowManager;

    if-eqz v0, :cond_18

    .line 2
    iget-object v1, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    .line 5
    iput-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->c:Landroid/view/WindowManager;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    return-void
.end method

.method public dismissWindowDelayed(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->b:Landroid/os/Handler;

    new-instance v1, Lio/dcloud/common/ui/PermissionGuideWindow$a;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/PermissionGuideWindow$a;-><init>(Lio/dcloud/common/ui/PermissionGuideWindow;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showWindow(Ljava/lang/String;I)V
    .registers 8

    if-nez p2, :cond_3

    return-void

    .line 1
    :cond_3
    :try_start_3
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->c:Landroid/view/WindowManager;

    if-nez v0, :cond_50

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->c:Landroid/view/WindowManager;

    .line 3
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x15

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x7d5

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_38

    .line 9
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 13
    :cond_38
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x28

    .line 14
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 15
    iget-object v1, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->a:Landroid/content/Context;

    const/high16 v2, 0x435c0000    # 220.0f

    invoke-static {v1, v2}, Lio/dcloud/common/util/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 16
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 18
    :cond_50
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_65

    .line 19
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lio/dcloud/PdrR;->DCLOUD_SHORTCUT_PERMISSION_GUIDE_LAYOUT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    .line 21
    :cond_65
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 22
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 24
    :cond_74
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    sget v1, Lio/dcloud/PdrR;->DCLOUD_GUIDE_CLOSE:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/ui/PermissionGuideWindow$b;

    invoke-direct {v1, p0}, Lio/dcloud/common/ui/PermissionGuideWindow$b;-><init>(Lio/dcloud/common/ui/PermissionGuideWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    sget v1, Lio/dcloud/PdrR;->DCLOUD_GUIDE_PLAY:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31
    iget-object v1, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    sget v2, Lio/dcloud/PdrR;->DCLOUD_GUIDE_GIFVIEW:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/ui/GifImageView;

    .line 32
    iget-object v2, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    sget v3, Lio/dcloud/PdrR;->DCLOUD_GUIDE_PLAY_LAYOUT:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 33
    iget-object v3, p0, Lio/dcloud/common/ui/PermissionGuideWindow;->e:Landroid/view/ViewGroup;

    sget v4, Lio/dcloud/PdrR;->DCLOUD_GUIDE_TIP:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 34
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    .line 35
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_be
    const/4 p1, 0x1

    if-ne p1, p2, :cond_ca

    const/16 p1, 0x8

    .line 38
    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 39
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_cd

    .line 41
    :cond_ca
    invoke-virtual {v1, p2}, Lio/dcloud/common/ui/GifImageView;->setGifResource(I)V

    .line 44
    :goto_cd
    new-instance p1, Lio/dcloud/common/ui/PermissionGuideWindow$c;

    invoke-direct {p1, p0, v0}, Lio/dcloud/common/ui/PermissionGuideWindow$c;-><init>(Lio/dcloud/common/ui/PermissionGuideWindow;Landroid/widget/ImageView;)V

    invoke-virtual {v1, p1}, Lio/dcloud/common/ui/GifImageView;->setOnPlayListener(Lio/dcloud/common/ui/GifImageView$a;)V

    .line 72
    new-instance p1, Lio/dcloud/common/ui/PermissionGuideWindow$d;

    invoke-direct {p1, p0, v1, v0}, Lio/dcloud/common/ui/PermissionGuideWindow$d;-><init>(Lio/dcloud/common/ui/PermissionGuideWindow;Lio/dcloud/common/ui/GifImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance p1, Lio/dcloud/common/ui/PermissionGuideWindow$e;

    invoke-direct {p1, p0, v1, v0}, Lio/dcloud/common/ui/PermissionGuideWindow$e;-><init>(Lio/dcloud/common/ui/PermissionGuideWindow;Lio/dcloud/common/ui/GifImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e5} :catch_e6

    goto :goto_ea

    :catch_e6
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ea
    return-void
.end method

###### Class io.dcloud.common.ui.PermissionGuideWindow.a (io.dcloud.common.ui.PermissionGuideWindow$a)
.class Lio/dcloud/common/ui/PermissionGuideWindow$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/PermissionGuideWindow;->dismissWindowDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/PermissionGuideWindow;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/PermissionGuideWindow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/PermissionGuideWindow$a;->a:Lio/dcloud/common/ui/PermissionGuideWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow$a;->a:Lio/dcloud/common/ui/PermissionGuideWindow;

    invoke-virtual {v0}, Lio/dcloud/common/ui/PermissionGuideWindow;->dismissWindow()V

    return-void
.end method

###### Class io.dcloud.common.ui.PermissionGuideWindow.b (io.dcloud.common.ui.PermissionGuideWindow$b)
.class Lio/dcloud/common/ui/PermissionGuideWindow$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/PermissionGuideWindow;->showWindow(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/PermissionGuideWindow;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/PermissionGuideWindow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/PermissionGuideWindow$b;->a:Lio/dcloud/common/ui/PermissionGuideWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/PermissionGuideWindow$b;->a:Lio/dcloud/common/ui/PermissionGuideWindow;

    invoke-virtual {p1}, Lio/dcloud/common/ui/PermissionGuideWindow;->dismissWindow()V

    return-void
.end method

###### Class io.dcloud.common.ui.PermissionGuideWindow.c (io.dcloud.common.ui.PermissionGuideWindow$c)
.class Lio/dcloud/common/ui/PermissionGuideWindow$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/ui/GifImageView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/PermissionGuideWindow;->showWindow(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/PermissionGuideWindow;Landroid/widget/ImageView;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/common/ui/PermissionGuideWindow$c;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(F)V
    .registers 2

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/PermissionGuideWindow$c;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    return-void
.end method

###### Class io.dcloud.common.ui.PermissionGuideWindow.d (io.dcloud.common.ui.PermissionGuideWindow$d)
.class Lio/dcloud/common/ui/PermissionGuideWindow$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/PermissionGuideWindow;->showWindow(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/GifImageView;

.field final synthetic b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/PermissionGuideWindow;Lio/dcloud/common/ui/GifImageView;Landroid/widget/ImageView;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lio/dcloud/common/ui/PermissionGuideWindow$d;->a:Lio/dcloud/common/ui/GifImageView;

    iput-object p3, p0, Lio/dcloud/common/ui/PermissionGuideWindow$d;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/PermissionGuideWindow$d;->a:Lio/dcloud/common/ui/GifImageView;

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lio/dcloud/common/ui/GifImageView;->pause()V

    .line 4
    :cond_7
    iget-object p1, p0, Lio/dcloud/common/ui/PermissionGuideWindow$d;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    return-void
.end method

###### Class io.dcloud.common.ui.PermissionGuideWindow.e (io.dcloud.common.ui.PermissionGuideWindow$e)
.class Lio/dcloud/common/ui/PermissionGuideWindow$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/PermissionGuideWindow;->showWindow(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/ui/GifImageView;

.field final synthetic b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/PermissionGuideWindow;Lio/dcloud/common/ui/GifImageView;Landroid/widget/ImageView;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lio/dcloud/common/ui/PermissionGuideWindow$e;->a:Lio/dcloud/common/ui/GifImageView;

    iput-object p3, p0, Lio/dcloud/common/ui/PermissionGuideWindow$e;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/PermissionGuideWindow$e;->a:Lio/dcloud/common/ui/GifImageView;

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lio/dcloud/common/ui/GifImageView;->play()V

    .line 4
    :cond_7
    iget-object p1, p0, Lio/dcloud/common/ui/PermissionGuideWindow$e;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_10

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    return-void
.end method
