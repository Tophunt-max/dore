###### Class com.igexin.push.extension.distribution.basic.c.b (com.igexin.push.extension.distribution.basic.c.b)
.class public Lcom/igexin/push/extension/distribution/basic/c/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 8

    const-string v0, "com.gt.act.notification.bury_point"

    :try_start_2
    const-class v1, Lcom/igexin/push/core/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v3, :cond_32

    aget-object v6, v2, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v7, Ljava/lang/Deprecated;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_2f

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_32

    move-object v0, v6

    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :catch_32
    :cond_32
    return-object v0
.end method
