###### Class com.igexin.push.extension.distribution.gbd.b.c (com.igexin.push.extension.distribution.gbd.b.c)
.class public Lcom/igexin/push/extension/distribution/gbd/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->a:I

    iput v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->b:I

    iput v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->c:I

    iput v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->a:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->e:Ljava/util/List;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->b:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->c:I

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->c:I

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->d:I

    return v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->d:I

    return-void
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/c;->e:Ljava/util/List;

    return-object v0
.end method
