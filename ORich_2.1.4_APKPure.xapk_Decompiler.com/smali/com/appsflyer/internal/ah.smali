###### Class com.appsflyer.internal.ah (com.appsflyer.internal.ah)
.class final Lcom/appsflyer/internal/ah;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static AFKeystoreWrapper:Lcom/appsflyer/internal/ah;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/appsflyer/internal/ah;

    invoke-direct {v0}, Lcom/appsflyer/internal/ah;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ah;->AFKeystoreWrapper:Lcom/appsflyer/internal/ah;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static AFInAppEventType(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "AFRequestCache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static valueOf(Ljava/io/File;)Lcom/appsflyer/internal/h;
    .registers 5

    const/4 v0, 0x0

    .line 124
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_33
    .catchall {:try_start_1 .. :try_end_6} :catchall_27

    .line 125
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [C

    .line 126
    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    .line 127
    new-instance v3, Lcom/appsflyer/internal/h;

    invoke-direct {v3, v2}, Lcom/appsflyer/internal/h;-><init>([C)V

    .line 128
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1085
    iput-object p0, v3, Lcom/appsflyer/internal/h;->values:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_34
    .catchall {:try_start_6 .. :try_end_1b} :catchall_24

    .line 135
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p0

    .line 138
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/Throwable;)V

    :goto_23
    return-object v3

    :catchall_24
    move-exception p0

    move-object v0, v1

    goto :goto_28

    :catchall_27
    move-exception p0

    :goto_28
    if-eqz v0, :cond_32

    .line 135
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception v0

    .line 138
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/Throwable;)V

    .line 140
    :cond_32
    :goto_32
    throw p0

    :catch_33
    move-object v1, v0

    :catch_34
    if-eqz v1, :cond_3e

    .line 135
    :try_start_36
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p0

    .line 138
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method static valueOf(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/h;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "AFRequestCache"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1a

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_49

    .line 108
    :cond_1a
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 109
    array-length v1, p0

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_49

    aget-object v3, p0, v2

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found cached request"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 111
    invoke-static {v3}, Lcom/appsflyer/internal/ah;->valueOf(Ljava/io/File;)Lcom/appsflyer/internal/h;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_43

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :catch_43
    move-exception p0

    const-string v1, "Could not cache request"

    .line 115
    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    return-object v0
.end method

.method static values()Lcom/appsflyer/internal/ah;
    .registers 1

    .line 33
    sget-object v0, Lcom/appsflyer/internal/ah;->AFKeystoreWrapper:Lcom/appsflyer/internal/ah;

    return-object v0
.end method

.method static values(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    .line 2037
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "AFRequestCache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 149
    :try_start_2c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not delete "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_45
    return-void
.end method
