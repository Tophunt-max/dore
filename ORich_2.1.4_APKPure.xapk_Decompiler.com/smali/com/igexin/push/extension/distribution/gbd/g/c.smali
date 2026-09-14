###### Class com.igexin.push.extension.distribution.gbd.g.c (com.igexin.push.extension.distribution.gbd.g.c)
.class public Lcom/igexin/push/extension/distribution/gbd/g/c;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    sget p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->H:I

    const/16 p2, 0x32

    if-ge p1, p2, :cond_48

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object p1

    sget p2, Lcom/igexin/push/extension/distribution/gbd/c/c;->H:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/igexin/push/extension/distribution/gbd/c/c;->H:I

    invoke-virtual {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->x()J

    move-result-wide p1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    goto :goto_33

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->I:Ljava/lang/String;

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->I:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object p1

    sget-object p2, Lcom/igexin/push/extension/distribution/gbd/c/c;->I:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->d(Ljava/lang/String;)V

    :cond_48
    return-void
.end method
