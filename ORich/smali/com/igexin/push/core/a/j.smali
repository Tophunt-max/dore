###### Class com.igexin.push.core.a.j (com.igexin.push.core.a.j)
.class public Lcom/igexin/push/core/a/j;
.super Lcom/igexin/push/core/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/igexin/push/config/j;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/a/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/d/e;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 3

    instance-of p1, p1, Lcom/igexin/push/e/c/h;

    if-eqz p1, :cond_19

    invoke-static {}, Lcom/igexin/push/e/b;->a()Lcom/igexin/push/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/e/b;->e()V

    const-string p1, "heartbeatRsp"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/j;->a()Lcom/igexin/push/core/j;

    move-result-object p1

    sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;

    invoke-virtual {p1, v0}, Lcom/igexin/push/core/j;->a(Lcom/igexin/push/core/l;)V

    :cond_19
    const/4 p1, 0x1

    return p1
.end method
