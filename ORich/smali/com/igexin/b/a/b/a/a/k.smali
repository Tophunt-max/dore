###### Class com.igexin.b.a.b.a.a.k (com.igexin.b.a.b.a.a.k)
.class Lcom/igexin/b/a/b/a/a/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/igexin/b/a/b/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/igexin/b/a/b/a/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/igexin/b/a/b/a/a/f;-><init>(Lcom/igexin/b/a/b/a/a/g;)V

    sput-object v0, Lcom/igexin/b/a/b/a/a/k;->a:Lcom/igexin/b/a/b/a/a/f;

    return-void
.end method

.method static synthetic a()Lcom/igexin/b/a/b/a/a/f;
    .registers 1

    sget-object v0, Lcom/igexin/b/a/b/a/a/k;->a:Lcom/igexin/b/a/b/a/a/f;

    return-object v0
.end method
