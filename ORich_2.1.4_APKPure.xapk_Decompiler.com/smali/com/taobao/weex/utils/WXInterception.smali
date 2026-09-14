###### Class com.taobao.weex.utils.WXInterception (com.taobao.weex.utils.WXInterception)
.class public Lcom/taobao/weex/utils/WXInterception;
.super Ljava/lang/Object;
.source "WXInterception.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;,
        Lcom/taobao/weex/utils/WXInterception$Intercepted;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs proxy(Ljava/lang/Object;Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/taobao/weex/utils/WXInterception$InterceptionHandler<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 43
    invoke-virtual {p1, p0}, Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;->setDelegate(Ljava/lang/Object;)V

    .line 44
    const-class p0, Lcom/taobao/weex/utils/WXInterception;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, p2, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static proxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/taobao/weex/utils/WXInterception$InterceptionHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 33
    instance-of v0, p0, Lcom/taobao/weex/utils/WXInterception$Intercepted;

    if-eqz v0, :cond_5

    return-object p0

    .line 36
    :cond_5
    invoke-virtual {p2, p0}, Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;->setDelegate(Ljava/lang/Object;)V

    .line 37
    const-class p0, Lcom/taobao/weex/utils/WXInterception;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-class v1, Lcom/taobao/weex/utils/WXInterception$Intercepted;

    aput-object v1, v0, p1

    invoke-static {p0, v0, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class com.taobao.weex.utils.WXInterception.Intercepted (com.taobao.weex.utils.WXInterception$Intercepted)
.class interface abstract Lcom/taobao/weex/utils/WXInterception$Intercepted;
.super Ljava/lang/Object;
.source "WXInterception.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/WXInterception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Intercepted"
.end annotation

###### Class com.taobao.weex.utils.WXInterception.InterceptionHandler (com.taobao.weex.utils.WXInterception$InterceptionHandler)
.class public abstract Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;
.super Ljava/lang/Object;
.source "WXInterception.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/WXInterception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InterceptionHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# instance fields
.field private mDelegate:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected delegate()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;->mDelegate:Ljava/lang/Object;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, ""

    const/4 v0, 0x0

    .line 68
    :try_start_3
    invoke-virtual {p0}, Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;->delegate()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_b} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_b} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :catch_12
    move-exception p2

    .line 73
    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catch_17
    move-exception p2

    .line 70
    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method setDelegate(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;->mDelegate:Ljava/lang/Object;

    return-void
.end method
