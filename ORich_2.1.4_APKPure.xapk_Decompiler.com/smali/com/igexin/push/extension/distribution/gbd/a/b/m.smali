###### Class com.igexin.push.extension.distribution.gbd.a.b.m (com.igexin.push.extension.distribution.gbd.a.b.m)
.class Lcom/igexin/push/extension/distribution/gbd/a/b/m;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(IZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/m;->a:I

    iput-boolean p2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/m;->b:Z

    iput-object p3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/m;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IZLjava/lang/String;Lcom/igexin/push/extension/distribution/gbd/a/b/k;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/push/extension/distribution/gbd/a/b/m;-><init>(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/a/b/m;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/m;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/igexin/push/extension/distribution/gbd/a/b/m;)I
    .registers 1

    iget p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/m;->a:I

    return p0
.end method

.method static synthetic c(Lcom/igexin/push/extension/distribution/gbd/a/b/m;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/m;->c:Ljava/lang/String;

    return-object p0
.end method
