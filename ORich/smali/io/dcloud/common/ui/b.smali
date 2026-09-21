###### Class io.dcloud.common.ui.b (io.dcloud.common.ui.b)
.class public Lio/dcloud/common/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/ui/b$b;
    }
.end annotation


# static fields
.field private static e:Lio/dcloud/common/ui/b;


# instance fields
.field private a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

.field private b:Z

.field public c:Z

.field private d:Lio/dcloud/common/ui/a;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-direct {v0}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lio/dcloud/common/ui/b;->b:Z

    .line 28
    iput-boolean v0, p0, Lio/dcloud/common/ui/b;->c:Z

    return-void
.end method

.method static synthetic a(Lio/dcloud/common/ui/b;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    return-object p0
.end method

.method public static a()Lio/dcloud/common/ui/b;
    .registers 1

    .line 2
    sget-object v0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/b;

    if-nez v0, :cond_b

    .line 3
    new-instance v0, Lio/dcloud/common/ui/b;

    invoke-direct {v0}, Lio/dcloud/common/ui/b;-><init>()V

    sput-object v0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/b;

    .line 5
    :cond_b
    sget-object v0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/b;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 316
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 318
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 320
    new-array p1, p1, [B

    .line 322
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 324
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception p0

    .line 328
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_21
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 280
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 284
    :try_start_b
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_37
    .catchall {:try_start_b .. :try_end_15} :catchall_35

    .line 286
    :goto_15
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 289
    :cond_1f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 290
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_26} :catch_32
    .catchall {:try_start_15 .. :try_end_26} :catchall_2f

    .line 296
    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2e
    return-object p0

    :catchall_2f
    move-exception p0

    move-object v1, v2

    goto :goto_4a

    :catch_32
    move-exception v0

    move-object v1, v2

    goto :goto_38

    :catchall_35
    move-exception p0

    goto :goto_4a

    :catch_37
    move-exception v0

    .line 299
    :goto_38
    :try_start_38
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    if-eqz v1, :cond_45

    .line 303
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    :cond_45
    :goto_45
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_4a
    if-eqz v1, :cond_54

    .line 310
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 315
    :cond_54
    :goto_54
    throw p0
.end method

.method private d(Landroid/content/Context;)Z
    .registers 11

    const-string v0, "privacy_config_uni_sp_file"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "privacy_config_version_uni_current_key"

    const-string v3, "emptyPrivacyVersion"

    .line 2
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const-string v5, "0"

    const-string v6, "template"

    const-string v7, "scok"

    const-string v8, "pdr"

    if-nez v2, :cond_3c

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, ""

    .line 6
    invoke-static {p1, v8, v7, v0}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 9
    invoke-static {p1, v8, v7, v5}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_3b
    return v1

    .line 17
    :cond_3c
    iget-object v0, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 23
    invoke-static {p1, v8, v7}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 27
    invoke-static {p1, v8, v7, v5}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_56
    return v1
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 5

    .line 388
    iget-object v0, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    if-eqz v0, :cond_1a

    .line 389
    invoke-virtual {v0}, Lio/dcloud/common/ui/a;->b()Lio/dcloud/common/ui/b$b;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/ui/a;->c()Z

    move-result v1

    .line 392
    iget-object v2, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/ui/a;->a()V

    const/4 v2, 0x0

    .line 393
    iput-object v2, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    const/4 v2, 0x1

    .line 396
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/dcloud/common/ui/b;->a(Landroid/app/Activity;Lio/dcloud/common/ui/b$b;ZZ)V

    :cond_1a
    return-void
.end method

.method public a(Landroid/app/Activity;Lio/dcloud/common/ui/b$b;ZZ)V
    .registers 7

    .line 329
    invoke-direct {p0, p1}, Lio/dcloud/common/ui/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 331
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/dcloud/common/ui/b$b;->a(Ljava/lang/String;)V

    return-void

    .line 336
    :cond_e
    new-instance v0, Lio/dcloud/common/ui/b$a;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/common/ui/b$a;-><init>(Lio/dcloud/common/ui/b;Landroid/app/Activity;Lio/dcloud/common/ui/b$b;)V

    .line 357
    iget-object v1, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    if-eqz v1, :cond_1d

    .line 358
    invoke-virtual {v1}, Lio/dcloud/common/ui/a;->a()V

    const/4 v1, 0x0

    .line 359
    iput-object v1, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    :cond_1d
    if-eqz p3, :cond_43

    .line 365
    new-instance p3, Lio/dcloud/common/ui/a;

    invoke-direct {p3, p1}, Lio/dcloud/common/ui/a;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    .line 366
    invoke-virtual {p3, p2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/b$b;)V

    .line 367
    iget-object p1, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/dcloud/common/ui/a;->a(Z)V

    .line 368
    iget-object p1, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    iget-object p3, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-virtual {p1, p3, p2, v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;ZLio/dcloud/common/ui/a$d;)V

    .line 369
    iget-object p1, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    sget p2, Lio/dcloud/base/R$layout;->dcloud_custom_privacy_second_dialog_layout:I

    invoke-virtual {p1, p2}, Lio/dcloud/common/ui/a;->a(I)V

    .line 370
    iget-object p1, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/ui/a;->d()V

    goto :goto_77

    .line 374
    :cond_43
    new-instance p3, Lio/dcloud/common/ui/a;

    invoke-direct {p3, p1}, Lio/dcloud/common/ui/a;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    .line 375
    invoke-virtual {p3, p2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/b$b;)V

    .line 376
    iget-object p1, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lio/dcloud/common/ui/a;->a(Z)V

    .line 378
    iget-object p1, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    sget p3, Lio/dcloud/base/R$layout;->dcloud_custom_privacy_dialog_layout:I

    invoke-virtual {p1, p3}, Lio/dcloud/common/ui/a;->a(I)V

    .line 379
    iget-object p1, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    iget-object p3, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-virtual {p1, p3, p2, v0}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;ZLio/dcloud/common/ui/a$d;)V

    .line 380
    iget-object p1, p0, Lio/dcloud/common/ui/b;->d:Lio/dcloud/common/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/ui/a;->d()V

    if-nez p4, :cond_77

    .line 385
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result p1

    if-eqz p1, :cond_77

    .line 387
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zh-CN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_77
    :goto_77
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 11

    .line 6
    iget-boolean v0, p0, Lio/dcloud/common/ui/b;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, ""

    .line 10
    invoke-static {p1, v0}, Lio/dcloud/common/util/AppRuntime;->isAppResourcesInAssetsPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lio/dcloud/common/ui/b;->c:Z

    .line 12
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/www/androidPrivacy.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    iget-boolean v3, p0, Lio/dcloud/common/ui/b;->c:Z

    const-string v4, "privacy json format error"

    const-string v5, "uniapp"

    const/4 v6, 0x0

    if-nez v3, :cond_6e

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 27
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/ui/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    :try_start_4d
    const-class v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 31
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_57} :catch_59

    move-object v6, v2

    goto :goto_5d

    .line 33
    :catch_59
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 36
    :goto_5d
    instance-of v2, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    if-eqz v2, :cond_66

    .line 37
    check-cast v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object v6, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    goto :goto_aa

    .line 39
    :cond_66
    new-instance v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-direct {v2}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;-><init>()V

    iput-object v2, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    goto :goto_aa

    .line 48
    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apps/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lio/dcloud/common/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ab

    .line 52
    :try_start_89
    const-class v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 53
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_93} :catch_96

    move-object v1, v6

    move-object v6, v2

    goto :goto_9a

    .line 55
    :catch_96
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 58
    :goto_9a
    instance-of v2, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    if-eqz v2, :cond_a3

    .line 59
    check-cast v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object v6, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    goto :goto_aa

    .line 61
    :cond_a3
    new-instance v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-direct {v2}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;-><init>()V

    iput-object v2, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    :goto_aa
    move-object v6, v1

    :cond_ab
    if-nez v6, :cond_b2

    .line 69
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 72
    :cond_b2
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    if-nez v1, :cond_bd

    .line 73
    new-instance v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-direct {v1}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;-><init>()V

    iput-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    .line 75
    :cond_bd
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    if-nez v2, :cond_ca

    .line 76
    new-instance v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    invoke-direct {v2}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;-><init>()V

    iput-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    .line 78
    :cond_ca
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    if-nez v2, :cond_d7

    .line 79
    new-instance v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    invoke-direct {v2}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;-><init>()V

    iput-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    .line 81
    :cond_d7
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    if-nez v2, :cond_e6

    .line 82
    new-instance v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    invoke-direct {v2}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;-><init>()V

    iput-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    .line 84
    :cond_e6
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    if-nez v2, :cond_f5

    .line 85
    new-instance v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    invoke-direct {v2}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;-><init>()V

    iput-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    .line 87
    :cond_f5
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    if-nez v2, :cond_104

    .line 88
    new-instance v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    invoke-direct {v2}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;-><init>()V

    iput-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    :cond_104
    const-string v1, "titleLocales"

    .line 93
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_116

    .line 95
    iget-object v3, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v4, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->title:Ljava/lang/String;

    invoke-static {v2, v4}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->title:Ljava/lang/String;

    :cond_116
    const-string v2, "messageLocales"

    .line 98
    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_128

    .line 100
    iget-object v4, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v5, v4, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->message:Ljava/lang/String;

    invoke-static {v3, v5}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->message:Ljava/lang/String;

    :cond_128
    const-string v3, "buttonAcceptLocales"

    .line 103
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_13a

    .line 105
    iget-object v5, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v7, v5, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    invoke-static {v4, v7}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    :cond_13a
    const-string v4, "buttonRefuseLocales"

    .line 108
    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_14c

    .line 110
    iget-object v7, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v8, v7, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonRefuse:Ljava/lang/String;

    invoke-static {v5, v8}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonRefuse:Ljava/lang/String;

    :cond_14c
    const-string v5, "second"

    .line 113
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_19c

    .line 116
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_166

    .line 118
    iget-object v6, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v6, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v7, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->title:Ljava/lang/String;

    invoke-static {v1, v7}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->title:Ljava/lang/String;

    .line 121
    :cond_166
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_178

    .line 123
    iget-object v2, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v6, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    invoke-static {v1, v6}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    .line 126
    :cond_178
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_18a

    .line 128
    iget-object v2, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v3, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonAccept:Ljava/lang/String;

    invoke-static {v1, v3}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonAccept:Ljava/lang/String;

    .line 131
    :cond_18a
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_19c

    .line 133
    iget-object v2, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v3, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonRefuse:Ljava/lang/String;

    invoke-static {v1, v3}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonRefuse:Ljava/lang/String;

    .line 140
    :cond_19c
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->version:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1ac

    .line 142
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    const-string v2, "emptyPrivacyVersion"

    iput-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->version:Ljava/lang/String;

    .line 145
    :cond_1ac
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c3

    const-string v1, "DCLOUD_PRIVACY_PROMPT"

    .line 146
    invoke-static {v1}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1bf

    move-object v1, v0

    .line 152
    :cond_1bf
    iget-object v2, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object v1, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    .line 156
    :cond_1c3
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "string"

    if-eqz v1, :cond_1e2

    const-string v1, "dcloud_privacy_prompt_title"

    .line 157
    invoke-static {p1, v2, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1e2

    .line 159
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1de

    move-object v1, v0

    .line 163
    :cond_1de
    iget-object v3, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object v1, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->title:Ljava/lang/String;

    .line 167
    :cond_1e2
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1ff

    const-string v1, "dcloud_privacy_prompt_message"

    .line 168
    invoke-static {p1, v2, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1ff

    .line 170
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1fb

    move-object v1, v0

    .line 174
    :cond_1fb
    iget-object v3, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object v1, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->message:Ljava/lang/String;

    .line 179
    :cond_1ff
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21c

    const-string v1, "dcloud_privacy_prompt_accept_button_text"

    .line 180
    invoke-static {p1, v2, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_21c

    .line 182
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_218

    move-object v1, v0

    .line 186
    :cond_218
    iget-object v3, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object v1, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    .line 191
    :cond_21c
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonRefuse:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_239

    const-string v1, "dcloud_privacy_prompt_refuse_button_text"

    .line 192
    invoke-static {p1, v2, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_239

    .line 194
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_235

    move-object v1, v0

    .line 198
    :cond_235
    iget-object v3, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object v1, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonRefuse:Ljava/lang/String;

    .line 203
    :cond_239
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25a

    const-string v1, "dcloud_second_privacy_prompt_message"

    .line 204
    invoke-static {p1, v2, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_25a

    .line 206
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_254

    move-object v1, v0

    .line 210
    :cond_254
    iget-object v3, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v3, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iput-object v1, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    .line 214
    :cond_25a
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27b

    const-string v1, "dcloud_second_privacy_prompt_title"

    .line 215
    invoke-static {p1, v2, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_27b

    .line 217
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_275

    move-object v1, v0

    .line 221
    :cond_275
    iget-object v3, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v3, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iput-object v1, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->title:Ljava/lang/String;

    .line 226
    :cond_27b
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonAccept:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29c

    const-string v1, "dcloud_second_privacy_prompt_accept_button_text"

    .line 227
    invoke-static {p1, v2, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_29c

    .line 229
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_296

    move-object v1, v0

    .line 233
    :cond_296
    iget-object v3, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v3, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iput-object v1, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonAccept:Ljava/lang/String;

    .line 237
    :cond_29c
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonRefuse:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2be

    const-string v1, "dcloud_second_privacy_prompt_refuse_button_text"

    .line 238
    invoke-static {p1, v2, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2be

    .line 240
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2b7

    goto :goto_2b8

    :cond_2b7
    move-object v0, p1

    .line 244
    :goto_2b8
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iput-object v0, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonRefuse:Ljava/lang/String;

    .line 250
    :cond_2be
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->backgroundColor:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d2

    .line 251
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    const-string v0, "#FFFFFF"

    iput-object v0, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->backgroundColor:Ljava/lang/String;

    .line 254
    :cond_2d2
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->borderRadius:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e6

    .line 255
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    const-string v0, "10px"

    iput-object v0, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->borderRadius:Ljava/lang/String;

    .line 258
    :cond_2e6
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;->color:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "#000000"

    if-eqz p1, :cond_2fe

    .line 259
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    iput-object v0, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;->color:Ljava/lang/String;

    .line 262
    :cond_2fe
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;->color:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_314

    .line 263
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    iput-object v0, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;->color:Ljava/lang/String;

    .line 266
    :cond_314
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_32a

    .line 267
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iput-object v0, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    .line 272
    :cond_32a
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_33c

    .line 273
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    iput-object v0, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;->color:Ljava/lang/String;

    .line 275
    :cond_33c
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_352

    .line 276
    iget-object p1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iput-object v0, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    :cond_352
    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Lio/dcloud/common/ui/b;->b:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/ui/b;->c:Z

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .registers 5

    .line 2
    iget-boolean v0, p0, Lio/dcloud/common/ui/b;->b:Z

    if-nez v0, :cond_7

    .line 3
    invoke-virtual {p0, p1}, Lio/dcloud/common/ui/b;->a(Landroid/content/Context;)V

    .line 6
    :cond_7
    iget-object v0, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    const-string v1, "pdr"

    const-string v2, "scok"

    .line 7
    invoke-static {p1, v1, v2}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 10
    :cond_21
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    const-string p1, "template"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, 0x1

    return p1

    :cond_31
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/common/ui/b;->b:Z

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/common/ui/b;->a(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    .line 6
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "template"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "privacy_config_uni_sp_file"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "privacy_config_version_uni_current_key"

    const-string v2, ""

    .line 9
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v1, p0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->version:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    const/4 p1, 0x1

    return p1

    :cond_32
    return v0
.end method

###### Class io.dcloud.common.ui.b.a (io.dcloud.common.ui.b$a)
.class Lio/dcloud/common/ui/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/ui/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/b;->a(Landroid/app/Activity;Lio/dcloud/common/ui/b$b;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lio/dcloud/common/ui/b$b;

.field final synthetic c:Lio/dcloud/common/ui/b;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/b;Landroid/app/Activity;Lio/dcloud/common/ui/b$b;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/b$a;->c:Lio/dcloud/common/ui/b;

    iput-object p2, p0, Lio/dcloud/common/ui/b$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lio/dcloud/common/ui/b$a;->b:Lio/dcloud/common/ui/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/b$a;->a:Landroid/app/Activity;

    const-string v1, "privacy_config_uni_sp_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "privacy_config_version_uni_current_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/ui/b$a;->a:Landroid/app/Activity;

    const-string v0, "pdr"

    const-string v1, "scok"

    const-string v2, "1"

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lio/dcloud/common/ui/b$a;->b:Lio/dcloud/common/ui/b$b;

    invoke-interface {p1}, Lio/dcloud/common/ui/b$b;->a()V

    return-void
.end method

.method public onCancel()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/b$a;->a:Landroid/app/Activity;

    const-string v1, "pdr"

    const-string v2, "scok"

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/b$a;->b:Lio/dcloud/common/ui/b$b;

    iget-object v1, p0, Lio/dcloud/common/ui/b$a;->c:Lio/dcloud/common/ui/b;

    invoke-static {v1}, Lio/dcloud/common/ui/b;->a(Lio/dcloud/common/ui/b;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/dcloud/common/ui/b$b;->a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V

    return-void
.end method

###### Class io.dcloud.common.ui.b.InterfaceC0036b (io.dcloud.common.ui.b$b)
.class public interface abstract Lio/dcloud/common/ui/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method
