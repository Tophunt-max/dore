###### Class com.igexin.push.config.SDKUrlConfig (com.igexin.push.config.SDKUrlConfig)
.class public Lcom/igexin/push/config/SDKUrlConfig;
.super Ljava/lang/Object;


# static fields
.field public static BI_ADDRESS_IPS:[Ljava/lang/String; = null

.field public static CONFIG_ADDRESS_IPS:[Ljava/lang/String; = null

.field public static XFR_ADDRESS_BAK:[Ljava/lang/String; = null

.field private static final a:Ljava/lang/Object;

.field private static b:[Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = "HZ"

.field private static d:[Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->a:Ljava/lang/Object;

    const-string v0, "socket://sdk.open.talk.igexin.com:5224"

    const-string v1, "socket://sdk.open.talk.getui.net:5224"

    const-string v2, "socket://sdk.open.talk.gepush.com:5224"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->d:[Ljava/lang/String;

    const-string v0, "socket://43.231.145.10:5224"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_BAK:[Ljava/lang/String;

    const-string v0, "https://sdk-open-phone.getui.com/api.php"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->BI_ADDRESS_IPS:[Ljava/lang/String;

    const-string v0, "https://c-hzgt2.getui.com/api.php"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->CONFIG_ADDRESS_IPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBiUploadServiceUrl()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->BI_ADDRESS_IPS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?format=json&t=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCmAddress()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->e:Ljava/lang/String;

    if-nez v0, :cond_a

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->d:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_a
    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getConfigServiceUrl()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->CONFIG_ADDRESS_IPS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?format=json&t=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultXfrList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getXfrAddress()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1b
    return-object v1
.end method

.method public static getIdcConfigUrl()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public static getLocation()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getXfrAddress()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->d:[Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static hasMultipleXfr()Z
    .registers 2

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getDefaultXfrList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public static setCmAddress(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set cm address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sput-object p0, Lcom/igexin/push/config/SDKUrlConfig;->e:Ljava/lang/String;

    return-void
.end method

.method public static setIdcConfigUrl([Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/igexin/push/config/SDKUrlConfig;->b:[Ljava/lang/String;

    return-void
.end method

.method public static setLocation(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    sput-object p0, Lcom/igexin/push/core/f;->d:Ljava/lang/String;

    sput-object p0, Lcom/igexin/push/config/SDKUrlConfig;->c:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public static setXfrAddressIps([Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/igexin/push/config/SDKUrlConfig;->d:[Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
