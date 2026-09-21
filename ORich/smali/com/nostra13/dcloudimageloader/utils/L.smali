###### Class com.nostra13.dcloudimageloader.utils.L (com.nostra13.dcloudimageloader.utils.L)
.class public final Lcom/nostra13/dcloudimageloader/utils/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile DISABLED:Z = false

.field private static final LOG_FORMAT:Ljava/lang/String; = "%1$s\n%2$s"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/dcloudimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static disableLogging()V
    .registers 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/nostra13/dcloudimageloader/utils/L;->DISABLED:Z

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/dcloudimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, p0, v2, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x6

    .line 3
    invoke-static {v0, p0, p1, p2}, Lcom/nostra13/dcloudimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static enableLogging()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/nostra13/dcloudimageloader/utils/L;->DISABLED:Z

    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/dcloudimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 1
    sget-boolean v0, Lcom/nostra13/dcloudimageloader/utils/L;->DISABLED:Z

    if-nez v0, :cond_2c

    .line 2
    array-length v0, p3

    if-lez v0, :cond_b

    .line 3
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_b
    if-nez p1, :cond_e

    goto :goto_27

    :cond_e
    if-nez p2, :cond_14

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 11
    :cond_14
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const/4 p2, 0x1

    aput-object p1, p3, p2

    const-string p1, "%1$s\n%2$s"

    .line 12
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 15
    :goto_27
    sget-object p1, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/dcloudimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
