###### Class com.igexin.push.config.i (com.igexin.push.config.i)
.class public Lcom/igexin/push/config/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/push/config/i;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/igexin/push/config/i;
    .registers 2

    const-class v0, Lcom/igexin/push/config/i;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/config/i;->a:Lcom/igexin/push/config/i;

    if-nez v1, :cond_e

    new-instance v1, Lcom/igexin/push/config/i;

    invoke-direct {v1}, Lcom/igexin/push/config/i;-><init>()V

    sput-object v1, Lcom/igexin/push/config/i;->a:Lcom/igexin/push/config/i;

    :cond_e
    sget-object v1, Lcom/igexin/push/config/i;->a:Lcom/igexin/push/config/i;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b()Z
    .registers 2

    invoke-static {}, Lcom/igexin/push/config/l;->a()V

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/config/l;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method
