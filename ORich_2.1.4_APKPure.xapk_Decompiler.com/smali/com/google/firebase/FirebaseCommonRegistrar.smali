###### Class com.google.firebase.FirebaseCommonRegistrar (com.google.firebase.FirebaseCommonRegistrar)
.class public Lcom/google/firebase/FirebaseCommonRegistrar;
.super Ljava/lang/Object;
.source "FirebaseCommonRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field private static final ANDROID_INSTALLER:Ljava/lang/String; = "android-installer"

.field private static final ANDROID_PLATFORM:Ljava/lang/String; = "android-platform"

.field private static final DEVICE_BRAND:Ljava/lang/String; = "device-brand"

.field private static final DEVICE_MODEL:Ljava/lang/String; = "device-model"

.field private static final DEVICE_NAME:Ljava/lang/String; = "device-name"

.field private static final FIREBASE_ANDROID:Ljava/lang/String; = "fire-android"

.field private static final FIREBASE_COMMON:Ljava/lang/String; = "fire-core"

.field private static final KOTLIN:Ljava/lang/String; = "kotlin"

.field private static final MIN_SDK:Ljava/lang/String; = "android-min-sdk"

.field private static final TARGET_SDK:Ljava/lang/String; = "android-target-sdk"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getComponents$0(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 59
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, ""

    return-object p0
.end method

.method static synthetic lambda$getComponents$1(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_13

    .line 69
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const-string p0, ""

    return-object p0
.end method

.method static synthetic lambda$getComponents$2(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.television"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "tv"

    return-object p0

    .line 81
    :cond_15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2a

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string p0, "watch"

    return-object p0

    .line 85
    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3f

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string p0, "auto"

    return-object p0

    .line 89
    :cond_3f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_54

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.embedded"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_54

    const-string p0, "embedded"

    return-object p0

    :cond_54
    const-string p0, ""

    return-object p0
.end method

.method static synthetic lambda$getComponents$3(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 101
    invoke-static {p0}, Lcom/google/firebase/FirebaseCommonRegistrar;->safeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    :cond_13
    const-string p0, ""

    :goto_15
    return-object p0
.end method

.method private static safeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    const/16 v1, 0x5f

    .line 112
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;->component()Lcom/google/firebase/components/Component;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->component()Lcom/google/firebase/components/Component;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fire-android"

    invoke-static {v2, v1}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;

    move-result-object v1

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "fire-core"

    const-string v2, "20.0.0"

    .line 49
    invoke-static {v1, v2}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->safeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-name"

    invoke-static {v2, v1}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->safeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-model"

    invoke-static {v2, v1}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/FirebaseCommonRegistrar;->safeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device-brand"

    invoke-static {v2, v1}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$5K-XEd3fUx19CnAZSAZ0M1s9qGg;->INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$5K-XEd3fUx19CnAZSAZ0M1s9qGg;

    const-string v2, "android-target-sdk"

    .line 54
    invoke-static {v2, v1}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->fromContext(Ljava/lang/String;Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;)Lcom/google/firebase/components/Component;

    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$lmqwsm474glUdjxQuX0286DJQr0;->INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$lmqwsm474glUdjxQuX0286DJQr0;

    const-string v2, "android-min-sdk"

    .line 64
    invoke-static {v2, v1}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->fromContext(Ljava/lang/String;Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;)Lcom/google/firebase/components/Component;

    move-result-object v1

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v1, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;->INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;

    const-string v2, "android-platform"

    .line 74
    invoke-static {v2, v1}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->fromContext(Ljava/lang/String;Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;)Lcom/google/firebase/components/Component;

    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v1, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$4z_FoKjSmKejlSwMYYMZeC7LsMo;->INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$4z_FoKjSmKejlSwMYYMZeC7LsMo;

    const-string v2, "android-installer"

    .line 96
    invoke-static {v2, v1}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->fromContext(Ljava/lang/String;Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;)Lcom/google/firebase/components/Component;

    move-result-object v1

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {}, Lcom/google/firebase/platforminfo/KotlinDetector;->detectVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_95

    const-string v2, "kotlin"

    .line 106
    invoke-static {v2, v1}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_95
    return-object v0
.end method

###### Class com.google.firebase.$$Lambda$FirebaseCommonRegistrar$4z_FoKjSmKejlSwMYYMZeC7LsMo (com.google.firebase.-$$Lambda$FirebaseCommonRegistrar$4z_FoKjSmKejlSwMYYMZeC7LsMo)
.class public final synthetic Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$4z_FoKjSmKejlSwMYYMZeC7LsMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$4z_FoKjSmKejlSwMYYMZeC7LsMo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$4z_FoKjSmKejlSwMYYMZeC7LsMo;

    invoke-direct {v0}, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$4z_FoKjSmKejlSwMYYMZeC7LsMo;-><init>()V

    sput-object v0, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$4z_FoKjSmKejlSwMYYMZeC7LsMo;->INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$4z_FoKjSmKejlSwMYYMZeC7LsMo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extract(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->lambda$getComponents$3(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.firebase.$$Lambda$FirebaseCommonRegistrar$5KXEd3fUx19CnAZSAZ0M1s9qGg (com.google.firebase.-$$Lambda$FirebaseCommonRegistrar$5K-XEd3fUx19CnAZSAZ0M1s9qGg)
.class public final synthetic Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$5K-XEd3fUx19CnAZSAZ0M1s9qGg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$5K-XEd3fUx19CnAZSAZ0M1s9qGg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$5K-XEd3fUx19CnAZSAZ0M1s9qGg;

    invoke-direct {v0}, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$5K-XEd3fUx19CnAZSAZ0M1s9qGg;-><init>()V

    sput-object v0, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$5K-XEd3fUx19CnAZSAZ0M1s9qGg;->INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$5K-XEd3fUx19CnAZSAZ0M1s9qGg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extract(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->lambda$getComponents$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.firebase.$$Lambda$FirebaseCommonRegistrar$lmqwsm474glUdjxQuX0286DJQr0 (com.google.firebase.-$$Lambda$FirebaseCommonRegistrar$lmqwsm474glUdjxQuX0286DJQr0)
.class public final synthetic Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$lmqwsm474glUdjxQuX0286DJQr0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$lmqwsm474glUdjxQuX0286DJQr0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$lmqwsm474glUdjxQuX0286DJQr0;

    invoke-direct {v0}, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$lmqwsm474glUdjxQuX0286DJQr0;-><init>()V

    sput-object v0, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$lmqwsm474glUdjxQuX0286DJQr0;->INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$lmqwsm474glUdjxQuX0286DJQr0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extract(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->lambda$getComponents$1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.firebase.$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU (com.google.firebase.-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU)
.class public final synthetic Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;

    invoke-direct {v0}, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;-><init>()V

    sput-object v0, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;->INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extract(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->lambda$getComponents$2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
