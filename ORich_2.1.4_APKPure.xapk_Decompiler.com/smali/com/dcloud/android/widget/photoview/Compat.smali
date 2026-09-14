###### Class com.dcloud.android.widget.photoview.Compat (com.dcloud.android.widget.photoview.Compat)
.class Lcom/dcloud/android/widget/photoview/Compat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SIXTY_FPS_INTERVAL:I = 0x10


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 2
    invoke-static {p0, p1}, Lcom/dcloud/android/widget/photoview/Compat;->postOnAnimationJellyBean(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_f

    :cond_a
    const-wide/16 v0, 0x10

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_f
    return-void
.end method

.method private static postOnAnimationJellyBean(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
