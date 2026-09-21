###### Class com.igexin.push.core.bean.h (com.igexin.push.core.bean.h)
.class public Lcom/igexin/push/core/bean/h;
.super Lcom/igexin/push/core/bean/BaseAction;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/core/bean/BaseAction;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/core/bean/h;->c:Z

    iput-boolean v0, p0, Lcom/igexin/push/core/bean/h;->d:Z

    iput-boolean v0, p0, Lcom/igexin/push/core/bean/h;->e:Z

    iput-boolean v0, p0, Lcom/igexin/push/core/bean/h;->j:Z

    iput-boolean v0, p0, Lcom/igexin/push/core/bean/h;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/push/core/bean/h;->l:I

    iput v0, p0, Lcom/igexin/push/core/bean/h;->m:I

    const-string v0, "Default"

    iput-object v0, p0, Lcom/igexin/push/core/bean/h;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/bean/h;->q:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/igexin/push/core/bean/h;->r:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/core/bean/h;->r:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/h;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/core/bean/h;->o:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/core/bean/h;->o:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/core/bean/h;->n:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/h;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/core/bean/h;->c:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/h;->g:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/core/bean/h;->d:Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/h;->h:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/core/bean/h;->e:Z

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/core/bean/h;->c:Z

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/h;->i:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/core/bean/h;->f:Z

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/core/bean/h;->d:Z

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/h;->p:Ljava/lang/String;

    return-void
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/core/bean/h;->e:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/h;->q:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/core/bean/h;->f:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/h;->p:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/core/bean/h;->r:I

    return v0
.end method

.method public n()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/core/bean/h;->n:I

    return v0
.end method
