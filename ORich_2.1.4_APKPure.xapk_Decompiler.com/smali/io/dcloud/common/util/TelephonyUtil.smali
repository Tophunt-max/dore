###### Class io.dcloud.common.util.TelephonyUtil (io.dcloud.common.util.TelephonyUtil)
.class public Lio/dcloud/common/util/TelephonyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static AId:Ljava/lang/String; = ""

.field private static MultiIMEITemp:[Ljava/lang/String; = null

.field private static final OLD_UUID_FILE_NAME:Ljava/lang/String; = ".imei.txt"

.field public static final TAG:Ljava/lang/String; = "TelephonyUtil"

.field private static final UUID_FILE_NAME:Ljava/lang/String; = ".DC4278477faeb9.txt"

.field private static isGetAId:Z = false

.field private static isGetIMSI:Z = false

.field private static isGetMultiIMEI:Z = false

.field private static mImei:Ljava/lang/String; = ""

.field private static muuid:Ljava/lang/String; = null

.field private static sIMSI:Ljava/lang/String; = null

.field private static sImei:Ljava/lang/String; = ""

.field private static sImeiAndBakInfo:Ljava/lang/String;

.field private static sOriginalImeiAndBakInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRandomBSFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_14

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 6
    :cond_14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "-"

    const-string v1, ""

    .line 8
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "\n"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 9
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 11
    :try_start_2e
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 12
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 13
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 16
    invoke-static {p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_43

    goto :goto_58

    .line 19
    :cond_43
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_4e} :catch_54
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_4e} :catch_4f

    goto :goto_58

    :catch_4f
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    :catch_54
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_58
    return-object p3
.end method

.method public static getAId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/TelephonyUtil;->isGetAId:Z

    if-nez v0, :cond_17

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aWZsemdhbFdhbA=="

    invoke-static {v0}, Lio/dcloud/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/util/TelephonyUtil;->AId:Ljava/lang/String;

    const/4 p0, 0x1

    .line 3
    sput-boolean p0, Lio/dcloud/common/util/TelephonyUtil;->isGetAId:Z

    .line 5
    :cond_17
    sget-object p0, Lio/dcloud/common/util/TelephonyUtil;->AId:Ljava/lang/String;

    return-object p0
.end method

