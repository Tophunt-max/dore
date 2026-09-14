###### Class io.dcloud.common.util.LoadAppUtils (io.dcloud.common.util.LoadAppUtils)
.class public Lio/dcloud/common/util/LoadAppUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/LoadAppUtils$SafeCenter;
    }
.end annotation


# static fields
.field public static final APK_DOWNGRADE:I = -0x1

.field public static final APK_INSTALLED:I = 0x0

.field public static final APK_UNINSTALLED:I = -0x2

.field public static final APK_UPGRADE:I = 0x1

.field private static final APP_TYPE_ALL:I = 0x0

.field private static final APP_TYPE_NON_SYSTEM:I = 0x1

.field private static final APP_TYPE_SYSTEM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LoadAppUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApkFileLable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const-string v0, "DownloadUtils"

    const-string v1, "android.content.pm.PackageParser"

    const-string v2, "android.content.res.AssetManager"

    .line 1
    :try_start_6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v5, v7, :cond_1f

    new-array v4, v6, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    goto :goto_23

    .line 8
    :cond_1f
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    :goto_23
    new-array v8, v3, [Ljava/lang/Object;

    aput-object p1, v8, v6

    if-lt v5, v7, :cond_30

    new-array v8, v6, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_34

    .line 17
    :cond_30
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 20
    :goto_34
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pkgParser:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 24
    invoke-virtual {v8}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-lt v5, v7, :cond_64

    new-array v12, v11, [Ljava/lang/Class;

    .line 29
    const-class v13, Ljava/io/File;

    aput-object v13, v12, v6

    .line 30
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v3

    goto :goto_76

    :cond_64
    new-array v12, v9, [Ljava/lang/Class;

    .line 33
    const-class v13, Ljava/io/File;

    aput-object v13, v12, v6

    .line 34
    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v3

    .line 35
    const-class v13, Landroid/util/DisplayMetrics;

    aput-object v13, v12, v11

    .line 36
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v10

    :goto_76
    const-string v13, "parsePackage"

    .line 38
    invoke-virtual {v1, v13, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-lt v5, v7, :cond_8e

    new-array v5, v11, [Ljava/lang/Object;

    .line 43
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    goto :goto_a1

    :cond_8e
    new-array v5, v9, [Ljava/lang/Object;

    .line 47
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    aput-object p1, v5, v3

    aput-object v8, v5, v11

    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v10

    .line 53
    :goto_a1
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "applicationInfo"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Class;

    .line 71
    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v6

    const-string v8, "addAssetPath"

    .line 72
    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v6

    .line 76
    invoke-virtual {v2, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array p1, v10, [Ljava/lang/Class;

    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p1, v6

    .line 81
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p1, v3

    .line 82
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p1, v11

    .line 84
    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v5, v2, v6

    .line 88
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    aput-object v5, v2, v3

    .line 89
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    aput-object p0, v2, v11

    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    .line 94
    iget p1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz p1, :cond_139

    .line 95
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 98
    :cond_139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "label="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_151} :catch_152

    return-object p0

    :catch_152
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "-1"

    return-object p0
.end method

.method public static getApkFileSignatureAndPackageName(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p0, p1}, Lio/dcloud/common/util/LoadAppUtils;->getPackageSignatures(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_47

    if-eqz p0, :cond_8

    return-object p0

    :cond_8
    const/16 p0, 0x40

    .line 11
    :try_start_a
    invoke-static {p1, p0}, Lio/dcloud/common/util/LoadAppUtils;->parsePackage(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_e} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_47

    goto :goto_10

    :catch_f
    move-object p0, v0

    :goto_10
    if-nez p0, :cond_13

    return-object v0

    .line 18
    :cond_13
    :try_start_13
    invoke-static {p0, p1}, Lio/dcloud/common/util/LoadAppUtils;->getApkSignature(Ljava/lang/Object;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 19
    array-length v1, p1

    if-lez v1, :cond_46

    const/4 v1, 0x0

    .line 20
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 21
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/HashUtils;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "applicationInfo"

    .line 25
    invoke-static {p0, v2}, Lio/dcloud/common/util/ReflectUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "packageName"

    .line 26
    invoke-static {p0, v2}, Lio/dcloud/common/util/ReflectUtils;->getObjectFieldNoDeclared(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p0, v2, p1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_45} :catch_47

    return-object v2

    :cond_46
    return-object v0

    :catch_47
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getApkFileSignatureAndPackageNameEx(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/16 p0, 0x40

    const/4 v0, 0x0

    .line 1
    :try_start_3
    invoke-static {p1, p0}, Lio/dcloud/common/util/LoadAppUtils;->parsePackage(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3b

    const-string p1, "mSignatures"

    .line 3
    invoke-static {p0, p1}, Lio/dcloud/common/util/ReflectUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/Signature;

    if-eqz p1, :cond_3b

    .line 5
    array-length v1, p1

    if-nez v1, :cond_17

    goto :goto_3b

    :cond_17
    const/4 v1, 0x0

    .line 9
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 10
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/HashUtils;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "packageName"

    .line 12
    invoke-static {p0, v2}, Lio/dcloud/common/util/ReflectUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p0, v2, p1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_3c

    return-object v2

    :cond_3b
    :goto_3b
    return-object v0

    :catch_3c
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getApkSignature(Ljava/lang/Object;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 3

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/content/pm/Signature;

    :try_start_3
    const-string v0, "mSignatures"

    .line 3
    invoke-static {p0, v0}, Lio/dcloud/common/util/ReflectUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/Signature;
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_b} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_b} :catch_d

    move-object p1, p0

    goto :goto_16

    :catch_d
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_16

    :catch_12
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_16
    const/4 p0, 0x0

    if-nez p1, :cond_1a

    return-object p0

    .line 15
    :cond_1a
    array-length v0, p1

    if-gtz v0, :cond_1e

    return-object p0

    :cond_1e
    return-object p1
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 6
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppSignatureMd5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/Md5Utils;->md5LowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppSignatureSHA1(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    move-object v3, v0

    :goto_14
    if-ge v2, v1, :cond_21

    aget-object v3, p0, v2

    const-string v4, "SHA1"

    .line 7
    invoke-static {v3, v4}, Lio/dcloud/common/util/LoadAppUtils;->getSignatureString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1e} :catch_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_21
    return-object v3

    :catch_22
    return-object v0
.end method

.method public static getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_e

    :catch_c
    const-string p0, ""

    :goto_e
    return-object p0
.end method

.method public static getDataAndTypeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3b

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dc.fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_47

    .line 10
    :cond_3b
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_47
    return-object v0
.end method

.method public static getLoadState(Landroid/content/pm/PackageInfo;I)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, -0x2

    goto :goto_f

    .line 1
    :cond_4
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne p0, p1, :cond_a

    const/4 p0, 0x0

    goto :goto_f

    :cond_a
    if-ge p0, p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, -0x1

    :goto_f
    return p0
.end method

.method public static getLoadedApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    :try_start_5
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    move-exception p0

    .line 5
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public static getLoadedAppNameByPackageInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 3
    :cond_6
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPackageSignatures(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 4
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_37

    array-length v0, p1

    if-lez v0, :cond_37

    const/4 v0, 0x0

    .line 6
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/HashUtils;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p0, v1, p1
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    return-object v1

    :catchall_33
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSignatureString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 4
    :try_start_4
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 6
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    array-length v0, p0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_2d

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    or-int/lit16 v2, v2, 0x100

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 11
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_31} :catch_32

    goto :goto_38

    :catch_32
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_36
    const-string p0, "error!"

    :goto_38
    return-object p0
.end method

.method public static isAppLoad(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    return v2

    .line 7
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1a} :catch_1e

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0

    .line 11
    :catch_1e
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isEMUIRom()Z
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    .line 1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_1d

    .line 2
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const-string v3, "data/dataapp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const-string v0, "/data/dataapp"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    return v1

    :cond_1d
    :goto_1d
    return v2
.end method

.method public static isValidAppPackageName(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "^[a-zA-Z_]\\w*(\\.[a-zA-Z_]\\w*)*$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isVivoRom()Z
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    return v0
.end method

.method public static loadRunApp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "application/vnd.android.package-archive"

    .line 1
    invoke-static {p0, p1, v0}, Lio/dcloud/common/util/LoadAppUtils;->getDataAndTypeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static parsePackage(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    :try_start_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5} :catch_fd

    const-string v3, "android.content.pm.PackageParser"

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v2, v4, :cond_1a

    :try_start_d
    new-array v7, v5, [Ljava/lang/Class;

    .line 2
    invoke-static {v3, v7}, Lio/dcloud/common/util/ReflectUtils;->getObjectConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v7, v5, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2c

    :cond_1a
    new-array v7, v6, [Ljava/lang/Class;

    .line 5
    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v3, v7}, Lio/dcloud/common/util/ReflectUtils;->getObjectConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v5

    .line 7
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    :goto_2c
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 11
    invoke-virtual {v7}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 12
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_39} :catch_fd

    const-string v9, "parsePackage"

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-lt v2, v4, :cond_60

    .line 21
    :try_start_3f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v7, v11, [Ljava/lang/Class;

    const-class v12, Ljava/io/File;

    aput-object v12, v7, v5

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v7, v6

    invoke-virtual {v0, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v8, v7, v5

    .line 24
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    .line 25
    invoke-virtual {v0, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8d

    .line 28
    :cond_60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/Class;

    const-class v15, Ljava/io/File;

    aput-object v15, v14, v5

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v6

    const-class v15, Landroid/util/DisplayMetrics;

    aput-object v15, v14, v11

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v10

    invoke-virtual {v12, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v8, v12, v5

    aput-object v0, v12, v6

    aput-object v7, v12, v11

    .line 32
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v10

    .line 33
    invoke-virtual {v9, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_8d} :catch_fd

    :goto_8d
    if-nez v0, :cond_aa

    const-string v0, "LoadAppUtils"

    .line 37
    :try_start_91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---parsePackage is null------;;sourceFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a9} :catch_fd

    return-object v1

    :cond_aa
    const-string v7, "android.content.pm.PackageParser$Package"

    const-string v9, "collectCertificates"

    if-lt v2, v4, :cond_db

    .line 46
    :try_start_b0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Class;

    .line 50
    invoke-static {v7}, Lio/dcloud/common/util/ReflectUtils;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v4, v5

    const-class v7, Ljava/io/File;

    aput-object v7, v4, v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v11

    .line 51
    invoke-virtual {v2, v9, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 56
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v8, v4, v6

    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fc

    .line 60
    :cond_db
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v4, v11, [Ljava/lang/Class;

    .line 64
    invoke-static {v7}, Lio/dcloud/common/util/ReflectUtils;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v4, v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    .line 65
    invoke-virtual {v2, v9, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_fc} :catch_fd

    :goto_fc
    return-object v0

    :catch_fd
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private static startAppDetailSettings(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->access$000(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static startSecuritySettingPage(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/common/util/LoadAppUtils;->isVivoRom()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils;->startShortcutSettingsVivo(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 4
    :cond_b
    invoke-static {}, Lio/dcloud/common/util/LoadAppUtils;->isEMUIRom()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/dcloud/common/util/LoadAppUtils;->startShortcutSettingsEMUI(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 7
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/dcloud/common/util/LoadAppUtils;->startAppDetailSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static startShortcutSettingsEMUI(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_e

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_e
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "package"

    .line 6
    invoke-static {v2, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static startShortcutSettingsVivo(Landroid/content/Context;)Z
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bbk.launcher.installshortcutpermission.open"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.bbk.launcher2"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_15

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    :cond_15
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    const/4 p0, 0x1

    return p0

    :catch_1a
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static uninstall(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-string v0, "package"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b
    return-void
.end method

###### Class io.dcloud.common.util.LoadAppUtils.SafeCenter (io.dcloud.common.util.LoadAppUtils$SafeCenter)
.class Lio/dcloud/common/util/LoadAppUtils$SafeCenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/LoadAppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeCenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;
    }
.end annotation


# static fields
.field private static datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->goSafeCenter(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static goSafeCenter(Landroid/content/Context;)Z
    .registers 9

    const-string v0, "Permission"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->init(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    :goto_b
    sget-object v4, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_90

    .line 4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 5
    sget-object v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_91

    .line 7
    :try_start_21
    iget-object v7, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-virtual {v2, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_27} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_91

    if-nez v7, :cond_2a

    goto :goto_8c

    .line 14
    :cond_2a
    :try_start_2a
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->clsName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 15
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->pname:Ljava/lang/String;

    iget-object v3, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->clsName:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_47

    .line 16
    :cond_3a
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 17
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->pname:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :cond_47
    :goto_47
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 20
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->action:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    :cond_54
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->extParamName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 23
    iget-object v2, v6, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->extParamName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_65
    const/high16 v2, 0x10000000

    .line 26
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "successful "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "intent="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_8b} :catch_91

    return v5

    :catch_8c
    :goto_8c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_90
    return v5

    :catch_91
    move-exception p0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static init(Landroid/content/Context;)V
    .registers 9

    .line 1
    sget-object v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 3
    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/temp.j"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/lang/String;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 6
    :goto_39
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p0, v1, :cond_72

    .line 7
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "p"

    .line 8
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 10
    sget-object v3, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v4, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v5, "c"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "e"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "a"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v5, v6, v1}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6b} :catch_6e

    :cond_6b
    add-int/lit8 p0, p0, 0x1

    goto :goto_39

    :catch_6e
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_72
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_109

    .line 17
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    const-string v3, "extra_pkgname"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v2, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.meizu.safe"

    const-string v2, "com.meizu.safe.security.AppSecActivity"

    const-string v3, "packageName"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.aliyun.mobile.permission"

    const-string v2, "com.aliyun.mobile.permission.ExternalAppDetailActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.iqoo.secure"

    const-string v2, "com.iqoo.secure.MainActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.sonymobile.cta"

    const-string v2, "com.sonymobile.cta.SomcCTAMainActivity"

    const-string v3, "package"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.mediatek.security"

    const-string v2, "com.mediatek.security.ui.PermissionControlPageActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.yulong.android.launcher3"

    const-string v2, "com.yulong.android.launcher3.LauncherSettingsActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$ManageApplicationsActivity"

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter;->datas:Ljava/util/ArrayList;

    new-instance v0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;

    const-string v1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v0, v4, v4, v3, v1}, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_109
    return-void
.end method

###### Class io.dcloud.common.util.LoadAppUtils.SafeCenter.Item (io.dcloud.common.util.LoadAppUtils$SafeCenter$Item)
.class Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/LoadAppUtils$SafeCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field clsName:Ljava/lang/String;

.field extParamName:Ljava/lang/String;

.field pname:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->pname:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->clsName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->extParamName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/dcloud/common/util/LoadAppUtils$SafeCenter$Item;->action:Ljava/lang/String;

    return-void
.end method
