###### Class com.igexin.push.extension.distribution.gbd.i.ai (com.igexin.push.extension.distribution.gbd.i.ai)
.class Lcom/igexin/push/extension/distribution/gbd/i/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/i/ag;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/i/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/ai;->a:Lcom/igexin/push/extension/distribution/gbd/i/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
