###### Class com.igexin.push.config.f (com.igexin.push.config.f)
.class Lcom/igexin/push/config/f;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/config/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/config/a;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->f:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->g:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->h:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->j:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->k:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->l:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->m:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget v2, Lcom/igexin/push/config/k;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-wide v2, Lcom/igexin/push/config/k;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->n:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->o:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->p:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x13

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/config/k;->O:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x3a

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/config/k;->r:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x15

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/config/k;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x16

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->v:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->W:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x41

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->t:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x17

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget v2, Lcom/igexin/push/config/k;->C:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/config/k;->D:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->E:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/config/k;->F:Ljava/lang/String;

    const/16 v3, 0x1e

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget v2, Lcom/igexin/push/config/k;->G:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x28

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-wide v2, Lcom/igexin/push/config/k;->H:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x29

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget v2, Lcom/igexin/push/config/k;->I:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget v2, Lcom/igexin/push/config/k;->J:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/config/k;->K:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x2d

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/config/k;->L:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x33

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->M:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x37

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/config/k;->N:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->Q:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->P:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->R:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->S:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x31

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->T:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->U:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x34

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/config/k;->X:Ljava/lang/String;

    const/16 v3, 0x35

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/config/k;->Y:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x3e

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->V:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x36

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/igexin/push/config/k;->aa:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/config/f;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-boolean v2, Lcom/igexin/push/config/k;->i:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-static {v0, v1, v3, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method
