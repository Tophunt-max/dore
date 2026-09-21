###### Class com.igexin.push.extension.distribution.basic.j.m (com.igexin.push.extension.distribution.basic.j.m)
.class final Lcom/igexin/push/extension/distribution/basic/j/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# direct methods
.method constructor <init>()V
    .registers 1

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
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_14

    if-eqz p1, :cond_14

    const/16 p1, 0x7d0

    if-lt v1, p1, :cond_14

    const/4 v0, 0x1

    :catch_14
    :cond_14
    return v0
.end method
