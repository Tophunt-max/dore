###### Class com.igexin.push.extension.distribution.gbd.i.o (com.igexin.push.extension.distribution.gbd.i.o)
.class final Lcom/igexin/push/extension/distribution/gbd/i/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    const-string p1, ".bin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
