###### Class com.igexin.b.a.d.a (com.igexin.b.a.d.a)
.class public abstract Lcom/igexin/b/a/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/b/a/d/a/e;


# instance fields
.field private volatile a:Z

.field private b:J

.field protected l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/b/a/d/a;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Z)V
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/igexin/b/a/d/a;->a:Z

    return-void
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/b/a/d/a;->a:Z

    return v0
.end method

.method public m()J
    .registers 3

    iget-wide v0, p0, Lcom/igexin/b/a/d/a;->b:J

    return-wide v0
.end method
