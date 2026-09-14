###### Class com.igexin.push.extension.distribution.gbd.a.b.i (com.igexin.push.extension.distribution.gbd.a.b.i)
.class public Lcom/igexin/push/extension/distribution/gbd/a/b/i;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/igexin/push/extension/distribution/gbd/a/b/i;


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->b:J

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a()Lcom/igexin/push/extension/distribution/gbd/a/b/i;
    .registers 2

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->d:Lcom/igexin/push/extension/distribution/gbd/a/b/i;

    if-nez v0, :cond_d

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->d:Lcom/igexin/push/extension/distribution/gbd/a/b/i;

    :cond_d
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->d:Lcom/igexin/push/extension/distribution/gbd/a/b/i;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 6

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "GBD_GOSA"

    if-eqz v0, :cond_1e

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_59

    const-string p1, "intent start service"

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return v1

    :cond_1e
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->b(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_59

    const-string p1, "intent start broadcast"

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v1

    :cond_39
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_59

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "intent start activity"

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_59
    const/4 p1, 0x0

    return p1
.end method

.method private d()Z
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "look enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBD_GOSA"

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "look service = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->A:Z

    if-eqz v0, :cond_49

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->b:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x57e40

    cmp-long v0, v2, v4

    if-lez v0, :cond_49

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->e()Z

    move-result v0

    return v0

    :cond_49
    const-string v0, "gurad other service time not meet"

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->c:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v0, v3}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->b:J

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->f()V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->g()V

    return-void
.end method

