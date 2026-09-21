###### Class com.igexin.push.core.k (com.igexin.push.core.k)
.class synthetic Lcom/igexin/push/core/k;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/igexin/push/core/l;->a()[Lcom/igexin/push/core/l;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/igexin/push/core/k;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;

    invoke-virtual {v2}, Lcom/igexin/push/core/l;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/igexin/push/core/k;->b:[I

    sget-object v3, Lcom/igexin/push/core/l;->b:Lcom/igexin/push/core/l;

    invoke-virtual {v3}, Lcom/igexin/push/core/l;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/igexin/push/core/k;->b:[I

    sget-object v4, Lcom/igexin/push/core/l;->c:Lcom/igexin/push/core/l;

    invoke-virtual {v4}, Lcom/igexin/push/core/l;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v3, Lcom/igexin/push/core/k;->b:[I

    sget-object v4, Lcom/igexin/push/core/l;->d:Lcom/igexin/push/core/l;

    invoke-virtual {v4}, Lcom/igexin/push/core/l;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    invoke-static {}, Lcom/igexin/push/core/m;->a()[Lcom/igexin/push/core/m;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/igexin/push/core/k;->a:[I

    :try_start_3c
    sget-object v4, Lcom/igexin/push/core/m;->a:Lcom/igexin/push/core/m;

    invoke-virtual {v4}, Lcom/igexin/push/core/m;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v1, Lcom/igexin/push/core/k;->a:[I

    sget-object v3, Lcom/igexin/push/core/m;->b:Lcom/igexin/push/core/m;

    invoke-virtual {v3}, Lcom/igexin/push/core/m;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4e
    sget-object v0, Lcom/igexin/push/core/k;->a:[I

    sget-object v1, Lcom/igexin/push/core/m;->c:Lcom/igexin/push/core/m;

    invoke-virtual {v1}, Lcom/igexin/push/core/m;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_58

    :catch_58
    return-void
.end method
