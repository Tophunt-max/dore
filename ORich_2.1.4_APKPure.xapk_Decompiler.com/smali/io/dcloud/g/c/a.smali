###### Class io.dcloud.g.c.a (io.dcloud.g.c.a)
.class public Lio/dcloud/g/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/g/c/a$b;,
        Lio/dcloud/g/c/a$c;
    }
.end annotation


# instance fields
.field private a:Lio/dcloud/g/c/a$b;


# direct methods
.method public constructor <init>(Lio/dcloud/g/c/a$b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/g/c/a;->a:Lio/dcloud/g/c/a$b;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .registers 12

    :try_start_0
    const-string v0, "com.bun.miitmdid.core.MdidSdkHelper"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_61

    :try_start_6
    const-string v1, "com.bun.supplier.IIdentifierListener"

    .line 11
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    :try_start_d
    const-string v1, "com.bun.miitmdid.interfaces.IIdentifierListener"

    .line 13
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 15
    :goto_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-instance v6, Lio/dcloud/g/c/a$c;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lio/dcloud/g/c/a$c;-><init>(Lio/dcloud/g/c/a;Lio/dcloud/g/c/a$a;)V

    invoke-static {v2, v4, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_5d

    const-string v4, "InitSdk"

    const/4 v6, 0x3

    :try_start_2e
    new-array v8, v6, [Ljava/lang/Class;

    .line 17
    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v5

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 21
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, v1, v3

    aput-object v2, v1, v9

    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 23
    :cond_52
    instance-of p1, v7, Ljava/lang/Integer;

    if-eqz p1, :cond_5d

    .line 24
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_5c} :catch_5d

    return p1

    :catch_5d
    :cond_5d
    const p1, 0xf63e7

    return p1

    :catch_61
    nop

    .line 25
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    if-eqz v0, :cond_6c

    const p1, 0xf63e4

    return p1

    .line 27
    :cond_6c
    new-instance v0, Ljava/lang/RuntimeException;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_app_not_oaid:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lio/dcloud/g/c/a;)Lio/dcloud/g/c/a$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/g/c/a;->a:Lio/dcloud/g/c/a$b;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)Z
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3
    :cond_8
    invoke-direct {p0, p1}, Lio/dcloud/g/c/a;->a(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    const v2, 0xf63e4

    if-ne p1, v2, :cond_13

    goto :goto_25

    :cond_13
    const v2, 0xf63e5

    if-ne p1, v2, :cond_19

    goto :goto_25

    :cond_19
    const v2, 0xf63e3

    if-ne p1, v2, :cond_1f

    goto :goto_25

    :cond_1f
    const v2, 0xf63e6

    if-ne p1, v2, :cond_25

    const/4 v1, 0x1

    :cond_25
    :goto_25
    return v1
.end method

###### Class io.dcloud.g.c.a.C0066a (io.dcloud.g.c.a$a)
.class synthetic Lio/dcloud/g/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/g/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.g.c.a.b (io.dcloud.g.c.a$b)
.class public interface abstract Lio/dcloud/g/c/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/g/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Z)V
.end method

###### Class io.dcloud.g.c.a.c (io.dcloud.g.c.a$c)
.class Lio/dcloud/g/c/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/g/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/g/c/a;


# direct methods
.method private constructor <init>(Lio/dcloud/g/c/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/c/a$c;->a:Lio/dcloud/g/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/g/c/a;Lio/dcloud/g/c/a$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/g/c/a$c;-><init>(Lio/dcloud/g/c/a;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnSupport"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7a

    if-eqz p3, :cond_7a

    .line 5
    array-length p1, p3

    if-lez p1, :cond_7a

    const/4 p1, 0x0

    .line 6
    aget-object v0, p3, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 10
    array-length v1, p3

    const/4 v2, 0x1

    if-le v1, v2, :cond_22

    .line 11
    aget-object p3, p3, v2

    goto :goto_23

    :cond_22
    move-object p3, p2

    .line 13
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_30

    const-string p1, "||"

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    :cond_30
    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "getOAID"

    .line 17
    invoke-static {p3, v3, p2, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, p1, [Ljava/lang/Object;

    const-string v4, "getVAID"

    .line 18
    invoke-static {p3, v4, p2, v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "getAAID"

    .line 19
    invoke-static {p3, v4, p2, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, ""

    if-nez v2, :cond_4d

    move-object v2, p3

    .line 20
    :cond_4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_58

    move-object v3, p3

    :cond_58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_61

    move-object p1, p3

    :cond_61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    :goto_64
    iget-object p1, p0, Lio/dcloud/g/c/a$c;->a:Lio/dcloud/g/c/a;

    invoke-static {p1}, Lio/dcloud/g/c/a;->a(Lio/dcloud/g/c/a;)Lio/dcloud/g/c/a$b;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 25
    iget-object p1, p0, Lio/dcloud/g/c/a$c;->a:Lio/dcloud/g/c/a;

    invoke-static {p1}, Lio/dcloud/g/c/a;->a(Lio/dcloud/g/c/a;)Lio/dcloud/g/c/a$b;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Lio/dcloud/g/c/a$b;->a(Ljava/lang/String;Z)V

    nop

    :cond_7a
    return-object p2
.end method
