###### Class com.igexin.push.extension.distribution.basic.d.b (com.igexin.push.extension.distribution.basic.d.b)
.class public Lcom/igexin/push/extension/distribution/basic/d/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/igexin/push/extension/distribution/basic/d/b;

.field private static final b:Ljava/lang/String;

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:Z

.field private static f:J

.field private static g:J

.field private static h:I

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Z

.field private static l:Lcom/igexin/push/extension/distribution/basic/e/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXT-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/igexin/push/extension/distribution/basic/d/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/igexin/push/extension/distribution/basic/d/b;->c:I

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->n:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->d:Ljava/lang/String;

    sget-boolean v0, Lcom/igexin/push/extension/distribution/basic/c/g;->j:Z

    sput-boolean v0, Lcom/igexin/push/extension/distribution/basic/d/b;->e:Z

    sget-wide v0, Lcom/igexin/push/extension/distribution/basic/c/g;->k:J

    sput-wide v0, Lcom/igexin/push/extension/distribution/basic/d/b;->f:J

    sget-wide v0, Lcom/igexin/push/extension/distribution/basic/c/g;->l:J

    sput-wide v0, Lcom/igexin/push/extension/distribution/basic/d/b;->g:J

    sget v0, Lcom/igexin/push/extension/distribution/basic/c/g;->o:I

    sput v0, Lcom/igexin/push/extension/distribution/basic/d/b;->h:I

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->p:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->i:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->q:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->j:Ljava/lang/String;

    sget-boolean v0, Lcom/igexin/push/extension/distribution/basic/c/g;->u:Z

    sput-boolean v0, Lcom/igexin/push/extension/distribution/basic/d/b;->k:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->l:Lcom/igexin/push/extension/distribution/basic/e/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/push/extension/distribution/basic/d/b;
    .registers 2

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->a:Lcom/igexin/push/extension/distribution/basic/d/b;

    if-nez v0, :cond_14

    new-instance v0, Lcom/igexin/push/extension/distribution/basic/d/b;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/basic/d/b;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->a:Lcom/igexin/push/extension/distribution/basic/d/b;

    new-instance v0, Lcom/igexin/push/extension/distribution/basic/e/a;

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/c/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/extension/distribution/basic/e/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->l:Lcom/igexin/push/extension/distribution/basic/e/a;

    :cond_14
    sget-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->a:Lcom/igexin/push/extension/distribution/basic/d/b;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/igexin/push/extension/distribution/basic/d/b;->l:Lcom/igexin/push/extension/distribution/basic/e/a;

    const-string p2, "extconfig"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/igexin/push/extension/distribution/basic/e/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public a(I[B)V
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object p1, Lcom/igexin/push/extension/distribution/basic/d/b;->l:Lcom/igexin/push/extension/distribution/basic/e/a;

    const-string p2, "extconfig"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/igexin/push/extension/distribution/basic/e/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public a(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/basic/c/g;->g:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a([B)V
    .registers 20

    move-object/from16 v0, p1

    const-string v1, "sdk.miui.wakeup.enable"

    const-string v2, "sdk.ext.guardgactivity.pmblacklist"

    const-string v3, "sdk.ext.guardgactivity.blacklist"

    const-string v4, "sdk.ext.httpdata.maxsize"

    const-string v5, "sdk.ext.foreground.phonelist"

    const-string v6, "sdk.ext.reportcid.restart.interval"

    const-string v7, "sdk.ext.reportcid.offline.interval"

    const-string v8, "sdk.ext.guardactivity.first"

    const-string v9, "sdk.ext.deviceid.sync.interval"

    const-string v10, "sdk.ext.guard.brandsdkrombl"

    const-string v11, "sdk.ext.startservice.limit"

    const-string v12, "config"

    const-string v13, "result"

    :try_start_1c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/igexin/push/extension/distribution/basic/d/b;->b:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v1

    const-string v1, "|parseSdkConfig resp data len = "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v0

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    move-object v14, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3d} :catch_15c

    move-object/from16 v17, v14

    move-object/from16 v14, p0

    :try_start_41
    invoke-virtual {v14, v1, v2}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(J)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|parseSdkConfig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17c

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    return-void

    :cond_78
    sget v1, Lcom/igexin/push/extension/distribution/basic/c/g;->e:I

    sput v1, Lcom/igexin/push/extension/distribution/basic/d/b;->c:I

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17c

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->h:Ljava/lang/String;

    :cond_97
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->i:Ljava/lang/String;

    :cond_a3
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/igexin/push/extension/distribution/basic/d/b;->c:I

    :cond_b3
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cd

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    :cond_cd
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/extension/distribution/basic/d/b;->e:Z

    :cond_d7
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_e1} :catch_15a

    :try_start_e1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v7, v0

    sput-wide v7, Lcom/igexin/push/extension/distribution/basic/d/b;->f:J
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_ee} :catch_ee

    :catch_ee
    :cond_ee
    :try_start_ee
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f8} :catch_15a

    :try_start_f8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    sput-wide v6, Lcom/igexin/push/extension/distribution/basic/d/b;->g:J
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_105} :catch_105

    :catch_105
    :cond_105
    :try_start_105
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_111

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->d:Ljava/lang/String;

    :cond_111
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_11b} :catch_15a

    :try_start_11b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/igexin/push/extension/distribution/basic/d/b;->h:I
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_125} :catch_125

    :catch_125
    :cond_125
    :try_start_125
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_139

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->i:Ljava/lang/String;

    :cond_139
    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_147

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->j:Ljava/lang/String;

    :cond_147
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_156

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/extension/distribution/basic/d/b;->k:Z

    :cond_156
    invoke-virtual/range {p0 .. p0}, Lcom/igexin/push/extension/distribution/basic/d/b;->c()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_159} :catch_15a

    goto :goto_17c

    :catch_15a
    move-exception v0

    goto :goto_15f

    :catch_15c
    move-exception v0

    move-object/from16 v14, p0

    :goto_15f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/extension/distribution/basic/d/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|parseSdkConfig error|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_17c
    :goto_17c
    return-void
