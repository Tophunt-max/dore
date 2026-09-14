###### Class com.appsflyer.internal.an (com.appsflyer.internal.an)
.class final Lcom/appsflyer/internal/an;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/an$b;,
        Lcom/appsflyer/internal/an$e;
    }
.end annotation


# instance fields
.field private final valueOf:Lcom/appsflyer/internal/an$b;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/appsflyer/internal/an$3;

    invoke-direct {v0}, Lcom/appsflyer/internal/an$3;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/an;->valueOf:Lcom/appsflyer/internal/an$b;

    return-void
.end method

.method private values(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 42
    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/internal/an;->valueOf:Lcom/appsflyer/internal/an$b;

    invoke-interface {v1, p1}, Lcom/appsflyer/internal/an$b;->values(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1c} :catch_26
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    const/4 p1, 0x1

    return p1

    :catchall_1e
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_26
    return v0
.end method


# virtual methods
.method final AFInAppEventType()Ljava/lang/String;
    .registers 6

    .line 32
    invoke-static {}, Lcom/appsflyer/internal/an$e;->values()[Lcom/appsflyer/internal/an$e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 33
    invoke-static {v3}, Lcom/appsflyer/internal/an$e;->values(Lcom/appsflyer/internal/an$e;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/appsflyer/internal/an;->values(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 34
    invoke-static {v3}, Lcom/appsflyer/internal/an$e;->AFKeystoreWrapper(Lcom/appsflyer/internal/an$e;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 37
    :cond_1c
    sget-object v0, Lcom/appsflyer/internal/an$e;->AFInAppEventParameterName:Lcom/appsflyer/internal/an$e;

    invoke-static {v0}, Lcom/appsflyer/internal/an$e;->AFKeystoreWrapper(Lcom/appsflyer/internal/an$e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.appsflyer.internal.an.AnonymousClass3 (com.appsflyer.internal.an$3)
.class final Lcom/appsflyer/internal/an$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/an$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/an;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final values(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 16
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

###### Class com.appsflyer.internal.an.b (com.appsflyer.internal.an$b)
.class interface abstract Lcom/appsflyer/internal/an$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract values(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

###### Class com.appsflyer.internal.an.e (com.appsflyer.internal.an$e)
.class final enum Lcom/appsflyer/internal/an$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/an$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/an$e;

.field private static enum AFInAppEventType:Lcom/appsflyer/internal/an$e;

.field private static enum AFKeystoreWrapper:Lcom/appsflyer/internal/an$e;

.field private static enum AFLogger$LogLevel:Lcom/appsflyer/internal/an$e;

.field private static enum AFVersionDeclaration:Lcom/appsflyer/internal/an$e;

.field private static enum AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/an$e;

.field private static enum getLevel:Lcom/appsflyer/internal/an$e;

.field private static enum init:Lcom/appsflyer/internal/an$e;

.field private static final synthetic onAppOpenAttribution:[Lcom/appsflyer/internal/an$e;

.field private static enum onAppOpenAttributionNative:Lcom/appsflyer/internal/an$e;

.field private static enum onAttributionFailureNative:Lcom/appsflyer/internal/an$e;

.field private static enum onInstallConversionDataLoadedNative:Lcom/appsflyer/internal/an$e;

.field private static enum onInstallConversionFailureNative:Lcom/appsflyer/internal/an$e;

.field private static enum valueOf:Lcom/appsflyer/internal/an$e;

.field private static enum values:Lcom/appsflyer/internal/an$e;


# instance fields
.field private final onDeepLinking:Ljava/lang/String;

.field private final onDeepLinkingNative:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 57
    new-instance v0, Lcom/appsflyer/internal/an$e;

    const-string v1, "ADOBE_AIR"

    const/4 v2, 0x0

    const-string v3, "android_adobe_air"

    const-string v4, "com.appsflyer.adobeair.AppsFlyerExtension"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/an$e;->values:Lcom/appsflyer/internal/an$e;

    .line 58
    new-instance v0, Lcom/appsflyer/internal/an$e;

    const-string v1, "ADOBE_MOBILE_SDK"

    const/4 v3, 0x1

    const-string v4, "android_adobe_mobile"

    const-string v5, "com.appsflyer.adobeextension.AppsFlyerAdobeExtension"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/an$e;->AFInAppEventType:Lcom/appsflyer/internal/an$e;

    .line 59
    new-instance v0, Lcom/appsflyer/internal/an$e;

    const-string v1, "COCOS2DX"

    const/4 v4, 0x2

    const-string v5, "android_cocos2dx"

    const-string v6, "org.cocos2dx.lib.Cocos2dxActivity"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/an$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/an$e;

    .line 60
    new-instance v0, Lcom/appsflyer/internal/an$e;

    const-string v1, "CORDOVA"

    const/4 v5, 0x3

    const-string v6, "android_cordova"

    const-string v7, "com.appsflyer.cordova.plugin.AppsFlyerPlugin"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/an$e;->valueOf:Lcom/appsflyer/internal/an$e;

    .line 61
    new-instance v0, Lcom/appsflyer/internal/an$e;

    const-string v1, "DEFAULT"

    const/4 v6, 0x4

    const-string v7, "android_native"

    invoke-direct {v0, v1, v6, v7, v7}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/an$e;->AFInAppEventParameterName:Lcom/appsflyer/internal/an$e;

    .line 62
    new-instance v1, Lcom/appsflyer/internal/an$e;

    const-string v7, "FLUTTER"

    const/4 v8, 0x5

    const-string v9, "android_flutter"

    const-string v10, "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin"

    invoke-direct {v1, v7, v8, v9, v10}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/an$e;->getLevel:Lcom/appsflyer/internal/an$e;

    .line 63
    new-instance v1, Lcom/appsflyer/internal/an$e;

    const-string v7, "M_PARTICLE"

    const/4 v9, 0x6

    const-string v10, "android_mparticle"

    const-string v11, "com.mparticle.kits.AppsFlyerKit"

    invoke-direct {v1, v7, v9, v10, v11}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/an$e;->AFLogger$LogLevel:Lcom/appsflyer/internal/an$e;

    .line 64
    new-instance v1, Lcom/appsflyer/internal/an$e;

    const-string v7, "NATIVE_SCRIPT"

    const/4 v10, 0x7

    const-string v11, "android_native_script"

    const-string v12, "com.tns.NativeScriptActivity"

    invoke-direct {v1, v7, v10, v11, v12}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/an$e;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/an$e;

    .line 65
    new-instance v1, Lcom/appsflyer/internal/an$e;

    const-string v7, "REACT_NATIVE"

    const/16 v11, 0x8

    const-string v12, "android_reactNative"

    const-string v13, "com.appsflyer.reactnative.RNAppsFlyerModule"

    invoke-direct {v1, v7, v11, v12, v13}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/an$e;->init:Lcom/appsflyer/internal/an$e;

    .line 66
    new-instance v1, Lcom/appsflyer/internal/an$e;

    const-string v7, "SEGMENT"

    const/16 v12, 0x9

    const-string v13, "android_segment"

    const-string v14, "com.segment.analytics.android.integrations.appsflyer.AppsflyerIntegration"

    invoke-direct {v1, v7, v12, v13, v14}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/an$e;->AFVersionDeclaration:Lcom/appsflyer/internal/an$e;

    .line 67
    new-instance v1, Lcom/appsflyer/internal/an$e;

    const-string v7, "UNITY"

    const/16 v13, 0xa

    const-string v14, "android_unity"

    const-string v15, "com.appsflyer.unity.AppsFlyerAndroidWrapper"

    invoke-direct {v1, v7, v13, v14, v15}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/an$e;->onInstallConversionDataLoadedNative:Lcom/appsflyer/internal/an$e;

    .line 68
    new-instance v1, Lcom/appsflyer/internal/an$e;

    const-string v7, "UNREAL_ENGINE"

    const/16 v14, 0xb

    const-string v15, "android_unreal"

    const-string v13, "com.epicgames.ue4.GameActivity"

    invoke-direct {v1, v7, v14, v15, v13}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/an$e;->onInstallConversionFailureNative:Lcom/appsflyer/internal/an$e;

    .line 69
    new-instance v1, Lcom/appsflyer/internal/an$e;

    const-string v7, "XAMARIN"

    const/16 v13, 0xc

    const-string v15, "android_xamarin"

    const-string v14, "mono.android.Runtime"

    invoke-direct {v1, v7, v13, v15, v14}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/an$e;->onAttributionFailureNative:Lcom/appsflyer/internal/an$e;

    .line 70
    new-instance v1, Lcom/appsflyer/internal/an$e;

    const-string v7, "CAPACITOR"

    const/16 v14, 0xd

    const-string v15, "android_capacitor"

    const-string v13, "capacitor.plugin.appsflyer.sdk.AppsFlyerPlugin"

    invoke-direct {v1, v7, v14, v15, v13}, Lcom/appsflyer/internal/an$e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/an$e;->onAppOpenAttributionNative:Lcom/appsflyer/internal/an$e;

    const/16 v7, 0xe

    new-array v7, v7, [Lcom/appsflyer/internal/an$e;

    .line 1056
    sget-object v13, Lcom/appsflyer/internal/an$e;->values:Lcom/appsflyer/internal/an$e;

    aput-object v13, v7, v2

    sget-object v2, Lcom/appsflyer/internal/an$e;->AFInAppEventType:Lcom/appsflyer/internal/an$e;

    aput-object v2, v7, v3

    sget-object v2, Lcom/appsflyer/internal/an$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/an$e;

    aput-object v2, v7, v4

    sget-object v2, Lcom/appsflyer/internal/an$e;->valueOf:Lcom/appsflyer/internal/an$e;

    aput-object v2, v7, v5

    aput-object v0, v7, v6

    sget-object v0, Lcom/appsflyer/internal/an$e;->getLevel:Lcom/appsflyer/internal/an$e;

    aput-object v0, v7, v8

    sget-object v0, Lcom/appsflyer/internal/an$e;->AFLogger$LogLevel:Lcom/appsflyer/internal/an$e;

    aput-object v0, v7, v9

    sget-object v0, Lcom/appsflyer/internal/an$e;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/an$e;

    aput-object v0, v7, v10

    sget-object v0, Lcom/appsflyer/internal/an$e;->init:Lcom/appsflyer/internal/an$e;

    aput-object v0, v7, v11

    sget-object v0, Lcom/appsflyer/internal/an$e;->AFVersionDeclaration:Lcom/appsflyer/internal/an$e;

    aput-object v0, v7, v12

    sget-object v0, Lcom/appsflyer/internal/an$e;->onInstallConversionDataLoadedNative:Lcom/appsflyer/internal/an$e;

    const/16 v2, 0xa

    aput-object v0, v7, v2

    sget-object v0, Lcom/appsflyer/internal/an$e;->onInstallConversionFailureNative:Lcom/appsflyer/internal/an$e;

    const/16 v2, 0xb

    aput-object v0, v7, v2

    sget-object v0, Lcom/appsflyer/internal/an$e;->onAttributionFailureNative:Lcom/appsflyer/internal/an$e;

    const/16 v2, 0xc

    aput-object v0, v7, v2

    aput-object v1, v7, v14

    .line 56
    sput-object v7, Lcom/appsflyer/internal/an$e;->onAppOpenAttribution:[Lcom/appsflyer/internal/an$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/appsflyer/internal/an$e;->onDeepLinkingNative:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/appsflyer/internal/an$e;->onDeepLinking:Ljava/lang/String;

    return-void
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/an$e;)Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/appsflyer/internal/an$e;->onDeepLinkingNative:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/an$e;
    .registers 2

    .line 56
    const-class v0, Lcom/appsflyer/internal/an$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/an$e;

    return-object p0
.end method

.method static synthetic values(Lcom/appsflyer/internal/an$e;)Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/appsflyer/internal/an$e;->onDeepLinking:Ljava/lang/String;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/an$e;
    .registers 1

    .line 56
    sget-object v0, Lcom/appsflyer/internal/an$e;->onAppOpenAttribution:[Lcom/appsflyer/internal/an$e;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/an$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/an$e;

    return-object v0
.end method
