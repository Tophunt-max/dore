###### Class com.igexin.push.extension.distribution.gbd.i.ah (com.igexin.push.extension.distribution.gbd.i.ah)
.class Lcom/igexin/push/extension/distribution/gbd/i/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/i/ag;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/i/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/ah;->a:Lcom/igexin/push/extension/distribution/gbd/i/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-lez v2, :cond_11

    const/4 p1, -0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/ah;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
