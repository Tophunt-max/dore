###### Class com.taobao.weex.ui.action.ActionReloadPage (com.taobao.weex.ui.action.ActionReloadPage)
.class public Lcom/taobao/weex/ui/action/ActionReloadPage;
.super Ljava/lang/Object;
.source "ActionReloadPage.java"

# interfaces
.implements Lcom/taobao/weex/ui/action/IExecutable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mPageId:Ljava/lang/String;

.field private mReloadThis:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ReloadPageAction"

    .line 31
    iput-object v0, p0, Lcom/taobao/weex/ui/action/ActionReloadPage;->TAG:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/taobao/weex/ui/action/ActionReloadPage;->mPageId:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lcom/taobao/weex/ui/action/ActionReloadPage;->mReloadThis:Z

    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 3

    .line 42
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/action/ActionReloadPage;->mPageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 44
    iget-boolean v1, p0, Lcom/taobao/weex/ui/action/ActionReloadPage;->mReloadThis:Z

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->reloadPage(Z)V

    goto :goto_1d

    :cond_16
    const-string v0, "ReloadPageAction"

    const-string v1, "ReloadPageAction executeDom reloadPage instance is null"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method
