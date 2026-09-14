###### Class com.igexin.push.extension.distribution.gbd.a.b.l (com.igexin.push.extension.distribution.gbd.a.b.l)
.class synthetic Lcom/igexin/push/extension/distribution/gbd/a/b/l;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->a()[Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/l;->a:[I

    :try_start_9
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/l;->a:[I

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/l;->a:[I

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->d:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/l;->a:[I

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->c:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
