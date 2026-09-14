###### Class com.igexin.push.core.e.d (com.igexin.push.core.e.d)
.class public Lcom/igexin/push/core/e/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/igexin/push/core/e/c;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_ee

    goto/16 :goto_b8

    :sswitch_d
    const-string v0, "HUAWEI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_b8

    :cond_17
    const/16 v1, 0xd

    goto/16 :goto_b8

    :sswitch_1b
    const-string v0, "HUA_WEI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_b8

    :cond_25
    const/16 v1, 0xc

    goto/16 :goto_b8

    :sswitch_29
    const-string v0, "REDMI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_b8

    :cond_33
    const/16 v1, 0xb

    goto/16 :goto_b8

    :sswitch_37
    const-string v0, "MEIZU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto/16 :goto_b8

    :cond_41
    const/16 v1, 0xa

    goto/16 :goto_b8

    :sswitch_45
    const-string v0, "HONOR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto/16 :goto_b8

    :cond_4f
    const/16 v1, 0x9

    goto/16 :goto_b8

    :sswitch_53
    const-string v0, "VIVO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto/16 :goto_b8

    :cond_5d
    const/16 v1, 0x8

    goto/16 :goto_b8

    :sswitch_61
    const-string v0, "OPPO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto :goto_b8

    :cond_6a
    const/4 v1, 0x7

    goto :goto_b8

    :sswitch_6c
    const-string v0, "IQOO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75

    goto :goto_b8

    :cond_75
    const/4 v1, 0x6

    goto :goto_b8

    :sswitch_77
    const-string v0, "ASUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_80

    goto :goto_b8

    :cond_80
    const/4 v1, 0x5

    goto :goto_b8

    :sswitch_82
    const-string v0, "ZUI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    goto :goto_b8

    :cond_8b
    const/4 v1, 0x4

    goto :goto_b8

    :sswitch_8d
    const-string v0, "BLACKSHARK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_96

    goto :goto_b8

    :cond_96
    const/4 v1, 0x3

    goto :goto_b8

    :sswitch_98
    const-string v0, "XIAOMI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a1

    goto :goto_b8

    :cond_a1
    const/4 v1, 0x2

    goto :goto_b8

    :sswitch_a3
    const-string v0, "SAMSUNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ac

    goto :goto_b8

    :cond_ac
    const/4 v1, 0x1

    goto :goto_b8

    :sswitch_ae
    const-string v0, "LENOVO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b7

    goto :goto_b8

    :cond_b7
    const/4 v1, 0x0

    :goto_b8
    packed-switch v1, :pswitch_data_128

    const/4 p0, 0x0

    goto :goto_ec

    :pswitch_bd
    new-instance p0, Lcom/igexin/push/core/e/l;

    invoke-direct {p0}, Lcom/igexin/push/core/e/l;-><init>()V

    goto :goto_ec

    :pswitch_c3
    new-instance p0, Lcom/igexin/push/core/e/k;

    invoke-direct {p0}, Lcom/igexin/push/core/e/k;-><init>()V

    goto :goto_ec

    :pswitch_c9
    new-instance p0, Lcom/igexin/push/core/e/m;

    invoke-direct {p0}, Lcom/igexin/push/core/e/m;-><init>()V

    goto :goto_ec

    :pswitch_cf
    new-instance p0, Lcom/igexin/push/core/e/o;

    invoke-direct {p0}, Lcom/igexin/push/core/e/o;-><init>()V

    goto :goto_ec

    :pswitch_d5
    new-instance p0, Lcom/igexin/push/core/e/j;

    invoke-direct {p0}, Lcom/igexin/push/core/e/j;-><init>()V

    goto :goto_ec

    :pswitch_db
    new-instance p0, Lcom/igexin/push/core/e/p;

    invoke-direct {p0}, Lcom/igexin/push/core/e/p;-><init>()V

    goto :goto_ec

    :pswitch_e1
    new-instance p0, Lcom/igexin/push/core/e/n;

    invoke-direct {p0}, Lcom/igexin/push/core/e/n;-><init>()V

    goto :goto_ec

    :pswitch_e7
    new-instance p0, Lcom/igexin/push/core/e/q;

    invoke-direct {p0}, Lcom/igexin/push/core/e/q;-><init>()V

    :goto_ec
    return-object p0

    nop

    :sswitch_data_ee
    .sparse-switch
        -0x7a5eb2cd -> :sswitch_ae
        -0x660bb426 -> :sswitch_a3
        -0x65b21745 -> :sswitch_98
        -0x43a32cba -> :sswitch_8d
        0x15c6e -> :sswitch_82
        0x1ece50 -> :sswitch_77
        0x226908 -> :sswitch_6c
        0x251fa0 -> :sswitch_61
        0x2834ac -> :sswitch_53
        0x41bb44a -> :sswitch_45
        0x45d8cac -> :sswitch_37
        0x4a3edcd -> :sswitch_29
        0x758d0d50 -> :sswitch_1b
        0x7fa995e7 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_e1
        :pswitch_db
        :pswitch_db
        :pswitch_e7
        :pswitch_d5
        :pswitch_cf
        :pswitch_c9
        :pswitch_cf
        :pswitch_c3
        :pswitch_bd
        :pswitch_db
        :pswitch_c3
        :pswitch_c3
    .end packed-switch
.end method