.method private static getAPSubId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_20

    :try_start_6
    const-string v0, "phone"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "b218W31qe2t6YWptekFs"

    .line 5
    invoke-static {v0}, Lio/dcloud/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Lio/dcloud/common/util/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 7
    check-cast p0, Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    :cond_20
    const/4 p0, 0x0

    :goto_21
    return-object p0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lio/dcloud/common/util/TelephonyUtil;->getIMEI(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIMEI(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lio/dcloud/common/util/TelephonyUtil;->getIMEI(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIMEI(Landroid/content/Context;ZZ)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/common/util/TelephonyUtil;->getSBBS(Landroid/content/Context;ZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIMEIS(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/dcloud/common/util/TelephonyUtil;->getMultiIMEI(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    const-string v0, ","

    .line 3
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_f

    :catch_d
    :cond_d
    const-string p0, ""

    :goto_f
    return-object p0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    .line 5
    :cond_e
    sget-boolean v0, Lio/dcloud/common/util/TelephonyUtil;->isGetIMSI:Z

    if-eqz v0, :cond_15

    .line 6
    sget-object p0, Lio/dcloud/common/util/TelephonyUtil;->sIMSI:Ljava/lang/String;

    return-object p0

    .line 8
    :cond_15
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sIMSI:Ljava/lang/String;

    if-eqz v0, :cond_1a

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    .line 11
    invoke-static {v0, p0}, Lio/dcloud/common/util/TelephonyUtil;->getSubId(ILandroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    .line 12
    invoke-static {v1, p0}, Lio/dcloud/common/util/TelephonyUtil;->getSubId(ILandroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_30

    if-ne v2, v3, :cond_30

    .line 14
    invoke-static {p0}, Lio/dcloud/common/util/TelephonyUtil;->getAPSubId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/util/TelephonyUtil;->sIMSI:Ljava/lang/String;

    goto :goto_78

    .line 16
    :cond_30
    invoke-static {v0, p0}, Lio/dcloud/common/util/TelephonyUtil;->getPhoneInfo(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-static {v2, p0}, Lio/dcloud/common/util/TelephonyUtil;->getPhoneInfo(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 19
    sput-object v0, Lio/dcloud/common/util/TelephonyUtil;->sIMSI:Ljava/lang/String;

    .line 20
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sIMSI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/util/TelephonyUtil;->sIMSI:Ljava/lang/String;

    goto :goto_78

    .line 23
    :cond_69
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 24
    sput-object v2, Lio/dcloud/common/util/TelephonyUtil;->sIMSI:Ljava/lang/String;

    goto :goto_78

    .line 26
    :cond_72
    invoke-static {p0}, Lio/dcloud/common/util/TelephonyUtil;->getAPSubId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/util/TelephonyUtil;->sIMSI:Ljava/lang/String;

    .line 29
    :cond_78
    :goto_78
    sput-boolean v1, Lio/dcloud/common/util/TelephonyUtil;->isGetIMSI:Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7a} :catch_7a

    .line 34
    :catch_7a
    sget-object p0, Lio/dcloud/common/util/TelephonyUtil;->sIMSI:Ljava/lang/String;

    return-object p0
.end method

.method private static getMultiIMEI(Landroid/content/Context;)[Ljava/lang/String;
    .registers 12

    const-string v0, "getImei"

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    .line 5
    :cond_c
    sget-boolean v1, Lio/dcloud/common/util/TelephonyUtil;->isGetMultiIMEI:Z

    if-eqz v1, :cond_13

    .line 6
    sget-object p0, Lio/dcloud/common/util/TelephonyUtil;->MultiIMEITemp:[Ljava/lang/String;

    return-object p0

    :cond_13
    const-string v1, "phone"

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 14
    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getImei2"

    invoke-static {v3, v4, p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 16
    invoke-static {v1}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v4
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3d} :catch_63

    if-nez v4, :cond_40

    goto :goto_41

    :cond_40
    move-object v1, v2

    .line 19
    :goto_41
    :try_start_41
    invoke-static {v3}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v4
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_61

    if-nez v4, :cond_61

    .line 21
    :try_start_47
    invoke-static {v1}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 22
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-static {v4}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_65

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5b} :catch_5f

    if-nez v5, :cond_65

    move-object v1, v4

    goto :goto_65

    :catch_5f
    nop

    goto :goto_65

    :catch_61
    :cond_61
    move-object v3, v2

    goto :goto_65

    :catch_63
    move-object v1, v2

    move-object v3, v1

    .line 32
    :cond_65
    :goto_65
    invoke-static {v1}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_73

    invoke-static {v3}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 34
    :cond_73
    :try_start_73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v4, v0, p0, v7, v9}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v8, v9, v5

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v5

    invoke-static {v7, v0, p0, v9, v8}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v4, :cond_b2

    .line 36
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b2

    move-object v1, v4

    :cond_b2
    if-eqz v0, :cond_d7

    .line 39
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_b8} :catch_ea

    if-nez v7, :cond_d7

    .line 41
    :try_start_ba
    invoke-static {v1}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 42
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-static {v4}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d3

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_ce} :catch_d5

    if-nez v3, :cond_d3

    move-object v3, v0

    move-object v1, v4

    goto :goto_d7

    :cond_d3
    move-object v3, v0

    goto :goto_d7

    :catch_d5
    nop

    goto :goto_eb

    :cond_d7
    :goto_d7
    if-nez v4, :cond_ea

    if-nez v0, :cond_ea

    if-nez v1, :cond_ea

    if-nez v3, :cond_ea

    .line 49
    :try_start_df
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {p0}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v0
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e7} :catch_ea

    if-nez v0, :cond_ea

    move-object v1, p0

    :catch_ea
    :cond_ea
    move-object v0, v3

    .line 58
    :goto_eb
    invoke-static {v1}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_101

    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_101

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    aput-object v1, p0, v5

    aput-object v0, p0, v6

    .line 59
    sput-object p0, Lio/dcloud/common/util/TelephonyUtil;->MultiIMEITemp:[Ljava/lang/String;

    goto :goto_11d

    .line 60
    :cond_101
    invoke-static {v1}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10e

    new-array p0, v6, [Ljava/lang/String;

    aput-object v1, p0, v5

    .line 61
    sput-object p0, Lio/dcloud/common/util/TelephonyUtil;->MultiIMEITemp:[Ljava/lang/String;

    goto :goto_11d

    .line 62
    :cond_10e
    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_11b

    new-array p0, v6, [Ljava/lang/String;

    aput-object v0, p0, v5

    .line 63
    sput-object p0, Lio/dcloud/common/util/TelephonyUtil;->MultiIMEITemp:[Ljava/lang/String;

    goto :goto_11d

    .line 65
    :cond_11b
    sput-object v2, Lio/dcloud/common/util/TelephonyUtil;->MultiIMEITemp:[Ljava/lang/String;

    .line 67
    :goto_11d
    sput-boolean v6, Lio/dcloud/common/util/TelephonyUtil;->isGetMultiIMEI:Z

    .line 68
    sget-object p0, Lio/dcloud/common/util/TelephonyUtil;->MultiIMEITemp:[Ljava/lang/String;

    return-object p0
.end method

.method private static getPhoneInfo(ILandroid/content/Context;)Ljava/lang/Object;
    .registers 7

    :try_start_0
    const-string v0, "phone"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "b218W31qe2t6YWptekFs"

    .line 3
    invoke-static {v0}, Lio/dcloud/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_27

    new-array v1, v4, [Ljava/lang/Class;

    .line 5
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/common/util/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3d

    :cond_27
    if-ne v1, v2, :cond_3c

    new-array v1, v4, [Ljava/lang/Class;

    .line 7
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/common/util/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    return-object p0
.end method

.method public static getSBBS(Landroid/content/Context;ZZ)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/common/util/TelephonyUtil;->getSBBS(Landroid/content/Context;ZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSBBS(Landroid/content/Context;ZZZ)Ljava/lang/String;
    .registers 23

    move-object/from16 v1, p0

    const-string v2, ".imei.txt"

    const-string v3, "\n"

    .line 2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "|"

    if-eqz p1, :cond_12

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    const-string v6, ""

    if-nez v1, :cond_1b

    if-eqz p1, :cond_1a

    const-string v6, "|||||"

    :cond_1a
    return-object v6

    :cond_1b
    if-eqz p2, :cond_37

    if-eqz p1, :cond_2a

    .line 10
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sOriginalImeiAndBakInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 11
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sOriginalImeiAndBakInfo:Ljava/lang/String;

    return-object v0

    .line 13
    :cond_2a
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    if-nez p1, :cond_51

    .line 14
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    return-object v0

    :cond_37
    if-eqz p1, :cond_44

    .line 18
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImeiAndBakInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 19
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImeiAndBakInfo:Ljava/lang/String;

    return-object v0

    .line 21
    :cond_44
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    if-nez p1, :cond_51

    .line 22
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    return-object v0

    .line 28
    :cond_51
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    if-eqz p1, :cond_5c

    goto :goto_5f

    .line 66
    :cond_5c
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    return-object v0

    :cond_5f
    :goto_5f
    const-string v7, "&ie=1"

    const/4 v8, 0x2

    if-eqz p3, :cond_116

    :try_start_64
    const-string v0, "pdr"

    const-string v9, "_dpush_uuid_"

    .line 67
    invoke-static {v1, v0, v9}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v9
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_70} :catch_e5
    .catchall {:try_start_64 .. :try_end_70} :catchall_e3

    if-nez v9, :cond_af

    if-eqz p1, :cond_af

    if-eqz p2, :cond_81

    if-eqz p1, :cond_80

    .line 94
    sget-object v1, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_80
    return-object v0

    .line 95
    :cond_81
    :try_start_81
    invoke-static {}, Lio/dcloud/h/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lio/dcloud/h/a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lio/dcloud/common/util/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 96
    invoke-static {v0, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_a4} :catch_e5
    .catchall {:try_start_81 .. :try_end_a4} :catchall_e3

    if-eqz p1, :cond_ae

    .line 115
    sget-object v1, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_ae
    return-object v0

    .line 116
    :cond_af
    :try_start_af
    invoke-static/range {p0 .. p0}, Lio/dcloud/common/util/TelephonyUtil;->getMultiIMEI(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d2

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    aget-object v0, v0, v10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    goto :goto_e0

    :cond_d2
    const-string v0, "phone"

    .line 120
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 121
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_e0} :catch_e5
    .catchall {:try_start_af .. :try_end_e0} :catchall_e3

    :goto_e0
    if-eqz p1, :cond_119

    goto :goto_102

    :catchall_e3
    move-exception v0

    goto :goto_10b

    :catch_e5
    move-exception v0

    .line 130
    :try_start_e6
    sget-object v9, Lio/dcloud/common/util/TelephonyUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIMEI exception=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_e6 .. :try_end_100} :catchall_e3

    if-eqz p1, :cond_119

    .line 129
    :goto_102
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_119

    :goto_10b
    if-eqz p1, :cond_115

    .line 134
    sget-object v1, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :cond_115
    throw v0

    .line 138
    :cond_116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_119
    :goto_119
    if-eqz p1, :cond_11e

    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :cond_11e
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12c

    if-eqz p1, :cond_129

    goto :goto_12c

    .line 169
    :cond_129
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    return-object v0

    :cond_12c
    :goto_12c
    if-eqz p3, :cond_16d

    .line 170
    :try_start_12e
    invoke-static/range {p0 .. p0}, Lio/dcloud/common/util/TelephonyUtil;->getAId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_132} :catch_145
    .catchall {:try_start_12e .. :try_end_132} :catchall_142

    if-eqz v0, :cond_139

    .line 172
    :try_start_134
    sput-object v10, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_136} :catch_137
    .catchall {:try_start_134 .. :try_end_136} :catchall_15a

    goto :goto_139

    :catch_137
    move-exception v0

    goto :goto_147

    :cond_139
    :goto_139
    if-eqz p1, :cond_170

    .line 178
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_153

    goto :goto_152

    :catchall_142
    move-exception v0

    const/4 v9, 0x0

    goto :goto_15c

    :catch_145
    move-exception v0

    const/4 v10, 0x0

    .line 179
    :goto_147
    :try_start_147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14a
    .catchall {:try_start_147 .. :try_end_14a} :catchall_15a

    if-eqz p1, :cond_170

    .line 182
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_153

    :goto_152
    move-object v10, v6

    .line 178
    :cond_153
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_170

    :catchall_15a
    move-exception v0

    move-object v9, v10

    :goto_15c
    if-eqz p1, :cond_16c

    .line 182
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_165

    goto :goto_166

    :cond_165
    move-object v6, v9

    :goto_166
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    :cond_16c
    throw v0

    .line 186
    :cond_16d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_170
    :goto_170
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->isUnValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17e

    if-eqz p1, :cond_17b

    goto :goto_17e

    .line 273
    :cond_17b
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;

    return-object v0

    .line 274
    :cond_17e
    :goto_17e
    :try_start_17e
    invoke-static/range {p0 .. p0}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v10

    .line 275
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 276
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_1a3} :catch_2a0
    .catchall {:try_start_17e .. :try_end_1a3} :catchall_29d

    const-string v15, ".DC4278477faeb9.txt"

    if-nez v14, :cond_1c2

    .line 278
    :try_start_1a7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 279
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1c2} :catch_2a0
    .catchall {:try_start_1a7 .. :try_end_1c2} :catchall_29d

    :cond_1c2
    const-string v14, "mounted"

    .line 284
    :try_start_1c4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20d

    if-nez v10, :cond_20d

    .line 286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_20f

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_20f

    :cond_20d
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 294
    :cond_20f
    :goto_20f
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_218

    .line 295
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_218
    if-eqz v9, :cond_286

    .line 297
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_286

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_224} :catch_2a0
    .catchall {:try_start_1c4 .. :try_end_224} :catchall_29d

    const-wide/16 v17, 0x0

    cmp-long v12, v14, v17

    if-lez v12, :cond_286

    if-eqz v10, :cond_235

    .line 299
    :try_start_22c
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1d

    if-lt v10, v12, :cond_235

    const/16 v16, 0x0

    goto :goto_240

    .line 302
    :cond_235
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v10}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10
    :try_end_23e
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_23e} :catch_26d
    .catchall {:try_start_22c .. :try_end_23e} :catchall_29d

    move-object/from16 v16, v10

    .line 304
    :goto_240
    :try_start_240
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_26f

    .line 305
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_25a

    .line 306
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 307
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 310
    :cond_25a
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 311
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 312
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 313
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_26c
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_26c} :catch_26f
    .catchall {:try_start_240 .. :try_end_26c} :catchall_27d

    goto :goto_26f

    :catch_26d
    const/16 v16, 0x0

    .line 318
    :catch_26f
    :cond_26f
    :goto_26f
    :try_start_26f
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_27a

    .line 319
    invoke-static {v13, v9, v11, v2, v1}, Lio/dcloud/common/util/TelephonyUtil;->savePublicFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_279
    .catch Ljava/lang/Exception; {:try_start_26f .. :try_end_279} :catch_282
    .catchall {:try_start_26f .. :try_end_279} :catchall_27d

    goto :goto_28a

    :cond_27a
    move-object/from16 v9, v16

    goto :goto_28b

    :catchall_27d
    move-exception v0

    move-object/from16 v9, v16

    goto/16 :goto_2f7

    :catch_282
    move-exception v0

    move-object/from16 v9, v16

    goto :goto_2a2

    .line 322
    :cond_286
    :try_start_286
    invoke-static {v13, v9, v11, v2, v1}, Lio/dcloud/common/util/TelephonyUtil;->savePublicFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_28a
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_28a} :catch_2a0
    .catchall {:try_start_286 .. :try_end_28a} :catchall_29d

    :goto_28a
    move-object v9, v1

    :goto_28b
    if-eqz v0, :cond_294

    if-eqz p3, :cond_294

    .line 325
    :try_start_28f
    sput-object v9, Lio/dcloud/common/util/TelephonyUtil;->sImei:Ljava/lang/String;
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_28f .. :try_end_291} :catch_292
    .catchall {:try_start_28f .. :try_end_291} :catchall_2f6

    goto :goto_294

    :catch_292
    move-exception v0

    goto :goto_2a2

    :cond_294
    :goto_294
    if-eqz p1, :cond_2b8

    .line 331
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2ae

    goto :goto_2b2

    :catchall_29d
    move-exception v0

    const/4 v9, 0x0

    goto :goto_2f7

    :catch_2a0
    move-exception v0

    const/4 v9, 0x0

    .line 332
    :goto_2a2
    :try_start_2a2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a5
    .catchall {:try_start_2a2 .. :try_end_2a5} :catchall_2f6

    if-eqz p1, :cond_2b8

    .line 335
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2ae

    goto :goto_2b2

    :cond_2ae
    invoke-virtual {v9, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :goto_2b2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    :cond_2b8
    invoke-static {}, Lio/dcloud/h/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/dcloud/h/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 339
    invoke-static {v0, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_2ef

    .line 343
    sput-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImeiAndBakInfo:Ljava/lang/String;

    .line 344
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/TelephonyUtil;->sOriginalImeiAndBakInfo:Ljava/lang/String;

    if-eqz p2, :cond_2ec

    return-object v0

    .line 359
    :cond_2ec
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->sImeiAndBakInfo:Ljava/lang/String;

    return-object v0

    :cond_2ef
    if-eqz p2, :cond_2f5

    .line 360
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2f5
    return-object v0

    :catchall_2f6
    move-exception v0

    :goto_2f7
    if-eqz p1, :cond_30a

    .line 361
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_300

    goto :goto_304

    :cond_300
    invoke-virtual {v9, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :goto_304
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    :cond_30a
    throw v0
.end method

.method private static getSubId(ILandroid/content/Context;)I
    .registers 10

    const-string v0, "_id"

    const-string v1, "content://telephony/siminfo"

    .line 1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 p1, 0x0

    :try_start_d
    const-string v1, "sim_id"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_3a
    .catchall {:try_start_d .. :try_end_13} :catchall_3f

    const-string v5, "sim_id = ?"

    const/4 v1, 0x1

    :try_start_16
    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_3a
    .catchall {:try_start_16 .. :try_end_34} :catchall_3f

    if-eqz p1, :cond_39

    .line 14
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_39
    return p0

    :catch_3a
    nop

    goto :goto_46

    :cond_3c
    if-eqz p1, :cond_4b

    goto :goto_48

    :catchall_3f
    move-exception p0

    if-eqz p1, :cond_45

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 16
    :cond_45
    throw p0

    :goto_46
    if-eqz p1, :cond_4b

    .line 17
    :goto_48
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4b
    const/4 p0, -0x1

    return p0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 1
    :cond_5
    sget-object v1, Lio/dcloud/common/util/TelephonyUtil;->muuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2
    sget-object p0, Lio/dcloud/common/util/TelephonyUtil;->muuid:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "aWZsemdhbFdhbA=="

    invoke-static {v1}, Lio/dcloud/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_25

    if-nez p0, :cond_21

    goto :goto_22

    :cond_21
    move-object v0, p0

    .line 7
    :goto_22
    sput-object v0, Lio/dcloud/common/util/TelephonyUtil;->muuid:Ljava/lang/String;

    return-object v0

    :catchall_25
    move-exception p0

    sput-object v0, Lio/dcloud/common/util/TelephonyUtil;->muuid:Ljava/lang/String;

    .line 8
    throw p0
.end method

.method public static getWifiData(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "f2FuYQ=="

    .line 1
    invoke-static {v0}, Lio/dcloud/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_42

    const-string v1, "b218S2dmZm1rfGFnZkFmbmc"

    .line 4
    invoke-static {v1}, Lio/dcloud/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3, v4}, Lio/dcloud/common/util/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_42

    if-eqz p0, :cond_42

    const-string v1, "b218RWlrSWxsem17ew"

    .line 9
    invoke-static {v1}, Lio/dcloud/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3, v2}, Lio/dcloud/common/util/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 11
    check-cast p0, Ljava/lang/String;

    goto :goto_34

    :cond_33
    move-object p0, v0

    .line 13
    :goto_34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v0, ":"

    const-string v1, ""

    .line 14
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_42
    return-object v0
.end method

.method private static isUnValid(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "Unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "00000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method private static savePublicFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, ".DC4278477faeb9.txt"

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_47

    .line 3
    :try_start_12
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_3e

    if-eqz p1, :cond_4b

    .line 5
    :try_start_1d
    invoke-static {p4}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_4b

    .line 9
    :cond_24
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_38

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 13
    :cond_38
    invoke-static {p2, p3}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3b} :catch_3c

    goto :goto_4b

    :catch_3c
    nop

    goto :goto_40

    :catch_3e
    const/4 p2, 0x0

    move-object v0, p2

    :goto_40
    if-nez v0, :cond_4b

    .line 17
    invoke-static {p4, p0, p1, v1}, Lio/dcloud/common/util/TelephonyUtil;->createRandomBSFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 20
    :cond_47
    invoke-static {p4, p0, p1, v1}, Lio/dcloud/common/util/TelephonyUtil;->createRandomBSFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method public static updateIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Lio/dcloud/common/util/TelephonyUtil;->mImei:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p0, Lio/dcloud/common/util/TelephonyUtil;->mImei:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lio/dcloud/common/util/TelephonyUtil;->getMultiIMEI(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4b

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    :goto_18
    const-string v3, ","

    if-ge v2, v1, :cond_27

    aget-object v4, p0, v2

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 9
    :cond_27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p0, v1, :cond_44

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/util/TelephonyUtil;->mImei:Ljava/lang/String;

    return-object p0

    .line 12
    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/common/util/TelephonyUtil;->mImei:Ljava/lang/String;

    return-object p0

    :cond_4b
    const-string p0, ""

    .line 15
    sput-object p0, Lio/dcloud/common/util/TelephonyUtil;->mImei:Ljava/lang/String;

    return-object p0
.end method