.end method

.method public b()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/igexin/push/extension/distribution/basic/c/g;->f:Lcom/igexin/push/extension/distribution/basic/e/a;

    const-string v2, "select key, value from extconfig order by key"

    invoke-virtual {v1, v2, v0}, Lcom/igexin/push/extension/distribution/basic/e/a;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_d6

    :catchall_b
    :cond_b
    :goto_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d6

    const-string v1, "key"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_e0
    .catchall {:try_start_1 .. :try_end_1b} :catchall_d9

    const/16 v2, 0xb

    const-string v3, "value"

    if-eq v1, v2, :cond_33

    const/16 v2, 0xc

    if-eq v1, v2, :cond_33

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2a

    goto :goto_33

    :cond_2a
    :try_start_2a
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4a

    :cond_33
    :goto_33
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-static {v2}, Lcom/igexin/b/b/a;->c([B)[B

    move-result-object v2

    :cond_41
    if-nez v2, :cond_44

    goto :goto_b

    :cond_44
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    :goto_4a
    packed-switch v1, :pswitch_data_e8

    goto :goto_b

    :pswitch_4e
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/extension/distribution/basic/c/g;->u:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/extension/distribution/basic/d/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|read miuiWakeupEnable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_6e
    sput-object v2, Lcom/igexin/push/extension/distribution/basic/c/g;->i:Ljava/lang/String;

    goto :goto_b

    :pswitch_71
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sput-object v2, Lcom/igexin/push/extension/distribution/basic/c/g;->h:Ljava/lang/String;

    goto :goto_b

    :pswitch_7c
    sput-object v2, Lcom/igexin/push/extension/distribution/basic/c/g;->q:Ljava/lang/String;

    goto :goto_b

    :pswitch_7f
    sput-object v2, Lcom/igexin/push/extension/distribution/basic/c/g;->p:Ljava/lang/String;

    goto :goto_b

    :pswitch_82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/igexin/push/extension/distribution/basic/c/g;->o:I

    goto/16 :goto_b

    :pswitch_8e
    sput-object v2, Lcom/igexin/push/extension/distribution/basic/c/g;->n:Ljava/lang/String;

    goto/16 :goto_b

    :pswitch_92
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sput-wide v1, Lcom/igexin/push/extension/distribution/basic/c/g;->l:J

    goto/16 :goto_b

    :pswitch_9e
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sput-wide v1, Lcom/igexin/push/extension/distribution/basic/c/g;->k:J

    goto/16 :goto_b

    :pswitch_aa
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sput-wide v1, Lcom/igexin/push/extension/distribution/basic/c/g;->m:J

    goto/16 :goto_b

    :pswitch_b6
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/extension/distribution/basic/c/g;->j:Z

    goto/16 :goto_b

    :pswitch_be
    sput-object v2, Lcom/igexin/push/extension/distribution/basic/c/g;->d:Ljava/lang/String;

    goto/16 :goto_b

    :pswitch_c2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/igexin/push/extension/distribution/basic/c/g;->g:J

    goto/16 :goto_b

    :pswitch_ca
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/igexin/push/extension/distribution/basic/c/g;->e:I
    :try_end_d4
    .catchall {:try_start_2a .. :try_end_d4} :catchall_b

    goto/16 :goto_b

    :cond_d6
    if-eqz v0, :cond_e6

    goto :goto_e3

    :catchall_d9
    move-exception v1

    if-eqz v0, :cond_df

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_df
    throw v1

    :catch_e0
    nop

    if-eqz v0, :cond_e6

    :goto_e3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_e6
    return-void

    nop

    :pswitch_data_e8
    .packed-switch 0x2
        :pswitch_ca
        :pswitch_c2
        :pswitch_be
        :pswitch_b6
        :pswitch_aa
        :pswitch_9e
        :pswitch_92
        :pswitch_8e
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_71
        :pswitch_6e
        :pswitch_4e
    .end packed-switch
.end method

.method public b(J)V
    .registers 3

    sput-wide p1, Lcom/igexin/push/extension/distribution/basic/c/g;->m:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 6

    sget v0, Lcom/igexin/push/extension/distribution/basic/c/g;->e:I

    sget v1, Lcom/igexin/push/extension/distribution/basic/d/b;->c:I

    if-eq v0, v1, :cond_12

    sput v1, Lcom/igexin/push/extension/distribution/basic/c/g;->e:I

    const/4 v0, 0x2

    sget v1, Lcom/igexin/push/extension/distribution/basic/d/b;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(ILjava/lang/String;)V

    :cond_12
    sget-boolean v0, Lcom/igexin/push/extension/distribution/basic/c/g;->j:Z

    sget-boolean v1, Lcom/igexin/push/extension/distribution/basic/d/b;->e:Z

    if-eq v0, v1, :cond_24

    sput-boolean v1, Lcom/igexin/push/extension/distribution/basic/c/g;->j:Z

    const/4 v0, 0x5

    sget-boolean v1, Lcom/igexin/push/extension/distribution/basic/d/b;->e:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(ILjava/lang/String;)V

    :cond_24
    sget-wide v0, Lcom/igexin/push/extension/distribution/basic/c/g;->k:J

    sget-wide v2, Lcom/igexin/push/extension/distribution/basic/d/b;->f:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_38

    sput-wide v2, Lcom/igexin/push/extension/distribution/basic/c/g;->k:J

    const/4 v0, 0x7

    sget-wide v1, Lcom/igexin/push/extension/distribution/basic/d/b;->f:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(ILjava/lang/String;)V

    :cond_38
    sget-wide v0, Lcom/igexin/push/extension/distribution/basic/c/g;->l:J

    sget-wide v2, Lcom/igexin/push/extension/distribution/basic/d/b;->g:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4d

    sput-wide v2, Lcom/igexin/push/extension/distribution/basic/c/g;->l:J

    const/16 v0, 0x8

    sget-wide v1, Lcom/igexin/push/extension/distribution/basic/d/b;->g:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(ILjava/lang/String;)V

    :cond_4d
    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->n:Ljava/lang/String;

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/d/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->d:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->n:Ljava/lang/String;

    const/16 v0, 0x9

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/d/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(ILjava/lang/String;)V

    :cond_62
    sget v0, Lcom/igexin/push/extension/distribution/basic/c/g;->o:I

    sget v1, Lcom/igexin/push/extension/distribution/basic/d/b;->h:I

    if-eq v0, v1, :cond_75

    sput v1, Lcom/igexin/push/extension/distribution/basic/c/g;->o:I

    const/16 v0, 0xa

    sget v1, Lcom/igexin/push/extension/distribution/basic/d/b;->h:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(ILjava/lang/String;)V

    :cond_75
    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->p:Ljava/lang/String;

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/d/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->i:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->p:Ljava/lang/String;

    const/16 v0, 0xb

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/d/b;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(I[B)V

    :cond_92
    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->q:Ljava/lang/String;

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/d/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/d/b;->j:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->q:Ljava/lang/String;

    const/16 v0, 0xc

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/d/b;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(I[B)V

    :cond_af
    sget-boolean v0, Lcom/igexin/push/extension/distribution/basic/c/g;->u:Z

    sget-boolean v1, Lcom/igexin/push/extension/distribution/basic/d/b;->k:Z

    if-eq v0, v1, :cond_c2

    sput-boolean v1, Lcom/igexin/push/extension/distribution/basic/c/g;->u:Z

    const/16 v0, 0xf

    sget-boolean v1, Lcom/igexin/push/extension/distribution/basic/d/b;->k:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(ILjava/lang/String;)V

    :cond_c2
    const/16 v0, 0xd

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/c/g;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(ILjava/lang/String;)V

    const/16 v0, 0xe

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/c/g;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/d/b;->a(I[B)V

    return-void
.end method
