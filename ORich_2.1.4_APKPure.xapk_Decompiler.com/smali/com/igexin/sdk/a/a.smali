###### Class com.igexin.sdk.a.a (com.igexin.sdk.a.a)
.class public Lcom/igexin/sdk/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "PushSdk"

.field private static c:Lcom/igexin/sdk/a/a;


# instance fields
.field private b:Lcom/igexin/sdk/IPushCore;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/sdk/a/a;
    .registers 1

    sget-object v0, Lcom/igexin/sdk/a/a;->c:Lcom/igexin/sdk/a/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/sdk/a/a;

    invoke-direct {v0}, Lcom/igexin/sdk/a/a;-><init>()V

    sput-object v0, Lcom/igexin/sdk/a/a;->c:Lcom/igexin/sdk/a/a;

    :cond_b
    sget-object v0, Lcom/igexin/sdk/a/a;->c:Lcom/igexin/sdk/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/igexin/sdk/IPushCore;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/sdk/a/a;->b:Lcom/igexin/sdk/IPushCore;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 2

    :try_start_0
    new-instance p1, Lcom/igexin/push/core/stub/PushCore;

    invoke-direct {p1}, Lcom/igexin/push/core/stub/PushCore;-><init>()V

    invoke-virtual {p0, p1}, Lcom/igexin/sdk/a/a;->a(Lcom/igexin/sdk/IPushCore;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    const/4 p1, 0x1

    return p1

    :catch_a
    const/4 p1, 0x0

    return p1
.end method

.method public b()Lcom/igexin/sdk/IPushCore;
    .registers 2

    iget-object v0, p0, Lcom/igexin/sdk/a/a;->b:Lcom/igexin/sdk/IPushCore;

    return-object v0
.end method
