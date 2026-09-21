###### Class com.igexin.push.extension.distribution.gbd.a.c.b (com.igexin.push.extension.distribution.gbd.a.c.b)
.class Lcom/igexin/push/extension/distribution/gbd/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/a/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .registers 11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_93

    const/4 v1, 0x4

    if-eq p1, v1, :cond_8

    goto/16 :goto_a1

    :cond_8
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/a;)J

    move-result-wide v3

    sub-long v3, v1, v3

    sget-wide v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->u:J

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    cmp-long p1, v3, v5

    if-lez p1, :cond_29

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-static {p1, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/a;J)J

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/a;I)I

    :cond_29
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/a;)I

    move-result p1

    const/4 v3, 0x3

    if-ge p1, v3, :cond_a1

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->c(Lcom/igexin/push/extension/distribution/gbd/a/c/a;)J

    move-result-wide v3

    sub-long v3, v1, v3

    sget-wide v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->w:J

    mul-long v5, v5, v7

    cmp-long p1, v3, v5

    if-ltz p1, :cond_a1

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->d(Lcom/igexin/push/extension/distribution/gbd/a/c/a;)I

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-static {p1, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/a;J)J

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/d/d;->a()Lcom/igexin/push/extension/distribution/gbd/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/d/d;->e()Z

    move-result p1

    if-eqz p1, :cond_a1

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-virtual {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a(Z)Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_a1

    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    iget-object v0, v0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a:Landroid/location/Location;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    iget-object v0, v0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    sget v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->v:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_80

    goto :goto_a1

    :cond_80
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->e(Lcom/igexin/push/extension/distribution/gbd/a/c/a;)Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, v0, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a:Landroid/location/Location;

    goto :goto_a1

    :cond_93
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/a;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/a;J)J
    :try_end_9c
    .catchall {:try_start_8 .. :try_end_9c} :catchall_9d

    goto :goto_a1

    :catchall_9d
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_a1
    :goto_a1
    return-void
.end method
