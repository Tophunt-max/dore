###### Class com.igexin.push.util.i (com.igexin.push.util.i)
.class final Lcom/igexin/push/util/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/push/util/i;->a:Landroid/content/Context;

    iput-wide p2, p0, Lcom/igexin/push/util/i;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/util/i;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/igexin/push/util/i;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/push/util/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
