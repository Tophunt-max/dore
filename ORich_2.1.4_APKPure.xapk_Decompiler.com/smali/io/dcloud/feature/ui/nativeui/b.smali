###### Class io.dcloud.feature.ui.nativeui.b (io.dcloud.feature.ui.nativeui.b)
.class public Lio/dcloud/feature/ui/nativeui/b;
.super Landroid/widget/Toast;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# static fields
.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/ui/nativeui/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/WindowManager$LayoutParams;

.field d:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/feature/ui/nativeui/b;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/b;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/b;->b:Landroid/widget/TextView;

    .line 4
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/b;->c:Landroid/view/WindowManager$LayoutParams;

    .line 5
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/b;->d:Landroid/view/WindowManager;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    .line 11
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/b;->d:Landroid/view/WindowManager;

    .line 12
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/b;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/b;->a:Landroid/view/View;

    const/16 p1, 0x14

    .line 14
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 15
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, -0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 22
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/b;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x11

    .line 23
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method private declared-synchronized a()V
    .registers 3

    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/b;->a:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_12

    .line 4
    :try_start_5
    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/b;->d:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_14

    .line 6
    :catch_a
    :try_start_a
    sget-object v0, Lio/dcloud/feature/ui/nativeui/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/dcloud/feature/ui/nativeui/b;->a:Landroid/view/View;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lio/dcloud/feature/ui/nativeui/b;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/b;->a()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    const-class p0, Lio/dcloud/feature/ui/nativeui/b;

    monitor-enter p0

    .line 10
    :try_start_3
    sget-object v0, Lio/dcloud/feature/ui/nativeui/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 11
    sget-object v0, Lio/dcloud/feature/ui/nativeui/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_13
    if-ltz v0, :cond_23

    .line 12
    sget-object v1, Lio/dcloud/feature/ui/nativeui/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/ui/nativeui/b;

    .line 13
    invoke-direct {v1}, Lio/dcloud/feature/ui/nativeui/b;->a()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 15
    :cond_23
    sget-object v0, Lio/dcloud/feature/ui/nativeui/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    :cond_28
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/widget/TextView;)V
    .registers 3

    .line 8
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/b;->a:Landroid/view/View;

    .line 9
    iput-object p2, p0, Lio/dcloud/feature/ui/nativeui/b;->b:Landroid/widget/TextView;

    return-void
.end method

.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-gt p1, p2, :cond_9

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/ui/nativeui/b;->a()V

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public setDuration(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const/16 p1, 0xdac

    goto :goto_a

    :cond_6
    if-nez p1, :cond_a

    const/16 p1, 0x7d0

    .line 1
    :cond_a
    :goto_a
    invoke-super {p0, p1}, Landroid/widget/Toast;->setDuration(I)V

    return-void
.end method

.method public setGravity(III)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/b;->c:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public declared-synchronized show()V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lio/dcloud/feature/ui/nativeui/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/b;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lio/dcloud/feature/ui/nativeui/b;->a:Landroid/view/View;

    iget-object v2, p0, Lio/dcloud/feature/ui/nativeui/b;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/b;->a:Landroid/view/View;

    new-instance v1, Lio/dcloud/feature/ui/nativeui/b$a;

    invoke-direct {v1, p0}, Lio/dcloud/feature/ui/nativeui/b$a;-><init>(Lio/dcloud/feature/ui/nativeui/b;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/Toast;->getDuration()I

    move-result v2

    int-to-long v2, v2

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class io.dcloud.feature.ui.nativeui.b.a (io.dcloud.feature.ui.nativeui.b$a)
.class Lio/dcloud/feature/ui/nativeui/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/b;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/nativeui/b;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/b$a;->a:Lio/dcloud/feature/ui/nativeui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/nativeui/b$a;->a:Lio/dcloud/feature/ui/nativeui/b;

    invoke-static {v0}, Lio/dcloud/feature/ui/nativeui/b;->a(Lio/dcloud/feature/ui/nativeui/b;)V

    return-void
.end method
