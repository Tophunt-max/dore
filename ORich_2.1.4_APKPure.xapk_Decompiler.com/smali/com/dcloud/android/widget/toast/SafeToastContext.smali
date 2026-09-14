###### Class com.dcloud.android.widget.toast.SafeToastContext (com.dcloud.android.widget.toast.SafeToastContext)
.class final Lcom/dcloud/android/widget/toast/SafeToastContext;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/widget/toast/SafeToastContext$WindowManagerWrapper;,
        Lcom/dcloud/android/widget/toast/SafeToastContext$ApplicationContextWrapper;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 4

    .line 1
    new-instance v0, Lcom/dcloud/android/widget/toast/SafeToastContext$ApplicationContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/dcloud/android/widget/toast/SafeToastContext$ApplicationContextWrapper;-><init>(Lcom/dcloud/android/widget/toast/SafeToastContext;Landroid/content/Context;Lcom/dcloud/android/widget/toast/SafeToastContext$1;)V

    return-object v0
.end method

###### Class com.dcloud.android.widget.toast.SafeToastContext.AnonymousClass1 (com.dcloud.android.widget.toast.SafeToastContext$1)
.class synthetic Lcom/dcloud/android/widget/toast/SafeToastContext$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/toast/SafeToastContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.dcloud.android.widget.toast.SafeToastContext.ApplicationContextWrapper (com.dcloud.android.widget.toast.SafeToastContext$ApplicationContextWrapper)
.class final Lcom/dcloud/android/widget/toast/SafeToastContext$ApplicationContextWrapper;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/toast/SafeToastContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ApplicationContextWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/toast/SafeToastContext;


# direct methods
.method private constructor <init>(Lcom/dcloud/android/widget/toast/SafeToastContext;Landroid/content/Context;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/widget/toast/SafeToastContext$ApplicationContextWrapper;->this$0:Lcom/dcloud/android/widget/toast/SafeToastContext;

    .line 3
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/android/widget/toast/SafeToastContext;Landroid/content/Context;Lcom/dcloud/android/widget/toast/SafeToastContext$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/widget/toast/SafeToastContext$ApplicationContextWrapper;-><init>(Lcom/dcloud/android/widget/toast/SafeToastContext;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const-string v0, "window"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3
    new-instance v0, Lcom/dcloud/android/widget/toast/SafeToastContext$WindowManagerWrapper;

    iget-object v1, p0, Lcom/dcloud/android/widget/toast/SafeToastContext$ApplicationContextWrapper;->this$0:Lcom/dcloud/android/widget/toast/SafeToastContext;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/dcloud/android/widget/toast/SafeToastContext$WindowManagerWrapper;-><init>(Lcom/dcloud/android/widget/toast/SafeToastContext;Landroid/view/WindowManager;Lcom/dcloud/android/widget/toast/SafeToastContext$1;)V

    return-object v0

    .line 5
    :cond_1b
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.dcloud.android.widget.toast.SafeToastContext.WindowManagerWrapper (com.dcloud.android.widget.toast.SafeToastContext$WindowManagerWrapper)
.class final Lcom/dcloud/android/widget/toast/SafeToastContext$WindowManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/toast/SafeToastContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowManagerWrapper"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManagerWrapper"


# instance fields
.field private final base:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/dcloud/android/widget/toast/SafeToastContext;


# direct methods
.method private constructor <init>(Lcom/dcloud/android/widget/toast/SafeToastContext;Landroid/view/WindowManager;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/widget/toast/SafeToastContext$WindowManagerWrapper;->this$0:Lcom/dcloud/android/widget/toast/SafeToastContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/dcloud/android/widget/toast/SafeToastContext$WindowManagerWrapper;->base:Landroid/view/WindowManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/android/widget/toast/SafeToastContext;Landroid/view/WindowManager;Lcom/dcloud/android/widget/toast/SafeToastContext$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/widget/toast/SafeToastContext$WindowManagerWrapper;-><init>(Lcom/dcloud/android/widget/toast/SafeToastContext;Landroid/view/WindowManager;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    const-string v0, "WindowManagerWrapper"

    .line 1
    :try_start_2
    iget-object v1, p0, Lcom/dcloud/android/widget/toast/SafeToastContext$WindowManagerWrapper;->base:Landroid/view/WindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_7} :catch_f
    .catchall {:try_start_2 .. :try_end_7} :catchall_8

    goto :goto_17

    :catchall_8
    move-exception p1

    const-string p2, "[addView]"

    .line 5
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :catch_f
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/toast/SafeToastContext$WindowManagerWrapper;->base:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/toast/SafeToastContext$WindowManagerWrapper;->base:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/toast/SafeToastContext$WindowManagerWrapper;->base:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/toast/SafeToastContext$WindowManagerWrapper;->base:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
