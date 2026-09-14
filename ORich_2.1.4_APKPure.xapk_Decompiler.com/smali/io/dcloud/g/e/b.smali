###### Class io.dcloud.g.e.b (io.dcloud.g.e.b)
.class public Lio/dcloud/g/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lio/dcloud/g/e/b;


# instance fields
.field a:Landroid/content/Context;

.field private b:Lio/dcloud/g/e/a$c;

.field c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/g/e/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/dcloud/g/e/b;->c:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lio/dcloud/g/e/b;->b:Lio/dcloud/g/e/a$c;

    if-nez v0, :cond_38

    .line 6
    :try_start_b
    invoke-direct {p0, p1}, Lio/dcloud/g/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_32

    .line 10
    invoke-static {}, Lio/dcloud/g/e/a;->c()Lio/dcloud/g/e/a$c;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/g/e/b;->b:Lio/dcloud/g/e/a$c;

    .line 11
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/g/e/b;->b:Lio/dcloud/g/e/a$c;

    invoke-virtual {p2}, Lio/dcloud/g/e/a$c;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_38

    .line 13
    :cond_32
    invoke-static {p2}, Lio/dcloud/g/e/a;->a(Ljava/lang/String;)Lio/dcloud/g/e/a$c;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/g/e/b;->b:Lio/dcloud/g/e/a$c;
    :try_end_38
    .catch Ljava/security/GeneralSecurityException; {:try_start_b .. :try_end_38} :catch_38

    :catch_38
    :cond_38
    :goto_38
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/g/e/b;
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/g/e/b;->d:Lio/dcloud/g/e/b;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lio/dcloud/g/e/b;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lio/dcloud/g/e/b;->d:Lio/dcloud/g/e/b;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lio/dcloud/g/e/b;

    invoke-direct {v1, p0, p1}, Lio/dcloud/g/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lio/dcloud/g/e/b;->d:Lio/dcloud/g/e/b;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 7
    :cond_17
    :goto_17
    sget-object p0, Lio/dcloud/g/e/b;->d:Lio/dcloud/g/e/b;

    return-object p0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v1, 0x3e8

    .line 10
    invoke-static {v0, p1, v1}, Lio/dcloud/g/e/a;->a(Ljava/lang/String;[BI)Lio/dcloud/g/e/a$c;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lio/dcloud/g/e/a$c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/g/e/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 27
    :cond_7
    :try_start_7
    new-instance v0, Lio/dcloud/g/e/a$a;

    invoke-direct {v0, p1}, Lio/dcloud/g/e/a$a;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lio/dcloud/g/e/b;->b:Lio/dcloud/g/e/a$c;

    invoke-static {v0, p1}, Lio/dcloud/g/e/a;->b(Lio/dcloud/g/e/a$a;Lio/dcloud/g/e/a$c;)Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_12} :catch_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    const/4 v0, 0x0

    .line 5
    :try_start_8
    iget-object v1, p0, Lio/dcloud/g/e/b;->b:Lio/dcloud/g/e/a$c;

    invoke-static {p1, v1}, Lio/dcloud/g/e/a;->a(Ljava/lang/String;Lio/dcloud/g/e/a$c;)Lio/dcloud/g/e/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/g/e/a$a;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_12} :catch_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "SHA-256"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 4
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 14
    iget-object v0, p0, Lio/dcloud/g/e/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/g/e/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 19
    :try_start_34
    new-instance p1, Ljava/io/FileReader;

    invoke-direct {p1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 20
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    :goto_43
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 26
    :cond_4d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 27
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/g/e/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_5b} :catch_5c

    return-object p1

    :catch_5c
    :cond_5c
    return-object p2
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    .line 12
    iget-object v0, p0, Lio/dcloud/g/e/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/g/e/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 13
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/g/e/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/g/e/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_16
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_46

    if-nez p1, :cond_28

    .line 7
    :try_start_25
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_46

    .line 12
    :catch_28
    :cond_28
    :try_start_28
    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 13
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 14
    invoke-direct {p0, p2}, Lio/dcloud/g/e/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 16
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 17
    invoke-virtual {p1}, Ljava/io/FileWriter;->flush()V

    .line 18
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_45} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :catch_4a
    :goto_4a
    return-void
.end method
