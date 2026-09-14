###### Class com.igexin.push.extension.distribution.gbd.i.l (com.igexin.push.extension.distribution.gbd.i.l)
.class final Lcom/igexin/push/extension/distribution/gbd/i/l;
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
    .registers 2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1
.end method
