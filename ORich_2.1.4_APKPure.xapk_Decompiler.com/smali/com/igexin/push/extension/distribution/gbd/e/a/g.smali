###### Class com.igexin.push.extension.distribution.gbd.e.a.g (com.igexin.push.extension.distribution.gbd.e.a.g)
.class public Lcom/igexin/push/extension/distribution/gbd/e/a/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/push/extension/distribution/gbd/e/a/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;
    .registers 2

    const-class v0, Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    if-nez v1, :cond_e

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;-><init>()V

    sput-object v1, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    :cond_e
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/g;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "key"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    const-string p2, "runtime"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_20
    return-void
.end method

.method private a(I[B)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "key"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    const-string p2, "runtime"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_20
    return-void
.end method

.method private f()Ljava/net/ServerSocket;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const v1, 0xbd30

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_11

    :catchall_9
    const-string v0, "GBD_RDM"

    const-string v1, "open port error \uff01"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa1

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(J)V
    .registers 5

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->l:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x66

    invoke-direct {p0, v1, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveTimeOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GBD_RDM"

    invoke-static {p2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sput-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->aq:Ljava/lang/String;

    const/16 v0, 0xbe

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I[B)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 3

    if-nez p2, :cond_a

    :try_start_2
    const-string p1, "GBD_RDM"

    const-string p2, "imei main not format."

    invoke-static {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    sput-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->aw:Ljava/lang/String;

    const/16 p2, 0xc8

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I[B)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_1e
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/igexin/push/extension/distribution/gbd/c/c;->m:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_34

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x67

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I[B)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_4d
    return-void
.end method

.method public b()V
    .registers 15

    const-string v0, "GBD_RDM"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_6
    const-string v5, "select key, value from runtime order by key"

    sget-object v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    invoke-virtual {v6, v5, v4}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_2c6
    .catchall {:try_start_6 .. :try_end_e} :catchall_2c4

    if-eqz v5, :cond_2be

    move-object v6, v4

    const/4 v7, 0x0

    :goto_12
    :try_start_12
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2be

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_2ba
    .catchall {:try_start_12 .. :try_end_1c} :catchall_2b7

    const/16 v9, 0x67

    const/16 v10, 0x9d

    const/16 v11, 0x83

    const/16 v12, 0x82

    const/4 v13, 0x1

    if-eq v8, v9, :cond_73

    if-eq v8, v12, :cond_73

    if-eq v8, v11, :cond_73

    const/16 v9, 0x8b

    if-eq v8, v9, :cond_73

    const/16 v9, 0x97

    if-eq v8, v9, :cond_73

    if-eq v8, v10, :cond_73

    const/16 v9, 0xa3

    if-eq v8, v9, :cond_73

    const/16 v9, 0xa5

    if-eq v8, v9, :cond_73

    const/16 v9, 0xa8

    if-eq v8, v9, :cond_73

    const/16 v9, 0xaa

    if-eq v8, v9, :cond_73

    const/16 v9, 0xb0

    if-eq v8, v9, :cond_73

    const/16 v9, 0xb2

    if-eq v8, v9, :cond_73

    const/16 v9, 0xb4

    if-eq v8, v9, :cond_73

    const/16 v9, 0xbe

    if-eq v8, v9, :cond_73

    const/16 v9, 0xbf

    if-eq v8, v9, :cond_73

    const/16 v9, 0xc1

    if-eq v8, v9, :cond_73

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_73

    const/16 v9, 0xc9

    if-eq v8, v9, :cond_73

    const/16 v9, 0xca

    if-eq v8, v9, :cond_73

    const/16 v9, 0xcb

    if-ne v8, v9, :cond_6e

    goto :goto_73

    :cond_6e
    :try_start_6e
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_81

    :cond_73
    :goto_73
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    if-eqz v6, :cond_7d

    invoke-static {v6}, Lcom/igexin/b/b/a;->c([B)[B

    move-result-object v6
    :try_end_7d
    .catchall {:try_start_6e .. :try_end_7d} :catchall_2b1

    :cond_7d
    if-nez v6, :cond_80

    goto :goto_12

    :cond_80
    move-object v7, v4

    :goto_81
    const/16 v9, 0x7d

    if-eq v8, v9, :cond_29c

    const/16 v9, 0x7e

    if-eq v8, v9, :cond_295

    if-eq v8, v12, :cond_28d

    if-eq v8, v11, :cond_285

    if-eq v8, v10, :cond_27d

    const/16 v9, 0x9e

    if-eq v8, v9, :cond_276

    const/16 v9, 0xad

    if-eq v8, v9, :cond_26f

    const/16 v9, 0xae

    if-eq v8, v9, :cond_268

    packed-switch v8, :pswitch_data_318

    sparse-switch v8, :sswitch_data_322

    packed-switch v8, :pswitch_data_374

    packed-switch v8, :pswitch_data_382

    packed-switch v8, :pswitch_data_390

    packed-switch v8, :pswitch_data_39c

    goto/16 :goto_2ae

    :pswitch_af
    :try_start_af
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->az:Ljava/lang/String;

    goto/16 :goto_2ae

    :pswitch_b8
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->ay:Ljava/lang/String;

    goto/16 :goto_2ae

    :pswitch_c1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->ax:Ljava/lang/String;

    goto/16 :goto_2ae

    :pswitch_ca
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->aw:Ljava/lang/String;

    goto/16 :goto_2ae

    :pswitch_d3
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->at:Ljava/lang/String;

    goto/16 :goto_2ae

    :pswitch_dc
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->as:J

    goto/16 :goto_2ae

    :pswitch_e4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->ar:Ljava/lang/String;

    goto/16 :goto_2ae

    :pswitch_ed
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->aq:Ljava/lang/String;

    goto/16 :goto_2ae

    :pswitch_f6
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->ap:J

    goto/16 :goto_2ae

    :pswitch_fe
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->al:J

    goto/16 :goto_2ae

    :pswitch_106
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->Z:Ljava/lang/String;

    goto/16 :goto_2ae

    :pswitch_10f
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->z:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read MFLastTime = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->z:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2ae

    :pswitch_12d
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->y:Ljava/lang/String;

    goto/16 :goto_2ae

    :pswitch_136
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->F:J

    goto/16 :goto_2ae

    :pswitch_13e
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->E:J

    goto/16 :goto_2ae

    :pswitch_146
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->B:J

    goto/16 :goto_2ae

    :pswitch_14e
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->D:Ljava/lang/String;

    goto/16 :goto_2ae

    :pswitch_157
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->A:J

    goto/16 :goto_2ae

    :sswitch_15f
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->C:J

    goto/16 :goto_2ae

    :sswitch_167
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->aD:J

    goto/16 :goto_2ae

    :sswitch_16f
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->aC:J

    goto/16 :goto_2ae

    :sswitch_177
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->aB:J

    goto/16 :goto_2ae

    :sswitch_17f
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->ad:Ljava/lang/String;

    goto/16 :goto_2ae

    :sswitch_188
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->aa:J

    goto/16 :goto_2ae

    :sswitch_190
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->Y:Ljava/lang/String;

    goto/16 :goto_2ae

    :sswitch_199
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->P:J

    goto/16 :goto_2ae

    :sswitch_1a1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->Q:Ljava/lang/String;

    goto/16 :goto_2ae

    :sswitch_1aa
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    goto/16 :goto_2ae

    :sswitch_1b2
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    goto/16 :goto_2ae

    :sswitch_1ba
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    goto/16 :goto_2ae

    :sswitch_1c3
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->L:J

    goto/16 :goto_2ae

    :sswitch_1cb
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->U:Ljava/lang/String;

    goto/16 :goto_2ae

    :sswitch_1d4
    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->I:Ljava/lang/String;

    goto/16 :goto_2ae

    :sswitch_1d8
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->H:I

    goto/16 :goto_2ae

    :sswitch_1e0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->x:J

    goto/16 :goto_2ae

    :sswitch_1e8
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->w:Ljava/lang/String;

    goto/16 :goto_2ae

    :sswitch_1f1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->G:J

    goto/16 :goto_2ae

    :sswitch_1f9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sput v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->r:I

    goto/16 :goto_2ae

    :pswitch_205
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->n:J

    goto/16 :goto_2ae

    :pswitch_20d
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read recentWifi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->m:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    const/4 v9, 0x0

    :goto_232
    array-length v10, v7

    if-ge v9, v10, :cond_2ae

    sget-object v10, Lcom/igexin/push/extension/distribution/gbd/c/c;->m:Ljava/util/List;

    aget-object v11, v7, v9

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_232

    :pswitch_247
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->l:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read timeOffset = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->l:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2ae

    :catch_264
    move-exception v3

    move-object v4, v5

    goto/16 :goto_2c9

    :cond_268
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->ac:J

    goto :goto_2ae

    :cond_26f
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->ab:I

    goto :goto_2ae

    :cond_276
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->J:J

    goto :goto_2ae

    :cond_27d
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->K:Ljava/lang/String;

    goto :goto_2ae

    :cond_285
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->v:Ljava/lang/String;

    goto :goto_2ae

    :cond_28d
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->u:Ljava/lang/String;

    goto :goto_2ae

    :cond_295
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->o:J

    goto :goto_2ae

    :cond_29c
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sput-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->t:J

    sget-wide v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->t:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-lez v7, :cond_2ae

    sput-wide v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->t:J
    :try_end_2ae
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_2ae} :catch_264
    .catchall {:try_start_af .. :try_end_2ae} :catchall_2b7

    :cond_2ae
    :goto_2ae
    move v7, v8

    goto/16 :goto_12

    :catchall_2b1
    move-exception v8

    :try_start_2b2
    invoke-static {v8}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_2b5
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2b5} :catch_2ba
    .catchall {:try_start_2b2 .. :try_end_2b5} :catchall_2b7

    goto/16 :goto_12

    :catchall_2b7
    move-exception v0

    move-object v4, v5

    goto :goto_312

    :catch_2ba
    move-exception v3

    move-object v4, v5

    move v8, v7

    goto :goto_2c9

    :cond_2be
    if-eqz v5, :cond_2f1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_2f1

    :catchall_2c4
    move-exception v0

    goto :goto_312

    :catch_2c6
    move-exception v5

    move-object v3, v5

    const/4 v8, 0x0

    :goto_2c9
    :try_start_2c9
    invoke-static {v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read DB exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ec
    .catchall {:try_start_2c9 .. :try_end_2ec} :catchall_2c4

    if-eqz v4, :cond_2f1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2f1
    :goto_2f1
    sget-wide v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->l:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_311

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    mul-double v0, v0, v2

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double v0, v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(J)V

    :cond_311
    return-void

    :goto_312
    if-eqz v4, :cond_317

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_317
    throw v0

    :pswitch_data_318
    .packed-switch 0x66
        :pswitch_247
        :pswitch_20d
        :pswitch_205
    .end packed-switch

    :sswitch_data_322
    .sparse-switch
        0x6b -> :sswitch_1f9
        0x91 -> :sswitch_1f1
        0x97 -> :sswitch_1e8
        0x9a -> :sswitch_1e0
        0xa1 -> :sswitch_1d8
        0xa2 -> :sswitch_1d4
        0xa3 -> :sswitch_1cb
        0xa4 -> :sswitch_1c3
        0xa5 -> :sswitch_1ba
        0xa6 -> :sswitch_1b2
        0xa7 -> :sswitch_1aa
        0xa8 -> :sswitch_1a1
        0xa9 -> :sswitch_199
        0xaa -> :sswitch_190
        0xab -> :sswitch_188
        0xb0 -> :sswitch_17f
        0xcd -> :sswitch_177
        0xce -> :sswitch_16f
        0xcf -> :sswitch_167
        0xd0 -> :sswitch_15f
    .end sparse-switch

    :pswitch_data_374
    .packed-switch 0x8a
        :pswitch_157
        :pswitch_14e
        :pswitch_146
        :pswitch_13e
        :pswitch_136
    .end packed-switch

    :pswitch_data_382
    .packed-switch 0xb2
        :pswitch_12d
        :pswitch_10f
        :pswitch_106
        :pswitch_fe
        :pswitch_f6
    .end packed-switch

    :pswitch_data_390
    .packed-switch 0xbe
        :pswitch_ed
        :pswitch_e4
        :pswitch_dc
        :pswitch_d3
    .end packed-switch

    :pswitch_data_39c
    .packed-switch 0xc8
        :pswitch_ca
        :pswitch_c1
        :pswitch_b8
        :pswitch_af
    .end packed-switch
.end method

.method public b(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->aD:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xcf

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sput-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ar:Ljava/lang/String;

    const/16 v0, 0xbf

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I[B)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .registers 3

    if-nez p2, :cond_a

    :try_start_2
    const-string p1, "GBD_RDM"

    const-string p2, "imei total not format."

    invoke-static {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    sput-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ax:Ljava/lang/String;

    const/16 p2, 0xc9

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I[B)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_1e
    return-void
.end method

.method public c()V
    .registers 3

    const/16 v0, 0x82

    :try_start_2
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I[B)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method

.method public c(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->aB:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xcd

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sput-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->at:Ljava/lang/String;

    const/16 v0, 0xc1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I[B)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .registers 3

    if-nez p2, :cond_a

    :try_start_2
    const-string p1, "GBD_RDM"

    const-string p2, "imsi main not format."

    invoke-static {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    sput-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ay:Ljava/lang/String;

    const/16 p2, 0xca

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I[B)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_1e
    return-void
.end method

.method public d()V
    .registers 3

    const/16 v0, 0x83

    :try_start_2
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->v:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I[B)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method

.method public d(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->aC:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xce

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/16 v0, 0xa2

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .registers 3

    if-nez p2, :cond_a

    :try_start_2
    const-string p1, "GBD_RDM"

    const-string p2, "imsi total not format."

    invoke-static {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    sput-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->az:Ljava/lang/String;

    const/16 p2, 0xcb

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I[B)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_1e
    return-void
.end method

.method public e(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->al:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb5

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object p1

    const/16 v0, 0xa5

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I[B)V

    return-void
.end method

.method public e()Z
    .registers 3

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->h:Ljava/net/ServerSocket;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->h:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_c
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->f()Ljava/net/ServerSocket;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->h:Ljava/net/ServerSocket;

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->h:Ljava/net/ServerSocket;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    return v0

    :cond_18
    const-string v0, "GBD_RDM"

    const-string v1, "open port success !"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public f(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->as:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc0

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sput-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->U:Ljava/lang/String;

    const/16 v0, 0xa3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(I[B)V

    return-void
.end method

.method public g(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ap:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb6

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public h(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->C:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xd0

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public i(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->B:J

    sget-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->B:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8c

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public j(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->A:J

    sget-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->A:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8a

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public k(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->E:J

    sget-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->E:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8d

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public l(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->F:J

    sget-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->F:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8e

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public m(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->G:J

    sget-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->G:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x91

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public n(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->L:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa4

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public o(J)V
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa6

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public p(J)V
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa7

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public q(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->n:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x68

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public r(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->o:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7e

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public s(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->t:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7d

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public t(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->x:J

    sget-wide p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->x:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9a

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a(ILjava/lang/String;)V

    return-void
.end method
