###### Class io.dcloud.common.util.BuildProperties (io.dcloud.common.util.BuildProperties)
.class public Lio/dcloud/common/util/BuildProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BUILD_PROPERTIES_FILE_NAME:Ljava/lang/String; = ".buildPropertiesMD5.data"

.field private static BUILD_PROPERTIES_FILE_PATH:Ljava/lang/String; = ""

.field private static volatile ourInstance:Lio/dcloud/common/util/BuildProperties;


# instance fields
.field private properties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/util/BuildProperties;->properties:Ljava/util/Properties;

    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "build.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    return-void
.end method

.method public static getInstance()Lio/dcloud/common/util/BuildProperties;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/dcloud/common/util/BuildProperties;->ourInstance:Lio/dcloud/common/util/BuildProperties;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lio/dcloud/common/util/BuildProperties;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lio/dcloud/common/util/BuildProperties;->ourInstance:Lio/dcloud/common/util/BuildProperties;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lio/dcloud/common/util/BuildProperties;

    invoke-direct {v1}, Lio/dcloud/common/util/BuildProperties;-><init>()V

    sput-object v1, Lio/dcloud/common/util/BuildProperties;->ourInstance:Lio/dcloud/common/util/BuildProperties;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 8
    :cond_17
    :goto_17
    sget-object v0, Lio/dcloud/common/util/BuildProperties;->ourInstance:Lio/dcloud/common/util/BuildProperties;

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getBuildPropertiesLimit(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->isSDcardExists()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_d

    .line 2
    sget-object p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sBaseFsCachePath:Ljava/lang/String;

    sput-object p1, Lio/dcloud/common/util/BuildProperties;->BUILD_PROPERTIES_FILE_PATH:Ljava/lang/String;

    goto :goto_1a

    :cond_d
    if-nez p1, :cond_10

    return-object v1

    .line 7
    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lio/dcloud/common/util/BuildProperties;->BUILD_PROPERTIES_FILE_PATH:Ljava/lang/String;

    .line 11
    :goto_1a
    :try_start_1a
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v2, "build.prop"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ac

    const/4 v0, 0x0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BuildProperties;->BUILD_PROPERTIES_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/dcloud/common/util/BuildProperties;->BUILD_PROPERTIES_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_61

    .line 17
    invoke-static {v2}, Lio/dcloud/common/util/IOUtil;->readStringFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_65

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    goto :goto_64

    .line 23
    :cond_61
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :goto_64
    const/4 v0, 0x1

    :cond_65
    if-eqz v0, :cond_ac

    .line 27
    invoke-static {v2, p1}, Lio/dcloud/common/util/IOUtil;->writeStringFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 30
    iget-object v0, p0, Lio/dcloud/common/util/BuildProperties;->properties:Ljava/util/Properties;

    if-eqz v0, :cond_97

    .line 31
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7b

    .line 35
    :cond_97
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ac

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_a5} :catch_a8

    if-nez v0, :cond_ac

    return-object p1

    :catch_a8
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ac
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
