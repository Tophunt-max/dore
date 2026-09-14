###### Class com.igexin.push.util.c (com.igexin.push.util.c)
.class public Lcom/igexin/push/util/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/igexin/push/util/c;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/igexin/push/util/c;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_c
    const-string v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Lcom/igexin/push/util/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.miui.ui.version.code"

    invoke-static {v2}, Lcom/igexin/push/util/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/igexin/push/util/p;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Xiaomi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_33

    :cond_31
    const/4 v1, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v1, 0x1

    :goto_34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/igexin/push/util/c;->a:Ljava/lang/Boolean;

    sget-object v1, Lcom/igexin/push/util/c;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_40

    :catchall_40
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v1, :cond_6

    return v0

    :cond_6
    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    if-nez p0, :cond_19

    const/4 v0, 0x1

    :catchall_19
    :cond_19
    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    goto :goto_24

    :catchall_1f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_24
    return-object p0
.end method
