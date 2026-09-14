###### Class com.igexin.push.extension.distribution.gbd.i.af (com.igexin.push.extension.distribution.gbd.i.af)
.class final Lcom/igexin/push/extension/distribution/gbd/i/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/af;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_14

    iget p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/af;->a:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_14

    if-lt v1, p1, :cond_14

    const/4 v0, 0x1

    :catch_14
    :cond_14
    return v0
.end method
