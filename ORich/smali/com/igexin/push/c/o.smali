###### Class com.igexin.push.c.o (com.igexin.push.c.o)
.class Lcom/igexin/push/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/igexin/push/c/m;


# direct methods
.method constructor <init>(Lcom/igexin/push/c/m;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/c/o;->a:Lcom/igexin/push/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/c/o;->a:Lcom/igexin/push/c/m;

    invoke-virtual {v0}, Lcom/igexin/push/c/m;->i()V

    return-void
.end method
