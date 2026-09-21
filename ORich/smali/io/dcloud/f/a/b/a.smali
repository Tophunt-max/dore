###### Class io.dcloud.f.a.b.a (io.dcloud.f.a.b.a)
.class public abstract Lio/dcloud/f/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/f/a/b/a$c;
    }
.end annotation


# instance fields
.field protected a:Lio/dcloud/f/a/b/a$c;

.field private b:Landroid/content/Context;

.field protected c:Ljava/lang/String;

.field protected d:Lio/dcloud/ads/base/entry/AdData;


# direct methods
.method public constructor <init>(Lio/dcloud/f/a/b/a$c;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/f/a/b/a;->a:Lio/dcloud/f/a/b/a$c;

    .line 3
    iput-object p2, p0, Lio/dcloud/f/a/b/a;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lio/dcloud/f/a/b/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .line 12
    iget-object v0, p0, Lio/dcloud/f/a/b/a;->a:Lio/dcloud/f/a/b/a$c;

    if-eqz v0, :cond_15

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/dcloud/f/a/b/a$b;

    invoke-direct {v1, p0}, Lio/dcloud/f/a/b/a$b;-><init>(Lio/dcloud/f/a/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .registers 5

    .line 10
    iget-object v0, p0, Lio/dcloud/f/a/b/a;->a:Lio/dcloud/f/a/b/a$c;

    if-eqz v0, :cond_15

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/dcloud/f/a/b/a$a;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/f/a/b/a$a;-><init>(Lio/dcloud/f/a/b/a;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 6

    if-nez p1, :cond_b

    const p1, 0xea6a

    const-string v0, "\u5e7f\u544a\u5bb9\u5668\u4e0d\u53ef\u89c1"

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/dcloud/f/a/b/a;->a(ILjava/lang/String;)V

    return-void

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/f/a/b/a;->d:Lio/dcloud/ads/base/entry/AdData;

    if-nez v0, :cond_18

    const p1, 0xea65

    const-string v0, "\u6570\u636e\u89e3\u6790\u5931\u8d25"

    .line 5
    invoke-virtual {p0, p1, v0}, Lio/dcloud/f/a/b/a;->a(ILjava/lang/String;)V

    return-void

    .line 8
    :cond_18
    new-instance v0, Lio/dcloud/f/a/c/c/b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/f/a/b/a;->a:Lio/dcloud/f/a/b/a$c;

    iget-object v3, p0, Lio/dcloud/f/a/b/a;->d:Lio/dcloud/ads/base/entry/AdData;

    invoke-direct {v0, v1, v2, v3}, Lio/dcloud/f/a/c/c/b;-><init>(Landroid/content/Context;Lio/dcloud/f/a/b/a$c;Lio/dcloud/ads/base/entry/AdData;)V

    .line 9
    invoke-virtual {v0, p1}, Lio/dcloud/f/a/c/c/b;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public b()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/f/a/b/a;->b:Landroid/content/Context;

    return-object v0
.end method

###### Class io.dcloud.f.a.b.a.RunnableC0038a (io.dcloud.f.a.b.a$a)
.class Lio/dcloud/f/a/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/f/a/b/a;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/f/a/b/a;


# direct methods
.method constructor <init>(Lio/dcloud/f/a/b/a;ILjava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/f/a/b/a$a;->c:Lio/dcloud/f/a/b/a;

    iput p2, p0, Lio/dcloud/f/a/b/a$a;->a:I

    iput-object p3, p0, Lio/dcloud/f/a/b/a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/f/a/b/a$a;->c:Lio/dcloud/f/a/b/a;

    iget-object v0, v0, Lio/dcloud/f/a/b/a;->a:Lio/dcloud/f/a/b/a$c;

    iget v1, p0, Lio/dcloud/f/a/b/a$a;->a:I

    iget-object v2, p0, Lio/dcloud/f/a/b/a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lio/dcloud/f/a/b/a$c;->onError(ILjava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.f.a.b.a.b (io.dcloud.f.a.b.a$b)
.class Lio/dcloud/f/a/b/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/f/a/b/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/f/a/b/a;


# direct methods
.method constructor <init>(Lio/dcloud/f/a/b/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/f/a/b/a$b;->a:Lio/dcloud/f/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/f/a/b/a$b;->a:Lio/dcloud/f/a/b/a;

    iget-object v0, v0, Lio/dcloud/f/a/b/a;->a:Lio/dcloud/f/a/b/a$c;

    invoke-interface {v0}, Lio/dcloud/f/a/b/a$c;->onSplashAdLoad()V

    return-void
.end method

###### Class io.dcloud.f.a.b.a.c (io.dcloud.f.a.b.a$c)
.class public interface abstract Lio/dcloud/f/a/b/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/f/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public abstract onAdShow()V
.end method

.method public abstract onAdShowEnd()V
.end method

.method public abstract onAdShowError(ILjava/lang/String;)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onSkippedAd()V
.end method

.method public abstract onSplashAdLoad()V
.end method
