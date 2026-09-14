###### Class com.facebook.fresco.ui.common.MultiUriHelper (com.facebook.fresco.ui.common.MultiUriHelper)
.class public abstract Lcom/facebook/fresco/ui/common/MultiUriHelper;
.super Ljava/lang/Object;
.source "MultiUriHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainUri(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lcom/facebook/common/internal/Fn;)Landroid/net/Uri;
    .registers 5
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mainRequest",
            "lowResRequest",
            "firstAvailableRequest",
            "requestToUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;[TT;",
            "Lcom/facebook/common/internal/Fn<",
            "TT;",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_b

    .line 21
    invoke-interface {p3, p0}, Lcom/facebook/common/internal/Fn;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    if-eqz p2, :cond_20

    .line 25
    array-length p0, p2

    if-lez p0, :cond_20

    const/4 p0, 0x0

    aget-object v0, p2, p0

    if-eqz v0, :cond_20

    .line 28
    aget-object p0, p2, p0

    invoke-interface {p3, p0}, Lcom/facebook/common/internal/Fn;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    if-eqz p0, :cond_20

    return-object p0

    :cond_20
    if-eqz p1, :cond_29

    .line 32
    invoke-interface {p3, p1}, Lcom/facebook/common/internal/Fn;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method
