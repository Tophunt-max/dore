###### Class kotlin.coroutines.CoroutineContextImplKt (kotlin.coroutines.CoroutineContextImplKt)
.class public final Lkotlin/coroutines/CoroutineContextImplKt;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a+\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0004H\u0007\u00a2\u0006\u0002\u0010\u0005\u001a\u0018\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "getPolymorphicElement",
        "E",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "key",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;",
        "minusPolymorphicKey",
        "Lkotlin/coroutines/CoroutineContext;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final getPolymorphicElement(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "$this$getPolymorphicElement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    instance-of v0, p1, Lkotlin/coroutines/AbstractCoroutineContextKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 69
    check-cast p1, Lkotlin/coroutines/AbstractCoroutineContextKey;

    invoke-interface {p0}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/coroutines/AbstractCoroutineContextKey;->isSubKey$kotlin_stdlib(Lkotlin/coroutines/CoroutineContext$Key;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p1, p0}, Lkotlin/coroutines/AbstractCoroutineContextKey;->tryCast$kotlin_stdlib(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    instance-of p1, p0, Lkotlin/coroutines/CoroutineContext$Element;

    if-nez p1, :cond_24

    goto :goto_25

    :cond_24
    move-object v1, p0

    :cond_25
    :goto_25
    return-object v1

    .line 72
    :cond_26
    invoke-interface {p0}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

    if-ne v0, p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object p0, v1

    :goto_2e
    return-object p0
.end method

.method public static final minusPolymorphicKey(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    const-string v0, "$this$minusPolymorphicKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    instance-of v0, p1, Lkotlin/coroutines/AbstractCoroutineContextKey;

    if-eqz v0, :cond_25

    .line 86
    check-cast p1, Lkotlin/coroutines/AbstractCoroutineContextKey;

    invoke-interface {p0}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/coroutines/AbstractCoroutineContextKey;->isSubKey$kotlin_stdlib(Lkotlin/coroutines/CoroutineContext$Key;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1, p0}, Lkotlin/coroutines/AbstractCoroutineContextKey;->tryCast$kotlin_stdlib(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    if-eqz p1, :cond_22

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_22
    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    return-object p0

    .line 88
    :cond_25
    invoke-interface {p0}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

    if-ne v0, p1, :cond_2d

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_2d
    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method
