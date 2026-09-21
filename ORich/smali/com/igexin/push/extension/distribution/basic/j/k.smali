###### Class com.igexin.push.extension.distribution.basic.j.k (com.igexin.push.extension.distribution.basic.j.k)
.class public Lcom/igexin/push/extension/distribution/basic/j/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/NotificationManager;ILandroid/app/Notification;I)V
    .registers 5

    :try_start_0
    iget p3, p2, Landroid/app/Notification;->icon:I

    if-eqz p3, :cond_2e

    sget-object p3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v0, p2, Landroid/app/Notification;->icon:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_2e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "NotificationShow|showNotification smallIconId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " couldn\'t find resource"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void

    :cond_2e
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_31

    :catchall_31
    return-void
.end method
