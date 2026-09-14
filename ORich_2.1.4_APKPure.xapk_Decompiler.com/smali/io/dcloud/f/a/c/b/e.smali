###### Class io.dcloud.f.a.c.b.e (io.dcloud.f.a.c.b.e)
.class public Lio/dcloud/f/a/c/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/f/a/c/b/e$a;
    }
.end annotation


# static fields
.field private static b:Lio/dcloud/f/a/c/b/e;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lio/dcloud/f/a/c/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .registers 11

    :try_start_0
    const-string v0, "com.bun.miitmdid.core.MdidSdkHelper"

    .line 10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_61

    :try_start_6
    const-string v1, "com.bun.supplier.IIdentifierListener"

    .line 17
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    :try_start_d
    const-string v1, "com.bun.miitmdid.interfaces.IIdentifierListener"

    .line 19
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 21
    :goto_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-instance v6, Lio/dcloud/f/a/c/b/e$a;

    invoke-direct {v6, p0, p1}, Lio/dcloud/f/a/c/b/e$a;-><init>(Lio/dcloud/f/a/c/b/e;Landroid/content/Context;)V

    invoke-static {v2, v4, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2a} :catch_5d

    const-string v4, "InitSdk"

    const/4 v6, 0x3

    :try_start_2d
    new-array v7, v6, [Ljava/lang/Class;

    .line 23
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v5

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 27
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, v4, v3

    aput-object v2, v4, v8

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    :cond_52
    instance-of p1, v1, Ljava/lang/Integer;

    if-eqz p1, :cond_5d

    .line 30
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5c} :catch_5d

    return p1

    :catch_5d
    :cond_5d
    const p1, 0xf63e7

    return p1

    .line 31
    :catch_61
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not support"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Lio/dcloud/f/a/c/b/e;
    .registers 2

    .line 2
    sget-object v0, Lio/dcloud/f/a/c/b/e;->b:Lio/dcloud/f/a/c/b/e;

    if-nez v0, :cond_17

    .line 3
    const-class v0, Lio/dcloud/f/a/c/b/e;

    monitor-enter v0

    .line 4
    :try_start_7
    sget-object v1, Lio/dcloud/f/a/c/b/e;->b:Lio/dcloud/f/a/c/b/e;

    if-nez v1, :cond_12

    .line 5
    new-instance v1, Lio/dcloud/f/a/c/b/e;

    invoke-direct {v1}, Lio/dcloud/f/a/c/b/e;-><init>()V

    sput-object v1, Lio/dcloud/f/a/c/b/e;->b:Lio/dcloud/f/a/c/b/e;

    .line 7
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 9
    :cond_17
    :goto_17
    sget-object v0, Lio/dcloud/f/a/c/b/e;->b:Lio/dcloud/f/a/c/b/e;

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 32
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 34
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_13

    .line 35
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_17

    .line 37
    :cond_13
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    :goto_17
    const/4 p2, 0x1

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 40
    array-length p2, p3

    if-nez p2, :cond_1f

    move-object p3, v0

    :cond_1f
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_24

    return-object p0

    :catchall_24
    return-object v0
.end method

.method static synthetic a(Lio/dcloud/f/a/c/b/e;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/f/a/c/b/e;->a:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/f/a/c/b/e;->a(Landroid/content/Context;)I

    move-result p1

    const v0, 0xf63e4

    if-ne p1, v0, :cond_a

    goto :goto_1d

    :cond_a
    const v0, 0xf63e5

    if-ne p1, v0, :cond_10

    goto :goto_1d

    :cond_10
    const v0, 0xf63e3

    if-ne p1, v0, :cond_16

    goto :goto_1d

    :cond_16
    const v0, 0xf63e6

    if-ne p1, v0, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p1, 0x0

    :goto_1e
    return p1
.end method


# virtual methods
.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/f/a/c/b/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/f/a/c/b/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, ""

    return-object p1

    :cond_11
    if-eqz p1, :cond_1d

    const-string v0, "dcloud-ads"

    const-string v1, "oaid"

    .line 5
    invoke-static {p1, v0, v1}, Lio/dcloud/f/a/d/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/f/a/c/b/e;->a:Ljava/lang/String;

    .line 8
    :cond_1d
    iget-object p1, p0, Lio/dcloud/f/a/c/b/e;->a:Ljava/lang/String;

    return-object p1
.end method

###### Class io.dcloud.f.a.c.b.e.a (io.dcloud.f.a.c.b.e$a)
.class Lio/dcloud/f/a/c/b/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/f/a/c/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lio/dcloud/f/a/c/b/e;


# direct methods
.method public constructor <init>(Lio/dcloud/f/a/c/b/e;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/f/a/c/b/e$a;->b:Lio/dcloud/f/a/c/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/f/a/c/b/e$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnSupport"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7e

    if-eqz p3, :cond_7e

    .line 4
    array-length p1, p3

    if-lez p1, :cond_7e

    const/4 p1, 0x0

    .line 5
    aget-object v0, p3, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_21

    .line 10
    aget-object p3, p3, v1

    goto :goto_22

    :cond_21
    move-object p3, p2

    .line 12
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_2f

    const-string p1, "||"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e

    :cond_2f
    new-array v1, p1, [Ljava/lang/Object;

    const-string v2, "getOAID"

    .line 16
    invoke-static {p3, v2, p2, v1}, Lio/dcloud/f/a/c/b/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "getVAID"

    .line 17
    invoke-static {p3, v3, p2, v2}, Lio/dcloud/f/a/c/b/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "getAAID"

    .line 18
    invoke-static {p3, v3, p2, p1}, Lio/dcloud/f/a/c/b/e;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, ""

    if-nez v1, :cond_4d

    move-object v3, p3

    goto :goto_4e

    :cond_4d
    move-object v3, v1

    .line 19
    :goto_4e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_59

    move-object v2, p3

    :cond_59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_62

    move-object p1, p3

    :cond_62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    iget-object p1, p0, Lio/dcloud/f/a/c/b/e$a;->b:Lio/dcloud/f/a/c/b/e;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lio/dcloud/f/a/c/b/e;->a(Lio/dcloud/f/a/c/b/e;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lio/dcloud/f/a/c/b/e$a;->a:Landroid/content/Context;

    if-eqz p1, :cond_7e

    .line 24
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "dcloud-ads"

    const-string v1, "oaid"

    invoke-static {p1, v0, v1, p3}, Lio/dcloud/f/a/d/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_7e
    :goto_7e
    return-object p2
.end method
