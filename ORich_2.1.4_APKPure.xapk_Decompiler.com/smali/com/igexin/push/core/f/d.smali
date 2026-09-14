###### Class com.igexin.push.core.f.d (com.igexin.push.core.f.d)
.class public Lcom/igexin/push/core/f/d;
.super Lcom/igexin/push/core/f/e;


# static fields
.field private static final a:Lcom/igexin/push/core/f/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/igexin/push/core/f/d;

    invoke-direct {v0}, Lcom/igexin/push/core/f/d;-><init>()V

    sput-object v0, Lcom/igexin/push/core/f/d;->a:Lcom/igexin/push/core/f/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/core/f/e;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/push/core/f/d;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/f/d;->a:Lcom/igexin/push/core/f/d;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-super {p0, p1}, Lcom/igexin/push/core/f/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/content/Context;J)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/igexin/push/core/f/e;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/igexin/push/core/f/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-super {p0, p1}, Lcom/igexin/push/core/f/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/igexin/push/core/f/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic c(Landroid/content/Context;)J
    .registers 4

    invoke-super {p0, p1}, Lcom/igexin/push/core/f/e;->c(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method
