###### Class com.igexin.push.extension.distribution.gbd.d.a (com.igexin.push.extension.distribution.gbd.d.a)
.class public Lcom/igexin/push/extension/distribution/gbd/d/a;
.super Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_141

    const/16 v1, 0xd

    if-eq v0, v1, :cond_139

    const/16 v1, 0x11

    if-eq v0, v1, :cond_131

    const/16 v1, 0x65

    const/16 v2, 0xb

    if-eq v0, v1, :cond_122

    const-wide/16 v3, 0x1388

    packed-switch v0, :pswitch_data_166

    goto/16 :goto_165

    :pswitch_1b
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a()Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b()V

    goto/16 :goto_165

    :pswitch_24
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/d;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/d;->c()V

    new-instance p1, Lcom/igexin/push/extension/distribution/gbd/d/c;

    invoke-direct {p1, p0}, Lcom/igexin/push/extension/distribution/gbd/d/c;-><init>(Lcom/igexin/push/extension/distribution/gbd/d/a;)V

    invoke-virtual {p0, p1, v3, v4}, Lcom/igexin/push/extension/distribution/gbd/d/a;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_165

    :pswitch_35
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x33

    if-eq p1, v0, :cond_60

    const/16 v0, 0x34

    if-eq p1, v0, :cond_41

    goto/16 :goto_165

    :cond_41
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->c()V

    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->W:Z

    if-eqz p1, :cond_53

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/a/c;->a()Lcom/igexin/push/extension/distribution/gbd/a/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/a/c;->c()V

    :cond_53
    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->X:Z

    if-eqz p1, :cond_165

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/a/e;->a()Lcom/igexin/push/extension/distribution/gbd/a/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/a/e;->c()V

    goto/16 :goto_165

    :cond_60
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/d;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/d;->d()V

    new-instance p1, Lcom/igexin/push/extension/distribution/gbd/d/b;

    invoke-direct {p1, p0}, Lcom/igexin/push/extension/distribution/gbd/d/b;-><init>(Lcom/igexin/push/extension/distribution/gbd/d/a;)V

    invoke-virtual {p0, p1, v3, v4}, Lcom/igexin/push/extension/distribution/gbd/d/a;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->W:Z

    if-eqz p1, :cond_7a

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/a/c;->a()Lcom/igexin/push/extension/distribution/gbd/a/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/a/c;->b()V

    :cond_7a
    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->X:Z

    if-eqz p1, :cond_165

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/a/e;->a()Lcom/igexin/push/extension/distribution/gbd/a/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/a/e;->b()V

    goto/16 :goto_165

    :pswitch_87
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x29

    if-eq p1, v0, :cond_8f

    goto/16 :goto_165

    :cond_8f
    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->W:Z

    if-eqz p1, :cond_9a

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/a/c;->a()Lcom/igexin/push/extension/distribution/gbd/a/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/a/c;->d()V

    :cond_9a
    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->X:Z

    if-eqz p1, :cond_165

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/a/e;->a()Lcom/igexin/push/extension/distribution/gbd/a/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/a/e;->d()V

    goto/16 :goto_165

    :pswitch_a7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_165

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/a/d;->a()Lcom/igexin/push/extension/distribution/gbd/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/a/d;->a(Landroid/content/Intent;)V

    goto/16 :goto_165

    :pswitch_b8
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x15

    if-eq p1, v0, :cond_101

    const/16 v0, 0x16

    if-eq p1, v0, :cond_c4

    goto/16 :goto_165

    :cond_c4
    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->A:Z

    if-eqz p1, :cond_d0

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(I)V

    :cond_d0
    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->B:Z

    if-nez p1, :cond_d8

    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->bM:Z

    if-eqz p1, :cond_165

    :cond_d8
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(I)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(I)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(I)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(I)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a(I)V

    goto :goto_165

    :cond_101
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->c()V

    goto :goto_165

    :pswitch_109
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v2, :cond_11a

    const/16 v0, 0xc

    if-eq p1, v0, :cond_112

    goto :goto_165

    :cond_112
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a()Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(I)V

    goto :goto_165

    :cond_11a
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a()Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(I)V

    goto :goto_165

    :cond_122
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_127

    goto :goto_165

    :cond_127
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/s;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/s;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/s;->a(Ljava/lang/Object;)V

    goto :goto_165

    :cond_131
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/d/a;->a()Lcom/igexin/push/extension/distribution/gbd/a/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/d/a;->b()V

    goto :goto_165

    :cond_139
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/e/a;->a()Lcom/igexin/push/extension/distribution/gbd/a/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/e/a;->b()V

    goto :goto_165

    :cond_141
    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->aH:Z

    if-eqz p1, :cond_14c

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/a/a;->a()Lcom/igexin/push/extension/distribution/gbd/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/a/a;->b()V

    :cond_14c
    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->aR:Z

    if-eqz p1, :cond_165

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/a/f;->a()Lcom/igexin/push/extension/distribution/gbd/a/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/a/f;->b()V
    :try_end_157
    .catchall {:try_start_0 .. :try_end_157} :catchall_158

    goto :goto_165

    :catchall_158
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GBD_Handler"

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_165
    :goto_165
    return-void

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_109
        :pswitch_b8
        :pswitch_a7
        :pswitch_87
        :pswitch_35
        :pswitch_24
        :pswitch_1b
    .end packed-switch
.end method
