###### Class com.igexin.b.a.b.a.a.p (com.igexin.b.a.b.a.a.p)
.class public Lcom/igexin/b/a/b/a/a/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/p;->a:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 5

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/p;->a:Ljava/io/BufferedOutputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/p;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    return-void
.end method
