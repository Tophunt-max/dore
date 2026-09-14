###### Class com.igexin.push.core.bean.j (com.igexin.push.core.bean.j)
.class public Lcom/igexin/push/core/bean/j;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/core/bean/j;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/core/bean/j;->a:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/igexin/push/core/bean/j;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/j;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/core/bean/j;->b:I

    return-void
.end method
