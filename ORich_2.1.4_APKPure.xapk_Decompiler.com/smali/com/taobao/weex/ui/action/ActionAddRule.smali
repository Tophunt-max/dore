###### Class com.taobao.weex.ui.action.ActionAddRule (com.taobao.weex.ui.action.ActionAddRule)
.class public Lcom/taobao/weex/ui/action/ActionAddRule;
.super Ljava/lang/Object;
.source "ActionAddRule.java"

# interfaces
.implements Lcom/taobao/weex/ui/action/IExecutable;


# instance fields
.field private final mData:Lcom/alibaba/fastjson/JSONObject;

.field private final mPageId:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/taobao/weex/ui/action/ActionAddRule;->mPageId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/taobao/weex/ui/action/ActionAddRule;->mType:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/taobao/weex/ui/action/ActionAddRule;->mData:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method private notifyAddFontRule(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/utils/FontDO;)V
    .registers 5

    .line 82
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getFontAdapter()Lcom/taobao/weex/font/FontAdapter;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 84
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/taobao/weex/font/FontAdapter;->onAddFontRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private parseFontDO(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/utils/FontDO;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "src"

    .line 74
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fontFamily"

    .line 75
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance v1, Lcom/taobao/weex/utils/FontDO;

    invoke-direct {v1, p1, v0, p2}, Lcom/taobao/weex/utils/FontDO;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)V

    return-object v1
.end method


# virtual methods
.method public executeAction()V
    .registers 6

    .line 47
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/action/ActionAddRule;->mPageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 48
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_5b

    .line 52
    :cond_17
    iget-object v1, p0, Lcom/taobao/weex/ui/action/ActionAddRule;->mType:Ljava/lang/String;

    const-string v2, "fontFace"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return-void

    .line 56
    :cond_22
    iget-object v1, p0, Lcom/taobao/weex/ui/action/ActionAddRule;->mData:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0, v1, v0}, Lcom/taobao/weex/ui/action/ActionAddRule;->parseFontDO(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/utils/FontDO;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 57
    invoke-virtual {v1}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/action/ActionAddRule;->notifyAddFontRule(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/utils/FontDO;)V

    .line 59
    invoke-virtual {v1}, Lcom/taobao/weex/utils/FontDO;->getFontFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/TypefaceUtil;->getFontDO(Ljava/lang/String;)Lcom/taobao/weex/utils/FontDO;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_55

    .line 60
    invoke-virtual {v0}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/taobao/weex/utils/FontDO;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_55

    .line 64
    :cond_51
    invoke-static {v0, v2}, Lcom/taobao/weex/utils/TypefaceUtil;->loadTypeface(Lcom/taobao/weex/utils/FontDO;Z)V

    goto :goto_5b

    .line 61
    :cond_55
    :goto_55
    invoke-static {v1}, Lcom/taobao/weex/utils/TypefaceUtil;->putFontDO(Lcom/taobao/weex/utils/FontDO;)V

    .line 62
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/TypefaceUtil;->loadTypeface(Lcom/taobao/weex/utils/FontDO;Z)V

    :cond_5b
    :goto_5b
    return-void
.end method
