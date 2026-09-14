###### Class com.taobao.weex.ui.module.WXWebViewModule (com.taobao.weex.ui.module.WXWebViewModule)
.class public Lcom/taobao/weex/ui/module/WXWebViewModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXWebViewModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method

.method private action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 58
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXWebViewModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 60
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p2

    .line 61
    instance-of v0, p2, Lcom/taobao/weex/ui/component/WXWeb;

    if-eqz v0, :cond_1f

    .line 62
    check-cast p2, Lcom/taobao/weex/ui/component/WXWeb;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/taobao/weex/ui/component/WXWeb;->setAction(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public goBack(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 38
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goBack:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V

    return-void
.end method

.method public goForward(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 43
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goForward:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V

    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 53
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->postMessage:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1, p2}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public reload(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 48
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->reload:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.ui.module.WXWebViewModule.Action (com.taobao.weex.ui.module.WXWebViewModule$Action)
.class final enum Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
.super Ljava/lang/Enum;
.source "WXWebViewModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/module/WXWebViewModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/ui/module/WXWebViewModule$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

.field public static final enum goBack:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

.field public static final enum goForward:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

.field public static final enum postMessage:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

.field public static final enum reload:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 30
    new-instance v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const-string v1, "reload"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->reload:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    .line 31
    new-instance v1, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const-string v3, "goBack"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goBack:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    .line 32
    new-instance v3, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const-string v5, "goForward"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goForward:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    .line 33
    new-instance v5, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const-string v7, "postMessage"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->postMessage:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 29
    sput-object v7, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->$VALUES:[Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
    .registers 2

    .line 29
    const-class v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
    .registers 1

    .line 29
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->$VALUES:[Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    return-object v0
.end method
