###### Class com.igexin.push.extension.distribution.basic.b.a (com.igexin.push.extension.distribution.basic.b.a)
.class public Lcom/igexin/push/extension/distribution/basic/b/a;
.super Lcom/igexin/push/core/bean/BaseAction;


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:I

.field private E:I

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Z

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/igexin/push/core/bean/BaseAction;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->c:Z

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->d:Z

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->h:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->i:I

    const-string v3, "Default"

    iput-object v3, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->k:Ljava/lang/String;

    iput-object v3, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->l:Ljava/lang/String;

    const/4 v3, 0x3

    iput v3, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->m:I

    iput v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->p:I

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->q:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->r:Z

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->t:Ljava/lang/String;

    iput v2, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->u:I

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->x:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->y:Z

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->z:Z

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->A:Z

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->B:Z

    iput v2, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->C:I

    iput v2, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->D:I

    iput v2, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->E:I

    return-void
.end method


# virtual methods
.method public A()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->C:I

    return v0
.end method

.method public B()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->D:I

    return v0
.end method

.method public C()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->i:I

    return v0
.end method

.method public D()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->n:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->k:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->o:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->o:Z

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->n:I

    return v0
.end method

.method public b(I)V
    .registers 3

    const/4 v0, 0x4

    if-gt p1, v0, :cond_5

    if-gez p1, :cond_6

    :cond_5
    const/4 p1, 0x3

    :cond_6
    iput p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->m:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->l:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->r:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->p:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->q:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->B:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->u:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->t:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->c:Z

    return-void
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->m:I

    return v0
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->E:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->x:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->d:Z

    return-void
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->p:I

    return v0
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->C:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->s:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->e:Z

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->D:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->y:Z

    return-void
.end method

.method public h(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->i:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->z:Z

    return-void
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->r:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->f:Ljava/lang/String;

    return-void
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->u:I

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->g:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->x:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->h:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->v:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->B:Z

    return v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->E:I

    return v0
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->w:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->j:Ljava/lang/String;

    return-void
.end method

.method public o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->c:Z

    return v0
.end method

.method public r()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->d:Z

    return v0
.end method

.method public s()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->e:Z

    return v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method public y()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->y:Z

    return v0
.end method

.method public z()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/b/a;->z:Z

    return v0
.end method
