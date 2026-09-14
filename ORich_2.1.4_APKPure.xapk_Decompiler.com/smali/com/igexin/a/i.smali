###### Class com.igexin.a.i (com.igexin.a.i)
.class Lcom/igexin/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/igexin/a/h;


# direct methods
.method constructor <init>(Lcom/igexin/a/h;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/a/i;->b:Lcom/igexin/a/h;

    iput-object p2, p0, Lcom/igexin/a/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    iget-object p1, p0, Lcom/igexin/a/i;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
