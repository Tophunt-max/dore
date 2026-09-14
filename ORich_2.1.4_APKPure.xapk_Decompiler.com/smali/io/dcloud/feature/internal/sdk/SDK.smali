###### Class io.dcloud.feature.internal.sdk.SDK (io.dcloud.feature.internal.sdk.SDK)
.class public Lio/dcloud/feature/internal/sdk/SDK;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;
    }
.end annotation


# static fields
.field public static final ANDROID_ASSET:Ljava/lang/String; = "file:///android_asset/"

.field public static final DEFAULT_APPID:Ljava/lang/String; = "Default_Appid"

.field public static final UNIMP_CAPSULE_BUTTON_CLICK:Ljava/lang/String; = "unimp_capsule_button_click"

.field public static final UNIMP_ERROR_KEY:Ljava/lang/String; = "UniMP_Error"

.field public static final UNIMP_EVENT_CALLBACKID:Ljava/lang/String; = "callbackId"

.field public static final UNIMP_EVENT_CALL_INSTANCEID:Ljava/lang/String; = "instanceId"

.field public static final UNIMP_JS_TO_NATIVE:Ljava/lang/String; = "unimp_js_to_native"

.field public static final UNIMP_OPEN:Ljava/lang/String; = "open_unimp"

.field public static final UNI_CODE_ERROR_APPID:I = -0x3eb

.field public static final UNI_CODE_ERROR_NOT_RES:I = -0x3e9

.field public static final UNI_CODE_ERROR_NO_V3:I = -0x3ea

.field public static isCapsule:Z = false

.field public static isEnableBackground:Z = false

.field public static isNJS:Z = false

.field public static isUniMP:Z = false

.field public static mHostInfo:Ljava/lang/String;

.field static sCore:Lio/dcloud/common/DHInterface/ICore;

.field public static sDefaultMenuButton:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeWebView(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4
    :cond_7
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v0

    const/4 v1, 0x1

    iput-byte v1, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 5
    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK;->sCore:Lio/dcloud/common/DHInterface/ICore;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p0

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, p0}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static createWebView(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IFrameView;Lio/dcloud/common/DHInterface/IEventCallback;)Lio/dcloud/common/DHInterface/IWebview;
    .registers 9

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p0, v0, v2

    const/4 p0, 0x2

    new-array v3, p0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    aput-object v3, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p2, 0x4

    aput-object p4, v0, p2

    .line 5
    sget-object p2, Lio/dcloud/feature/internal/sdk/SDK;->sCore:Lio/dcloud/common/DHInterface/ICore;

    sget-object p3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface {p2, p3, p0, v0}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/DHInterface/IFrameView;

    .line 7
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p0

    .line 8
    invoke-interface {p0, p1}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return-object p0
.end method

.method public static initSDK(Lio/dcloud/common/DHInterface/ICore;)V
    .registers 1

    .line 1
    sput-object p0, Lio/dcloud/feature/internal/sdk/SDK;->sCore:Lio/dcloud/common/DHInterface/ICore;

    return-void
.end method

.method public static isUniMPSDK()Z
    .registers 1

    .line 1
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->isUniMPHostForUniApp()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static obtainAllIWebview()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/DHInterface/IWebview;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 9
    :cond_8
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->obtainCurrentRunnbingAppId()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lio/dcloud/feature/internal/sdk/SDK;->obtainAllIWebview(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static obtainAllIWebview(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/DHInterface/IWebview;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK;->sCore:Lio/dcloud/common/DHInterface/ICore;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2, p0}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_30

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_30

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 5
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_30
    const/4 v0, 0x0

    :cond_31
    return-object v0
.end method

.method public static obtainCurrentApp()Lio/dcloud/common/DHInterface/IApp;
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_8
    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK;->sCore:Lio/dcloud/common/DHInterface/ICore;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->obtainCurrentRunnbingAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    return-object v0
.end method

.method public static obtainCurrentRunnbingAppId()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 4
    :cond_8
    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK;->sCore:Lio/dcloud/common/DHInterface/ICore;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xb

    invoke-interface {v0, v2, v3, v1}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static obtainWebview(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;
    .registers 4

    .line 1
    invoke-static {p0}, Lio/dcloud/feature/internal/sdk/SDK;->obtainAllIWebview(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IWebview;

    .line 3
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static popWebView(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4
    :cond_7
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v0

    const/4 v1, 0x1

    iput-byte v1, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 5
    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK;->sCore:Lio/dcloud/common/DHInterface/ICore;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p0

    const/16 v2, 0x15

    invoke-interface {v0, v1, v2, p0}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static registerJsApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4
    :cond_7
    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK;->sCore:Lio/dcloud/common/DHInterface/ICore;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x5

    invoke-interface {v0, v1, p0, v2}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static requestAllFeature()V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4
    :cond_7
    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK;->sCore:Lio/dcloud/common/DHInterface/ICore;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static requestFeature(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4
    :cond_7
    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK;->sCore:Lio/dcloud/common/DHInterface/ICore;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    const/4 p0, 0x6

    invoke-interface {v0, v1, p0, v2}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.feature.internal.sdk.SDK.IntegratedMode (io.dcloud.feature.internal.sdk.SDK$IntegratedMode)
.class public final enum Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/internal/sdk/SDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntegratedMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

.field public static final enum RUNTIME:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

.field public static final enum WEBAPP:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

.field public static final enum WEBVIEW:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const-string v1, "WEBVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->WEBVIEW:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    .line 2
    new-instance v1, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const-string v3, "WEBAPP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->WEBAPP:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    .line 3
    new-instance v3, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const-string v5, "RUNTIME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->RUNTIME:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->$VALUES:[Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->$VALUES:[Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    invoke-virtual {v0}, [Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    return-object v0
.end method
