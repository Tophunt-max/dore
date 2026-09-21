###### Class com.bun.miitmdid.core.MdidSdk (com.bun.miitmdid.core.MdidSdk)
.class public Lcom/bun/miitmdid/core/MdidSdk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/SupplierListener;


# instance fields
.field private _InnerListener:Lcom/bun/supplier/IIdentifierListener;

.field private _setting:Lcom/bun/miitmdid/a/b;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Lcom/bun/lib/a;->a(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "mdidsdk"

    const-string v2, "extractor exception!"

    invoke-static {v1, v2, v0}, Lcom/bun/lib/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {p1}, Lcom/bun/lib/a;->a(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p1

    const-string v0, "mdidsdk"

    const-string v1, "extractor exception!"

    invoke-static {v0, v1, p1}, Lcom/bun/lib/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    return-void
.end method

.method private native _InnerFailed(ILcom/bun/supplier/IdSupplier;)I
.end method


# virtual methods
.method public native InitSdk(Landroid/content/Context;Lcom/bun/supplier/IIdentifierListener;)I
.end method

.method public native OnSupport(ZLcom/bun/supplier/IdSupplier;)V
.end method

.method public native UnInitSdk()V
.end method

###### Class com.bun.miitmdid.core.MdidSdk.a (com.bun.miitmdid.core.MdidSdk$a)
.class synthetic Lcom/bun/miitmdid/core/MdidSdk$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/core/MdidSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/bun/miitmdid/c/a;->values()[Lcom/bun/miitmdid/c/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/bun/miitmdid/c/a;->d:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->o:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->e:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->c:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->f:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->n:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->g:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->h:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->i:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->j:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->k:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->l:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->m:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->p:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdk$a;->a:[I

    sget-object v1, Lcom/bun/miitmdid/c/a;->q:Lcom/bun/miitmdid/c/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    return-void
.end method
