###### Class com.igexin.push.extension.distribution.basic.j.j (com.igexin.push.extension.distribution.basic.j.j)
.class public Lcom/igexin/push/extension/distribution/basic/j/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    :try_start_3
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_a

    if-eqz p0, :cond_a

    return-object p0

    :catch_a
    :cond_a
    return-object v0
.end method