.method private f()V
    .registers 18

    move-object/from16 v1, p0

    const-string v2, ","

    const-string v3, "GBD_GOSA"

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    :try_start_f
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    if-gtz v0, :cond_19

    return-void

    :cond_19
    iget-object v0, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->c:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v7, 0x7d0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3c
    array-length v0, v4

    if-ge v9, v0, :cond_198

    aget-object v0, v4, v9

    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    const/4 v11, 0x2

    if-le v10, v11, :cond_188

    aget-object v10, v0, v8

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_190

    if-nez v10, :cond_188

    :try_start_53
    aget-object v10, v0, v8

    const/4 v12, 0x1

    aget-object v12, v0, v12

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_188

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_66

    goto/16 :goto_188

    :cond_66
    const-string v13, "other service check pkgname srvname pass"

    invoke-static {v3, v13}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v13, v10, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v14, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_188

    const-string v14, "other service exist.."

    invoke-static {v3, v14}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V
    :try_end_8a
    .catchall {:try_start_53 .. :try_end_8a} :catchall_169

    :goto_8a
    :try_start_8a
    array-length v8, v0

    if-ge v11, v8, :cond_a8

    aget-object v8, v0, v11
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_164

    move-object/from16 v16, v4

    :try_start_91
    aget-object v4, v0, v11

    invoke-static {v4, v10, v7}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v15, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v4, v0, v11

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    goto :goto_8a

    :cond_a8
    move-object/from16 v16, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "true"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_155

    const-string v0, "guard other service start.."

    invoke-static {v3, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d0
    .catchall {:try_start_91 .. :try_end_d0} :catchall_162

    :try_start_d0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v8, "pkgName"

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "srvName"

    invoke-interface {v0, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "datetime"

    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "checkList"

    invoke-interface {v0, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v8, v5, v8}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v8, "intent_come_from"

    const-string v11, "getui"

    invoke-virtual {v13, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.sina.weibo"

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_124

    const-string v8, "start weibo service, add deviceid"

    invoke-static {v3, v8}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "clientId"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "|"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/ab;->a()Lcom/igexin/push/extension/distribution/gbd/i/ab;

    move-result-object v14

    invoke-virtual {v14}, Lcom/igexin/push/extension/distribution/gbd/i/ab;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_124
    iget-object v8, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    invoke-virtual {v8, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "look---startService pkgName = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " srvName = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v0, v8, v8}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/util/Map;II)V
    :try_end_149
    .catchall {:try_start_d0 .. :try_end_149} :catchall_14a

    goto :goto_153

    :catchall_14a
    move-exception v0

    :try_start_14b
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    const/4 v8, 0x2

    const/4 v10, 0x0

    invoke-static {v4, v10, v5, v8}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V

    :goto_153
    const/4 v8, 0x0

    goto :goto_18a

    :cond_155
    const-string v0, "other service already run.."

    invoke-static {v3, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15a
    .catchall {:try_start_14b .. :try_end_15a} :catchall_162

    const/4 v0, -0x1

    const/4 v8, 0x0

    :try_start_15c
    invoke-static {v4, v8, v5, v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_160

    goto :goto_18a

    :catchall_160
    move-exception v0

    goto :goto_16c

    :catchall_162
    move-exception v0

    goto :goto_167

    :catchall_164
    move-exception v0

    move-object/from16 v16, v4

    :goto_167
    const/4 v8, 0x0

    goto :goto_16c

    :catchall_169
    move-exception v0

    move-object/from16 v16, v4

    :goto_16c
    :try_start_16c
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Looker error:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_187
    .catchall {:try_start_16c .. :try_end_187} :catchall_190

    goto :goto_18a

    :cond_188
    :goto_188
    move-object/from16 v16, v4

    :goto_18a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v16

    goto/16 :goto_3c

    :catchall_190
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_198
    return-void
.end method

.method private g()V
    .registers 21

    move-object/from16 v1, p0

    const-string v2, ","

    const-string v3, "GBD_GOSA"

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    :try_start_f
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v5, 0x7d0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_28
    if-ge v8, v6, :cond_1fd

    aget-object v0, v4, v8
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_1f9

    :try_start_2c
    const-string v9, "\\|"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v9, v0

    const/4 v10, 0x4

    if-lt v9, v10, :cond_64

    aget-object v9, v0, v7

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-static {v10, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v12, v0, v11

    const/4 v13, 0x3

    aget-object v0, v0, v13

    const-string v13, "/"

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v13, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->c:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6f

    aget-object v14, v0, v7

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6f

    :cond_64
    :goto_64
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v8

    :cond_6c
    :goto_6c
    const/4 v4, 0x0

    goto/16 :goto_1ee

    :cond_6f
    const-string v14, "other service check pkgname srvname pass"

    invoke-static {v3, v14}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "0"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_7a
    .catchall {:try_start_2c .. :try_end_7a} :catchall_1e1

    const-string v15, "2"

    if-nez v14, :cond_8c

    :try_start_7e
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8c

    const-string v14, "1"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_64

    :cond_8c
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b1

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/d;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/d;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/igexin/push/extension/distribution/gbd/a/b/d;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "third guard intent activity not safe, pkg = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_b1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v0, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;)V

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    aget-object v11, v0, v7

    invoke-virtual {v15, v12, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    invoke-static {v15, v11}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v11
    :try_end_d8
    .catchall {:try_start_7e .. :try_end_d8} :catchall_1e1

    const-string v15, " srvName = "

    const-string v7, "pkgName = "

    if-eqz v11, :cond_1a8

    :try_start_de
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e3
    .catchall {:try_start_de .. :try_end_e3} :catchall_1e1

    move-object/from16 v16, v2

    :try_start_e5
    const-string v2, "guard other service start, pkg = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_fe
    .catchall {:try_start_e5 .. :try_end_fe} :catchall_1a6

    move-object/from16 v17, v4

    move/from16 v18, v6

    const/4 v4, 0x0

    :goto_103
    :try_start_103
    array-length v6, v0

    if-ge v4, v6, :cond_121

    aget-object v6, v0, v4
    :try_end_108
    .catchall {:try_start_103 .. :try_end_108} :catchall_1a4

    move/from16 v19, v8

    :try_start_10a
    aget-object v8, v0, v4

    invoke-static {v8, v12, v5}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v11, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v6, v0, v4

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v19

    goto :goto_103

    :cond_121
    move/from16 v19, v8

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_12d
    .catchall {:try_start_10a .. :try_end_12d} :catchall_1df

    if-nez v4, :cond_19d

    :try_start_12f
    invoke-direct {v1, v9, v10}, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent guard-- type = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-object v8, v0, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_6c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "guard intentExist = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v14, v4, v13, v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v6, "pkgName"

    invoke-interface {v4, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "srvName"

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "datetime"

    invoke-interface {v4, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "checkList"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4, v2, v2}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/util/Map;II)V
    :try_end_190
    .catchall {:try_start_12f .. :try_end_190} :catchall_192

    goto/16 :goto_6c

    :catchall_192
    move-exception v0

    :try_start_193
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_196
    .catchall {:try_start_193 .. :try_end_196} :catchall_1df

    const/4 v2, 0x2

    const/4 v4, 0x0

    :try_start_198
    invoke-static {v14, v4, v13, v2}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_6c

    :cond_19d
    const/4 v4, 0x0

    const/4 v0, -0x1

    invoke-static {v14, v4, v13, v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_1a2
    .catchall {:try_start_198 .. :try_end_1a2} :catchall_1dd

    goto/16 :goto_6c

    :catchall_1a4
    move-exception v0

    goto :goto_1e8

    :catchall_1a6
    move-exception v0

    goto :goto_1e4

    :cond_1a8
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v8

    :try_start_1b0
    invoke-direct {v1, v9, v10}, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "guard service not Exist type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1cc
    .catchall {:try_start_1b0 .. :try_end_1cc} :catchall_1df

    const/4 v4, 0x0

    :try_start_1cd
    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v4, v13, v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_1dc
    .catchall {:try_start_1cd .. :try_end_1dc} :catchall_1dd

    goto :goto_1ee

    :catchall_1dd
    move-exception v0

    goto :goto_1eb

    :catchall_1df
    move-exception v0

    goto :goto_1ea

    :catchall_1e1
    move-exception v0

    move-object/from16 v16, v2

    :goto_1e4
    move-object/from16 v17, v4

    move/from16 v18, v6

    :goto_1e8
    move/from16 v19, v8

    :goto_1ea
    const/4 v4, 0x0

    :goto_1eb
    :try_start_1eb
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_1ee
    .catchall {:try_start_1eb .. :try_end_1ee} :catchall_1f9

    :goto_1ee
    add-int/lit8 v8, v19, 0x1

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    move/from16 v6, v18

    const/4 v7, 0x0

    goto/16 :goto_28

    :catchall_1f9
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_1fd
    return-void
.end method


# virtual methods
.method public b()V
    .registers 11

    const-string v0, ","

    :try_start_2
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->C:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_8d

    const/4 v4, 0x2

    const-string v5, "/"

    const/4 v6, 0x0

    if-lez v3, :cond_4c

    const/4 v3, 0x0

    :goto_16
    :try_start_16
    array-length v7, v2

    if-ge v3, v7, :cond_4c

    aget-object v7, v2, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-le v8, v4, :cond_49

    aget-object v8, v7, v6

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_8d

    if-nez v8, :cond_49

    :try_start_2a
    aget-object v8, v7, v6

    const/4 v9, 0x1

    aget-object v7, v7, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v7

    :try_start_46
    invoke-static {v7}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_4c
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->D:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_91

    array-length v2, v1

    const/4 v3, 0x0

    :goto_57
    if-ge v3, v2, :cond_91

    aget-object v7, v1, v3

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7
    :try_end_62
    .catchall {:try_start_46 .. :try_end_62} :catchall_8d

    const/4 v9, 0x4

    if-lt v8, v9, :cond_8a

    :try_start_65
    aget-object v8, v7, v4

    const/4 v9, 0x3

    aget-object v7, v7, v9

    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v7, v6

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_65 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception v7

    :try_start_87
    invoke-static {v7}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8d

    :cond_8a
    :goto_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :catchall_8d
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_91
    return-void
.end method

.method public c()V
    .registers 7

    :try_start_0
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->d()Z

    move-result v0

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->l(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "third"

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/a/b/r;->a(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "GBD_GOSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGuardService = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isGuardSafe = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isBrandSdkRomEnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_44

    if-eqz v1, :cond_44

    if-eqz v2, :cond_44

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->e()V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    return-void
.end method
